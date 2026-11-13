import asyncio
import json
import os
import re
import subprocess
import sys
import tempfile
import time
from pathlib import Path
from typing import Dict, List, Optional

from fastapi import FastAPI, HTTPException
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import FileResponse, StreamingResponse
from fastapi.staticfiles import StaticFiles
from pydantic import BaseModel

app = FastAPI(title="DSD-8 Studio Backend API", version="2.0.0")

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

PROJECT_ROOT = Path(__file__).resolve().parent.parent
WEIGHTS_PATH = PROJECT_ROOT / "nn" / "data" / "weights_q.json"
BENCH_MD_PATH = PROJECT_ROOT / "build" / "nn" / "bench.md"
VCD_PATH = PROJECT_ROOT / "build" / "waveform" / "dsd8_wave.vcd"
TESTS_NN_DIR = PROJECT_ROOT / "tests" / "nn"


class SimRequest(BaseModel):
    asm_code: str
    use_nn_sim: bool = True
    switches: str = "0x00"
    buttons: str = "0x00"
    max_instrs: int = 50000
    breakpoint_pc: Optional[int] = None


class CustomNNRequest(BaseModel):
    features: List[int]  # 4 int8 features [x0, x1, x2, x3]
    shift1: Optional[int] = None
    shift2: Optional[int] = None
    lut_bank: int = 0


OPCODE_MNEMONICS = {
    0x0: "NOP",
    0x1: "LDI",
    0x2: "LD",
    0x3: "ST",
    0x4: "ADD",
    0x5: "SUB",
    0x6: "AND",
    0x7: "OR",
    0x8: "XOR",
    0x9: "SHL",
    0xA: "SHR",
    0xB: "CMP",
    0xC: "JMP",
    0xD: "B<cond>",
    0xE: "IN/OUT",
    0xF: "HLT",
}

BCOND_NAMES = ["BEQ", "BNE", "BCS", "BCC", "BMI", "BPL", "BVS", "BVC"]


def decode_ir(ir_val: int) -> Dict[str, object]:
    opcode = (ir_val >> 12) & 0xF
    rd = (ir_val >> 9) & 0x7
    rs1 = (ir_val >> 6) & 0x7
    rs2 = (ir_val >> 3) & 0x7
    imm8 = ir_val & 0xFF
    addr9 = ir_val & 0x1FF
    io_dir = (ir_val >> 8) & 0x1
    port = ir_val & 0xFF

    mnem = OPCODE_MNEMONICS.get(opcode, "UNK")
    if opcode == 0xD:
        mnem = BCOND_NAMES[rd]
    elif opcode == 0xE:
        mnem = "OUT" if io_dir == 1 else "IN"
    elif opcode == 0x7 and rs1 == rs2:
        mnem = "MOV"

    wb_sel = None
    if opcode in (0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xA):
        wb_sel = "00 (ALU)"
    elif opcode == 0x2:
        wb_sel = "01 (MEM)"
    elif opcode == 0x1:
        wb_sel = "10 (IMM)"
    elif opcode == 0xE and io_dir == 0:
        wb_sel = "11 (IO)"

    return {
        "opcode": opcode,
        "mnemonic": mnem,
        "rd": rd,
        "rs1": rs1,
        "rs2": rs2,
        "imm8": f"0x{imm8:02X}",
        "addr9": f"0x{addr9:03X}",
        "io_dir": io_dir,
        "port": f"0x{port:02X}",
        "wb_sel": wb_sel,
    }


def parse_trace_file(trace_text: str) -> List[Dict[str, object]]:
    steps = []
    for line in trace_text.strip().splitlines():
        line = line.strip()
        if not line or line.startswith("#"):
            continue
        parts = line.split()
        if len(parts) < 10:
            continue
        seq_str, pc_str, ir_str, rf_we_str, rd_addr_str, rf_data_str, mem_we_str, mem_addr_str, mem_data_str, flags_str = parts[:10]
        try:
            ir_int = int(ir_str, 16)
            pc_int = int(pc_str, 16)
        except ValueError:
            ir_int = 0
            pc_int = 0

        decoded = decode_ir(ir_int)
        steps.append(
            {
                "seq": int(seq_str),
                "pc": f"0x{pc_int:03X}",
                "pc_int": pc_int,
                "ir": f"0x{ir_int:04X}",
                "rf_we": int(rf_we_str),
                "rd_addr": int(rd_addr_str),
                "rf_data": f"0x{int(rf_data_str, 16):02X}",
                "mem_we": int(mem_we_str),
                "mem_addr": f"0x{int(mem_addr_str, 16):02X}",
                "mem_data": f"0x{int(mem_data_str, 16):02X}",
                "flags": flags_str,
                "decoded": decoded,
            }
        )
    return steps


