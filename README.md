# DSD-8 Processor + int8 NN accelerator

Base code for the DSD-8 Processor project (Digital System Design), plus
the end-of-semester novelty: an **int8 neural-network accelerator** on
the I/O bus.

The baseline processor is implemented (all `rtl/` modules, unit tests,
both conformance samples green). The accelerator is a peripheral at
ports `0x50-0x5F` with a 3-stage pipelined signed multiply-accumulate
unit, zero-skipping, hardware requantisation and a LUT activation ROM.
It is **locked after reset** and unlocked by writing `0xA5` to port
`0x5F`, so the ISA, core, trace format and conformance behaviour are
unchanged. Speedup is measured against a software shift-and-add
baseline on the same core.

## Novelty: int8 NN accelerator

| Port | Name | Access | Function |
|---|---|---|---|
| 0x50 | `NN_A` | W | Activation operand (int8), latched |
| 0x51 | `NN_W` | W | Weight operand (int8); writing triggers one MAC |
| 0x52 | `NN_CTRL` | W | bit0 clear accumulator, bit1 clear counters |
| 0x53-0x55 | `NN_ACC0-2` | R | Accumulator bytes [7:0], [15:8], [23:16] |
| 0x56 | `NN_SHIFT` | W | Requantisation right shift (0-15) |
| 0x57 | `NN_QOUT` | R | `sat8(acc >>> shift)` |
| 0x58 | `NN_LUT_SEL` | W | LUT bank (0-3) |
| 0x59 | `NN_ACT` | R | `LUT[bank][sat8(acc >>> shift)]` |
| 0x5A | `NN_LUT_IDX` | W | Direct LUT index |
| 0x5B | `NN_LUT_VAL` | R | `LUT[bank][idx]` |
| 0x5C | `NN_SKIPCNT` | R | Zero-skipped MAC count (saturating) |
| 0x5D | `NN_MACCNT` | R | Executed MAC count (saturating) |
| 0x5E | - | - | Reserved, behaves as unmapped |
| 0x5F | `NN_KEY` | W/R | Write `0xA5` to unlock; read `{6'b0,busy,unlocked}` |

LUT banks: 0 ReLU, 1 sigmoid, 2 offset-binary identity, 3 tanh.

Modules: `nn_accel` (decode/lock/hazard/stats), `nn_mac_pipe`
(3-stage signed MAC), `nn_act` (requant + LUT), `nn_lut_rom`
(generated). `io_bus` gains the `0x50-0x5F` decode and an `NN_ENABLE`
parameter. The Python flow lives in `nn/`, the golden NN simulator in
`tools/dsd8sim_nn.py`, and the end-to-end runner in `scripts/run_nn.py`.

Build/test: `make nn` (NN unit + system tests), `make bench` (speedup
experiments), `make pack` (single-file `io_bus.v` for fixed file-list
graders). See `CHANGELOG.md` for every change.

## What's here

```
rtl/        module skeletons -- frozen ports, no behaviour yet (yours to write)
tb/         tb_dsd8.v (the supplied conformance harness, do not edit)
            + tb_alu_example.v (a worked example of a self-checking testbench)
sim/        instructor-supplied reference peripheral models (UART, timer, SLOW_ECHO)
tools/      dsd8asm.py (assembler) and dsd8sim.py (golden reference simulator)
tests/conformance/   two verified sample programs (see its README) --
            drop the real T01-T40 suite in here when it's distributed
scripts/    run_conformance.py, run_unit_tests.py, lint.sh, install_hooks.sh
doc/        design report / verification report / bug log templates
.github/    CI workflows, CODEOWNERS, PR and issue templates
```

## Quick start

```
git clone <your-team's-repo-url>
cd <repo>
./scripts/install_hooks.sh      # certify locally before every push
make lint                       # verilator --lint-only (needs verilator)
make test                       # every tb/tb_*.v unit testbench (needs iverilog)
make conformance                # tests/conformance/*.asm end to end
```

`make conformance` should work out of the box against the placeholder
RTL -- it will report both sample programs as **FAIL**, because
`dsd8_cpu`'s `retire` output is tied low in the placeholder (nothing is
emitted). That failure, cleanly reported with a diff, is the point:
the certification pipeline is what you are handed on day one, not
something you build at the end.

## The four things this template gives you that the spec describes but
## does not hand you the source of

1. **`tools/dsd8asm.py` / `tools/dsd8sim.py`** -- a real assembler and
   golden reference simulator implementing the full ISA (Sections 2-3),
   verified against the two fully-specified worked examples in
   Appendix B. This is what `dsd8sim.py` means everywhere the spec
   refers to "the reference simulator."
2. **`tb/tb_dsd8.v`** -- the harness described in Section 8.3, wired to
   `dsd8_cpu` + `instr_memory` + `io_bus` and emitting the exact
   ten-field trace format from Section 8.2.
3. **`sim/peripherals.v`** -- the reference UART/timer/SLOW_ECHO models
   Section 7.2 says are supplied, so a peripheral bug is never mistaken
   for a CPU bug (with two documented simplifications -- see the file).
4. **`scripts/run_conformance.py`** -- diffs your trace against the
   golden one and reports the first differing line, which is the whole
   verification methodology in Section 8.1 as one command.

See `README` files in `tb/` and `tests/conformance/` for more detail,
and the project doc "DSD-8 Processor -- GitHub Classroom & CI
Certification Plan" for the instructor-facing setup (GitHub Classroom,
branch protection, milestone tags, mark allocation).

## Workflow, in one paragraph

Branch per module or feature, PR into `main`, CI lints and unit-tests
on every push (conformance reports but doesn't gate), your module's
owner approves via CODEOWNERS, merge. At each milestone deadline, tag
the commit (`git tag m3 && git push --tags`) -- grading always reads
the tagged commit, and pushing a milestone tag makes conformance
authoritative for that ref. Full detail in `CONTRIBUTING.md`.
