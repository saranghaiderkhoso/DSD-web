import { useState, useEffect, useRef, useMemo } from "react";
import {
  Cpu,
  Play,
  Pause,
  SkipForward,
  SkipBack,
  RotateCcw,
  Terminal,
  Activity,
  BrainCircuit,
  Code2,
  Sliders,
  Download,
  FileCode,
  FileText,
  Printer,
  ShieldCheck,
  Sparkles,
  ZoomIn,
  ZoomOut,
  AlertCircle,
  CheckCircle,
  XCircle,
  FastForward,
} from "lucide-react";

const API_BASE = "";

const DEFAULT_ASM = `; DSD-8 + int8 Neural Network Accelerator Demo
LDI R0, 0xA5
OUT 0x5F, R0 ; Unlock NN Accelerator (Port 0x5F = 0xA5)
LDI R0, 0x03
OUT 0x52, R0 ; Clear 24-bit accumulator & counters
LDI R1, 3
OUT 0x50, R1 ; Latch activation A = 3
LDI R2, 4
OUT 0x51, R2 ; Trigger MAC with weight W = 4 (acc += 3*4 = 12)
IN R3, 0x53  ; Read low accumulator byte (NN_ACC0 = 0x0C)
OUT 0x02, R3 ; Output 0x0C to board LEDs
HLT`;

interface DecodedIR {
  opcode: number;
  mnemonic: string;
  rd: number;
  rs1: number;
  rs2: number;
  imm8: string;
  addr9: string;
  io_dir: number;
  port: string;
  wb_sel: string | null;
}

interface TraceStep {
  seq: number;
  pc: string;
  pc_int: number;
  ir: string;
  rf_we: number;
  rd_addr: number;
  rf_data: string;
  mem_we: number;
  mem_addr: string;
  mem_data: string;
  flags: string;
  decoded: DecodedIR;
}

interface SimState {
  pc?: number;
  regs?: number[];
  flags?: { Z?: number; N?: number; C?: number; V?: number };
  dmem?: number[];
  halted?: boolean;
  leds?: number;
  seg_value?: number;
  seg_enable?: number;
  nn?: {
    unlocked?: boolean;
    a?: number;
    w?: number;
    acc?: number;
    shift?: number;
    qout?: number;
    lut_sel?: number;
    act?: number;
    skip_cnt?: number;
    mac_cnt?: number;
  };
}

interface NNSample {
  index: number;
  features: number[];
  label: number;
  class_name: string;
}

interface CustomNNResult {
  features: number[];
  shift1: number;
  shift2: number;
  lut_bank: number;
  layer1_acc: number[];
  layer1_qout: number[];
  layer1_act: number[];
  layer2_acc: number[];
  layer2_scores: number[];
  predicted_class: number;
  predicted_name: string;
  mac_count: number;
  skip_count: number;
  total_ops: number;
  sparsity_pct: number;
  generated_asm: string;
}

interface WaveformSignal {
  id: string;
  name: string;
  width: number;
  group: string;
  values: string[];
}

interface TestTargetResult {
  target: string;
  name: string;
  passed: boolean;
  pass_count: number;
  fail_count: number;
  duration_ms: number;
  log: string;
}

const BENCHMARK_ROWS = [
  {
    variant: "b0",
    desc: "Repeated-Addition Software Multiply",
    mean: 43155,
    min: 41637,
    max: 44678,
    speedupB0: "1.0x",
    speedupB1: "0.6x",
    maxInstr: 388,
  },
  {
    variant: "b1",
    desc: "Shift-and-Add Software Multiply",
    mean: 24427,
    min: 24135,
    max: 24654,
    speedupB0: "1.8x",
    speedupB1: "1.0x",
    maxInstr: 434,
  },
  {
    variant: "a0",
    desc: "Looped Hardware MAC + SW Activation (0x57)",
    mean: 2172,
    min: 2171,
    max: 2175,
    speedupB0: "19.9x",
    speedupB1: "11.2x",
    maxInstr: 260,
  },
  {
    variant: "a2",
    desc: "Looped Hardware MAC + HW LUT (0x59)",
    mean: 2071,
    min: 2071,
    max: 2071,
    speedupB0: "20.8x",
    speedupB1: "11.8x",
    maxInstr: 250,
  },
  {
    variant: "a4",
    desc: "Fully Unrolled Hardware MAC + HW LUT (0x59)",
    mean: 1087,
    min: 1087,
    max: 1087,
    speedupB0: "39.7x",
    speedupB1: "22.5x",
    maxInstr: 303,
  },
];