def build_hardware_luts() -> Dict[str, List[int]]:
    """Generate the 4 256-entry int8 LUT banks used by the DSD-8 NN Accelerator."""
    import math

    relu_bank = []
    sigmoid_bank = []
    tanh_bank = []
    offset_bank = []

    for idx in range(256):
        signed_x = idx - 256 if idx >= 128 else idx
        # Bank 0: ReLU
        relu_bank.append(max(0, signed_x))
        # Bank 1: Quantized Sigmoid (0..127)
        sig = int(round(127.0 / (1.0 + math.exp(-signed_x / 16.0))))
        sigmoid_bank.append(max(0, min(127, sig)))
        # Bank 2: Quantized Tanh (-128..127 stored as unsigned byte)
        t_val = int(round(127.0 * math.tanh(signed_x / 32.0)))
        tanh_bank.append(t_val & 0xFF)
        # Bank 3: Offset binary (x + 128)
        offset_bank.append((signed_x + 128) & 0xFF)

    return {
        "0_ReLU": relu_bank,
        "1_Sigmoid": sigmoid_bank,
        "2_Tanh": tanh_bank,
        "3_OffsetBinary": offset_bank,
    }


@app.get("/api/status")
def get_status():
    return {
        "status": "ok",
        "project_root": str(PROJECT_ROOT),
        "weights_available": WEIGHTS_PATH.exists(),
        "bench_available": BENCH_MD_PATH.exists(),
        "vcd_available": VCD_PATH.exists(),
        "python_executable": sys.executable,
    }


@app.post("/api/simulate")
def simulate_asm(req: SimRequest):
    with tempfile.TemporaryDirectory() as tmpdir:
        tmp_path = Path(tmpdir)
        asm_file = tmp_path / "program.asm"
        hex_file = tmp_path / "program.hex"
        lst_file = tmp_path / "program.lst"
        trace_file = tmp_path / "gold.trace"
        state_file = tmp_path / "state.json"

        asm_file.write_text(req.asm_code, encoding="utf-8")

        # 1. Run Two-Pass Assembler (dsd8asm.py)
        asm_cmd = [
            sys.executable,
            str(PROJECT_ROOT / "tools" / "dsd8asm.py"),
            str(asm_file),
            "-o",
            str(hex_file),
            "--listing",
            str(lst_file),
        ]
        asm_proc = subprocess.run(
            asm_cmd, cwd=str(PROJECT_ROOT), capture_output=True, text=True
        )
        if asm_proc.returncode != 0:
            raise HTTPException(
                status_code=400,
                detail=f"Assembler Error:\n{asm_proc.stderr or asm_proc.stdout}",
            )

        hex_text = hex_file.read_text(encoding="utf-8") if hex_file.exists() else ""
        listing_text = lst_file.read_text(encoding="utf-8") if lst_file.exists() else ""

        # 2. Run Golden Simulator (dsd8sim_nn.py or dsd8sim.py)
        if req.use_nn_sim:
            sim_cmd = [
                sys.executable,
                str(PROJECT_ROOT / "tools" / "dsd8sim_nn.py"),
                str(hex_file),
                "--trace",
                str(trace_file),
                "--state-out",
                str(state_file),
                "--max-instrs",
                str(req.max_instrs),
            ]
        else:
            sim_cmd = [
                sys.executable,
                str(PROJECT_ROOT / "tools" / "dsd8sim.py"),
                str(hex_file),
                "--trace",
                str(trace_file),
                "--state-out",
                str(state_file),
                "--switches",
                req.switches,
                "--buttons",
                req.buttons,
            ]

        sim_proc = subprocess.run(
            sim_cmd, cwd=str(PROJECT_ROOT), capture_output=True, text=True
        )
        if sim_proc.returncode != 0:
            raise HTTPException(
                status_code=400,
                detail=f"Simulator Error:\n{sim_proc.stderr or sim_proc.stdout}",
            )

        raw_trace = trace_file.read_text(encoding="utf-8") if trace_file.exists() else ""
        steps = parse_trace_file(raw_trace)
        state_data = (
            json.loads(state_file.read_text(encoding="utf-8"))
            if state_file.exists()
            else {}
        )

        breakpoint_hit_idx = None
        if req.breakpoint_pc is not None:
            for idx, st in enumerate(steps):
                if st.get("pc_int") == req.breakpoint_pc:
                    breakpoint_hit_idx = idx
                    break

        return {
            "hex": hex_text,
            "listing": listing_text,
            "raw_trace": raw_trace,
            "trace": steps,
            "state": state_data,
            "total_steps": len(steps),
            "breakpoint_hit_idx": breakpoint_hit_idx,
        }


