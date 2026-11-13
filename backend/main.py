import os
import sys
import re
import json
import subprocess
from pathlib import Path
from typing import Optional
from fastapi import FastAPI, HTTPException, Query
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import StreamingResponse
from pydantic import BaseModel

app = FastAPI(title="DSD-8 Local Hardware Simulator API")

# Enable CORS for local React development
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Points to the root of your DSD-8 project (one folder up from /backend)
PROJECT_ROOT = Path(__file__).resolve().parent.parent

class FileUpdate(BaseModel):
    path: str
    content: str

class CustomAssembleRequest(BaseModel):
    asm_code: str
    use_nn_sim: bool = True
    switches: str = "0x00"
    buttons: str = "0x00"

# -------------------------------------------------------------------------
# Helper: 16-Bit Instruction Disassembler & Internal Micro-Op Explainer
# -------------------------------------------------------------------------
COND_MAP = {
    0: ("BEQ", "Z == 1"),
    1: ("BNE", "Z == 0"),
    2: ("BCS", "C == 1"),
    3: ("BCC", "C == 0"),
    4: ("BMI", "N == 1"),
    5: ("BPL", "N == 0"),
    6: ("BVS", "V == 1"),
    7: ("BVC", "V == 0"),
}

NN_PORTS = {
    0x50: "NN_A (Latch Activation)",
    0x51: "NN_W (Trigger MAC: acc += A * W)",
    0x52: "NN_CTRL (Bit0: Clr Acc, Bit1: Clr Cnt)",
    0x53: "NN_ACC0 (Acc Bits [7:0])",
    0x54: "NN_ACC1 (Acc Bits [15:8])",
    0x55: "NN_ACC2 (Acc Bits [23:16])",
    0x56: "NN_SHIFT (Requant Shift 0..15)",
    0x57: "NN_QOUT (Saturated Requant Byte)",
    0x58: "NN_LUT_SEL (LUT Bank 0..3)",
    0x59: "NN_ACT (Activated Output)",
    0x5A: "NN_LUT_IDX (Direct LUT Index)",
    0x5B: "NN_LUT_VAL (Direct LUT Value)",
    0x5C: "NN_SKIPCNT (Zero-Skip Counter)",
    0x5D: "NN_MACCNT (Executed MAC Counter)",
    0x5E: "NN_RSVD",
    0x5F: "NN_KEY (Write 0xA5 to Unlock / Read Status)",
}

LOCAL_PORTS = {
    0x00: "SWITCHES",
    0x01: "BUTTONS",
    0x02: "LEDS",
    0x10: "SEG_VALUE",
    0x11: "SEG_ENABLE",
    0x20: "UART_TX",
    0x21: "UART_RX",
    0x22: "UART_STATUS",
    0x30: "TIMER_COUNT",
    0x31: "TIMER_CTRL",
    0x40: "SLOW_ECHO",
}