export default function App() {
  const [activeTab, setActiveTab] = useState<
    "cpu" | "datapath" | "waveform" | "nn" | "wizard" | "verify" | "toolchain"
  >("cpu");

  // Simulator State
  const [asmCode, setAsmCode] = useState<string>(DEFAULT_ASM);
  const [useNnSim, setUseNnSim] = useState<boolean>(true);
  const [switchesVal, setSwitchesVal] = useState<number>(0);
  const [buttonsVal, setButtonsVal] = useState<number>(0);
  const [trace, setTrace] = useState<TraceStep[]>([]);
  const [rawTrace, setRawTrace] = useState<string>("");
  const [hexCode, setHexCode] = useState<string>("");
  const [listing, setListing] = useState<string>("");
  const [finalState, setFinalState] = useState<SimState>({});
  const [stepIdx, setStepIdx] = useState<number>(0);
  const [isPlaying, setIsPlaying] = useState<boolean>(false);
  const [playSpeedMs, setPlaySpeedMs] = useState<number>(250);
  const [simError, setSimError] = useState<string | null>(null);
  const [isSimulating, setIsSimulating] = useState<boolean>(false);

  // Advanced Debugging: Breakpoints & Watchpoints
  const [breakpoints, setBreakpoints] = useState<number[]>([]);
  const [bpInput, setBpInput] = useState<string>("0x006");
  const [watchReg, setWatchReg] = useState<number | null>(null);
  const [debugNotice, setDebugNotice] = useState<string | null>(null);

  // NN Studio & Wizard State
  const [nnSamples, setNnSamples] = useState<NNSample[]>([]);
  const [selectedSample, setSelectedSample] = useState<number>(0);
  const [selectedVariant, setSelectedVariant] = useState<string>("a4");
  const [benchMd, setBenchMd] = useState<string>("");
  const [customFeatures, setCustomFeatures] = useState<number[]>([51, 35, 14, 2]);
  const [customShift1, setCustomShift1] = useState<number>(7);
  const [customShift2, setCustomShift2] = useState<number>(7);
  const [customLutBank, setCustomLutBank] = useState<number>(0);
  const [customNnResult, setCustomNnResult] = useState<CustomNNResult | null>(null);
  const [lutsData, setLutsData] = useState<Record<string, number[]>>({});

  // Waveform Viewer State
  const [waveTimestamps, setWaveTimestamps] = useState<number[]>([]);
  const [waveSignals, setWaveSignals] = useState<WaveformSignal[]>([]);
  const [waveSource, setWaveSource] = useState<string>("trace_synthesized");
  const [waveGroupFilter, setWaveGroupFilter] = useState<string>("ALL");
  const [waveZoom, setWaveZoom] = useState<number>(38);

  // Verification Suite State
  const [testResults, setTestResults] = useState<Record<string, TestTargetResult>>({});
  const [runningTestKey, setRunningTestKey] = useState<string | null>(null);

  // Toolchain Console State
  const [consoleLines, setConsoleLines] = useState<string[]>([
    "DSD-8 Studio Ready. Select a verification or build command above.",
  ]);
  const [isRunningCmd, setIsRunningCmd] = useState<boolean>(false);
  const consoleEndRef = useRef<HTMLDivElement | null>(null);

  // Reconstruct Architectural State at current stepIdx
  const reconstructed = useMemo(() => {
    const regs = [0, 0, 0, 0, 0, 0, 0, 0];
    const dmem = new Array(256).fill(0);
    let flags = "0000";
    let leds = 0;
    let segVal = 0;
    let segEn = 0;
    let nnUnlocked = false;
    let nnA = 0;
    let nnW = 0;
    let nnAcc = 0;
    let nnShift = 0;
    let nnLutSel = 0;
    let nnSkipCnt = 0;
    let nnMacCnt = 0;

    const limit = Math.min(stepIdx, trace.length - 1);
    for (let i = 0; i <= limit; i++) {
      const s = trace[i];
      if (!s) continue;
      if (s.rf_we === 1 && s.rd_addr >= 0 && s.rd_addr < 8) {
        regs[s.rd_addr] = parseInt(s.rf_data, 16) || 0;
      }
      if (s.mem_we === 1) {
        const mAddr = parseInt(s.mem_addr, 16) || 0;
        if (mAddr >= 0 && mAddr < 256) {
          dmem[mAddr] = parseInt(s.mem_data, 16) || 0;
        }
      }
      flags = s.flags || flags;

      // Track I/O OUT instructions (opcode 0xE, io_dir == 1)
      if (s.decoded.opcode === 0xe && s.decoded.io_dir === 1) {
        const portNum = parseInt(s.decoded.port, 16);
        const srcVal = regs[s.decoded.rs1] ?? 0;
        const signedSrc = srcVal >= 128 ? srcVal - 256 : srcVal;
        if (portNum === 0x02) leds = srcVal;
        if (portNum === 0x10) segVal = srcVal;
        if (portNum === 0x11) segEn = srcVal;
        if (portNum === 0x5f && srcVal === 0xa5) nnUnlocked = true;
        if (nnUnlocked) {
          if (portNum === 0x50) nnA = signedSrc;
          if (portNum === 0x51) {
            nnW = signedSrc;
            if (nnA === 0 || nnW === 0) {
              nnSkipCnt = Math.min(255, nnSkipCnt + 1);
            } else {
              nnMacCnt = Math.min(255, nnMacCnt + 1);
            }
            nnAcc = nnAcc + nnA * nnW;
          }
          if (portNum === 0x52) {
            if (srcVal & 1) nnAcc = 0;
            if (srcVal & 2) {
              nnSkipCnt = 0;
              nnMacCnt = 0;
            }
          }
          if (portNum === 0x56) nnShift = srcVal & 0x0f;
          if (portNum === 0x58) nnLutSel = srcVal & 0x03;
        }
      }
    }

    const qoutRaw = nnAcc >> nnShift;
    const nnQout = Math.max(-128, Math.min(127, qoutRaw));
    const nnAct = nnLutSel === 0 ? Math.max(0, nnQout) : nnQout;

    return {
      regs,
      dmem,
      flags,
      leds: finalState.leds ?? leds,
      segVal: finalState.seg_value ?? segVal,
      segEn: finalState.seg_enable ?? segEn,
      nn: {
        unlocked: finalState.nn?.unlocked ?? nnUnlocked,
        a: nnA,
        w: nnW,
        acc: nnAcc,
        shift: nnShift,
        qout: nnQout,
        lut_sel: nnLutSel,
        act: nnAct,
        skip_cnt: nnSkipCnt,
        mac_cnt: nnMacCnt,
      },
    };
  }, [trace, stepIdx, finalState]);

  const currentStep: TraceStep | null = trace[stepIdx] ?? null;

  // Auto-stepping interval with Breakpoint & Watchpoint detection
  useEffect(() => {
    if (!isPlaying) return;
    const timer = setInterval(() => {
      setStepIdx((prev) => {
        const next = prev + 1;
        if (next >= trace.length) {
          setIsPlaying(false);
          return prev;
        }
        const nextStep = trace[next];
        if (nextStep && breakpoints.includes(nextStep.pc_int)) {
          setIsPlaying(false);
          setDebugNotice(`Breakpoint hit at PC ${nextStep.pc} (Step #${nextStep.seq})`);
          return next;
        }
        if (
          watchReg !== null &&
          nextStep &&
          nextStep.rf_we === 1 &&
          nextStep.rd_addr === watchReg
        ) {
          setIsPlaying(false);
          setDebugNotice(
            `Watchpoint hit: R${watchReg} written with ${nextStep.rf_data} at PC ${nextStep.pc}`
          );
          return next;
        }
        return next;
      });
    }, playSpeedMs);
    return () => clearInterval(timer);
  }, [isPlaying, trace, playSpeedMs, breakpoints, watchReg]);

  useEffect(() => {
    runSimulation(DEFAULT_ASM, true);
    fetchNnSamples();
    fetchNnLuts();
  }, []);

  useEffect(() => {
    consoleEndRef.current?.scrollIntoView({ behavior: "smooth" });
  }, [consoleLines]);

  async function runSimulation(codeToSim = asmCode, nnMode = useNnSim) {
    setIsSimulating(true);
    setSimError(null);
    setDebugNotice(null);
    setIsPlaying(false);
    try {
      const res = await fetch(`${API_BASE}/api/simulate`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          asm_code: codeToSim,
          use_nn_sim: nnMode,
          switches: `0x${switchesVal.toString(16).padStart(2, "0")}`,
          buttons: `0x${buttonsVal.toString(16).padStart(2, "0")}`,
        }),
      });
      const data = await res.json();
      if (!res.ok) {
        setSimError(data.detail || "Simulation failed.");
        return;
      }
      setTrace(data.trace || []);
      setRawTrace(data.raw_trace || "");
      setHexCode(data.hex || "");
      setListing(data.listing || "");
      setFinalState(data.state || {});
      setStepIdx(0);
    } catch (err) {
      setSimError(`Backend connection error: ${String(err)}`);
    } finally {
      setIsSimulating(false);
    }
  }

  async function fetchNnSamples() {
    try {
      const res = await fetch(`${API_BASE}/api/nn/samples`);
      if (!res.ok) return;
      const data = await res.json();
      setNnSamples(data.samples || []);
      setBenchMd(data.bench_md || "");
      if (data.shift1 !== undefined) setCustomShift1(data.shift1);
      if (data.shift2 !== undefined) setCustomShift2(data.shift2);
    } catch {
      // Ignore initial fetch errors
    }
  }

  async function fetchNnLuts() {
    try {
      const res = await fetch(`${API_BASE}/api/nn/lut`);
      if (!res.ok) return;
      const data = await res.json();
      setLutsData(data.luts || {});
    } catch {
      // Ignore
    }
  }

  async function loadSampleVariantAsm(sampleIdx: number, variant: string) {
    try {
      const res = await fetch(`${API_BASE}/api/nn/sample/${sampleIdx}/${variant}`);
      const data = await res.json();
      if (!res.ok) {
        setSimError(data.detail || "Could not load sample assembly.");
        return;
      }
      setAsmCode(data.asm_code);
      setUseNnSim(true);
      setActiveTab("cpu");
      await runSimulation(data.asm_code, true);
    } catch (err) {
      setSimError(`Error loading sample assembly: ${String(err)}`);
    }
  }

  async function runCustomWizardInference() {
    try {
      const res = await fetch(`${API_BASE}/api/nn/custom-infer`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          features: customFeatures,
          shift1: customShift1,
          shift2: customShift2,
          lut_bank: customLutBank,
        }),
      });
      const data = await res.json();
      if (res.ok) {
        setCustomNnResult(data);
      } else {
        setSimError(data.detail || "Custom NN inference failed.");
      }
    } catch (err) {
      setSimError(`Custom NN inference error: ${String(err)}`);
    }
  }

  async function loadVcdWaveform(generateNew: boolean) {
    try {
      const res = await fetch(
        `${API_BASE}/api/waveform?generate=${generateNew ? "true" : "false"}`
      );
      if (!res.ok) return;
      const data = await res.json();
      if (data.signals && data.signals.length > 0) {
        setWaveTimestamps(data.timestamps || []);
        setWaveSignals(data.signals || []);
        setWaveSource(data.source || "dsd8_wave.vcd");
      }
    } catch {
      // Fallback to trace-synthesized waveform
    }
  }

  // Synthesize cycle-accurate digital waveforms from active trace when VCD not loaded
  const effectiveWaveform = useMemo(() => {
    if (waveSignals.length > 0 && waveTimestamps.length > 0) {
      return {
        source: waveSource,
        timestamps: waveTimestamps,
        signals: waveSignals,
      };
    }
    const slice = trace.slice(0, 60);
    const ts = slice.map((s) => s.seq * 10);
    const clkVals = slice.map((_, idx) => (idx % 2 === 0 ? "1" : "0"));
    const pcVals = slice.map((s) => s.pc);
    const irVals = slice.map((s) => s.ir);
    const mnemVals = slice.map((s) => s.decoded.mnemonic);
    const rfWeVals = slice.map((s) => String(s.rf_we));
    const rfDataVals = slice.map((s) => s.rf_data);
    const memWeVals = slice.map((s) => String(s.mem_we));
    const flagsVals = slice.map((s) => s.flags);

    const synthSignals: WaveformSignal[] = [
      { id: "s_clk", name: "sys_clk", width: 1, group: "CPU", values: clkVals },
      { id: "s_pc", name: "pc[8:0]", width: 9, group: "CPU", values: pcVals },
      { id: "s_ir", name: "ir[15:0]", width: 16, group: "CPU", values: irVals },
      { id: "s_mnem", name: "opcode_mnem", width: 16, group: "CPU", values: mnemVals },
      { id: "s_rfwe", name: "rf_we", width: 1, group: "CPU", values: rfWeVals },
      { id: "s_rfdata", name: "rf_wdata[7:0]", width: 8, group: "CPU", values: rfDataVals },
      { id: "s_memwe", name: "dmem_we", width: 1, group: "IO", values: memWeVals },
      { id: "s_flags", name: "flags_ZNCV[3:0]", width: 4, group: "NN", values: flagsVals },
    ];
    return {
      source: "Active Simulation Trace (Live Synthesized)",
      timestamps: ts,
      signals: synthSignals,
    };
  }, [waveSignals, waveTimestamps, waveSource, trace]);

  async function runSingleTestTarget(targetKey: string) {
    setRunningTestKey(targetKey);
    try {
      const res = await fetch(`${API_BASE}/api/test-suite/${targetKey}`, {
        method: "POST",
      });
      const data = await res.json();
      if (res.ok) {
        setTestResults((prev) => ({ ...prev, [targetKey]: data }));
      }
    } finally {
      setRunningTestKey(null);
    }
  }

  function runStreamCommand(cmdKey: string) {
    if (isRunningCmd) return;
    setIsRunningCmd(true);
    setConsoleLines((prev) => [...prev, `\n--- Launching '${cmdKey}' ---`]);
    const evtSource = new EventSource(`${API_BASE}/api/cmd/${cmdKey}`);
    evtSource.onmessage = (event) => {
      setConsoleLines((prev) => [...prev, event.data]);
      if (event.data.includes("[Process exited")) {
        evtSource.close();
        setIsRunningCmd(false);
        fetchNnSamples();
      }
    };
    evtSource.onerror = () => {
      setConsoleLines((prev) => [...prev, "[Stream closed]"]);
      evtSource.close();
      setIsRunningCmd(false);
    };
  }

  function toggleBreakpoint(pcInt: number) {
    setBreakpoints((prev) =>
      prev.includes(pcInt) ? prev.filter((p) => p !== pcInt) : [...prev, pcInt]
    );
  }

  function addBpFromInput() {
    const parsed = parseInt(bpInput, 16);
    if (!Number.isNaN(parsed) && parsed >= 0 && parsed <= 0x1ff) {
      if (!breakpoints.includes(parsed)) {
        setBreakpoints((prev) => [...prev, parsed]);
      }
    }
  }

  function jumpToNextBreakpoint() {
    for (let i = stepIdx + 1; i < trace.length; i++) {
      const st = trace[i];
      if (st && breakpoints.includes(st.pc_int)) {
        setStepIdx(i);
        setDebugNotice(`Jumped to breakpoint at PC ${st.pc} (Step #${st.seq})`);
        return;
      }
      if (watchReg !== null && st && st.rf_we === 1 && st.rd_addr === watchReg) {
        setStepIdx(i);
        setDebugNotice(`Jumped to watchpoint R${watchReg} write at PC ${st.pc}`);
        return;
      }
    }
    setStepIdx(Math.max(0, trace.length - 1));
    setDebugNotice("Reached end of program (HLT) without hitting another breakpoint.");
  }

  function downloadArtifact(filename: string, content: string) {
    const blob = new Blob([content], { type: "text/plain;charset=utf-8" });
    const url = URL.createObjectURL(blob);
    const a = document.createElement("a");
    a.href = url;
    a.download = filename;
    a.click();
    URL.revokeObjectURL(url);
  }

  function exportPdfReport() {
    const win = window.open("", "_blank");
    if (!win) return;
    win.document.write(`
      <html>
        <head>
          <title>DSD-8 Processor & int8 NN Accelerator Verification Report</title>
          <style>
            body { font-family: system-ui, sans-serif; padding: 32px; color: #0f172a; }
            h1 { color: #1d4ed8; margin-bottom: 4px; }
            pre { background: #f1f5f9; padding: 12px; border-radius: 6px; font-size: 12px; overflow-x: auto; }
            table { border-collapse: collapse; width: 100%; margin-top: 12px; font-size: 13px; }
            th, td { border: 1px solid #cbd5e1; padding: 8px; text-align: left; }
            th { background: #e2e8f0; }
          </style>
        </head>
        <body>
          <h1>DSD-8 Studio — Hardware Verification & Simulation Report</h1>
          <p><strong>Total Instructions Executed:</strong> ${trace.length} | <strong>Final Flags (ZNCV):</strong> ${reconstructed.flags}</p>
          <h2>Final Register File State (R0–R7)</h2>
          <table>
            <tr>${reconstructed.regs.map((_, idx) => `<th>R${idx}</th>`).join("")}</tr>
            <tr>${reconstructed.regs
              .map((v) => `<td>0x${v.toString(16).toUpperCase().padStart(2, "0")} (${v})</td>`)
              .join("")}</tr>
          </table>
          <h2>int8 Neural Network Accelerator Telemetry</h2>
          <p>24-bit Accumulator: <strong>${reconstructed.nn.acc}</strong> | Requantized QOUT: <strong>${reconstructed.nn.qout}</strong> | HW LUT Activation: <strong>${reconstructed.nn.act}</strong> | Executed MACs: <strong>${reconstructed.nn.mac_cnt}</strong> | Zero-Skips: <strong>${reconstructed.nn.skip_cnt}</strong></p>
          <h2>Assembler Listing (.lst)</h2>
          <pre>${listing || "No listing generated."}</pre>
          <script>window.print();</script>
        </body>
      </html>
    `);
    win.document.close();
  }

  // Active Datapath signals for Feature 2 SVG Schematic
  const dpActive = useMemo(() => {
    const op = currentStep?.decoded.opcode ?? -1;
    const isAlu = [0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb].includes(op);
    const isMem = op === 0x2 || op === 0x3;
    const isImm = op === 0x1;
    const isBranch = op === 0xc || op === 0xd;
    const isIo = op === 0xe;
    const portNum = currentStep ? parseInt(currentStep.decoded.port, 16) : 0;
    const isNn = isIo && portNum >= 0x50 && portNum <= 0x5f;
    return { isAlu, isMem, isImm, isBranch, isIo, isNn };
  }, [currentStep]);

  return (
    <div className="min-h-screen bg-[#090D16] text-slate-100 flex flex-col font-sans">
      {/* Top Header & Feature 6 Artifact Export Bar */}
      <header className="border-b border-slate-800/80 bg-[#0F1624]/95 backdrop-blur px-6 py-3 flex flex-wrap items-center justify-between gap-4 sticky top-0 z-30">
        <div className="flex items-center gap-3">
          <div className="w-10 h-10 rounded-xl bg-blue-600/20 border border-blue-500/40 flex items-center justify-center text-blue-400 shadow-lg shadow-blue-600/10">
            <Cpu className="w-6 h-6" />
          </div>
          <div>
            <div className="flex items-center gap-2">
              <h1 className="text-lg font-bold tracking-tight text-white">DSD-8 Studio</h1>
              <span className="text-[11px] font-semibold uppercase px-2 py-0.5 rounded-full bg-blue-600/20 text-blue-400 border border-blue-500/30">
                8-Bit Harvard CPU + int8 NPU
              </span>
            </div>
            <p className="text-xs text-slate-400">
              Cycle-Accurate RTL Workbench, Datapath Visualizer & Neural Accelerator Suite
            </p>
          </div>
        </div>

        {/* Navigation Tabs */}
        <nav className="flex flex-wrap items-center gap-1 bg-[#090D16] p-1 rounded-xl border border-slate-800">
          {[
            { id: "cpu", label: "CPU Debugger", icon: Code2 },
            { id: "datapath", label: "Live Datapath", icon: Cpu },
            { id: "waveform", label: "Waveform (.vcd)", icon: Activity },
            { id: "nn", label: "NN Benchmarks", icon: BrainCircuit },
            { id: "wizard", label: "Quantization Wizard", icon: Sparkles },
            { id: "verify", label: "Test Suite", icon: ShieldCheck },
            { id: "toolchain", label: "RTL Console", icon: Terminal },
          ].map((t) => {
            const Icon = t.icon;
            const active = activeTab === t.id;
            return (
              <button
                key={t.id}
                onClick={() => {
                  setActiveTab(t.id as typeof activeTab);
                  if (t.id === "waveform" && waveSignals.length === 0) {
                    loadVcdWaveform(false);
                  }
                  if (t.id === "wizard" && !customNnResult) {
                    runCustomWizardInference();
                  }
                }}
                className={`flex items-center gap-1.5 px-3 py-1.5 rounded-lg text-xs font-medium transition-all ${
                  active
                    ? "bg-[#2563EB] text-white shadow-md shadow-blue-600/30"
                    : "text-slate-400 hover:text-slate-200 hover:bg-slate-800/50"
                }`}
              >
                <Icon className="w-3.5 h-3.5" />
                {t.label}
              </button>
            );
          })}
        </nav>

        {/* Feature 6: One-Click Artifact & PDF Report Export Engine */}
        <div className="flex items-center gap-1.5">
          <button
            onClick={() => downloadArtifact("program.asm", asmCode)}
            title="Download Assembly Source (.asm)"
            className="px-2.5 py-1.5 rounded-lg bg-slate-800/80 hover:bg-slate-700 text-xs text-slate-300 border border-slate-700 flex items-center gap-1"
          >
            <FileCode className="w-3.5 h-3.5 text-blue-400" /> .asm
          </button>
          <button
            onClick={() => downloadArtifact("program.hex", hexCode)}
            disabled={!hexCode}
            title="Download Assembled Machine Code (.hex)"
            className="px-2.5 py-1.5 rounded-lg bg-slate-800/80 hover:bg-slate-700 disabled:opacity-40 text-xs text-slate-300 border border-slate-700 flex items-center gap-1"
          >
            <Download className="w-3.5 h-3.5 text-emerald-400" /> .hex
          </button>
          <button
            onClick={() => downloadArtifact("program.lst", listing)}
            disabled={!listing}
            title="Download Assembler Two-Pass Listing (.lst)"
            className="px-2.5 py-1.5 rounded-lg bg-slate-800/80 hover:bg-slate-700 disabled:opacity-40 text-xs text-slate-300 border border-slate-700 flex items-center gap-1"
          >
            <FileText className="w-3.5 h-3.5 text-amber-400" /> .lst
          </button>
          <button
            onClick={() => downloadArtifact("gold.trace", rawTrace)}
            disabled={!rawTrace}
            title="Download Golden Execution Trace (.trace)"
            className="px-2.5 py-1.5 rounded-lg bg-slate-800/80 hover:bg-slate-700 disabled:opacity-40 text-xs text-slate-300 border border-slate-700 flex items-center gap-1"
          >
            <Activity className="w-3.5 h-3.5 text-purple-400" /> .trace
          </button>
          <button
            onClick={exportPdfReport}
            title="Generate Printable PDF Hardware Verification Report"
            className="px-2.5 py-1.5 rounded-lg bg-blue-600/20 hover:bg-blue-600/30 text-xs text-blue-300 border border-blue-500/40 flex items-center gap-1 font-medium"
          >
            <Printer className="w-3.5 h-3.5" /> PDF Report
          </button>
        </div>
      </header>

      {/* Error or Breakpoint Banner */}
      {simError && (
        <div className="mx-6 mt-4 p-3 rounded-xl bg-red-950/60 border border-red-500/50 text-red-200 text-xs flex items-center justify-between">
          <div className="flex items-center gap-2 font-mono whitespace-pre-wrap">
            <AlertCircle className="w-4 h-4 text-red-400 shrink-0" />
            {simError}
          </div>
          <button
            onClick={() => setSimError(null)}
            className="text-red-300 hover:text-white text-xs underline ml-4"
          >
            Dismiss
          </button>
        </div>
      )}

      {debugNotice && (
        <div className="mx-6 mt-4 p-2.5 rounded-xl bg-amber-950/50 border border-amber-500/40 text-amber-200 text-xs flex items-center justify-between">
          <span className="font-mono">{debugNotice}</span>
          <button
            onClick={() => setDebugNotice(null)}
            className="text-amber-300 hover:text-white underline text-xs"
          >
            Clear
          </button>
        </div>
      )}

      {/* Main Content Area */}
      <main className="flex-1 p-6 max-w-[1600px] w-full mx-auto">
        {/* TAB 1: CPU DEBUGGER & INTERACTIVE PERIPHERALS */}
        {activeTab === "cpu" && (
          <div className="grid grid-cols-1 lg:grid-cols-12 gap-6">
            {/* Left Column: Assembly Editor + Execution Controls + Breakpoints */}
            <div className="lg:col-span-5 flex flex-col gap-5">
              <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-4 flex flex-col gap-3 shadow-xl">
                <div className="flex items-center justify-between">
                  <h2 className="text-sm font-semibold text-white flex items-center gap-2">
                    <Code2 className="w-4 h-4 text-blue-400" />
                    DSD-8 Assembly Editor (512-Word IMEM)
                  </h2>
                  <label className="flex items-center gap-2 text-xs text-slate-300 cursor-pointer">
                    <input
                      type="checkbox"
                      checked={useNnSim}
                      onChange={(e) => setUseNnSim(e.target.checked)}
                      className="rounded border-slate-700 bg-slate-900 text-blue-600"
                    />
                    NN-Aware Sim (0x50–0x5F)
                  </label>
                </div>

                <textarea
                  value={asmCode}
                  onChange={(e) => setAsmCode(e.target.value)}
                  rows={12}
                  spellCheck={false}
                  className="w-full bg-[#090D16] border border-slate-800 rounded-xl p-3 font-mono text-xs text-slate-200 focus:outline-none focus:border-blue-500 resize-y"
                />

                {/* Execution & Stepping Controls */}
                <div className="flex flex-wrap items-center justify-between gap-2 pt-1">
                  <button
                    onClick={() => runSimulation(asmCode, useNnSim)}
                    disabled={isSimulating}
                    className="px-4 py-2 rounded-xl bg-[#2563EB] hover:bg-blue-500 text-white font-semibold text-xs flex items-center gap-1.5 shadow-lg shadow-blue-600/25 cursor-pointer"
                  >
                    <Play className="w-3.5 h-3.5" />
                    {isSimulating ? "Assembling..." : "Assemble & Simulate"}
                  </button>

                  <div className="flex items-center gap-1 bg-[#090D16] p-1 rounded-xl border border-slate-800">
                    <button
                      onClick={() => {
                        setIsPlaying(false);
                        setStepIdx(0);
                      }}
                      title="Reset to Step 0"
                      className="p-1.5 rounded-lg hover:bg-slate-800 text-slate-300"
                    >
                      <RotateCcw className="w-4 h-4" />
                    </button>
                    <button
                      onClick={() => {
                        setIsPlaying(false);
                        setStepIdx((s) => Math.max(0, s - 1));
                      }}
                      title="Step Backward (-1)"
                      className="p-1.5 rounded-lg hover:bg-slate-800 text-slate-300"
                    >
                      <SkipBack className="w-4 h-4" />
                    </button>
                    <button
                      onClick={() => setIsPlaying((p) => !p)}
                      title="Auto-Step Play/Pause"
                      className="p-1.5 rounded-lg bg-blue-600/20 text-blue-400 hover:bg-blue-600/30"
                    >
                      {isPlaying ? <Pause className="w-4 h-4" /> : <Play className="w-4 h-4" />}
                    </button>
                    <button
                      onClick={() => {
                        setIsPlaying(false);
                        setStepIdx((s) => Math.min( Math.max(0, trace.length - 1), s + 1));
                      }}
                      title="Step Forward (+1)"
                      className="p-1.5 rounded-lg hover:bg-slate-800 text-slate-300"
                    >
                      <SkipForward className="w-4 h-4" />
                    </button>
                    <button
                      onClick={jumpToNextBreakpoint}
                      title="Run to Next Breakpoint / Watchpoint"
                      className="p-1.5 rounded-lg hover:bg-slate-800 text-amber-400"
                    >
                      <FastForward className="w-4 h-4" />
                    </button>
                  </div>
                </div>

                {/* Clock Speed & Step Scrubber */}
                <div className="flex items-center justify-between gap-4 text-xs text-slate-400 pt-1">
                  <span>
                    Step:{" "}
                    <strong className="text-white">
                      {trace.length > 0 ? stepIdx + 1 : 0} / {trace.length}
                    </strong>
                  </span>
                  <input
                    type="range"
                    min={0}
                    max={Math.max(0, trace.length - 1)}
                    value={stepIdx}
                    onChange={(e) => {
                      setIsPlaying(false);
                      setStepIdx(Number(e.target.value));
                    }}
                    className="flex-1 accent-blue-500"
                  />
                  <div className="flex items-center gap-1">
                    <span>Speed:</span>
                    <select
                      value={playSpeedMs}
                      onChange={(e) => setPlaySpeedMs(Number(e.target.value))}
                      className="bg-[#090D16] border border-slate-800 rounded px-1.5 py-0.5 text-xs text-slate-200"
                    >
                      <option value={500}>Slow</option>
                      <option value={250}>Normal</option>
                      <option value={80}>Fast</option>
                    </select>
                  </div>
                </div>

                {/* Feature 1: Breakpoints & Register Watchpoint Bar */}
                <div className="border-t border-slate-800/80 pt-3 flex flex-wrap items-center justify-between gap-2 text-xs">
                  <div className="flex items-center gap-1.5">
                    <span className="text-slate-400">PC Breakpoint:</span>
                    <input
                      type="text"
                      value={bpInput}
                      onChange={(e) => setBpInput(e.target.value)}
                      placeholder="0x006"
                      className="w-16 bg-[#090D16] border border-slate-800 rounded px-2 py-1 font-mono text-xs text-white"
                    />
                    <button
                      onClick={addBpFromInput}
                      className="px-2 py-1 rounded bg-slate-800 hover:bg-slate-700 text-slate-200"
                    >
                      + Add
                    </button>
                  </div>

                  <div className="flex items-center gap-1.5">
                    <span className="text-slate-400">Watch Reg:</span>
                    <select
                      value={watchReg === null ? "" : watchReg}
                      onChange={(e) =>
                        setWatchReg(e.target.value === "" ? null : Number(e.target.value))
                      }
                      className="bg-[#090D16] border border-slate-800 rounded px-2 py-1 text-xs text-white"
                    >
                      <option value="">None</option>
                      {[0, 1, 2, 3, 4, 5, 6, 7].map((r) => (
                        <option key={r} value={r}>
                          R{r}
                        </option>
                      ))}
                    </select>
                  </div>
                </div>

                {breakpoints.length > 0 && (
                  <div className="flex flex-wrap items-center gap-1.5 text-[11px]">
                    <span className="text-slate-400">Active Breakpoints:</span>
                    {breakpoints.map((bp) => (
                      <span
                        key={bp}
                        onClick={() => toggleBreakpoint(bp)}
                        className="px-2 py-0.5 rounded-full bg-red-500/20 border border-red-500/40 text-red-300 font-mono cursor-pointer hover:bg-red-500/30"
                      >
                        0x{bp.toString(16).toUpperCase().padStart(3, "0")} ×
                      </span>
                    ))}
                  </div>
                )}
              </div>

              {/* Feature 1: Interactive FPGA Board Peripherals Panel */}
              <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-4 flex flex-col gap-3 shadow-xl">
                <div className="flex items-center justify-between">
                  <h3 className="text-sm font-semibold text-white flex items-center gap-2">
                    <Sliders className="w-4 h-4 text-blue-400" />
                    Virtual FPGA Board Peripherals (Ports 0x00–0x11)
                  </h3>
                  <span className="text-[11px] font-mono text-slate-400">
                    7-Seg:{" "}
                    <strong className="text-emerald-400">
                      0x{reconstructed.segVal.toString(16).toUpperCase().padStart(2, "0")}
                    </strong>
                  </span>
                </div>

                {/* Virtual LEDs (Port 0x02) */}
                <div>
                  <div className="text-xs text-slate-400 mb-1.5 flex justify-between">
                    <span>Board LEDs (Port 0x02)</span>
                    <span className="font-mono text-emerald-400">
                      0x{reconstructed.leds.toString(16).toUpperCase().padStart(2, "0")}
                    </span>
                  </div>
                  <div className="grid grid-cols-8 gap-2 bg-[#090D16] p-2.5 rounded-xl border border-slate-800">
                    {[7, 6, 5, 4, 3, 2, 1, 0].map((bit) => {
                      const isOn = ((reconstructed.leds >> bit) & 1) === 1;
                      return (
                        <div key={bit} className="flex flex-col items-center gap-1">
                          <div
                            className={`w-4 h-4 rounded-full transition-all ${
                              isOn
                                ? "bg-emerald-400 shadow-lg shadow-emerald-500/60 border border-emerald-200"
                                : "bg-slate-800 border border-slate-700"
                            }`}
                          />
                          <span className="text-[10px] font-mono text-slate-500">LED{bit}</span>
                        </div>
                      );
                    })}
                  </div>
                </div>

                {/* Interactive Slide Switches (Port 0x00) */}
                <div>
                  <div className="text-xs text-slate-400 mb-1.5 flex justify-between">
                    <span>Slide Switches (Port 0x00 — Click to toggle)</span>
                    <span className="font-mono text-blue-400">
                      0x{switchesVal.toString(16).toUpperCase().padStart(2, "0")}
                    </span>
                  </div>
                  <div className="grid grid-cols-8 gap-2 bg-[#090D16] p-2.5 rounded-xl border border-slate-800">
                    {[7, 6, 5, 4, 3, 2, 1, 0].map((bit) => {
                      const isOn = ((switchesVal >> bit) & 1) === 1;
                      return (
                        <button
                          key={bit}
                          onClick={() => setSwitchesVal((v) => v ^ (1 << bit))}
                          className={`py-1 rounded text-[10px] font-mono border transition-all ${
                            isOn
                              ? "bg-blue-600 text-white border-blue-400"
                              : "bg-slate-900 text-slate-500 border-slate-800"
                          }`}
                        >
                          SW{bit}
                        </button>
                      );
                    })}
                  </div>
                </div>

                {/* Push Buttons (Port 0x01) */}
                <div className="flex items-center justify-between gap-2">
                  <span className="text-xs text-slate-400">Push Buttons (Port 0x01):</span>
                  <div className="flex gap-1.5">
                    {[3, 2, 1, 0].map((btn) => {
                      const isPressed = ((buttonsVal >> btn) & 1) === 1;
                      return (
                        <button
                          key={btn}
                          onClick={() => setButtonsVal((b) => b ^ (1 << btn))}
                          className={`px-2.5 py-1 rounded-lg text-xs font-mono border ${
                            isPressed
                              ? "bg-amber-500/30 border-amber-400 text-amber-200"
                              : "bg-[#090D16] border-slate-800 text-slate-400"
                          }`}
                        >
                          BTN{btn}
                        </button>
                      );
                    })}
                  </div>
                </div>
              </div>
            </div>

            {/* Right Column: Register File, Flags, NN Telemetry, Instruction Trace & Data Memory */}
            <div className="lg:col-span-7 flex flex-col gap-5">
              {/* Current Decoded Instruction & Flags Bar */}
              <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
                <div className="md:col-span-2 bg-[#0F1624] border border-slate-800 rounded-2xl p-4 flex items-center justify-between">
                  <div>
                    <span className="text-[11px] uppercase tracking-wider text-slate-400">
                      Current Instruction (Step #{currentStep?.seq ?? 0})
                    </span>
                    <div className="flex items-center gap-3 mt-1">
                      <span className="text-xl font-bold font-mono text-blue-400">
                        {currentStep?.decoded.mnemonic ?? "READY"}
                      </span>
                      <span className="text-xs font-mono px-2 py-0.5 rounded bg-slate-800 text-slate-200">
                        PC: {currentStep?.pc ?? "0x000"}
                      </span>
                      <span className="text-xs font-mono px-2 py-0.5 rounded bg-slate-800 text-slate-300">
                        IR: {currentStep?.ir ?? "0x0000"}
                      </span>
                    </div>
                  </div>
                  <div className="text-right font-mono text-xs text-slate-400">
                    <div>wb_sel: {currentStep?.decoded.wb_sel ?? "None"}</div>
                    <div>Port/Imm: {currentStep?.decoded.imm8 ?? "0x00"}</div>
                  </div>
                </div>

                {/* ZNCV Architectural Flags */}
                <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-4 flex flex-col justify-between">
                  <span className="text-[11px] uppercase tracking-wider text-slate-400">
                    ALU Flags (Z N C V)
                  </span>
                  <div className="grid grid-cols-4 gap-2 mt-2">
                    {["Z", "N", "C", "V"].map((f, i) => {
                      const active = reconstructed.flags[i] === "1";
                      return (
                        <div
                          key={f}
                          className={`py-1.5 rounded-lg text-center font-mono text-xs font-bold border ${
                            active
                              ? "bg-blue-600/30 border-blue-400 text-blue-200"
                              : "bg-[#090D16] border-slate-800 text-slate-500"
                          }`}
                        >
                          {f}:{active ? 1 : 0}
                        </div>
                      );
                    })}
                  </div>
                </div>
              </div>

              {/* 8x8 Register File & int8 NN Accelerator State */}
              <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-4">
                  <h3 className="text-xs font-semibold uppercase tracking-wider text-slate-400 mb-3">
                    General-Purpose Registers (R0–R7)
                  </h3>
                  <div className="grid grid-cols-4 gap-2.5">
                    {reconstructed.regs.map((val, idx) => {
                      const signedVal = val >= 128 ? val - 256 : val;
                      const isWritten =
                        currentStep?.rf_we === 1 && currentStep?.rd_addr === idx;
                      return (
                        <div
                          key={idx}
                          className={`p-2.5 rounded-xl border font-mono transition-all ${
                            isWritten
                              ? "bg-blue-600/20 border-blue-400 shadow-md shadow-blue-500/20"
                              : "bg-[#090D16] border-slate-800"
                          }`}
                        >
                          <div className="flex justify-between text-[11px] text-slate-400">
                            <span>R{idx}</span>
                            <span>{signedVal}</span>
                          </div>
                          <div className="text-sm font-bold text-white mt-0.5">
                            0x{val.toString(16).toUpperCase().padStart(2, "0")}
                          </div>
                        </div>
                      );
                    })}
                  </div>
                </div>

                {/* int8 Neural Accelerator Coprocessor (0x50-0x5F) */}
                <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-4">
                  <div className="flex items-center justify-between mb-3">
                    <h3 className="text-xs font-semibold uppercase tracking-wider text-slate-400">
                      int8 NN Accelerator (0x50–0x5F)
                    </h3>
                    <span
                      className={`text-[11px] font-mono px-2 py-0.5 rounded-full border ${
                        reconstructed.nn.unlocked
                          ? "bg-emerald-500/20 border-emerald-500/40 text-emerald-300"
                          : "bg-slate-800 border-slate-700 text-slate-400"
                      }`}
                    >
                      {reconstructed.nn.unlocked ? "UNLOCKED (0xA5)" : "LOCKED"}
                    </span>
                  </div>
                  <div className="grid grid-cols-3 gap-2 font-mono text-xs">
                    <div className="bg-[#090D16] p-2 rounded-xl border border-slate-800">
                      <div className="text-[10px] text-slate-400">24-Bit ACC</div>
                      <div className="text-sm font-bold text-blue-400">
                        {reconstructed.nn.acc}
                      </div>
                    </div>
                    <div className="bg-[#090D16] p-2 rounded-xl border border-slate-800">
                      <div className="text-[10px] text-slate-400">NN_QOUT (0x57)</div>
                      <div className="text-sm font-bold text-emerald-400">
                        {reconstructed.nn.qout}
                      </div>
                    </div>
                    <div className="bg-[#090D16] p-2 rounded-xl border border-slate-800">
                      <div className="text-[10px] text-slate-400">NN_ACT (0x59)</div>
                      <div className="text-sm font-bold text-amber-400">
                        {reconstructed.nn.act}
                      </div>
                    </div>
                    <div className="bg-[#090D16] p-2 rounded-xl border border-slate-800">
                      <div className="text-[10px] text-slate-400">A * W Latch</div>
                      <div className="text-xs text-slate-200">
                        {reconstructed.nn.a} × {reconstructed.nn.w}
                      </div>
                    </div>
                    <div className="bg-[#090D16] p-2 rounded-xl border border-slate-800">
                      <div className="text-[10px] text-slate-400">MACs (0x5D)</div>
                      <div className="text-xs text-slate-200">{reconstructed.nn.mac_cnt}</div>
                    </div>
                    <div className="bg-[#090D16] p-2 rounded-xl border border-slate-800">
                      <div className="text-[10px] text-slate-400">Zero-Skips (0x5C)</div>
                      <div className="text-xs text-slate-200">{reconstructed.nn.skip_cnt}</div>
                    </div>
                  </div>
                </div>
              </div>

              {/* Interactive Instruction Execution Trace Table (Click row to jump, Click gutter to toggle breakpoint) */}
              <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-4">
                <div className="flex items-center justify-between mb-2">
                  <h3 className="text-xs font-semibold uppercase tracking-wider text-slate-400">
                    Cycle-Accurate Instruction Trace (Click ● gutter to set PC Breakpoint)
                  </h3>
                  <span className="text-xs text-slate-400 font-mono">
                    {trace.length} instructions
                  </span>
                </div>
                <div className="max-h-64 overflow-y-auto rounded-xl border border-slate-800 bg-[#090D16]">
                  <table className="w-full text-left font-mono text-xs">
                    <thead className="bg-slate-900/90 text-slate-400 sticky top-0">
                      <tr>
                        <th className="p-2 w-8">BP</th>
                        <th className="p-2">#</th>
                        <th className="p-2">PC</th>
                        <th className="p-2">IR</th>
                        <th className="p-2">Mnemonic</th>
                        <th className="p-2">Reg Write</th>
                        <th className="p-2">Mem Write</th>
                        <th className="p-2">ZNCV</th>
                      </tr>
                    </thead>
                    <tbody>
                      {trace.slice(0, 250).map((st, idx) => {
                        const isCurr = idx === stepIdx;
                        const hasBp = breakpoints.includes(st.pc_int);
                        return (
                          <tr
                            key={st.seq}
                            onClick={() => {
                              setIsPlaying(false);
                              setStepIdx(idx);
                            }}
                            className={`border-t border-slate-800/60 cursor-pointer transition-colors ${
                              isCurr
                                ? "bg-blue-600/25 text-white"
                                : "text-slate-300 hover:bg-slate-800/40"
                            }`}
                          >
                            <td
                              onClick={(e) => {
                                e.stopPropagation();
                                toggleBreakpoint(st.pc_int);
                              }}
                              className="p-2 text-center"
                            >
                              <span
                                className={`inline-block w-2.5 h-2.5 rounded-full ${
                                  hasBp ? "bg-red-500" : "bg-slate-700 hover:bg-red-400/60"
                                }`}
                              />
                            </td>
                            <td className="p-2 text-slate-400">{st.seq}</td>
                            <td className="p-2 text-blue-400">{st.pc}</td>
                            <td className="p-2">{st.ir}</td>
                            <td className="p-2 font-bold text-emerald-400">
                              {st.decoded.mnemonic}
                            </td>
                            <td className="p-2">
                              {st.rf_we ? `R${st.rd_addr} ← ${st.rf_data}` : "-"}
                            </td>
                            <td className="p-2">
                              {st.mem_we ? `[${st.mem_addr}] ← ${st.mem_data}` : "-"}
                            </td>
                            <td className="p-2">{st.flags}</td>
                          </tr>
                        );
                      })}
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        )}

        {/* TAB 2: FEATURE 2 — INTERACTIVE GRAPHICAL DATAPATH SCHEMATIC */}
        {activeTab === "datapath" && (
          <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-6 shadow-xl flex flex-col gap-5">
            <div className="flex flex-wrap items-center justify-between gap-4">
              <div>
                <h2 className="text-base font-bold text-white flex items-center gap-2">
                  <Cpu className="w-5 h-5 text-blue-400" />
                  Live DSD-8 Harvard Architecture & int8 Coprocessor Datapath Schematic
                </h2>
                <p className="text-xs text-slate-400">
                  Active buses and functional blocks illuminate in Electric Blue (#2563EB) for Step #
                  {currentStep?.seq ?? 0} ({currentStep?.decoded.mnemonic ?? "NOP"})
                </p>
              </div>
              <div className="flex items-center gap-2">
                <button
                  onClick={() => setStepIdx((s) => Math.max(0, s - 1))}
                  className="px-3 py-1.5 rounded-lg bg-slate-800 hover:bg-slate-700 text-xs"
                >
                  ← Prev Instruction
                </button>
                <span className="text-xs font-mono text-blue-400 px-2">
                  Step {stepIdx + 1} / {trace.length}
                </span>
                <button
                  onClick={() => setStepIdx((s) => Math.min(trace.length - 1, s + 1))}
                  className="px-3 py-1.5 rounded-lg bg-[#2563EB] hover:bg-blue-500 text-white text-xs"
                >
                  Next Instruction →
                </button>
              </div>
            </div>

            {/* Interactive SVG Block Diagram */}
            <div className="w-full overflow-x-auto bg-[#090D16] border border-slate-800 rounded-2xl p-4">
              <svg viewBox="0 0 1100 500" className="w-full h-auto min-w-[900px]">
                {/* Bus Connectors */}
                {/* PC -> IMEM */}
                <line
                  x1="150"
                  y1="140"
                  x2="220"
                  y2="140"
                  stroke="#2563EB"
                  strokeWidth="4"
                />
                {/* IMEM -> Decoder */}
                <line
                  x1="390"
                  y1="140"
                  x2="460"
                  y2="140"
                  stroke="#2563EB"
                  strokeWidth="4"
                />
                {/* Decoder -> RegFile */}
                <line
                  x1="620"
                  y1="140"
                  x2="690"
                  y2="140"
                  stroke="#2563EB"
                  strokeWidth="3"
                />
                {/* RegFile -> ALU */}
                <line
                  x1="850"
                  y1="140"
                  x2="920"
                  y2="140"
                  stroke={dpActive.isAlu ? "#2563EB" : "#334155"}
                  strokeWidth={dpActive.isAlu ? "5" : "2.5"}
                />
                {/* RegFile -> DMEM */}
                <line
                  x1="770"
                  y1="220"
                  x2="770"
                  y2="320"
                  stroke={dpActive.isMem ? "#10B981" : "#334155"}
                  strokeWidth={dpActive.isMem ? "5" : "2.5"}
                />
                {/* Decoder/IO -> NN Accelerator */}
                <line
                  x1="540"
                  y1="220"
                  x2="540"
                  y2="320"
                  stroke={dpActive.isNn ? "#F59E0B" : "#334155"}
                  strokeWidth={dpActive.isNn ? "5" : "2.5"}
                />
                {/* Writeback Bus */}
                <path
                  d="M 980 220 L 980 450 L 730 450 L 730 220"
                  fill="none"
                  stroke={currentStep?.rf_we ? "#2563EB" : "#1E293B"}
                  strokeWidth={currentStep?.rf_we ? "4" : "2"}
                  strokeDasharray={currentStep?.rf_we ? "none" : "6,6"}
                />

                {/* BLOCK 1: 9-Bit Program Counter (PC) */}
                <rect
                  x="30"
                  y="80"
                  width="120"
                  height="120"
                  rx="14"
                  fill="#0F1624"
                  stroke={dpActive.isBranch ? "#2563EB" : "#475569"}
                  strokeWidth="3"
                />
                <text x="90" y="115" textAnchor="middle" fill="#94A3B8" fontSize="12">
                  9-Bit PC
                </text>
                <text
                  x="90"
                  y="150"
                  textAnchor="middle"
                  fill="#60A5FA"
                  fontSize="18"
                  fontFamily="monospace"
                  fontWeight="bold"
                >
                  {currentStep?.pc ?? "0x000"}
                </text>
                <text x="90" y="180" textAnchor="middle" fill="#64748B" fontSize="11">
                  {dpActive.isBranch ? "BRANCH/JMP" : "PC + 1"}
                </text>

                {/* BLOCK 2: 512x16 Instruction Memory */}
                <rect
                  x="220"
                  y="70"
                  width="170"
                  height="140"
                  rx="14"
                  fill="#0F1624"
                  stroke="#2563EB"
                  strokeWidth="3"
                />
                <text x="305" y="105" textAnchor="middle" fill="#E2E8F0" fontSize="13" fontWeight="bold">
                  Instruction Memory
                </text>
                <text x="305" y="125" textAnchor="middle" fill="#94A3B8" fontSize="11">
                  512 × 16-Bit Harvard ROM
                </text>
                <text
                  x="305"
                  y="160"
                  textAnchor="middle"
                  fill="#38BDF8"
                  fontSize="17"
                  fontFamily="monospace"
                  fontWeight="bold"
                >
                  IR: {currentStep?.ir ?? "0x0000"}
                </text>

                {/* BLOCK 3: Instruction Decoder & 6-State FSM */}
                <rect
                  x="460"
                  y="70"
                  width="160"
                  height="150"
                  rx="14"
                  fill="#0F1624"
                  stroke="#2563EB"
                  strokeWidth="3"
                />
                <text x="540" y="100" textAnchor="middle" fill="#E2E8F0" fontSize="13" fontWeight="bold">
                  Decoder & FSM
                </text>
                <text
                  x="540"
                  y="135"
                  textAnchor="middle"
                  fill="#34D399"
                  fontSize="18"
                  fontFamily="monospace"
                  fontWeight="bold"
                >
                  {currentStep?.decoded.mnemonic ?? "NOP"}
                </text>
                <text x="540" y="165" textAnchor="middle" fill="#94A3B8" fontSize="11" fontFamily="monospace">
                  imm8: {currentStep?.decoded.imm8 ?? "0x00"}
                </text>
                <text x="540" y="190" textAnchor="middle" fill="#60A5FA" fontSize="11" fontFamily="monospace">
                  wb_sel: {currentStep?.decoded.wb_sel ?? "--"}
                </text>

                {/* BLOCK 4: 8x8 Register File */}
                <rect
                  x="690"
                  y="70"
                  width="160"
                  height="150"
                  rx="14"
                  fill="#0F1624"
                  stroke={currentStep?.rf_we ? "#2563EB" : "#475569"}
                  strokeWidth="3"
                />
                <text x="770" y="100" textAnchor="middle" fill="#E2E8F0" fontSize="13" fontWeight="bold">
                  Register File (8×8)
                </text>
                <text x="770" y="130" textAnchor="middle" fill="#94A3B8" fontSize="12" fontFamily="monospace">
                  Rd: R{currentStep?.decoded.rd ?? 0} | Rs1: R{currentStep?.decoded.rs1 ?? 0}
                </text>
                <text x="770" y="160" textAnchor="middle" fill="#60A5FA" fontSize="13" fontFamily="monospace">
                  {currentStep?.rf_we
                    ? `WRITE R${currentStep.rd_addr} = ${currentStep.rf_data}`
                    : "rf_we = 0"}
                </text>

                {/* BLOCK 5: 8-Bit ALU & ZNCV Flags */}
                <rect
                  x="920"
                  y="70"
                  width="150"
                  height="150"
                  rx="14"
                  fill="#0F1624"
                  stroke={dpActive.isAlu ? "#2563EB" : "#475569"}
                  strokeWidth="3"
                />
                <text x="995" y="100" textAnchor="middle" fill="#E2E8F0" fontSize="13" fontWeight="bold">
                  8-Bit ALU
                </text>
                <text x="995" y="135" textAnchor="middle" fill="#38BDF8" fontSize="14" fontFamily="monospace">
                  ZNCV: {reconstructed.flags}
                </text>
                <text x="995" y="170" textAnchor="middle" fill="#94A3B8" fontSize="11">
                  ADD/SUB/AND/OR/XOR
                </text>

                {/* BLOCK 6: int8 Neural Network Accelerator (0x50-0x5F) */}
                <rect
                  x="410"
                  y="320"
                  width="260"
                  height="120"
                  rx="14"
                  fill="#0F1624"
                  stroke={dpActive.isNn ? "#F59E0B" : "#475569"}
                  strokeWidth="3"
                />
                <text x="540" y="350" textAnchor="middle" fill="#FBBF24" fontSize="13" fontWeight="bold">
                  int8 NN Accelerator (0x50–0x5F)
                </text>
                <text x="540" y="380" textAnchor="middle" fill="#E2E8F0" fontSize="12" fontFamily="monospace">
                  ACC24: {reconstructed.nn.acc} | QOUT: {reconstructed.nn.qout}
                </text>
                <text x="540" y="408" textAnchor="middle" fill="#34D399" fontSize="12" fontFamily="monospace">
                  LUT ACT: {reconstructed.nn.act} | MACs: {reconstructed.nn.mac_cnt}
                </text>

                {/* BLOCK 7: 256-Byte Data Memory (DMEM) */}
                <rect
                  x="700"
                  y="320"
                  width="190"
                  height="110"
                  rx="14"
                  fill="#0F1624"
                  stroke={dpActive.isMem ? "#10B981" : "#475569"}
                  strokeWidth="3"
                />
                <text x="795" y="350" textAnchor="middle" fill="#E2E8F0" fontSize="13" fontWeight="bold">
                  Data Memory (256×8)
                </text>
                <text x="795" y="385" textAnchor="middle" fill="#34D399" fontSize="12" fontFamily="monospace">
                  {currentStep?.mem_we
                    ? `ST [${currentStep.mem_addr}] ← ${currentStep.mem_data}`
                    : "mem_we = 0"}
                </text>
              </svg>
            </div>
          </div>
        )}

        {/* TAB 3: FEATURE 3 — IN-BROWSER WAVEFORM VIEWER (.VCD) */}
        {activeTab === "waveform" && (
          <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-6 shadow-xl flex flex-col gap-5">
            <div className="flex flex-wrap items-center justify-between gap-4">
              <div>
                <h2 className="text-base font-bold text-white flex items-center gap-2">
                  <Activity className="w-5 h-5 text-blue-400" />
                  Digital Timing Diagram & VCD Waveform Viewer
                </h2>
                <p className="text-xs text-slate-400">
                  Source: <span className="font-mono text-blue-400">{effectiveWaveform.source}</span>
                </p>
              </div>

              <div className="flex flex-wrap items-center gap-2">
                {["ALL", "CPU", "IO", "NN"].map((grp) => (
                  <button
                    key={grp}
                    onClick={() => setWaveGroupFilter(grp)}
                    className={`px-3 py-1 rounded-lg text-xs font-medium ${
                      waveGroupFilter === grp
                        ? "bg-[#2563EB] text-white"
                        : "bg-[#090D16] text-slate-400 border border-slate-800"
                    }`}
                  >
                    {grp}
                  </button>
                ))}
                <button
                  onClick={() => setWaveZoom((z) => Math.max(24, z - 8))}
                  className="p-1.5 rounded-lg bg-slate-800 text-slate-200"
                  title="Zoom Out"
                >
                  <ZoomOut className="w-4 h-4" />
                </button>
                <button
                  onClick={() => setWaveZoom((z) => Math.min(80, z + 8))}
                  className="p-1.5 rounded-lg bg-slate-800 text-slate-200"
                  title="Zoom In"
                >
                  <ZoomIn className="w-4 h-4" />
                </button>
                <button
                  onClick={() => loadVcdWaveform(true)}
                  className="px-3 py-1.5 rounded-lg bg-blue-600/20 border border-blue-500/40 text-blue-300 text-xs font-medium"
                >
                  Run make waveform (.vcd)
                </button>
              </div>
            </div>

            <div className="overflow-x-auto rounded-xl border border-slate-800 bg-[#090D16]">
              <div className="min-w-[800px]">
                {/* Time Ruler Header */}
                <div className="flex border-b border-slate-800 bg-slate-900/80 text-[10px] font-mono text-slate-400">
                  <div className="w-48 shrink-0 p-2 border-r border-slate-800 font-semibold text-slate-300">
                    Signal / Bus
                  </div>
                  <div className="flex">
                    {effectiveWaveform.timestamps.map((ts, idx) => (
                      <div
                        key={idx}
                        style={{ width: `${waveZoom}px` }}
                        className="shrink-0 py-2 px-1 border-r border-slate-800/50 text-center"
                      >
                        {ts}ns
                      </div>
                    ))}
                  </div>
                </div>

                {/* Signal Rows */}
                {effectiveWaveform.signals
                  .filter(
                    (sig) => waveGroupFilter === "ALL" || sig.group.toUpperCase() === waveGroupFilter
                  )
                  .map((sig) => (
                    <div
                      key={sig.id}
                      className="flex border-b border-slate-800/60 items-center hover:bg-slate-900/40"
                    >
                      <div className="w-48 shrink-0 p-2 border-r border-slate-800 font-mono text-xs flex items-center justify-between">
                        <span className="text-slate-200 truncate">{sig.name}</span>
                        <span className="text-[10px] px-1.5 py-0.5 rounded bg-slate-800 text-blue-400">
                          {sig.group}
                        </span>
                      </div>
                      <div className="flex items-center py-1.5">
                        {sig.values.map((val, vIdx) => {
                          if (sig.width === 1) {
                            const isHigh = val === "1";
                            return (
                              <div
                                key={vIdx}
                                style={{ width: `${waveZoom}px` }}
                                className="h-6 shrink-0 flex flex-col justify-between border-r border-slate-800/30"
                              >
                                <div
                                  className={`h-full w-full ${
                                    isHigh
                                      ? "border-t-2 border-emerald-400 bg-emerald-500/10"
                                      : "border-b-2 border-slate-600"
                                  }`}
                                />
                              </div>
                            );
                          }
                          return (
                            <div
                              key={vIdx}
                              style={{ width: `${waveZoom}px` }}
                              className="h-6 shrink-0 px-1 border-y border-r border-blue-500/40 bg-blue-950/20 flex items-center justify-center font-mono text-[10px] text-blue-300 truncate"
                            >
                              {val}
                            </div>
                          );
                        })}
                      </div>
                    </div>
                  ))}
              </div>
            </div>
          </div>
        )}

        {/* TAB 4: NN ACCELERATOR BENCHMARKS & SAMPLE INSPECTOR */}
        {activeTab === "nn" && (
          <div className="flex flex-col gap-6">
            <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-6 shadow-xl">
              <div className="flex flex-wrap items-center justify-between gap-4 mb-4">
                <div>
                  <h2 className="text-base font-bold text-white flex items-center gap-2">
                    <BrainCircuit className="w-5 h-5 text-blue-400" />
                    4–6–3 Quantized Iris MLP — Certified Cycle Benchmark (95.65% Accuracy, 22/23)
                  </h2>
                  <p className="text-xs text-slate-400">
                    Load any of the 23 quantized test samples across software baselines (b0, b1) and
                    hardware-accelerated variants (a0, a2, a4)
                  </p>
                </div>

                <div className="flex flex-wrap items-center gap-2">
                  <select
                    value={selectedSample}
                    onChange={(e) => setSelectedSample(Number(e.target.value))}
                    className="bg-[#090D16] border border-slate-800 rounded-xl px-3 py-2 text-xs text-white"
                  >
                    {nnSamples.map((s) => (
                      <option key={s.index} value={s.index}>
                        Sample s{String(s.index).padStart(2, "0")} — {s.class_name} [
                        {s.features.join(", ")}]
                      </option>
                    ))}
                  </select>
                  <select
                    value={selectedVariant}
                    onChange={(e) => setSelectedVariant(e.target.value)}
                    className="bg-[#090D16] border border-slate-800 rounded-xl px-3 py-2 text-xs text-white font-mono"
                  >
                    <option value="a4">a4 (Unrolled HW MAC + LUT — 1,087 cyc)</option>
                    <option value="a2">a2 (Looped HW MAC + LUT — 2,071 cyc)</option>
                    <option value="a0">a0 (Looped HW MAC + SW Act — 2,172 cyc)</option>
                    <option value="b1">b1 (Shift-Add SW Baseline — 24,427 cyc)</option>
                    <option value="b0">b0 (Repeated-Add SW Baseline — 43,155 cyc)</option>
                  </select>
                  <button
                    onClick={() => loadSampleVariantAsm(selectedSample, selectedVariant)}
                    className="px-4 py-2 rounded-xl bg-[#2563EB] hover:bg-blue-500 text-white text-xs font-semibold"
                  >
                    Load & Simulate in CPU Debugger
                  </button>
                </div>
              </div>

              {/* Speedup Comparison Table */}
              <div className="overflow-x-auto rounded-xl border border-slate-800 bg-[#090D16]">
                <table className="w-full text-left text-xs font-mono">
                  <thead className="bg-slate-900 text-slate-400">
                    <tr>
                      <th className="p-3">Variant</th>
                      <th className="p-3">Implementation Strategy</th>
                      <th className="p-3">Mean Cycles</th>
                      <th className="p-3">Min..Max</th>
                      <th className="p-3">Speedup vs b0</th>
                      <th className="p-3">Speedup vs b1</th>
                      <th className="p-3">Max IMEM Words</th>
                    </tr>
                  </thead>
                  <tbody>
                    {BENCHMARK_ROWS.map((row) => (
                      <tr key={row.variant} className="border-t border-slate-800/70">
                        <td className="p-3 font-bold text-blue-400">{row.variant}</td>
                        <td className="p-3 font-sans text-slate-200">{row.desc}</td>
                        <td className="p-3 text-white font-bold">{row.mean.toLocaleString()}</td>
                        <td className="p-3 text-slate-400">
                          {row.min.toLocaleString()}..{row.max.toLocaleString()}
                        </td>
                        <td className="p-3 text-emerald-400 font-bold">{row.speedupB0}</td>
                        <td className="p-3 text-amber-400 font-bold">{row.speedupB1}</td>
                        <td className="p-3 text-slate-300">{row.maxInstr} / 512</td>
                      </tr>
                    ))}
                  </tbody>
                </table>
              </div>

              {benchMd && (
                <div className="mt-4 flex justify-end">
                  <button
                    onClick={() => downloadArtifact("bench.md", benchMd)}
                    className="px-3 py-1.5 rounded-lg bg-slate-800 hover:bg-slate-700 text-xs text-slate-200 flex items-center gap-1.5"
                  >
                    <Download className="w-3.5 h-3.5 text-blue-400" /> Download Raw bench.md
                  </button>
                </div>
              )}
            </div>
          </div>
        )}

        {/* TAB 5: FEATURE 5 — CUSTOM NEURAL NETWORK QUANTIZATION & ASSEMBLY WIZARD */}
        {activeTab === "wizard" && (
          <div className="grid grid-cols-1 lg:grid-cols-12 gap-6">
            <div className="lg:col-span-5 bg-[#0F1624] border border-slate-800 rounded-2xl p-5 flex flex-col gap-4 shadow-xl">
              <h2 className="text-base font-bold text-white flex items-center gap-2">
                <Sparkles className="w-5 h-5 text-blue-400" />
                int8 Quantization & Custom Inference Wizard
              </h2>
              <p className="text-xs text-slate-400">
                Tune fixed-point arithmetic right-shifts (NN_SHIFT) and LUT activation banks, or
                test custom quantized 4-feature Iris inputs.
              </p>

              {/* 4 Quantized int8 Feature Inputs */}
              <div className="grid grid-cols-2 gap-3">
                {["Sepal Length (X0)", "Sepal Width (X1)", "Petal Length (X2)", "Petal Width (X3)"].map(
                  (label, idx) => (
                    <div key={label} className="bg-[#090D16] p-3 rounded-xl border border-slate-800">
                      <label className="text-[11px] text-slate-400 block mb-1">{label}</label>
                      <input
                        type="number"
                        min={-128}
                        max={127}
                        value={customFeatures[idx]}
                        onChange={(e) => {
                          const next = [...customFeatures];
                          next[idx] = Number(e.target.value);
                          setCustomFeatures(next);
                        }}
                        className="w-full bg-slate-900 border border-slate-700 rounded-lg px-2.5 py-1.5 font-mono text-sm text-white"
                      />
                    </div>
                  )
                )}
              </div>

              {/* Shift1, Shift2 & Hardware LUT Bank Selectors */}
              <div className="grid grid-cols-3 gap-3">
                <div className="bg-[#090D16] p-3 rounded-xl border border-slate-800">
                  <label className="text-[11px] text-slate-400 block mb-1">
                    Layer 1 Shift (0..15)
                  </label>
                  <input
                    type="number"
                    min={0}
                    max={15}
                    value={customShift1}
                    onChange={(e) => setCustomShift1(Number(e.target.value))}
                    className="w-full bg-slate-900 border border-slate-700 rounded-lg px-2 py-1 font-mono text-sm text-white"
                  />
                </div>
                <div className="bg-[#090D16] p-3 rounded-xl border border-slate-800">
                  <label className="text-[11px] text-slate-400 block mb-1">
                    Layer 2 Shift (0..15)
                  </label>
                  <input
                    type="number"
                    min={0}
                    max={15}
                    value={customShift2}
                    onChange={(e) => setCustomShift2(Number(e.target.value))}
                    className="w-full bg-slate-900 border border-slate-700 rounded-lg px-2 py-1 font-mono text-sm text-white"
                  />
                </div>
                <div className="bg-[#090D16] p-3 rounded-xl border border-slate-800">
                  <label className="text-[11px] text-slate-400 block mb-1">
                    LUT Bank (0x58)
                  </label>
                  <select
                    value={customLutBank}
                    onChange={(e) => setCustomLutBank(Number(e.target.value))}
                    className="w-full bg-slate-900 border border-slate-700 rounded-lg px-2 py-1.5 text-xs text-white"
                  >
                    <option value={0}>0: ReLU</option>
                    <option value={1}>1: Sigmoid</option>
                    <option value={2}>2: Tanh</option>
                    <option value={3}>3: OffsetBin</option>
                  </select>
                </div>
              </div>

              <button
                onClick={runCustomWizardInference}
                className="w-full py-2.5 rounded-xl bg-[#2563EB] hover:bg-blue-500 text-white font-semibold text-xs shadow-lg shadow-blue-600/25 cursor-pointer"
              >
                Run Hardware-Accurate int8 Inference
              </button>

              {customNnResult && (
                <div className="bg-[#090D16] border border-slate-800 rounded-xl p-4 flex flex-col gap-2">
                  <div className="flex items-center justify-between">
                    <span className="text-xs text-slate-400">Predicted Iris Species:</span>
                    <span className="text-sm font-bold text-emerald-400">
                      {customNnResult.predicted_name} (Class {customNnResult.predicted_class})
                    </span>
                  </div>
                  <div className="flex items-center justify-between text-xs font-mono text-slate-300">
                    <span>Executed MACs: {customNnResult.mac_count}</span>
                    <span>Zero-Skips: {customNnResult.skip_count}</span>
                    <span className="text-blue-400">Sparsity: {customNnResult.sparsity_pct}%</span>
                  </div>
                  <button
                    onClick={() => {
                      setAsmCode(customNnResult.generated_asm);
                      setUseNnSim(true);
                      setActiveTab("cpu");
                      runSimulation(customNnResult.generated_asm, true);
                    }}
                    className="mt-2 w-full py-2 rounded-lg bg-emerald-600/20 border border-emerald-500/40 text-emerald-300 hover:bg-emerald-600/30 text-xs font-semibold"
                  >
                    Load Generated Custom Assembly into CPU Simulator →
                  </button>
                </div>
              )}
            </div>

            {/* Right Side: Layer-by-Layer 24-Bit Accumulators & LUT Inspector */}
            <div className="lg:col-span-7 flex flex-col gap-5">
              {customNnResult && (
                <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-5 flex flex-col gap-4">
                  <h3 className="text-sm font-bold text-white">
                    Hidden Layer 1 (6 Neurons) — 24-Bit ACC → Requantized QOUT → LUT Activation
                  </h3>
                  <div className="grid grid-cols-2 sm:grid-cols-3 gap-3 font-mono text-xs">
                    {customNnResult.layer1_acc.map((accVal, idx) => (
                      <div
                        key={idx}
                        className="bg-[#090D16] p-3 rounded-xl border border-slate-800"
                      >
                        <div className="text-slate-400 text-[11px]">Hidden Neuron H{idx}</div>
                        <div className="text-blue-400 mt-1">ACC24: {accVal}</div>
                        <div className="text-slate-300">
                          QOUT (&gt;&gt;{customNnResult.shift1}): {customNnResult.layer1_qout[idx]}
                        </div>
                        <div className="text-emerald-400 font-bold">
                          LUT ACT: {customNnResult.layer1_act[idx]}
                        </div>
                      </div>
                    ))}
                  </div>

                  <h3 className="text-sm font-bold text-white pt-2">
                    Output Layer 2 (3 Iris Classes) — Final Logit Scores
                  </h3>
                  <div className="grid grid-cols-3 gap-3 font-mono text-xs">
                    {["0: Iris-setosa", "1: Iris-versicolor", "2: Iris-virginica"].map(
                      (cname, idx) => {
                        const isWinner = customNnResult.predicted_class === idx;
                        return (
                          <div
                            key={cname}
                            className={`p-3 rounded-xl border ${
                              isWinner
                                ? "bg-emerald-950/40 border-emerald-500/60"
                                : "bg-[#090D16] border-slate-800"
                            }`}
                          >
                            <div className="text-[11px] text-slate-300 font-sans font-semibold">
                              {cname}
                            </div>
                            <div className="text-slate-400 mt-1">
                              ACC24: {customNnResult.layer2_acc[idx]}
                            </div>
                            <div className="text-base font-bold text-white mt-0.5">
                              Score: {customNnResult.layer2_scores[idx]}
                            </div>
                          </div>
                        );
                      }
                    )}
                  </div>
                </div>
              )}

              {/* Hardware LUT Preview */}
              <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-5">
                <h3 className="text-xs font-semibold uppercase tracking-wider text-slate-400 mb-2">
                  Hardware Activation LUT Sample Table (Ports 0x58–0x5B)
                </h3>
                <div className="text-xs text-slate-400 font-mono grid grid-cols-4 gap-2">
                  {Object.entries(lutsData).map(([bankName, vals]) => (
                    <div
                      key={bankName}
                      className="bg-[#090D16] p-2.5 rounded-xl border border-slate-800"
                    >
                      <div className="text-blue-400 font-bold mb-1">{bankName}</div>
                      <div>f(-32) = {vals[224]}</div>
                      <div>f(0) = {vals[0]}</div>
                      <div>f(+32) = {vals[32]}</div>
                      <div>f(+64) = {vals[64]}</div>
                    </div>
                  ))}
                </div>
              </div>
            </div>
          </div>
        )}

        {/* TAB 6: FEATURE 4 — AUTOMATED UNIT TEST & CONFORMANCE SUITE RUNNER */}
        {activeTab === "verify" && (
          <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-6 shadow-xl flex flex-col gap-5">
            <div className="flex flex-wrap items-center justify-between gap-4">
              <div>
                <h2 className="text-base font-bold text-white flex items-center gap-2">
                  <ShieldCheck className="w-5 h-5 text-blue-400" />
                  Automated Hardware Unit Test & Golden Conformance Suite
                </h2>
                <p className="text-xs text-slate-400">
                  Run Icarus Verilog testbenches (tb_alu, tb_nn_accel, tb_cpu), Golden Conformance,
                  and Verilator Lint directly in the browser.
                </p>
              </div>
              <button
                onClick={async () => {
                  for (const key of ["lint", "tb_alu", "tb_nn", "tb_cpu", "conformance"]) {
                    await runSingleTestTarget(key);
                  }
                }}
                disabled={runningTestKey !== null}
                className="px-4 py-2 rounded-xl bg-[#2563EB] hover:bg-blue-500 text-white text-xs font-semibold shadow-lg shadow-blue-600/25 cursor-pointer"
              >
                {runningTestKey ? `Running ${runningTestKey}...` : "Run Full Verification Suite"}
              </button>
            </div>

            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              {[
                { key: "lint", title: "Verilator Strict RTL Lint (make lint)" },
                { key: "tb_alu", title: "8-Bit ALU Exhaustive Unit Testbench (tb_alu.v)" },
                {
                  key: "tb_nn",
                  title: "int8 NN Accelerator Unit Testbench (tb_nn_accel.v)",
                },
                { key: "tb_cpu", title: "Full CPU + Peripherals RTL Testbench (make test)" },
                {
                  key: "conformance",
                  title: "Golden Assembler & Simulator Conformance (make conformance)",
                },
              ].map((item) => {
                const res = testResults[item.key];
                const isRunning = runningTestKey === item.key;
                return (
                  <div
                    key={item.key}
                    className="bg-[#090D16] border border-slate-800 rounded-xl p-4 flex flex-col gap-3"
                  >
                    <div className="flex items-center justify-between">
                      <span className="text-xs font-semibold text-white">{item.title}</span>
                      <div className="flex items-center gap-2">
                        {res && (
                          <span
                            className={`flex items-center gap-1 text-xs font-mono px-2 py-0.5 rounded-full ${
                              res.passed
                                ? "bg-emerald-500/20 text-emerald-300 border border-emerald-500/40"
                                : "bg-red-500/20 text-red-300 border border-red-500/40"
                            }`}
                          >
                            {res.passed ? (
                              <CheckCircle className="w-3.5 h-3.5" />
                            ) : (
                              <XCircle className="w-3.5 h-3.5" />
                            )}
                            {res.passed ? "PASS" : "FAIL"} ({res.duration_ms}ms)
                          </span>
                        )}
                        <button
                          onClick={() => runSingleTestTarget(item.key)}
                          disabled={isRunning}
                          className="px-3 py-1 rounded-lg bg-slate-800 hover:bg-slate-700 text-xs text-slate-200"
                        >
                          {isRunning ? "Running..." : "Run"}
                        </button>
                      </div>
                    </div>
                    {res && (
                      <pre className="text-[11px] font-mono text-slate-300 bg-slate-950 p-3 rounded-lg max-h-40 overflow-y-auto whitespace-pre-wrap">
                        {res.log}
                      </pre>
                    )}
                  </div>
                );
              })}
            </div>
          </div>
        )}

        {/* TAB 7: REAL-TIME SSE TOOLCHAIN CONSOLE */}
        {activeTab === "toolchain" && (
          <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-6 shadow-xl flex flex-col gap-4">
            <div className="flex flex-wrap items-center justify-between gap-2">
              <h2 className="text-base font-bold text-white flex items-center gap-2">
                <Terminal className="w-5 h-5 text-blue-400" />
                Live Hardware Toolchain Console (Server-Sent Events)
              </h2>
              <div className="flex flex-wrap gap-2">
                {[
                  { key: "lint", label: "make lint" },
                  { key: "test", label: "make test" },
                  { key: "conformance", label: "make conformance" },
                  { key: "waveform", label: "make waveform" },
                  { key: "nn_ref", label: "nn_ref.py" },
                  { key: "nn_build", label: "make nn" },
                  { key: "bench", label: "make bench" },
                ].map((btn) => (
                  <button
                    key={btn.key}
                    onClick={() => runStreamCommand(btn.key)}
                    disabled={isRunningCmd}
                    className="px-3 py-1.5 rounded-xl bg-slate-800 hover:bg-blue-600 text-xs font-mono text-slate-200 hover:text-white transition-colors disabled:opacity-40 cursor-pointer"
                  >
                    $ {btn.label}
                  </button>
                ))}
              </div>
            </div>

            <div className="bg-[#090D16] border border-slate-800 rounded-xl p-4 font-mono text-xs text-slate-300 h-[440px] overflow-y-auto whitespace-pre-wrap">
              {consoleLines.map((ln, idx) => (
                <div
                  key={idx}
                  className={
                    ln.includes("PASS")
                      ? "text-emerald-400"
                      : ln.includes("FAIL") || ln.includes("Error")
                      ? "text-red-400"
                      : ln.startsWith("$")
                      ? "text-blue-400 font-bold"
                      : ""
                  }
                >
                  {ln}
                </div>
              ))}
              <div ref={consoleEndRef} />
            </div>
          </div>
        )}
      </main>
    </div>
  );
}