@app.get("/api/nn/samples")
def get_nn_samples():
    weights_data = {}
    if WEIGHTS_PATH.exists():
        try:
            weights_data = json.loads(WEIGHTS_PATH.read_text(encoding="utf-8"))
        except Exception:
            weights_data = {}

    bench_md = ""
    if BENCH_MD_PATH.exists():
        bench_md = BENCH_MD_PATH.read_text(encoding="utf-8")

    x_test = weights_data.get("X_test_q", [])
    y_test = weights_data.get("y_test", [])
    class_names = ["Iris-setosa", "Iris-versicolor", "Iris-virginica"]

    samples = []
    for idx in range(max(len(x_test), 23)):
        feats = x_test[idx] if idx < len(x_test) else [0, 0, 0, 0]
        label = y_test[idx] if idx < len(y_test) else 0
        samples.append(
            {
                "index": idx,
                "features": feats,
                "label": label,
                "class_name": class_names[label] if 0 <= label < 3 else f"Class {label}",
            }
        )

    return {
        "samples": samples,
        "shift1": weights_data.get("shift1", 7),
        "shift2": weights_data.get("shift2", 7),
        "bench_md": bench_md,
        "variants": ["b0", "b1", "a0", "a2", "a4"],
    }


@app.get("/api/nn/sample/{sample_idx}/{variant}")
def get_nn_sample_asm(sample_idx: int, variant: str):
    asm_file = TESTS_NN_DIR / f"s{sample_idx:02d}_{variant}.asm"
    if not asm_file.exists():
        raise HTTPException(
            status_code=404,
            detail=f"Sample assembly {asm_file.name} not found. Run 'make nn' in Toolchain tab to generate.",
        )
    asm_code = asm_file.read_text(encoding="utf-8")
    return {
        "sample_idx": sample_idx,
        "variant": variant,
        "filename": asm_file.name,
        "asm_code": asm_code,
    }


@app.get("/api/nn/lut")
def get_nn_luts():
    return {"luts": build_hardware_luts()}


def to_signed8(val: int) -> int:
    val = int(val) & 0xFF
    return val - 256 if val >= 128 else val


def sat8(val: int) -> int:
    return max(-128, min(127, int(val)))


def wrap24(val: int) -> int:
    val = int(val) & 0xFFFFFF
    return val - 0x1000000 if val & 0x800000 else val