def decode_instruction(ir_hex: str):
    word = int(ir_hex, 16)
    opcode = (word >> 12) & 0xF
    rd = (word >> 9) & 0x7
    rs1 = (word >> 6) & 0x7
    rs2 = (word >> 3) & 0x7
    imm8 = word & 0xFF
    addr9 = word & 0x1FF
    io_dir = (word >> 8) & 0x1
    port = word & 0xFF

    signed_imm8 = imm8 - 256 if imm8 >= 128 else imm8

    info = {
        "opcode_hex": f"0x{opcode:X}",
        "mnemonic": "UNKNOWN",
        "operands": "",
        "fsm_path": ["FETCH", "DECODE"],
        "nominal_cycles": 2,
        "wb_sel": "None",
        "behind_the_scenes": "",
    }

    if opcode == 0x0:
        info.update({
            "mnemonic": "NOP",
            "fsm_path": ["FETCH", "DECODE"],
            "nominal_cycles": 2,
            "behind_the_scenes": "No architectural state change; PC advances and instruction retires in DECODE."
        })
    elif opcode == 0x1:
        info.update({
            "mnemonic": "LDI",
            "operands": f"R{rd}, 0x{imm8:02X} ({imm8} / {signed_imm8})",
            "fsm_path": ["FETCH", "DECODE", "EXECUTE", "WRITEBACK"],
            "nominal_cycles": 4,
            "wb_sel": "10 (Immediate)",
            "behind_the_scenes": f"Extracts 8-bit immediate 0x{imm8:02X} from IR[7:0] and routes via wb_sel=10 into R{rd} on WRITEBACK edge."
        })
    elif opcode == 0x2:
        info.update({
            "mnemonic": "LD",
            "operands": f"R{rd}, [R{rs1}]",
            "fsm_path": ["FETCH", "DECODE", "EXECUTE", "MEM_IO", "WRITEBACK"],
            "nominal_cycles": 5,
            "wb_sel": "01 (Data Memory)",
            "behind_the_scenes": f"Uses R{rs1} as byte address into 256B Data RAM; routes async read data via wb_sel=01 into R{rd}."
        })
    elif opcode == 0x3:
        info.update({
            "mnemonic": "ST",
            "operands": f"[R{rs1}], R{rd}",
            "fsm_path": ["FETCH", "DECODE", "EXECUTE", "MEM_IO"],
            "nominal_cycles": 4,
            "behind_the_scenes": f"Uses R{rs1} as address pointer and writes byte in R{rd} synchronously into Data RAM during MEM_IO."
        })
    elif opcode in (0x4, 0x5, 0x6, 0x7, 0x8):
        op_names = {0x4: "ADD", 0x5: "SUB", 0x6: "AND", 0x7: "OR", 0x8: "XOR"}
        mn = op_names[opcode]
        pseudo = f" (MOV R{rd}, R{rs1})" if (opcode == 0x7 and rs1 == rs2) else ""
        info.update({
            "mnemonic": mn + pseudo,
            "operands": f"R{rd}, R{rs1}, R{rs2}",
            "fsm_path": ["FETCH", "DECODE", "EXECUTE", "WRITEBACK"],
            "nominal_cycles": 4,
            "wb_sel": "00 (ALU Result)",
            "behind_the_scenes": f"ALU computes R{rs1} {mn} R{rs2}, updates flags register in EXECUTE, and writes ALU result to R{rd} in WRITEBACK."
        })
    elif opcode in (0x9, 0xA):
        mn = "SHL" if opcode == 0x9 else "SHR"
        info.update({
            "mnemonic": mn,
            "operands": f"R{rd}, R{rs1}",
            "fsm_path": ["FETCH", "DECODE", "EXECUTE", "WRITEBACK"],
            "nominal_cycles": 4,
            "wb_sel": "00 (ALU Result)",
            "behind_the_scenes": f"Shifts R{rs1} by 1 bit ({mn}), shifts outgoing bit into Carry (C), updates Z/N, and writes R{rd}."
        })
    elif opcode == 0xB:
        info.update({
            "mnemonic": "CMP",
            "operands": f"R{rs1}, R{rs2}",
            "fsm_path": ["FETCH", "DECODE", "EXECUTE"],
            "nominal_cycles": 3,
            "behind_the_scenes": f"ALU performs R{rs1} - R{rs2} (a + ~b + 1) to update Z, N, C (no-borrow), and V flags without writing any register."
        })
    elif opcode == 0xC:
        info.update({
            "mnemonic": "JMP",
            "operands": f"0x{addr9:03X}",
            "fsm_path": ["FETCH", "DECODE", "EXECUTE"],
            "nominal_cycles": 3,
            "behind_the_scenes": f"Unconditionally loads 9-bit target address 0x{addr9:03X} into Program Counter during EXECUTE."
        })
    elif opcode == 0xD:
        mn, rule = COND_MAP.get(rd, ("BR", "?"))
        info.update({
            "mnemonic": mn,
            "operands": f"0x{addr9:03X}",
            "fsm_path": ["FETCH", "DECODE", "EXECUTE"],
            "nominal_cycles": 3,
            "behind_the_scenes": f"Evaluates condition ({rule}) against registered ZNCV flags; loads PC <- 0x{addr9:03X} if true."
        })
    elif opcode == 0xE:
        port_desc = NN_PORTS.get(port, LOCAL_PORTS.get(port, f"Port 0x{port:02X}"))
        if io_dir == 0:
            info.update({
                "mnemonic": "IN",
                "operands": f"R{rd}, 0x{port:02X}",
                "fsm_path": ["FETCH", "DECODE", "EXECUTE", "MEM_IO (+stalls)", "WRITEBACK"],
                "nominal_cycles": 5,
                "wb_sel": "11 (I/O Read Latch)",
                "behind_the_scenes": f"Asserts io_rd on port 0x{port:02X} ({port_desc}), stalls in MEM_IO until io_ready=1, latches byte, and writes R{rd}."
            })
        else:
            info.update({
                "mnemonic": "OUT",
                "operands": f"0x{port:02X}, R{rd}",
                "fsm_path": ["FETCH", "DECODE", "EXECUTE", "MEM_IO (+stalls)"],
                "nominal_cycles": 4,
                "behind_the_scenes": f"Asserts io_wr on port 0x{port:02X} ({port_desc}) with byte from R{rd}; completes when io_ready=1."
            })
    elif opcode == 0xF:
        info.update({
            "mnemonic": "HLT",
            "fsm_path": ["FETCH", "DECODE", "HALTED_S"],
            "nominal_cycles": 2,
            "behind_the_scenes": "Retires instruction in DECODE and transitions FSM into sticky HALTED_S state (halted = 1)."
        })

    return info

