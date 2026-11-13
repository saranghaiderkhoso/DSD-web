#!/usr/bin/env python3
"""Emit benchmark programs (B0/B1 software, A0-A4 accelerated) per sample."""
import json
import pathlib

ROOT = pathlib.Path(__file__).resolve().parent
DATA = ROOT / "data"
OUT = ROOT.parent / "tests" / "nn"

W1_BASE = 0
B1_BASE = 24
W2_BASE = 32
B2_BASE = 50
H_BASE = 64
L_BASE = 72
X_BASE = 80

ONE = "R4"
_UID = [0]


def uid():
    _UID[0] += 1
    return _UID[0]


def preamble(m, bank):
    return [
        "        LDI  R0, 0xA5",
        "        OUT  0x5F, R0",
        "        LDI  R0, 0x03",
        "        OUT  0x52, R0",
        f"        LDI  R0, {m['shift1']}",
        "        OUT  0x56, R0",
        f"        LDI  R0, {bank}",
        "        OUT  0x58, R0",
    ]


def load_inputs(x):
    out = []
    for i, v in enumerate(x):
        out.append(f"        LDI  R{i + 1}, {v}")
        out.append(f"        LDI  R7, {X_BASE + i}")
        out.append(f"        ST   [R7], R{i + 1}")
    return out


def weight_init(m):
    out = []
    for i, row in enumerate(m["w1"]):
        for j, v in enumerate(row):
            out.append(f"        LDI  R5, {v & 0xFF}")
            out.append(f"        LDI  R7, {W1_BASE + i * 6 + j}")
            out.append("        ST   [R7], R5")
    for j, v in enumerate(m["b1"]):
        out.append(f"        LDI  R5, {v & 0xFF}")
        out.append(f"        LDI  R7, {B1_BASE + j}")
        out.append("        ST   [R7], R5")
    for i, row in enumerate(m["w2"]):
        for k, v in enumerate(row):
            out.append(f"        LDI  R5, {v & 0xFF}")
            out.append(f"        LDI  R7, {W2_BASE + i * 3 + k}")
            out.append("        ST   [R7], R5")
    for k, v in enumerate(m["b2"]):
        out.append(f"        LDI  R5, {v & 0xFF}")
        out.append(f"        LDI  R7, {B2_BASE + k}")
        out.append("        ST   [R7], R5")
    return out


def neuron_loop(wbase, bias, shift, store_addr, act_mode):
    """Dot product over 4 inputs with bias, activation, store."""
    out = [
        f"        LDI  R0, {shift}",
        "        OUT  0x56, R0",
        "        LDI  R0, 0x01",
        "        OUT  0x52, R0",
        f"        LDI  R1, {X_BASE}",
        f"        LDI  R2, {wbase}",
        "        LDI  R3, 4",
        "        LDI  R4, 1",
        "n_loop: LD   R5, [R1]",
        "        OUT  0x50, R5",
        "        LD   R5, [R2]",
        "        OUT  0x51, R5",
        "        ADD  R1, R1, R4",
        "        ADD  R2, R2, R4",
        "        SUB  R3, R3, R4",
        "        BNE  n_loop",
        "        LDI  R5, 127",
        "        OUT  0x50, R5",
        f"        LDI  R5, {bias & 0xFF}",
        "        OUT  0x51, R5",
    ]
    if act_mode == "lut":
        out += ["        IN   R6, 0x59"]
    else:
        out += [
            "        IN   R6, 0x57",
            "        LDI  R7, 0",
            "        CMP  R6, R7",
            "        BPL  n_pos",
            "        LDI  R6, 0",
            "n_pos:  LDI  R7, 0x80",
            "        XOR  R6, R6, R7",
        ]
    out += [
        f"        LDI  R7, {store_addr}",
        "        ST   [R7], R6",
    ]
    return out


def argmax_signed():
    return [
        f"        LDI  R7, {L_BASE}",
        "        LD   R1, [R7]",
        f"        LDI  R7, {L_BASE + 1}",
        "        LD   R2, [R7]",
        f"        LDI  R7, {L_BASE + 2}",
        "        LD   R3, [R7]",
        "        LDI  R0, 0",
        "        CMP  R2, R1",
        "        BCC  a1",
        "        LDI  R0, 1",
        "        OR   R1, R2, R2",
        "a1:     CMP  R3, R1",
        "        BCC  a2",
        "        LDI  R0, 2",
        "a2:     OUT  0x02, R0",
        "        HLT",
    ]


