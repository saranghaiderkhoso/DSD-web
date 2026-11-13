# Change log

All changes from the start of the NN-accelerator work (Part 2) onward.
Newest entries at the bottom. One row per file change, with the reason.

| Date+Time | File | Change | Reason |
|---|---|---|---|
| 2026-10-26 09:40 | `CHANGELOG.md` | Created | Record every change for the verification/design reports |
| 2026-10-26 09:45 | `nn/train.py` | Created | Iris 4-6-3 MLP training, min-max input scaling (not standardize — that was a wrong-start bug), 6 restarts best-of; writes `nn/data/model_float.npz` | Float reference for quantization (float test acc 0.9565) |
| 2026-10-26 09:55 | `nn/quantize.py` | Created | Symmetric per-tensor int8 quantization, bias folded as virtual `activation=127` input, 16×16 power-of-two shift grid search; writes `nn/data/weights_q.json` | int8 accuracy 22/23 = 0.9565, matches float |
| 2026-10-26 10:10 | `nn/nn_ref.py` | Created | Bit-exact golden software reference: `s24` wrap acc, `sat8`, 4 LUT banks, unsigned argmax | Gate for asm programs and the golden simulator |
| 2026-10-26 10:20 | `nn/gen_lut.py` | Created | Generates `rtl/nn_lut_rom.v` and `nn/data/lut_<bank>.json` / `.hex` | Single source of truth for LUTs on RTL and software sides |
| 2026-10-26 10:25 | `nn/data/*` | Generated | `model_float.npz`, `weights_q.json`, `lut_relu|sigmoid|offset_binary|tanh` `.json`+`.hex` | Production data for RTL tests, golden sim, and the program generator |
| 2026-10-26 10:30 | `rtl/nn_lut_rom.v` | Generated | 1024-word case ROM, 4 banks (ReLU / sigmoid-scaled / offset-binary / tanh×127); never hand-edited | Activations for RTL path |
| 2026-10-26 10:35 | `rtl/nn_act.v` | Created | Activation path: arithmetic right shift, sign-saturate to signed 8-bit, address recompute for offset bank | Activation stage of accelerator |
| 2026-10-26 10:50 | `rtl/nn_mac_pipe.v` | Created | 3-stage signed multiply-accumulate pipe feeding the accumulator | Pipelined MAC stage bank |
| 2026-10-26 11:10 | `rtl/nn_accel.v` | Created | Control: port decode 0x50–0x5F, lock gate (0xA5), zero-skip + executed-MAC counters, 24-bit wrap acc, requant shift + LUT-bank CSRs | Accelerator front end |
| 2026-10-26 11:25 | `rtl/io_bus.v` | Modified | Added `NN_ENABLE`/`NN_POSTED` params, `nn_hit` decode 0x50–0x5F, read mux and posted gating; periph range excludes nn ports | Attach accelerator to the existing I/O bus |
| 2026-10-26 11:45 | `tb/tb_nn_mac.v` | Created | 10k random vectors + corner cases, POSTED 0/1 | Core-level verification |
| 2026-10-26 11:55 | `tb/tb_nn_act.v` | Created | 16 shifts × sat vectors + 4×256 LUT readback from `data/lut_*.hex` | Activation unit verification |
| 2026-10-26 12:10 | `tb/tb_nn_accel.v` | Created | Lock keys, zero-skip counting, signed products, hazard checks, requant/LUT ops, 3 back-to-back posted MACs | Accelerator-level verification |
| 2026-10-26 12:35 | `rtl/instr_memory.v` | Modified | Runtime `+IMEM=<abs path>` plusargs image load (iverilog `-P` only overrides root-module params) | One testbench runs any conformance/NN image |
| 2026-10-26 12:55 | `scripts/run_conformance.py` | Modified | Appended `nn_accel.v`,`nn_mac_pipe.v`,`nn_act.v`,`nn_lut_rom.v` to RTL sources; passes `+IMEM=` to vvp | Conformance stays green with NN block in build |
| 2026-10-26 13:20 | `README.md` | Added novelty section, port map, build targets, status | Document accelerator and how to build/test it |
| 2026-10-26 13:55 | `nn/gen_programs.py` | Created | Per-sample generator: a0 (locked drift), a2 (looped MAC), a4 (unrolled MAC); weight-init, markers, argmax | A-variant programs fit IMEM (512) for all 23 samples |
| 2026-10-26 14:05 | `tools/dsd8sim_nn.py` | Created | `dsd8sim.Cpu` subclass modeling NN exactly (locked-until-0xA5, zero-skip, s24 wrap acc, sat8 requant, LUT readout) | Golden cross-check of RTL |
| 2026-10-26 14:20 | `nn/tb_nn_system.v` | Created | End-to-end bench: cpu+imem+io_bus+peripherals, 10-field trace, markers on port 0x02, ready-without-request and stall>4 checks, metrics file | Timed-region cycle measurement for speedup |
| 2026-10-26 14:30 | `tests/nn/*.asm` | Generated | 23 samples × a0/a2/a4 assembled; s00_a4 verified: RTL trace == golden trace, LED = class, 0 errors, timed region 1087 cycles (POSTED=0) | Evidence the pipeline works end to end |
| 2026-10-26 19:36 | `nn/gen_programs.py` | Modified | Weight/bias immediates masked `& 0xFF` in emitted `LDI` | Negative int8 values failed `parse_imm` before |
| 2026-10-26 19:37 | `nn/gen_programs.py` | Modified | `uid()` label uniquifier; `requant_16()` emits fresh label per shift iteration | Inlined multiply instances collided: 'label redefined' |
| 2026-10-26 19:38 | `nn/gen_programs.py` | Modified | Added software baselines: `prog_b0` (repeated addition), `prog_sw`/`prog_b1` (shift-and-add, 16-bit acc + `requant_16`); emits b0/b1 per sample | Fair baselines for speedup table; **pending** — s00_b1 = 1351 lines, s00_b0 = 1306 lines, both exceed IMEM 512; multiply bodies unvalidated (`mul_shift_add()` stub tail + wrong negation constant); needs loop restructuring |
| 2026-10-26 19:40 | `tests/nn/*.asm` | Regenerated | 23 samples × 5 variants (a0/a2/a4/b0/b1) after masking + uid fixes | b0/b1 currently fail to build; a-variants unaffected |
| 2026-10-26 19:42 | `rtl/io_bus.v` | Modified (fix) | Forced `io_ready = 0` when no request active (idle non-local path returned 1 before) | Removes 'ready without request' violation; CPU only samples ready while request high, traces unaffected |
| 2026-10-26 19:46 | `nn/tb_nn_system.v` | Modified | Metric counters (cycles/retired/errors/stall_run/start/end) switched to blocking assigns | Nonblocking increments raced the end-of-sim read, off by one at report time |