# -------------------------------------------------------------------------
# Helper: Parse Retirement Trace into Cycle-by-Cycle Cumulative State
# -------------------------------------------------------------------------
def parse_trace_file(trace_path: Path):
    if not trace_path.exists():
        return []
    
    regs = [0] * 8
    dmem = {}
    steps = []
    cum_cycles = 0

    with open(trace_path, "r") as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            parts = line.split()
            if len(parts) != 10:
                continue
            
            seq_s, pc_s, ir_s, rf_we_s, rd_s, rf_data_s, mem_we_s, mem_addr_s, mem_data_s, flags_s = parts
            rf_we = int(rf_we_s)
            rd_addr = int(rd_s, 16)
            rf_data = int(rf_data_s, 16)
            mem_we = int(mem_we_s)
            mem_addr = int(mem_addr_s, 16)
            mem_data = int(mem_data_s, 16)

            decoded = decode_instruction(ir_s)
            cum_cycles += decoded["nominal_cycles"]

            if rf_we:
                regs[rd_addr] = rf_data
            if mem_we:
                dmem[f"0x{mem_addr:02X}"] = mem_data

            steps.append({
                "seq": int(seq_s),
                "pc": f"0x{pc_s.upper()}",
                "ir": f"0x{ir_s.upper()}",
                "rf_we": rf_we,
                "rd_addr": rd_addr,
                "rf_data": rf_data,
                "mem_we": mem_we,
                "mem_addr": mem_addr,
                "mem_data": mem_data,
                "flags": {
                    "raw": flags_s,
                    "Z": int(flags_s[0]),
                    "N": int(flags_s[1]),
                    "C": int(flags_s[2]),
                    "V": int(flags_s[3]),
                },
                "decoded": decoded,
                "est_cumulative_cycles": cum_cycles,
                "registers_snapshot": list(regs),
                "dmem_snapshot": dict(dmem),
            })
    return steps