@app.post("/api/nn/custom-infer")
def run_custom_nn_inference(req: CustomNNRequest):
    if not WEIGHTS_PATH.exists():
        raise HTTPException(
            status_code=404,
            detail="nn/data/weights_q.json not found. Run 'python3 nn/nn_ref.py' first.",
        )

    weights = json.loads(WEIGHTS_PATH.read_text(encoding="utf-8"))
    W1 = weights.get("W1_q", [])
    b1 = weights.get("b1_q", [])
    W2 = weights.get("W2_q", [])
    b2 = weights.get("b2_q", [])
    shift1 = req.shift1 if req.shift1 is not None else weights.get("shift1", 7)
    shift2 = req.shift2 if req.shift2 is not None else weights.get("shift2", 7)

    x_in = [sat8(v) for v in (req.features + [0, 0, 0, 0])[:4]]
    luts = build_hardware_luts()
    bank_keys = ["0_ReLU", "1_Sigmoid", "2_Tanh", "3_OffsetBinary"]
    selected_lut = luts[bank_keys[max(0, min(3, req.lut_bank))]]

    mac_count = 0
    skip_count = 0

    # Layer 1: 4 -> 6
    layer1_acc = []
    layer1_qout = []
    layer1_act = []

    for h in range(len(b1)):
        acc = wrap24(b1[h])
        for i in range(4):
            a_val = x_in[i]
            # Support both [6][4] and [4][6] weight layouts gracefully
            w_val = W1[h][i] if len(W1) == len(b1) else W1[i][h]
            if a_val == 0 or w_val == 0:
                skip_count += 1
            else:
                mac_count += 1
            acc = wrap24(acc + a_val * w_val)
        layer1_acc.append(acc)
        qout = sat8(acc >> shift1)
        layer1_qout.append(qout)
        lut_val = to_signed8(selected_lut[qout & 0xFF])
        layer1_act.append(lut_val)

    # Layer 2: 6 -> 3
    layer2_acc = []
    layer2_scores = []
    for c in range(len(b2)):
        acc = wrap24(b2[c])
        for h in range(len(b1)):
            a_val = layer1_act[h]
            w_val = W2[c][h] if len(W2) == len(b2) else W2[h][c]
            if a_val == 0 or w_val == 0:
                skip_count += 1
            else:
                mac_count += 1
            acc = wrap24(acc + a_val * w_val)
        layer2_acc.append(acc)
        qout = sat8(acc >> shift2)
        layer2_scores.append(qout)

    pred_class = int(max(range(len(layer2_scores)), key=lambda idx: layer2_scores[idx]))
    class_names = ["Iris-setosa", "Iris-versicolor", "Iris-virginica"]

    # Generate concise runnable DSD-8 Assembly snippet demonstrating Neuron 0 MAC + LUT
    w1_n0 = [W1[0][i] if len(W1) == len(b1) else W1[i][0] for i in range(4)]
    b1_n0 = b1[0] if b1 else 0
    asm_lines = [
        "; Custom Quantized Iris Neuron-0 Hardware Accelerator Test",
        f"; Input Vector X = {x_in}, shift1 = {shift1}, LUT Bank = {req.lut_bank}",
        "LDI R0, 0xA5",
        "OUT 0x5F, R0       ; Unlock int8 NN Accelerator",
        "LDI R0, 0x03",
        "OUT 0x52, R0       ; Clear 24-bit accumulator & MAC/skip counters",
        f"LDI R0, {shift1}",
        "OUT 0x56, R0       ; Set NN_SHIFT (port 0x56)",
        f"LDI R0, {req.lut_bank}",
        "OUT 0x58, R0       ; Select NN_LUT_SEL bank (port 0x58)",
        f"LDI R1, 1",
        "OUT 0x50, R1       ; A = 1 (for bias load)",
        f"LDI R2, {b1_n0 & 0xFF}",
        "OUT 0x51, R2       ; Acc += 1 * bias",
    ]
    for idx in range(4):
        asm_lines.extend(
            [
                f"LDI R1, {x_in[idx] & 0xFF}",
                f"OUT 0x50, R1       ; Feature X[{idx}] = {x_in[idx]}",
                f"LDI R2, {w1_n0[idx] & 0xFF}",
                f"OUT 0x51, R2       ; Weight W1[0][{idx}] = {w1_n0[idx]}",
            ]
        )
    asm_lines.extend(
        [
            "IN R3, 0x57        ; Read Requantized NN_QOUT (port 0x57)",
            "IN R4, 0x59        ; Read HW LUT Activated NN_ACT (port 0x59)",
            "IN R5, 0x5C        ; Read Zero-Skip Counter NN_SKIPCNT (port 0x5C)",
            "IN R6, 0x5D        ; Read Executed MAC Counter NN_MACCNT (port 0x5D)",
            "OUT 0x02, R4       ; Display Neuron-0 Activation on Board LEDs",
            "HLT",
        ]
    )

    return {
        "features": x_in,
        "shift1": shift1,
        "shift2": shift2,
        "lut_bank": req.lut_bank,
        "layer1_acc": layer1_acc,
        "layer1_qout": layer1_qout,
        "layer1_act": layer1_act,
        "layer2_acc": layer2_acc,
        "layer2_scores": layer2_scores,
        "predicted_class": pred_class,
        "predicted_name": class_names[pred_class] if 0 <= pred_class < 3 else f"Class {pred_class}",
        "mac_count": mac_count,
        "skip_count": skip_count,
        "total_ops": mac_count + skip_count,
        "sparsity_pct": round((skip_count / max(1, mac_count + skip_count)) * 100, 1),
        "generated_asm": "\n".join(asm_lines),
    }