def argmax_unsigned():
    return [
        f"        LDI  R7, {L_BASE}",
        "        LD   R1, [R7]",
        f"        LDI  R7, {L_BASE + 1}",
        "        LD   R2, [R7]",
        f"        LDI  R7, {L_BASE + 2}",
        "        LD   R3, [R7]",
        "        LDI  R0, 0",
        "        CMP  R2, R1",
        "        BCC  a1",
        "        LDI  R0, 1",
        "        OR   R1, R2, R2",
        "a1:     CMP  R3, R1",
        "        BCC  a2",
        "        LDI  R0, 2",
        "a2:     OUT  0x02, R0",
        "        HLT",
    ]


def prog_loop(m, x, act_mode):
    bank = 0 if act_mode == "lut" else 0
    out = preamble(m, bank) + load_inputs(x) + weight_init(m)
    out += ["        LDI  R0, 1", "        OUT  0x02, R0"]
    for j in range(6):
        out += neuron_loop(W1_BASE + j, B1_BASE + j, m["shift1"], H_BASE + j, act_mode)
    if act_mode == "lut":
        out += ["        LDI  R0, 2", "        OUT  0x58, R0"]
    for k in range(3):
        out += neuron_loop(W2_BASE + k * 6, B2_BASE + k, m["shift2"], L_BASE + k, act_mode)
    out += ["        LDI  R0, 2", "        OUT  0x02, R0"]
    out += argmax_unsigned() if act_mode == "lut" else argmax_signed()
    return out


def prog_unrolled(m, x):
    out = preamble(m, 0) + load_inputs(x)
    out += ["        LDI  R0, 1", "        OUT  0x02, R0"]
    for j in range(6):
        out += [
            "        LDI  R0, 0x01",
            "        OUT  0x52, R0",
            f"        LDI  R0, {m['shift1']}",
            "        OUT  0x56, R0",
        ]
        for i in range(4):
            out += [
                f"        LDI  R5, {m['w1'][i][j] & 0xFF}",
                f"        OUT  0x50, R{i + 1}",
                "        OUT  0x51, R5",
            ]
        out += [
            "        LDI  R5, 127",
            "        OUT  0x50, R5",
            f"        LDI  R5, {m['b1'][j] & 0xFF}",
            "        OUT  0x51, R5",
            "        IN   R6, 0x59",
            f"        LDI  R7, {H_BASE + j}",
            "        ST   [R7], R6",
        ]
    out += ["        LDI  R0, 2", "        OUT  0x58, R0"]
    for k in range(3):
        out += [
            "        LDI  R0, 0x01",
            "        OUT  0x52, R0",
            f"        LDI  R0, {m['shift2']}",
            "        OUT  0x56, R0",
        ]
        for j in range(6):
            out += [
                f"        LDI  R7, {H_BASE + j}",
                "        LD   R5, [R7]",
                f"        LDI  R6, {m['w2'][j][k] & 0xFF}",
                "        OUT  0x50, R5",
                "        OUT  0x51, R6",
            ]
        out += [
            "        LDI  R5, 127",
            "        OUT  0x50, R5",
            f"        LDI  R5, {m['b2'][k] & 0xFF}",
            "        OUT  0x51, R5",
            "        IN   R6, 0x59",
            f"        LDI  R7, {L_BASE + k}",
            "        ST   [R7], R6",
        ]
    out += ["        LDI  R0, 2", "        OUT  0x02, R0"]
    out += argmax_unsigned()
    return out


def mul_shift_add():
    """R5 = R5 * R6 (signed, 16-bit result in R2:R3). Clobbers R0,R2,R3,R7."""
    return [
        "        LDI  R2, 0",
        "        LDI  R3, 0",
        "        LDI  R7, 0",
        "        CMP  R5, R7",
        "        BPL  m_pos",
        "        LDI  R7, 1",
        "        XOR  R5, R5, R7",
        "        XOR  R5, R5, R7",
        "        LDI  R7, 0xFF",
        "        XOR  R5, R5, R7",
        "        ADD  R5, R5, R7",
        "m_pos:  LDI  R7, 8",
        "m_loop: SHR  R6, R6",
        "        BCC  m_skip",
        "        ADD  R2, R2, R5",
        "        BCC  m_skip",
        "        ADD  R3, R3, R7",
        "m_skip: SHL  R5, R5",
        "        BCC  m_cont",
        "        LDI  R7, 1",
        "        ADD  R3, R3, R7",
        "m_cont: LDI  R7, 1",
        "        SUB  R7, R7, R7",
        "        LDI  R7, 8",
        "        SUB  R7, R7, R7",
        "        LDI  R7, 8",
        "        SUB  R7, R7, R7",
        "        LDI  R7, 8",
        "        SUB  R7, R7, R7",
        "        LDI  R7, 8",
        "        SUB  R7, R7, R7",
        "        LDI  R7, 8",
        "        SUB  R7, R7, R7",
        "        LDI  R7, 8",
        "        SUB  R7, R7, R7",
        "        LDI  R7, 8",
        "        SUB  R7, R7, R7",
        "        LDI  R7, 8",
        "        SUB  R7, R7, R7",
    ]