# -------------------------------------------------------------------------
# Helper: Lightweight VCD Parser for Curated DSD-8 Waveform
# -------------------------------------------------------------------------
def parse_vcd_file(vcd_path: Path):
    if not vcd_path.exists():
        return {"error": "VCD file not found. Run 'make waveform' first."}

    id_to_sig = {}
    scope_stack = []
    signals_meta = []
    changes = {}
    timestamps = []

    with open(vcd_path, "r") as f:
        lines = f.readlines()

    in_defs = True
    current_time = 0

    for raw_line in lines:
        line = raw_line.strip()
        if not line:
            continue

        if in_defs:
            if line.startswith("$scope"):
                parts = line.split()
                if len(parts) >= 3:
                    scope_stack.append(parts[2])
            elif line.startswith("$upscope"):
                if scope_stack:
                    scope_stack.pop()
            elif line.startswith("$var"):
                parts = line.split()
                # $var wire 8 ! leds [7:0] $end
                width = int(parts[2])
                sym = parts[3]
                name = parts[4]
                full_name = ".".join(scope_stack[-2:] + [name]) if len(scope_stack) >= 2 else name
                if sym not in id_to_sig:
                    id_to_sig[sym] = {"name": full_name, "width": width}
                    signals_meta.append({"id": sym, "name": full_name, "width": width})
                    changes[full_name] = []
            elif line.startswith("$enddefinitions"):
                in_defs = False
        else:
            if line.startswith("#"):
                current_time = int(line[1:])
                timestamps.append(current_time)
            elif line.startswith(("0", "1", "x", "z", "X", "Z")) and len(line) >= 2:
                val = line[0]
                sym = line[1:]
                if sym in id_to_sig:
                    sig_name = id_to_sig[sym]["name"]
                    changes[sig_name].append({"t": current_time, "v": val})
            elif line.startswith(("b", "B")):
                parts = line.split()
                if len(parts) == 2:
                    bin_str = parts[0][1:]
                    sym = parts[1]
                    if sym in id_to_sig:
                        sig_name = id_to_sig[sym]["name"]
                        try:
                            hex_val = f"0x{int(bin_str, 2):X}"
                        except ValueError:
                            hex_val = f"b{bin_str}"
                        changes[sig_name].append({"t": current_time, "v": hex_val})

    return {
        "max_time": timestamps[-1] if timestamps else 0,
        "signals": signals_meta,
        "changes": changes,
    }

# -------------------------------------------------------------------------
# API Endpoints: Local File Browser & Editor
# -------------------------------------------------------------------------
@app.get("/api/files")
def list_project_files():
    target_dirs = ["rtl", "tb", "sim", "tools", "nn", "tests", "scripts"]
    file_list = []
    for root_file in ["Makefile", "README.md", "STUDENT_GUIDE.md", "CHANGELOG.md"]:
        if (PROJECT_ROOT / root_file).exists():
            file_list.append(root_file)

    for d in target_dirs:
        dir_path = PROJECT_ROOT / d
        if dir_path.exists():
            for path in sorted(dir_path.rglob("*")):
                if path.is_file() and path.suffix in [".v", ".py", ".asm", ".hex", ".json", ".md", ".sh"]:
                    file_list.append(str(path.relative_to(PROJECT_ROOT)))
    return {"files": file_list}

@app.get("/api/file")
def read_project_file(path: str = Query(...)):
    full_path = (PROJECT_ROOT / path).resolve()
    if not str(full_path).startswith(str(PROJECT_ROOT)) or not full_path.exists():
        raise HTTPException(status_code=404, detail="File not found or access denied")
    return {"path": path, "content": full_path.read_text(encoding="utf-8", errors="replace")}

@app.post("/api/file")
def save_project_file(payload: FileUpdate):
    full_path = (PROJECT_ROOT / payload.path).resolve()
    if not str(full_path).startswith(str(PROJECT_ROOT)):
        raise HTTPException(status_code=403, detail="Invalid path")
    full_path.parent.mkdir(parents=True, exist_ok=True)
    full_path.write_text(payload.content, encoding="utf-8")
    return {"status": "saved", "path": payload.path}

# -------------------------------------------------------------------------
# API Endpoints: Live SSE Command Runner
# -------------------------------------------------------------------------
# -------------------------------------------------------------------------
# API Endpoints: Live SSE Command Runner
# -------------------------------------------------------------------------
ALLOWED_COMMANDS = {
    "lint": ["make", "lint"],
    "test": ["make", "test"],
    "conformance": ["make", "conformance"],
    "all": ["make", "all"],
    "waveform": ["make", "waveform"],
    "nn_ref": [sys.executable, "nn/nn_ref.py"],
    "nn_gen": ["make", "nn"],
    "bench_quick": [sys.executable, "scripts/run_nn.py", "--samples", "0", "--posted", "1"],
    "bench_full": ["make", "bench"],
}