def parse_vcd_file(vcd_path: Path, max_timestamps: int = 80) -> Dict[str, object]:
    text = vcd_path.read_text(encoding="utf-8", errors="ignore")
    lines = text.splitlines()

    scope_stack: List[str] = []
    id_to_sig: Dict[str, Dict[str, object]] = {}
    timestamps: List[int] = []
    current_values: Dict[str, str] = {}
    history: Dict[str, List[str]] = {}

    in_defs = True
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
                if len(parts) >= 5:
                    width = int(parts[2])
                    sig_id = parts[3]
                    sig_name = parts[4]
                    group = scope_stack[-1].upper() if scope_stack else "SYS"
                    if sig_id not in id_to_sig:
                        id_to_sig[sig_id] = {
                            "id": sig_id,
                            "name": sig_name,
                            "width": width,
                            "group": group,
                        }
                        current_values[sig_id] = "0" if width == 1 else "0x00"
                        history[sig_id] = []
            elif line.startswith("$enddefinitions"):
                in_defs = False
        else:
            if line.startswith("#"):
                if len(timestamps) >= max_timestamps:
                    break
                try:
                    ts = int(line[1:])
                except ValueError:
                    continue
                if timestamps:
                    for sid in id_to_sig:
                        history[sid].append(current_values.get(sid, "0"))
                timestamps.append(ts)
            elif line.startswith(("0", "1", "x", "z", "X", "Z")):
                val = line[0].lower()
                sid = line[1:].strip()
                if sid in id_to_sig:
                    current_values[sid] = "1" if val == "1" else "0"
            elif line.startswith(("b", "B")):
                parts = line.split()
                if len(parts) >= 2:
                    bits = parts[0][1:]
                    sid = parts[1]
                    if sid in id_to_sig:
                        width = int(id_to_sig[sid]["width"])
                        try:
                            ival = int(bits.replace("x", "0").replace("z", "0"), 2)
                            hex_len = max(1, (width + 3) // 4)
                            current_values[sid] = f"0x{ival:0{hex_len}X}"
                        except ValueError:
                            current_values[sid] = "0x00"

    if timestamps:
        for sid in id_to_sig:
            if len(history[sid]) < len(timestamps):
                history[sid].append(current_values.get(sid, "0"))

    signals_out = []
    for sid, meta in id_to_sig.items():
        signals_out.append(
            {
                "id": sid,
                "name": meta["name"],
                "width": meta["width"],
                "group": meta["group"],
                "values": history.get(sid, []),
            }
        )

    return {
        "source": str(vcd_path.name),
        "timestamps": timestamps,
        "signals": signals_out,
    }


@app.get("/api/waveform")
def get_waveform(generate: bool = False):
    if generate or not VCD_PATH.exists():
        try:
            subprocess.run(
                ["make", "waveform"],
                cwd=str(PROJECT_ROOT),
                capture_output=True,
                text=True,
                timeout=30,
            )
        except Exception:
            pass

    if VCD_PATH.exists():
        return parse_vcd_file(VCD_PATH)

    return {
        "source": "trace_synthesized",
        "timestamps": [],
        "signals": [],
    }


TEST_SUITE_TARGETS = {
    "tb_alu": {
        "name": "ALU Unit Testbench (tb_alu.v)",
        "Compile": ["iverilog", "-g2012", "-o", "build/tb_alu.vvp", "rtl/alu.v", "tb/tb_alu.v"],
        "Run": ["vvp", "build/tb_alu.vvp"],
    },
    "tb_nn": {
        "name": "NN Accelerator Unit Testbench (tb_nn_accel.v)",
        "Compile": [
            "iverilog",
            "-g2012",
            "-o",
            "build/tb_nn_accel.vvp",
            "rtl/nn_accel.v",
            "tb/tb_nn_accel.v",
        ],
        "Run": ["vvp", "build/tb_nn_accel.vvp"],
    },
    "tb_cpu": {
        "name": "Full CPU + Peripherals Testbench (make test)",
        "Run": ["make", "test"],
    },
    "conformance": {
        "name": "Golden Assembler & Simulator Conformance (make conformance)",
        "Run": ["make", "conformance"],
    },
    "lint": {
        "name": "Verilator Strict RTL Lint (make lint)",
        "Run": ["make", "lint"],
    },
}


@app.post("/api/test-suite/{target_key}")
def run_test_suite_target(target_key: str):
    if target_key not in TEST_SUITE_TARGETS:
        raise HTTPException(status_code=404, detail=f"Unknown test target: {target_key}")

    os.makedirs(PROJECT_ROOT / "build", exist_ok=True)
    target = TEST_SUITE_TARGETS[target_key]
    start_t = time.time()
    logs = []
    passed = True

    if "Compile" in target:
        c_proc = subprocess.run(
            target["Compile"], cwd=str(PROJECT_ROOT), capture_output=True, text=True
        )
        if c_proc.stdout:
            logs.append(c_proc.stdout)
        if c_proc.stderr:
            logs.append(c_proc.stderr)
        if c_proc.returncode != 0:
            passed = False

    if passed and "Run" in target:
        r_proc = subprocess.run(
            target["Run"], cwd=str(PROJECT_ROOT), capture_output=True, text=True
        )
        if r_proc.stdout:
            logs.append(r_proc.stdout)
        if r_proc.stderr:
            logs.append(r_proc.stderr)
        if r_proc.returncode != 0 or "FAIL" in (r_proc.stdout + r_proc.stderr):
            passed = False

    duration_ms = int((time.time() - start_t) * 1000)
    full_log = "\n".join(logs).strip()
    pass_matches = len(re.findall(r"PASS", full_log, re.IGNORECASE))
    fail_matches = len(re.findall(r"FAIL", full_log, re.IGNORECASE))

    return {
        "target": target_key,
        "name": target["name"],
        "passed": passed and fail_matches == 0,
        "pass_count": max(1 if passed else 0, pass_matches),
        "fail_count": fail_matches,
        "duration_ms": duration_ms,
        "log": full_log or "Completed with exit code 0.",
    }


ALLOWED_COMMANDS = {
    "lint": ["make", "lint"],
    "test": ["make", "test"],
    "conformance": ["make", "conformance"],
    "all": ["make", "all"],
    "waveform": ["make", "waveform"],
    "nn_ref": [sys.executable, "nn/nn_ref.py"],
    "nn_build": ["make", "nn"],
    "nn_run": [sys.executable, "scripts/run_nn.py"],
    "bench": ["make", "bench"],
}


@app.get("/api/cmd/{cmd_key}")
async def stream_command(cmd_key: str):
    if cmd_key not in ALLOWED_COMMANDS:
        raise HTTPException(status_code=400, detail=f"Invalid command key: {cmd_key}")

    cmd = ALLOWED_COMMANDS[cmd_key]

    async def event_generator():
        yield f"data: $ {' '.join(cmd)}\n\n"
        try:
            proc = await asyncio.create_subprocess_exec(
                *cmd,
                cwd=str(PROJECT_ROOT),
                stdout=asyncio.subprocess.PIPE,
                stderr=asyncio.subprocess.STDOUT,
            )
            assert proc.stdout is not None
            while True:
                line = await proc.stdout.readline()
                if not line:
                    break
                decoded_line = line.decode("utf-8", errors="replace").rstrip("\r\n")
                yield f"data: {decoded_line}\n\n"
            rc = await proc.wait()
            yield f"data: [Process exited with code {rc}]\n\n"
        except Exception as exc:
            yield f"data: [Error executing command: {exc}]\n\n"

    return StreamingResponse(event_generator(), media_type="text/event-stream")


# Static SPA Serving for Production (Docker / Render.com)
FRONTEND_DIST = PROJECT_ROOT / "frontend" / "dist"
if FRONTEND_DIST.exists():
    app.mount(
        "/assets",
        StaticFiles(directory=str(FRONTEND_DIST / "assets")),
        name="assets",
    )

    @app.get("/{full_path:path}")
    async def serve_spa(full_path: str):
        return FileResponse(str(FRONTEND_DIST / "index.html"))