def main():
    m = json.loads((DATA / "weights_q.json").read_text())
    OUT.mkdir(parents=True, exist_ok=True)
    for idx, s in enumerate(m["samples"]):
        x = s["x"]
        (OUT / f"s{idx:02d}_a0.asm").write_text("\n".join(prog_loop(m, x, "sw")) + "\n")
        (OUT / f"s{idx:02d}_a2.asm").write_text("\n".join(prog_loop(m, x, "lut")) + "\n")
        (OUT / f"s{idx:02d}_a4.asm").write_text("\n".join(prog_unrolled(m, x)) + "\n")
        (OUT / f"s{idx:02d}_b1.asm").write_text("\n".join(prog_sw(m, x, "b1")) + "\n")
        (OUT / f"s{idx:02d}_b0.asm").write_text("\n".join(prog_b0(m, x)) + "\n")
    print(f"wrote {len(m['samples'])} samples x 3 variants to {OUT}")




def mul_shift_add_16():
    """R2:R3 += R5 * R6 (signed 8x8 -> 16-bit). Clobbers R0,R7."""
    u = uid()
    return [
        "        LDI  R0, 0",
        "        LDI  R7, 0",
        "        LDI  R1, 8",
        f"ms_loop{u}: LDI  R0, 0x80",
        "        AND  R0, R6, R0",
        "        SHR  R6, R6",
        f"        BCC  ms_na{u}",
        "        ADD  R2, R2, R5",
        f"        BCC  ms_na{u}",
        "        LDI  R0, 1",
        "        ADD  R3, R3, R0",
        "        LDI  R0, 0x80",
        "        AND  R0, R6, R0",
        f"ms_na{u}:  OR   R6, R6, R0",
        "        SHL  R5, R5",
        f"        BCC  ms_nc{u}",
        "        LDI  R0, 1",
        "        ADD  R3, R3, R0",
        f"ms_nc{u}:  LDI  R0, 1",
        "        SUB  R1, R1, R0",
        f"        BNE  ms_loop{u}",
    ]


def requant_16(shift):
    """R2:R3 >>= shift (arithmetic), saturate to int8, ReLU. Result in R6."""
    u = uid()
    out = []
    for _ in range(shift):
        v = uid()
        out += [
            "        LDI  R0, 0x80",
            "        AND  R0, R3, R0",
            "        SHR  R3, R3",
            f"        BCC  rq_nc{v}",
            "        LDI  R7, 0x80",
            "        OR   R2, R2, R7",
            f"rq_nc{v}:  SHR  R2, R2",
            "        OR   R3, R3, R0",
        ]
    out += [
        "        LDI  R6, 0",
        "        CMP  R3, R6",
        f"        BEQ  rq_ok{u}",
        "        LDI  R7, 0xFF",
        "        CMP  R3, R7",
        f"        BEQ  rq_ok{u}",
        "        LDI  R7, 0x80",
        "        AND  R7, R3, R7",
        "        CMP  R7, R6",
        f"        BEQ  rq_pos{u}",
        "        LDI  R6, 0x80",
        f"        JMP  rq_done{u}",
        f"rq_pos{u}: LDI  R6, 0x7F",
        f"        JMP  rq_done{u}",
        f"rq_ok{u}:  OR   R6, R2, R2",
        f"rq_done{u}: LDI R7, 0",
        "        CMP  R6, R7",
        f"        BPL  rq_relu{u}",
        "        LDI  R6, 0",
        f"rq_relu{u}:",
    ]
    return out


def neuron_sw(wbase, bias, shift, store_addr):
    u = uid()
    out = [
        "        LDI  R2, 0",
        "        LDI  R3, 0",
        f"        LDI  R1, {X_BASE}",
        f"        LDI  R7, {wbase}",
        "        LDI  R4, 4",
        f"sw_loop{u}: LD   R5, [R1]",
        "        LD   R6, [R7]",
    ]
    out += mul_shift_add_16()
    out += [
        "        LDI  R0, 1",
        "        ADD  R1, R1, R0",
        "        ADD  R7, R7, R0",
        "        SUB  R4, R4, R0",
        f"        BNE  sw_loop{u}",
        "        LDI  R5, 127",
        f"        LDI  R6, {bias & 0xFF}",
    ]
    out += mul_shift_add_16()
    out += requant_16(shift)
    out += [f"        LDI  R7, {store_addr}", "        ST   [R7], R6"]
    return out