@app.get("/api/stream/{cmd_key}")
def stream_command(cmd_key: str):
    if cmd_key not in ALLOWED_COMMANDS:
        raise HTTPException(status_code=400, detail="Unknown command key")

    cmd = ALLOWED_COMMANDS[cmd_key]

    def event_generator():
        yield f"data: $ {' '.join(cmd)}\n\n"
        try:
            proc = subprocess.Popen(
                cmd,
                cwd=str(PROJECT_ROOT),
                stdout=subprocess.PIPE,
                stderr=subprocess.STDOUT,
                text=True,
                bufsize=1,
            )
            for line in iter(proc.stdout.readline, ""):
                clean = line.rstrip("\r\n")
                yield f"data: {clean}\n\n"
            proc.stdout.close()
            rc = proc.wait()
            yield f"data: [Process exited with code {rc}]\n\n"
        except Exception as exc:
            yield f"data: [ERROR] {str(exc)}\n\n"

    return StreamingResponse(event_generator(), media_type="text/event-stream")

# -------------------------------------------------------------------------
# API Endpoints: Assemble & Simulate Custom or Existing Assembly
# -------------------------------------------------------------------------
@app.post("/api/simulate")
def assemble_and_simulate(req: CustomAssembleRequest):
    try:
        work_dir = PROJECT_ROOT / "build" / "studio_sim"
        work_dir.mkdir(parents=True, exist_ok=True)
        asm_file = work_dir / "studio_prog.asm"
        hex_file = work_dir / "studio_prog.hex"
        lst_file = work_dir / "studio_prog.lst"
        gold_trace = work_dir / "gold.trace"
        state_json = work_dir / "state.json"
        asm_file.write_text(req.asm_code, encoding="utf-8")
        asm_cmd = [sys.executable, "tools/dsd8asm.py", str(asm_file), "-o", str(hex_file), "--listing", str(lst_file)]
        asm_res = subprocess.run(asm_cmd, cwd=str(PROJECT_ROOT), capture_output=True, text=True)
        if asm_res.returncode != 0:
            return {"status": "error", "stage": "assembler", "log": asm_res.stderr or asm_res.stdout}
        if req.use_nn_sim:
            sim_cmd = [sys.executable, "tools/dsd8sim_nn.py", str(hex_file), "--trace", str(gold_trace), "--state-out", str(state_json)]
        else:
            sim_cmd = [sys.executable, "tools/dsd8sim.py", str(hex_file), "--trace", str(gold_trace), "--state-out", str(state_json), "--switches", req.switches, "--buttons", req.buttons]
        sim_res = subprocess.run(sim_cmd, cwd=str(PROJECT_ROOT), capture_output=True, text=True)
        if sim_res.returncode != 0:
            return {"status": "error", "stage": "golden_sim", "log": sim_res.stderr or sim_res.stdout}
        steps = parse_trace_file(gold_trace)
        final_state = json.loads(state_json.read_text()) if state_json.exists() else {}
        listing_text = lst_file.read_text() if lst_file.exists() else ""
        return {"status": "ok", "listing": listing_text, "final_state": final_state, "total_retired": len(steps), "trace_steps": steps, "log": sim_res.stdout}
    except Exception as e:
        return {"status": "error", "stage": "backend_exception", "log": str(e)}

# -------------------------------------------------------------------------
# API Endpoints: Waveform VCD & NN Benchmark Comparison Data
# -------------------------------------------------------------------------
@app.get("/api/waveform")
def get_waveform_data():
    vcd_path = PROJECT_ROOT / "build" / "waveform" / "dsd8_wave.vcd"
    if not vcd_path.exists():
        subprocess.run(["make", "waveform"], cwd=str(PROJECT_ROOT), capture_output=True)
    return parse_vcd_file(vcd_path)