def prog_sw(m, x, mode):
    out = preamble(m, 0) + load_inputs(x) + weight_init(m)
    out += ["        LDI  R0, 1", "        OUT  0x02, R0"]
    for j in range(6):
        out += neuron_sw(W1_BASE + j, B1_BASE + j, m["shift1"], H_BASE + j)
    for k in range(3):
        out += neuron_sw(W2_BASE + k * 6, B2_BASE + k, m["shift2"], L_BASE + k)
    out += ["        LDI  R0, 2", "        OUT  0x02, R0"]
    out += argmax_unsigned()
    return out


def prog_b0(m, x):
    u = uid()
    out = preamble(m, 0) + load_inputs(x) + weight_init(m)
    out += ["        LDI  R0, 1", "        OUT  0x02, R0"]
    for j in range(6):
        out += [
            "        LDI  R2, 0",
            "        LDI  R3, 0",
            f"        LDI  R1, {X_BASE}",
            f"        LDI  R7, {W1_BASE + j}",
            "        LDI  R4, 4",
            f"b0_loop{u}: LD   R5, [R1]",
            "        LD   R6, [R7]",
            "        LDI  R0, 0",
            "        CMP  R6, R0",
            f"        BPL  b0_pos{u}",
            "        LDI  R0, 0xFF",
            "        XOR  R6, R6, R0",
            "        ADD  R6, R6, R0",
            f"b0_pos{u}: LDI  R0, 0",
            "        CMP  R6, R0",
            f"        BEQ  b0_next{u}",
            f"b0_add{u}: ADD  R2, R2, R5",
            f"        BCC  b0_nc{u}",
            "        LDI  R0, 1",
            "        ADD  R3, R3, R0",
            f"b0_nc{u}:  LDI  R0, 1",
            "        SUB  R6, R6, R0",
            f"        BNE  b0_add{u}",
            f"b0_next{u}: LDI  R0, 1",
            "        ADD  R1, R1, R0",
            "        ADD  R7, R7, R0",
            "        SUB  R4, R4, R0",
            f"        BNE  b0_loop{u}",
            f"        LDI  R5, {m['b1'][j] & 0xFF}",
            "        LDI  R6, 127",
        ]
        out += mul_shift_add_16()
        out += requant_16(m["shift1"])
        out += [f"        LDI  R7, {H_BASE + j}", "        ST   [R7], R6"]
    for k in range(3):
        out += [
            "        LDI  R2, 0",
            "        LDI  R3, 0",
            f"        LDI  R1, {H_BASE}",
            f"        LDI  R7, {W2_BASE + k * 6}",
            "        LDI  R4, 6",
            f"b0_loop2{u}: LD  R5, [R1]",
            "        LD   R6, [R7]",
            "        LDI  R0, 0",
            "        CMP  R6, R0",
            f"        BPL  b0_pos2{u}",
            "        LDI  R0, 0xFF",
            "        XOR  R6, R6, R0",
            "        ADD  R6, R6, R0",
            f"b0_pos2{u}: LDI R0, 0",
            "        CMP  R6, R0",
            f"        BEQ  b0_next2{u}",
            f"b0_add2{u}: ADD R2, R2, R5",
            f"        BCC  b0_nc2{u}",
            "        LDI  R0, 1",
            "        ADD  R3, R3, R0",
            f"b0_nc2{u}: LDI  R0, 1",
            "        SUB  R6, R6, R0",
            f"        BNE  b0_add2{u}",
            f"b0_next2{u}: LDI R0, 1",
            "        ADD  R1, R1, R0",
            "        ADD  R7, R7, R0",
            "        SUB  R4, R4, R0",
            f"        BNE  b0_loop2{u}",
            f"        LDI  R5, {m['b2'][k] & 0xFF}",
            "        LDI  R6, 127",
        ]
        out += mul_shift_add_16()
        out += requant_16(m["shift2"])
        out += [f"        LDI  R7, {L_BASE + k}", "        ST   [R7], R6"]
    out += ["        LDI  R0, 2", "        OUT  0x02, R0"]
    out += argmax_unsigned()
    return out


if __name__ == "__main__":
    main()