@app.get("/api/nn/comparison")
def get_nn_comparison(sample_idx: int = 0):
    weights_path = PROJECT_ROOT / "nn" / "data" / "weights_q.json"
    weights_info = {}
    if weights_path.exists():
        raw = json.loads(weights_path.read_text())
        weights_info = {
            "shift1": raw.get("shift1"),
            "shift2": raw.get("shift2"),
            "num_test_samples": len(raw.get("X_test_q", [])),
            "sample_x": raw.get("X_test_q", [[0,0,0,0]])[sample_idx] if raw.get("X_test_q") else [],
            "sample_y_true": raw.get("y_test", [0])[sample_idx] if raw.get("y_test") else 0,
        }

    bench_md_path = PROJECT_ROOT / "build" / "nn" / "bench.md"
    bench_md_text = bench_md_path.read_text() if bench_md_path.exists() else None

    variants = [
        {
            "id": "b0",
            "name": "b0: Repeated Addition (Software)",
            "uses_nn_accel": False,
            "activation": "Software ReLU",
            "mean_cycles": 43155,
            "min_cycles": 41637,
            "max_cycles": 44678,
            "speedup_vs_b0": 1.0,
            "speedup_vs_b1": 0.6,
            "max_instr": 388,
            "asm_file": f"tests/nn/s{sample_idx:02d}_b0.asm"
        },
        {
            "id": "b1",
            "name": "b1: Shift-and-Add (Software)",
            "uses_nn_accel": False,
            "activation": "Software ReLU",
            "mean_cycles": 24427,
            "min_cycles": 24135,
            "max_cycles": 24654,
            "speedup_vs_b0": 1.8,
            "speedup_vs_b1": 1.0,
            "max_instr": 434,
            "asm_file": f"tests/nn/s{sample_idx:02d}_b1.asm"
        },
        {
            "id": "a0",
            "name": "a0: Looped Accel + SW Activation",
            "uses_nn_accel": True,
            "activation": "Software via NN_QOUT (0x57)",
            "mean_cycles": 2172,
            "min_cycles": 2171,
            "max_cycles": 2175,
            "speedup_vs_b0": 19.9,
            "speedup_vs_b1": 11.2,
            "max_instr": 260,
            "asm_file": f"tests/nn/s{sample_idx:02d}_a0.asm"
        },
        {
            "id": "a2",
            "name": "a2: Looped Accel + Hardware LUT",
            "uses_nn_accel": True,
            "activation": "Hardware LUT via NN_ACT (0x59)",
            "mean_cycles": 2071,
            "min_cycles": 2071,
            "max_cycles": 2071,
            "speedup_vs_b0": 20.8,
            "speedup_vs_b1": 11.8,
            "max_instr": 250,
            "asm_file": f"tests/nn/s{sample_idx:02d}_a2.asm"
        },
        {
            "id": "a4",
            "name": "a4: Fully Unrolled Accel + HW LUT",
            "uses_nn_accel": True,
            "activation": "Hardware LUT via NN_ACT (0x59)",
            "mean_cycles": 1087,
            "min_cycles": 1087,
            "max_cycles": 1087,
            "speedup_vs_b0": 39.7,
            "speedup_vs_b1": 22.5,
            "max_instr": 303,
            "asm_file": f"tests/nn/s{sample_idx:02d}_a4.asm"
        },
    ]

    return {
        "accuracy_summary": "22 / 23 (95.65%)",
        "configurations_verified": "230 / 230 (23 samples x 5 variants x 2 posted modes)",
        "sample_info": weights_info,
        "variants": variants,
        "bench_markdown": bench_md_text,
    }

# -------------------------------------------------------------------------
# Serve Compiled React Frontend in Production (Docker / Render)
# -------------------------------------------------------------------------
from fastapi.staticfiles import StaticFiles
from fastapi.responses import FileResponse

FRONTEND_DIST = PROJECT_ROOT / "frontend" / "dist"
if FRONTEND_DIST.exists():
    app.mount("/assets", StaticFiles(directory=str(FRONTEND_DIST / "assets")), name="assets")

    @app.get("/{full_path:path}")
    async def serve_spa(full_path: str):
        return FileResponse(str(FRONTEND_DIST / "index.html"))