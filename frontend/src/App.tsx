import { useState, useEffect, useRef, useMemo } from "react";
import {
  Cpu,
  Play,
  SkipForward,
  SkipBack,
  Pause,
  RotateCcw,
  Terminal,
  Activity,
  Layers,
  Zap,
  CheckCircle2,
  XCircle,
  Code2,
  Sliders,
  Eye,
  Download,
  FileSpreadsheet,
  Sparkles,
  ShieldCheck,
  Radio,
  FastForward,
} from "lucide-react";

const API_BASE = "";

async function safeFetchJson(url: string, options?: RequestInit) {
  const res = await fetch(url, options);
  const text = await res.text();
  let data: any = null;
  try {
    data = text ? JSON.parse(text) : {};
  } catch {
    throw new Error(
      `Server returned non-JSON response (HTTP ${res.status}): ${text.slice(0, 140)}`
    );
  }
  if (!res.ok) {
    throw new Error(data?.detail || data?.error || `HTTP Error ${res.status}`);
  }
  return data;
}

interface DecodedInstr {
  opcode: number;
  opcode_hex: string;
  rd: number;
  rs1: number;
  rs2: number;
  imm8: string;
  addr9: string;
  io_dir: number;
  port: string;
  disassembly: string;
  fsm_states: string[];
  cycles: number;
  wb_sel: string;
}

interface TraceStep {
  seq: number;
  pc: string;
  pc_int: number;
  ir: string;
  ir_int: number;
  rf_we: number;
  rd_addr: number;
  rf_data: string;
  rf_data_int: number;
  mem_we: number;
  mem_addr: string;
  mem_addr_int: number;
  mem_data: string;
  mem_data_int: number;
  flags: string;
  decoded: DecodedInstr;
}

interface NNSample {
  index: number;
  sample_id: string;
  features: number[];
  expected_class: number;
  class_name: string;
}

interface CertifiedMetric {
  variant: string;
  title: string;
  mean_cycles: number;
  min_cycles: number;
  max_cycles: number;
  speedup_b0: number;
  speedup_b1: number;
  max_instr: number;
}

interface VcdSignal {
  id: string;
  name: string;
  full_name: string;
  group: string;
  width: number;
  transitions: { t: number; v: string }[];
}

interface SuiteResult {
  target: string;
  title: string;
  passed: boolean;
  returncode: number;
  elapsed_sec: number;
  output: string;
}

const DEFAULT_ASM = `; ============================================================================
; DSD-8 Studio Demo: ALU + Memory + int8 Neural Accelerator (Ports 0x50-0x5F)
; ============================================================================
    LDI R0, 0xA5        ; Load NN_KEY unlock token (0xA5)
    OUT 0x5F, R0        ; Unlock int8 NN Accelerator
    LDI R0, 0x03        ; Bit0=Clear Acc, Bit1=Clear Counters
    OUT 0x52, R0        ; Write NN_CTRL (0x52)

    LDI R1, 0x04        ; Shift amount = 4
    OUT 0x56, R1        ; Write NN_SHIFT (0x56)
    LDI R1, 0x00        ; Select LUT Bank 0 (ReLU)
    OUT 0x58, R1        ; Write NN_LUT_SEL (0x58)

    ; Perform MAC #1: A = 20 (0x14), W = 10 (0x0A) -> +200
    LDI R2, 0x14
    OUT 0x50, R2        ; Latch signed int8 activation NN_A
    LDI R3, 0x0A
    OUT 0x51, R3        ; Write weight NN_W & trigger 3-stage MAC

    ; Perform MAC #2: A = 12 (0x0C), W = 5 (0x05) -> +60 (Total = 260)
    LDI R2, 0x0C
    OUT 0x50, R2
    LDI R3, 0x05
    OUT 0x51, R3

    ; Read back requantized & ReLU activated output
    IN  R4, 0x57        ; Read NN_QOUT (sat8(260 >> 4) = 16 = 0x10)
    IN  R5, 0x59        ; Read NN_ACT  (ReLU(16) = 0x10)
    IN  R6, 0x5D        ; Read NN_MACCNT (2 nonzero MACs executed)

    ; Output result to LEDs (0x02) and 7-Segment Display (0x10)
    OUT 0x02, R5
    OUT 0x10, R5
    HLT
`;

const IO_SWITCH_DEMO_ASM = `; ============================================================================
; Virtual FPGA Board Switch (0x00) & Button (0x01) -> LED (0x02) & 7-Seg Demo
; NOTE: Uncheck "NN-Aware Sim" automatically enabled by the button!
; ============================================================================
    IN  R1, 0x00        ; Read Slide Switches (Port 0x00) into R1
    OUT 0x02, R1        ; Drive Board LEDs (Port 0x02) from R1
    IN  R2, 0x01        ; Read Push Buttons (Port 0x01) into R2
    OUT 0x10, R2        ; Drive 7-Segment Value (Port 0x10) from R2
    HLT
`;

export default function App() {
  const [activeTab, setActiveTab] = useState<
    "ide" | "datapath" | "waveform" | "nn" | "wizard" | "verify"
  >("ide");
  const [asmCode, setAsmCode] = useState<string>(DEFAULT_ASM);
  const [programs, setPrograms] = useState<
    { id: string; name: string; category: string; path: string }[]
  >([]);
  const [selectedProgram, setSelectedProgram] = useState<string>("");
  const [useNnSim, setUseNnSim] = useState<boolean>(true);

  // Virtual FPGA Board Periphery State (Feature 1)
  const [switchBits, setSwitchBits] = useState<number>(0x00);
  const [buttonBits, setButtonBits] = useState<number>(0x00);

  // Simulation Artifacts & Trace State
  const [hexOutput, setHexOutput] = useState<string>("");
  const [listingOutput, setListingOutput] = useState<string>("");
  const [rawTraceOutput, setRawTraceOutput] = useState<string>("");
  const [trace, setTrace] = useState<TraceStep[]>([]);
  const [finalState, setFinalState] = useState<any>(null);
  const [stepIdx, setStepIdx] = useState<number>(0);
  const [isPlaying, setIsPlaying] = useState<boolean>(false);
  const [playSpeedMs, setPlaySpeedMs] = useState<number>(200);
  const [simError, setSimError] = useState<string | null>(null);
  const [isSimulating, setIsSimulating] = useState<boolean>(false);
  const [codeView, setCodeView] = useState<"asm" | "listing" | "hex">("asm");

  // Feature 1: Breakpoints & Register Watchpoints
  const [breakpoints, setBreakpoints] = useState<number[]>([]);
  const [watchRegs, setWatchRegs] = useState<number[]>([]);
  const [watchAlert, setWatchAlert] = useState<string | null>(null);

  // Feature 3: Waveform Viewer State
  const [vcdData, setVcdData] = useState<{
    exists: boolean;
    max_time: number;
    signals: VcdSignal[];
  }>({
    exists: false,
    max_time: 100,
    signals: [],
  });
  const [waveGroupFilter, setWaveGroupFilter] = useState<
    "ALL" | "CPU" | "IO" | "NN"
  >("ALL");
  const [waveZoom, setWaveZoom] = useState<number>(1);
  const [isLoadingVcd, setIsLoadingVcd] = useState<boolean>(false);

  // Feature 4: Automated Test Suite State
  const [suiteResults, setSuiteResults] = useState<Record<string, SuiteResult>>(
    {}
  );
  const [runningTarget, setRunningTarget] = useState<string | null>(null);

  // NN Benchmark State
  const [nnSamples, setNnSamples] = useState<NNSample[]>([]);
  const [certifiedMetrics, setCertifiedMetrics] = useState<CertifiedMetric[]>(
    []
  );
  const [benchMarkdown, setBenchMarkdown] = useState<string>("");
  const [selectedSampleIdx, setSelectedSampleIdx] = useState<number>(0);
  const [selectedVariant, setSelectedVariant] = useState<string>("a4");

  // Feature 5: Custom NN Quantization Wizard State
  const [customFeatures, setCustomFeatures] = useState<number[]>([
    -63, 45, -89, -86,
  ]);
  const [customShift1, setCustomShift1] = useState<number>(7);
  const [customShift2, setCustomShift2] = useState<number>(7);
  const [customLutBank, setCustomLutBank] = useState<number>(0);
  const [customNnResult, setCustomNnResult] = useState<any>(null);

  // SSE Console State
  const [consoleLogs, setConsoleLogs] = useState<string[]>([
    "DSD-8 Studio v2.1 initialized. Ready to assemble, simulate, or stream RTL verification.",
  ]);
  const [isRunningCmd, setIsRunningCmd] = useState<boolean>(false);
  const consoleEndRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    fetchPrograms();
    fetchNnSamples();
    runSimulation(DEFAULT_ASM, true, 0, 0);
  }, []);

  useEffect(() => {
    consoleEndRef.current?.scrollIntoView({ behavior: "smooth" });
  }, [consoleLogs]);

  // Auto-stepping interval with Breakpoint & Watchpoint detection (Feature 1)
  useEffect(() => {
    if (!isPlaying) return;
    const timer = setInterval(() => {
      setStepIdx((prev) => {
        if (prev < trace.length - 1) {
          const nextStep = prev + 1;
          const stepObj = trace[nextStep];
          if (breakpoints.includes(stepObj.pc_int)) {
            setIsPlaying(false);
            setWatchAlert(`Paused at PC Breakpoint ${stepObj.pc}`);
            return nextStep;
          }
          if (stepObj.rf_we === 1 && watchRegs.includes(stepObj.rd_addr)) {
            setIsPlaying(false);
            setWatchAlert(
              `Watchpoint triggered: R${stepObj.rd_addr} <- ${stepObj.rf_data} at seq #${stepObj.seq}`
            );
            return nextStep;
          }
          return nextStep;
        }
        setIsPlaying(false);
        return prev;
      });
    }, playSpeedMs);
    return () => clearInterval(timer);
  }, [isPlaying, trace.length, playSpeedMs, breakpoints, watchRegs, trace]);

  const fetchPrograms = async () => {
    try {
      const data = await safeFetchJson(`${API_BASE}/api/programs`);
      setPrograms(data.programs || []);
    } catch (e: any) {
      setConsoleLogs((prev) => [
        ...prev,
        `[WARN] Failed to load preset list: ${e.message}`,
      ]);
    }
  };

  const fetchNnSamples = async () => {
    try {
      const data = await safeFetchJson(`${API_BASE}/api/nn/samples`);
      const normalizedSamples: NNSample[] = Array.isArray(data.samples)
        ? data.samples.map((s: any, idx: number) => ({
            index: typeof s.index === "number" ? s.index : idx,
            sample_id: s.sample_id || `s${String(idx).padStart(2, "0")}`,
            features: Array.isArray(s.features) ? s.features : [0, 0, 0, 0],
            expected_class:
              typeof s.expected_class === "number" ? s.expected_class : 0,
            class_name: s.class_name || `Class ${s.expected_class ?? 0}`,
          }))
        : [];
      setNnSamples(normalizedSamples);
      setCertifiedMetrics(
        Array.isArray(data.certified_metrics) ? data.certified_metrics : []
      );
      setBenchMarkdown(data.bench_markdown || "");
    } catch (e: any) {
      setConsoleLogs((prev) => [
        ...prev,
        `[WARN] Failed to load NN samples: ${e.message}`,
      ]);
    }
  };

  const handleSelectProgram = async (path: string) => {
    setSelectedProgram(path);
    if (!path) return;
    try {
      const data = await safeFetchJson(
        `${API_BASE}/api/programs/load?path=${encodeURIComponent(path)}`
      );
      if (data.asm_code) {
        setAsmCode(data.asm_code);
        runSimulation(data.asm_code, useNnSim, switchBits, buttonBits);
      }
    } catch (e: any) {
      setSimError(`Failed to load program: ${e.message}`);
    }
  };

  const runSimulation = async (
    codeToRun: string = asmCode,
    nnMode: boolean = useNnSim,
    swVal: number = switchBits,
    btnVal: number = buttonBits
  ) => {
    setIsSimulating(true);
    setSimError(null);
    setWatchAlert(null);
    setIsPlaying(false);
    try {
      const data = await safeFetchJson(`${API_BASE}/api/simulate`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          asm_code: codeToRun,
          use_nn_sim: nnMode,
          switches: `0x${swVal.toString(16).padStart(2, "0")}`,
          buttons: `0x${btnVal.toString(16).padStart(2, "0")}`,
          max_instrs: 50000,
        }),
      });
      if (!data.success) {
        setSimError(`[${(data.stage || "ERROR").toUpperCase()}] ${data.error}`);
        setTrace([]);
      } else {
        setHexOutput(data.hex || "");
        setListingOutput(data.listing || "");
        setRawTraceOutput(data.raw_trace || "");
        setTrace(data.trace || []);
        setFinalState(data.state || null);
        setStepIdx(0);
        setConsoleLogs((prev) => [
          ...prev,
          `[SIM] Assembled & executed ${data.total_retired} instructions (${
            nnMode ? "dsd8sim_nn.py" : "dsd8sim.py"
          }).`,
        ]);
      }
    } catch (e: any) {
      setSimError(`Simulation error: ${e.message}`);
    } finally {
      setIsSimulating(false);
    }
  };

  const loadAndRunNnSample = async (sampleIdx: number, variant: string) => {
    setSelectedSampleIdx(sampleIdx);
    setSelectedVariant(variant);
    try {
      const data = await safeFetchJson(
        `${API_BASE}/api/nn/load-sample?sample_idx=${sampleIdx}&variant=${variant}`
      );
      if (data.asm_code) {
        setAsmCode(data.asm_code);
        setUseNnSim(true);
        setActiveTab("ide");
        await runSimulation(data.asm_code, true, switchBits, buttonBits);
      }
    } catch (e: any) {
      setConsoleLogs((prev) => [
        ...prev,
        `[ERROR] Could not load NN sample: ${e.message}`,
      ]);
    }
  };

  const runStreamCommand = (commandKey: string) => {
    if (isRunningCmd) return;
    setIsRunningCmd(true);
    setConsoleLogs((prev) => [
      ...prev,
      `\n========================================`,
      `> Starting target: ${commandKey}...`,
    ]);

    const evtSource = new EventSource(
      `${API_BASE}/api/stream-command/${commandKey}`
    );
    evtSource.onmessage = (event) => {
      const payload = JSON.parse(event.data);
      if (payload.type === "start") {
        setConsoleLogs((prev) => [...prev, `$ ${payload.cmd}`]);
      } else if (payload.type === "log") {
        setConsoleLogs((prev) => [...prev, payload.line]);
      } else if (payload.type === "done") {
        const statusStr =
          payload.returncode === 0 ? "SUCCESS (0)" : `FAILED (${payload.returncode})`;
        setConsoleLogs((prev) => [
          ...prev,
          `> Target finished: ${statusStr} in ${payload.elapsed_sec}s`,
        ]);
        evtSource.close();
        setIsRunningCmd(false);
      } else if (payload.type === "error") {
        setConsoleLogs((prev) => [...prev, `[ERROR] ${payload.message}`]);
        evtSource.close();
        setIsRunningCmd(false);
      }
    };
    evtSource.onerror = () => {
      setConsoleLogs((prev) => [...prev, `[SSE Stream Closed]`]);
      evtSource.close();
      setIsRunningCmd(false);
    };
  };

  // Feature 3: Fetch VCD Waveform
  const loadVcdWaveform = async () => {
    setIsLoadingVcd(true);
    try {
      const data = await safeFetchJson(
        `${API_BASE}/api/waveform/vcd?generate_if_missing=true`
      );
      setVcdData(data);
      setConsoleLogs((prev) => [
        ...prev,
        `[WAVE] Loaded ${data.signals?.length || 0} hardware signals from build/waveform/dsd8_wave.vcd`,
      ]);
    } catch (e: any) {
      setConsoleLogs((prev) => [
        ...prev,
        `[ERROR] Waveform load failed: ${e.message}`,
      ]);
    } finally {
      setIsLoadingVcd(false);
    }
  };

  // Feature 4: Run Unit Test / Conformance Target
  const runSuiteTarget = async (targetKey: string) => {
    setRunningTarget(targetKey);
    try {
      const data = await safeFetchJson(
        `${API_BASE}/api/test-suite/${targetKey}`,
        { method: "POST" }
      );
      setSuiteResults((prev) => ({ ...prev, [targetKey]: data }));
      setConsoleLogs((prev) => [
        ...prev,
        `[TEST SUITE] ${data.title}: ${
          data.passed ? "PASS" : "FAIL"
        } (${data.elapsed_sec}s)`,
      ]);
    } catch (e: any) {
      setConsoleLogs((prev) => [
        ...prev,
        `[ERROR] Suite target ${targetKey} failed: ${e.message}`,
      ]);
    } finally {
      setRunningTarget(null);
    }
  };

  // Feature 5: Run Custom NN Inference Wizard
  const runCustomInference = async () => {
    try {
      const data = await safeFetchJson(`${API_BASE}/api/nn/custom-infer`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          features: customFeatures,
          shift1: customShift1,
          shift2: customShift2,
          lut_bank: customLutBank,
        }),
      });
      setCustomNnResult(data);
    } catch (e: any) {
      setConsoleLogs((prev) => [
        ...prev,
        `[ERROR] Custom NN inference error: ${e.message}`,
      ]);
    }
  };

  useEffect(() => {
    if (activeTab === "wizard" && !customNnResult) {
      runCustomInference();
    }
    if (activeTab === "waveform" && !vcdData.exists) {
      loadVcdWaveform();
    }
  }, [activeTab]);

  // Reconstruct Architectural State at current `stepIdx`
  const reconstructedState = useMemo(() => {
    const regs = new Array(8).fill(0);
    const dmem = new Array(256).fill(0);
    let flags = "0000";
    let totalCycles = 0;

    let nnKeyUnlocked = false;
    let nnA = 0;
    let nnW = 0;
    let nnAcc = 0;
    let nnShift = 0;
    let nnLutSel = 0;
    let nnSkipCnt = 0;
    let nnMacCnt = 0;
    let leds = 0;
    let segVal = 0;
    let segEn = 0;

    const limit = Math.min(stepIdx, trace.length - 1);
    for (let i = 0; i <= limit; i++) {
      const s = trace[i];
      if (!s) continue;
      flags = s.flags;
      totalCycles += s.decoded.cycles;

      if (s.rf_we === 1 && s.rd_addr >= 0 && s.rd_addr < 8) {
        regs[s.rd_addr] = s.rf_data_int;
      }
      if (s.mem_we === 1 && s.mem_addr_int >= 0 && s.mem_addr_int < 256) {
        dmem[s.mem_addr_int] = s.mem_data_int;
      }

      // Track OUT instructions (opcode == 0xE and io_dir == 1)
      // In DSD-8 ISA, OUT encodes source register Rs in bits [11:9] (s.decoded.rd)
      if (s.decoded.opcode === 0xe && s.decoded.io_dir === 1) {
        const portNum = parseInt(s.decoded.port, 16);
        const rsVal = regs[s.decoded.rd] & 0xff;
        const toSigned8 = (v: number) => (v & 0x80 ? v - 256 : v);

        if (portNum === 0x02) leds = rsVal;
        if (portNum === 0x10) segVal = rsVal;
        if (portNum === 0x11) segEn = rsVal;
        if (portNum === 0x5f) nnKeyUnlocked = rsVal === 0xa5;
        if (nnKeyUnlocked) {
          if (portNum === 0x50) nnA = toSigned8(rsVal);
          if (portNum === 0x51) {
            nnW = toSigned8(rsVal);
            if (nnA === 0 || nnW === 0) {
              nnSkipCnt = Math.min(255, nnSkipCnt + 1);
            } else {
              nnMacCnt = Math.min(255, nnMacCnt + 1);
              nnAcc = (nnAcc + nnA * nnW) & 0xffffff;
              if (nnAcc & 0x800000) nnAcc -= 0x1000000;
            }
          }
          if (portNum === 0x52) {
            if (rsVal & 0x01) nnAcc = 0;
            if (rsVal & 0x02) {
              nnSkipCnt = 0;
              nnMacCnt = 0;
            }
          }
          if (portNum === 0x56) nnShift = rsVal & 0x0f;
          if (portNum === 0x58) nnLutSel = rsVal & 0x03;
        }
      }
    }

    const shifted = nnAcc >> nnShift;
    const nnQout = Math.max(-128, Math.min(127, shifted)) & 0xff;
    const signedQ = nnQout & 0x80 ? nnQout - 256 : nnQout;
    const nnAct = nnLutSel === 0 ? Math.max(0, signedQ) & 0xff : nnQout;

    const isAtFinalStep = trace.length > 0 && stepIdx >= trace.length - 1;
    if (isAtFinalStep && finalState?.io) {
      if (typeof finalState.io.leds === "number") leds = finalState.io.leds;
      if (typeof finalState.io.seg_value === "number")
        segVal = finalState.io.seg_value;
    }

    return {
      regs,
      dmem,
      flags,
      totalCycles,
      leds,
      segVal,
      segEn,
      nn: {
        unlocked: nnKeyUnlocked,
        nnA: nnA & 0xff,
        nnW: nnW & 0xff,
        nnAcc: nnAcc & 0xffffff,
        nnShift,
        nnQout,
        nnLutSel,
        nnAct,
        nnSkipCnt,
        nnMacCnt,
      },
    };
  }, [trace, stepIdx, finalState]);

  const currentStep: TraceStep | null = trace[stepIdx] || null;

  // Feature 1 Helpers: Jump to next breakpoint
  const jumpToNextBreakpoint = () => {
    if (breakpoints.length === 0) return;
    for (let i = stepIdx + 1; i < trace.length; i++) {
      if (breakpoints.includes(trace[i].pc_int)) {
        setStepIdx(i);
        setWatchAlert(`Jumped to Breakpoint at PC ${trace[i].pc}`);
        return;
      }
    }
    setWatchAlert("No subsequent breakpoint hit in trace.");
  };

  const toggleBreakpoint = (pcInt: number) => {
    setBreakpoints((prev) =>
      prev.includes(pcInt) ? prev.filter((p) => p !== pcInt) : [...prev, pcInt]
    );
  };

  const toggleWatchReg = (regIdx: number) => {
    setWatchRegs((prev) =>
      prev.includes(regIdx)
        ? prev.filter((r) => r !== regIdx)
        : [...prev, regIdx]
    );
  };

  // Feature 6: Download Artifact Helper
  const downloadTextFile = (filename: string, content: string) => {
    const blob = new Blob([content], { type: "text/plain;charset=utf-8" });
    const url = URL.createObjectURL(blob);
    const a = document.createElement("a");
    a.href = url;
    a.download = filename;
    a.click();
    URL.revokeObjectURL(url);
  };

  return (
    <div className="min-h-screen bg-[#090D16] text-slate-100 flex flex-col font-sans selection:bg-blue-600 selection:text-white">
      {/* Top Navigation Header */}
      <header className="border-b border-slate-800/80 bg-[#0F1624]/90 backdrop-blur px-5 py-3 flex flex-wrap items-center justify-between gap-3 sticky top-0 z-30">
        <div className="flex items-center gap-3">
          <div className="w-10 h-10 rounded-xl bg-blue-600/20 border border-blue-500/40 flex items-center justify-center text-blue-400 shadow-lg shadow-blue-600/10">
            <Cpu className="w-6 h-6" />
          </div>
          <div>
            <div className="flex items-center gap-2">
              <h1 className="text-lg font-bold tracking-tight text-white">
                DSD-8 Studio
              </h1>
              <span className="text-[11px] font-mono uppercase px-2 py-0.5 rounded bg-blue-500/15 text-blue-400 border border-blue-500/30">
                Harvard 8-Bit CPU + int8 NN Accel
              </span>
            </div>
            <p className="text-xs text-slate-400">
              Cycle-Accurate Multicycle FSM, Datapath Schematic, VCD Waveform &
              Neural Co-Processor Workbench
            </p>
          </div>
        </div>

        {/* Navigation Pills */}
        <div className="flex items-center gap-1 bg-[#090D16] p-1 rounded-xl border border-slate-800 overflow-x-auto">
          <button
            onClick={() => setActiveTab("ide")}
            className={`px-3 py-1.5 rounded-lg text-xs font-medium flex items-center gap-1.5 transition ${
              activeTab === "ide"
                ? "bg-blue-600 text-white shadow"
                : "text-slate-400 hover:text-slate-200"
            }`}
          >
            <Code2 className="w-3.5 h-3.5" /> CPU & Debugger
          </button>
          <button
            onClick={() => setActiveTab("datapath")}
            className={`px-3 py-1.5 rounded-lg text-xs font-medium flex items-center gap-1.5 transition ${
              activeTab === "datapath"
                ? "bg-blue-600 text-white shadow"
                : "text-slate-400 hover:text-slate-200"
            }`}
          >
            <Eye className="w-3.5 h-3.5" /> Live Datapath SVG
          </button>
          <button
            onClick={() => setActiveTab("waveform")}
            className={`px-3 py-1.5 rounded-lg text-xs font-medium flex items-center gap-1.5 transition ${
              activeTab === "waveform"
                ? "bg-blue-600 text-white shadow"
                : "text-slate-400 hover:text-slate-200"
            }`}
          >
            <Radio className="w-3.5 h-3.5" /> Waveform Viewer
          </button>
          <button
            onClick={() => setActiveTab("nn")}
            className={`px-3 py-1.5 rounded-lg text-xs font-medium flex items-center gap-1.5 transition ${
              activeTab === "nn"
                ? "bg-blue-600 text-white shadow"
                : "text-slate-400 hover:text-slate-200"
            }`}
          >
            <Zap className="w-3.5 h-3.5" /> NN Benchmarks
          </button>
          <button
            onClick={() => setActiveTab("wizard")}
            className={`px-3 py-1.5 rounded-lg text-xs font-medium flex items-center gap-1.5 transition ${
              activeTab === "wizard"
                ? "bg-blue-600 text-white shadow"
                : "text-slate-400 hover:text-slate-200"
            }`}
          >
            <Sparkles className="w-3.5 h-3.5" /> Custom NN Wizard
          </button>
          <button
            onClick={() => setActiveTab("verify")}
            className={`px-3 py-1.5 rounded-lg text-xs font-medium flex items-center gap-1.5 transition ${
              activeTab === "verify"
                ? "bg-blue-600 text-white shadow"
                : "text-slate-400 hover:text-slate-200"
            }`}
          >
            <ShieldCheck className="w-3.5 h-3.5" /> Test Suite & Export
          </button>
        </div>
      </header>

      {/* Main Content Area */}
      <main className="flex-1 p-4 lg:p-5 max-w-[1640px] w-full mx-auto space-y-5">
        {/* ================================================================
            TAB 1: CPU & DEBUGGER WORKBENCH + VIRTUAL FPGA BOARD (FEATURE 1)
           ================================================================ */}
        {activeTab === "ide" && (
          <div className="grid grid-cols-1 lg:grid-cols-12 gap-5">
            {/* LEFT COLUMN: Editor, Controls, Breakpoints (5 cols) */}
            <div className="lg:col-span-5 flex flex-col gap-4">
              <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-4 flex flex-col gap-3 shadow-xl">
                <div className="flex flex-wrap items-center justify-between gap-2">
                  <div className="flex items-center gap-2">
                    <Layers className="w-4 h-4 text-blue-400" />
                    <span className="text-sm font-semibold">
                      Program Source & Assembler
                    </span>
                  </div>

                  <select
                    value={selectedProgram}
                    onChange={(e) => handleSelectProgram(e.target.value)}
                    className="bg-[#090D16] border border-slate-700 text-xs rounded-lg px-2.5 py-1.5 text-slate-200 focus:outline-none focus:border-blue-500"
                  >
                    <option value="">-- Load Preset Test / NN Program --</option>
                    {programs.map((p) => (
                      <option key={p.id} value={p.path}>
                        [{p.category}] {p.name}
                      </option>
                    ))}
                  </select>
                </div>

                {/* Sub-tabs for Assembly / Listing / Hex + Artifact Export (Feature 6) */}
                <div className="flex items-center justify-between border-b border-slate-800 pb-2">
                  <div className="flex gap-1">
                    {(["asm", "listing", "hex"] as const).map((mode) => (
                      <button
                        key={mode}
                        onClick={() => setCodeView(mode)}
                        className={`px-2.5 py-1 rounded text-xs font-mono uppercase transition ${
                          codeView === mode
                            ? "bg-blue-600/20 text-blue-400 border border-blue-500/40"
                            : "text-slate-400 hover:text-slate-200"
                        }`}
                      >
                        {mode === "asm"
                          ? "prog.asm"
                          : mode === "listing"
                          ? "prog.lst"
                          : "prog.hex"}
                      </button>
                    ))}
                  </div>

                  <div className="flex items-center gap-2">
                    <button
                      onClick={() =>
                        downloadTextFile(
                          codeView === "asm"
                            ? "prog.asm"
                            : codeView === "listing"
                            ? "prog.lst"
                            : "prog.hex",
                          codeView === "asm"
                            ? asmCode
                            : codeView === "listing"
                            ? listingOutput
                            : hexOutput
                        )
                      }
                      className="text-[11px] flex items-center gap-1 px-2 py-1 rounded bg-slate-800 hover:bg-slate-700 text-slate-300"
                      title="Download current file"
                    >
                      <Download className="w-3 h-3" /> Export
                    </button>
                    <label className="flex items-center gap-1.5 text-xs text-slate-300 cursor-pointer">
                      <input
                        type="checkbox"
                        checked={useNnSim}
                        onChange={(e) => setUseNnSim(e.target.checked)}
                        className="rounded border-slate-700 bg-slate-900 text-blue-600 focus:ring-0"
                      />
                      NN-Aware Sim
                    </label>
                  </div>
                </div>

                {/* Code Editor / Viewer */}
                {codeView === "asm" ? (
                  <textarea
                    value={asmCode}
                    onChange={(e) => setAsmCode(e.target.value)}
                    spellCheck={false}
                    className="w-full h-[320px] bg-[#090D16] border border-slate-800 rounded-xl p-3 font-mono text-xs text-slate-200 focus:outline-none focus:border-blue-500 resize-none leading-relaxed"
                  />
                ) : (
                  <pre className="w-full h-[320px] bg-[#090D16] border border-slate-800 rounded-xl p-3 font-mono text-xs text-emerald-300 overflow-auto leading-relaxed">
                    {codeView === "listing"
                      ? listingOutput || "; Assemble first to view two-pass listing"
                      : hexOutput || "; Assemble first to view 16-bit hex words"}
                  </pre>
                )}

                {simError && (
                  <div className="bg-red-950/60 border border-red-700/60 rounded-xl p-3 text-xs font-mono text-red-300 flex items-start gap-2">
                    <XCircle className="w-4 h-4 text-red-400 shrink-0 mt-0.5" />
                    <div className="whitespace-pre-wrap">{simError}</div>
                  </div>
                )}

                {watchAlert && (
                  <div className="bg-amber-950/50 border border-amber-500/40 rounded-xl px-3 py-2 text-xs font-mono text-amber-300 flex items-center justify-between">
                    <span>⚡ {watchAlert}</span>
                    <button
                      onClick={() => setWatchAlert(null)}
                      className="text-[10px] underline"
                    >
                      Dismiss
                    </button>
                  </div>
                )}

                {/* Execution & Stepping Bar (Feature 1) */}
                <div className="flex flex-wrap items-center justify-between gap-2 pt-1">
                  <button
                    onClick={() =>
                      runSimulation(asmCode, useNnSim, switchBits, buttonBits)
                    }
                    disabled={isSimulating}
                    className="px-4 py-2 rounded-xl bg-blue-600 hover:bg-blue-500 disabled:opacity-50 text-xs font-semibold text-white shadow-lg shadow-blue-600/20 flex items-center gap-1.5 transition cursor-pointer"
                  >
                    <Play className="w-3.5 h-3.5 fill-current" />
                    {isSimulating ? "Running..." : "Assemble & Simulate"}
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
                      title="Step Backward"
                      className="p-1.5 rounded-lg hover:bg-slate-800 text-slate-300"
                    >
                      <SkipBack className="w-4 h-4" />
                    </button>
                    <button
                      onClick={() => setIsPlaying((p) => !p)}
                      title="Auto-Step Play/Pause"
                      className="px-2.5 py-1.5 rounded-lg bg-blue-600/20 text-blue-400 border border-blue-500/30 hover:bg-blue-600/30 flex items-center gap-1 text-xs font-medium"
                    >
                      {isPlaying ? (
                        <Pause className="w-3.5 h-3.5" />
                      ) : (
                        <Play className="w-3.5 h-3.5" />
                      )}
                      {isPlaying ? "Pause" : "Play"}
                    </button>
                    <button
                      onClick={() => {
                        setIsPlaying(false);
                        setStepIdx((s) => Math.min(trace.length - 1, s + 1));
                      }}
                      title="Step Forward"
                      className="p-1.5 rounded-lg hover:bg-slate-800 text-slate-300"
                    >
                      <SkipForward className="w-4 h-4" />
                    </button>
                    <button
                      onClick={jumpToNextBreakpoint}
                      title="Jump to Next PC Breakpoint"
                      className="p-1.5 rounded-lg hover:bg-slate-800 text-amber-400"
                    >
                      <FastForward className="w-4 h-4" />
                    </button>
                  </div>
                </div>

                {/* Speed Slider & Timeline Scrubber */}
                {trace.length > 0 && (
                  <div className="space-y-1.5 pt-1">
                    <div className="flex justify-between items-center text-[11px] font-mono text-slate-400">
                      <span>
                        Retired Seq:{" "}
                        <strong className="text-white">{stepIdx + 1}</strong> /{" "}
                        {trace.length}
                      </span>
                      <div className="flex items-center gap-2">
                        <span>Speed:</span>
                        <select
                          value={playSpeedMs}
                          onChange={(e) =>
                            setPlaySpeedMs(Number(e.target.value))
                          }
                          className="bg-[#090D16] border border-slate-700 rounded px-1.5 py-0.5 text-[10px] text-slate-200"
                        >
                          <option value={500}>Slow (2 Hz)</option>
                          <option value={200}>Normal (5 Hz)</option>
                          <option value={60}>Fast (16 Hz)</option>
                          <option value={15}>Turbo (60 Hz)</option>
                        </select>
                        <span>
                          Est. Cycles:{" "}
                          <strong className="text-blue-400">
                            {reconstructedState.totalCycles}
                          </strong>
                        </span>
                      </div>
                    </div>
                    <input
                      type="range"
                      min={0}
                      max={Math.max(0, trace.length - 1)}
                      value={stepIdx}
                      onChange={(e) => {
                        setIsPlaying(false);
                        setStepIdx(Number(e.target.value));
                      }}
                      className="w-full accent-blue-600 cursor-pointer"
                    />
                  </div>
                )}
              </div>

              {/* Feature 1: Interactive Virtual FPGA Board Periphery (Switches, Buttons, LEDs, 7-Seg) */}
              <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-4 shadow-xl space-y-3">
                <div className="flex items-center justify-between">
                  <span className="text-xs font-semibold uppercase tracking-wider text-slate-400 flex items-center gap-1.5">
                    <Sliders className="w-3.5 h-3.5 text-blue-400" /> Virtual
                    FPGA Board Periphery (Ports 0x00 - 0x11)
                  </span>
                  <div className="flex items-center gap-1.5">
                    <button
                      onClick={() => {
                        setAsmCode(IO_SWITCH_DEMO_ASM);
                        setUseNnSim(false);
                        runSimulation(
                          IO_SWITCH_DEMO_ASM,
                          false,
                          switchBits,
                          buttonBits
                        );
                      }}
                      className="text-[11px] px-2.5 py-1 rounded-lg bg-emerald-600/20 text-emerald-300 border border-emerald-500/30 hover:bg-emerald-600/30 transition"
                      title="Load & simulate an IN/OUT test program that reads switches/buttons into LEDs/7-Seg"
                    >
                      Load Switch→LED Demo
                    </button>
                    <button
                      onClick={() => {
                        setUseNnSim(false);
                        runSimulation(asmCode, false, switchBits, buttonBits);
                      }}
                      className="text-[11px] px-2.5 py-1 rounded-lg bg-blue-600/20 text-blue-400 border border-blue-500/30 hover:bg-blue-600/30 transition"
                    >
                      Re-Sim with Inputs
                    </button>
                  </div>
                </div>

                <div className="grid grid-cols-1 sm:grid-cols-3 gap-3">
                  {/* 8 Slide Switches (0x00) */}
                  <div className="bg-[#090D16] border border-slate-800 rounded-xl p-3">
                    <div className="flex justify-between text-[11px] font-mono text-slate-400 mb-2">
                      <span>SWITCHES (0x00)</span>
                      <span className="text-blue-400 font-bold">
                        0x{switchBits.toString(16).padStart(2, "0").toUpperCase()}
                      </span>
                    </div>
                    <div className="grid grid-cols-8 gap-1">
                      {[7, 6, 5, 4, 3, 2, 1, 0].map((bit) => {
                        const isOn = ((switchBits >> bit) & 1) === 1;
                        return (
                          <button
                            key={bit}
                            onClick={() => setSwitchBits((v) => v ^ (1 << bit))}
                            className={`h-8 rounded flex flex-col items-center justify-center text-[10px] font-mono border transition ${
                              isOn
                                ? "bg-blue-600 text-white border-blue-400"
                                : "bg-slate-900 text-slate-500 border-slate-800"
                            }`}
                          >
                            <span>{bit}</span>
                            <span className="text-[8px]">{isOn ? "1" : "0"}</span>
                          </button>
                        );
                      })}
                    </div>
                  </div>

                  {/* Push Buttons (0x01) + 7-Seg Display (0x10) */}
                  <div className="bg-[#090D16] border border-slate-800 rounded-xl p-3 flex flex-col justify-between">
                    <div className="flex justify-between text-[11px] font-mono text-slate-400 mb-1">
                      <span>BUTTONS (0x01)</span>
                      <span className="text-amber-400 font-bold">
                        0x{buttonBits.toString(16).padStart(2, "0").toUpperCase()}
                      </span>
                    </div>
                    <div className="grid grid-cols-4 gap-1.5">
                      {[3, 2, 1, 0].map((bit) => {
                        const pressed = ((buttonBits >> bit) & 1) === 1;
                        return (
                          <button
                            key={bit}
                            onClick={() => setButtonBits((v) => v ^ (1 << bit))}
                            className={`py-1.5 rounded text-[10px] font-mono border transition ${
                              pressed
                                ? "bg-amber-500 text-slate-950 font-bold border-amber-300"
                                : "bg-slate-900 text-slate-400 border-slate-800"
                            }`}
                          >
                            B{bit}
                          </button>
                        );
                      })}
                    </div>
                  </div>

                  {/* 8 Red/Green LEDs (0x02) + Dual Hex 7-Segment (0x10) */}
                  <div className="bg-[#090D16] border border-slate-800 rounded-xl p-3 flex flex-col justify-between">
                    <div className="flex justify-between items-center text-[11px] font-mono text-slate-400">
                      <span>LEDS (0x02)</span>
                      <span className="text-emerald-400 font-bold">
                        7-SEG:{" "}
                        {reconstructedState.segVal
                          .toString(16)
                          .padStart(2, "0")
                          .toUpperCase()}
                      </span>
                    </div>
                    <div className="flex items-center justify-between gap-1 pt-2">
                      {[7, 6, 5, 4, 3, 2, 1, 0].map((bit) => {
                        const lit =
                          ((reconstructedState.leds >> bit) & 1) === 1;
                        return (
                          <div
                            key={bit}
                            className="flex flex-col items-center gap-1"
                          >
                            <div
                              className={`w-3.5 h-3.5 rounded-full border transition-all ${
                                lit
                                  ? "bg-emerald-400 border-emerald-200 shadow-[0_0_10px_#34d399]"
                                  : "bg-slate-900 border-slate-700"
                              }`}
                            />
                            <span className="text-[9px] font-mono text-slate-500">
                              L{bit}
                            </span>
                          </div>
                        );
                      })}
                    </div>
                  </div>
                </div>
              </div>
            </div>

            {/* RIGHT COLUMN: 6-State FSM, Registers + Watchpoints, NN Co-Processor, Trace (7 cols) */}
            <div className="lg:col-span-7 flex flex-col gap-4">
              {/* Row 1: Multicycle FSM Pipeline & Current Instruction Decoder */}
              <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-4 shadow-xl space-y-3">
                <div className="flex flex-wrap items-center justify-between gap-2">
                  <div className="flex items-center gap-2">
                    <Activity className="w-4 h-4 text-blue-400" />
                    <span className="text-sm font-semibold">
                      6-State Multicycle Control FSM & Instruction Decoder
                    </span>
                  </div>
                  {currentStep && (
                    <div className="flex items-center gap-2 font-mono text-xs">
                      <span className="px-2 py-0.5 rounded bg-slate-800 text-slate-300">
                        PC: <strong className="text-white">{currentStep.pc}</strong>
                      </span>
                      <span className="px-2 py-0.5 rounded bg-slate-800 text-slate-300">
                        IR: <strong className="text-blue-400">{currentStep.ir}</strong>
                      </span>
                      <span className="px-2.5 py-0.5 rounded bg-blue-600/20 text-blue-300 border border-blue-500/30 font-semibold">
                        {currentStep.decoded.disassembly}
                      </span>
                    </div>
                  )}
                </div>

                {/* 6-State FSM Visual Pipeline */}
                <div className="grid grid-cols-6 gap-2 pt-1">
                  {[
                    "FETCH",
                    "DECODE",
                    "EXECUTE",
                    "MEM_IO",
                    "WRITEBACK",
                    "HALTED_S",
                  ].map((st) => {
                    const activeStates = currentStep?.decoded.fsm_states || [];
                    const isVisited = activeStates.includes(st);
                    const isHalt = st === "HALTED_S" && isVisited;
                    return (
                      <div
                        key={st}
                        className={`rounded-xl px-2 py-2.5 border text-center transition-all ${
                          isHalt
                            ? "bg-red-500/20 border-red-500 text-red-300 shadow-lg shadow-red-500/10"
                            : isVisited
                            ? "bg-blue-600/25 border-blue-500 text-white shadow-lg shadow-blue-600/10"
                            : "bg-[#090D16] border-slate-800/80 text-slate-600"
                        }`}
                      >
                        <div className="text-[10px] font-mono font-bold tracking-wider">
                          {st}
                        </div>
                        <div className="text-[10px] mt-0.5 opacity-75">
                          {isVisited ? "ACTIVE" : "IDLE"}
                        </div>
                      </div>
                    );
                  })}
                </div>
              </div>

              {/* Row 2: 8x8 Register File (with Watchpoints) + ZNCV Flags & int8 NN Accelerator */}
              <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                {/* Register File R0..R7 + Watchpoints + Flags */}
                <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-4 shadow-xl flex flex-col justify-between gap-3">
                  <div className="flex items-center justify-between">
                    <span className="text-xs font-semibold uppercase tracking-wider text-slate-400">
                      Register File (Click Watchpoint 🔔)
                    </span>
                    <div className="flex gap-1.5">
                      {["Z", "N", "C", "V"].map((flg, idx) => {
                        const bitVal =
                          reconstructedState.flags[idx] === "1" ? 1 : 0;
                        return (
                          <span
                            key={flg}
                            className={`px-2 py-0.5 rounded text-xs font-mono font-bold border ${
                              bitVal
                                ? "bg-emerald-500/20 text-emerald-300 border-emerald-500/40"
                                : "bg-[#090D16] text-slate-500 border-slate-800"
                            }`}
                          >
                            {flg}:{bitVal}
                          </span>
                        );
                      })}
                    </div>
                  </div>

                  <div className="grid grid-cols-4 gap-2">
                    {reconstructedState.regs.map((val, idx) => {
                      const justWritten =
                        currentStep?.rf_we === 1 &&
                        currentStep?.rd_addr === idx;
                      const isWatched = watchRegs.includes(idx);
                      const signedVal = val & 0x80 ? val - 256 : val;
                      return (
                        <div
                          key={idx}
                          onClick={() => toggleWatchReg(idx)}
                          title="Click to toggle write watchpoint on this register"
                          className={`rounded-xl p-2.5 border font-mono transition cursor-pointer ${
                            justWritten
                              ? "bg-blue-600/25 border-blue-400 text-white shadow-md shadow-blue-500/10"
                              : isWatched
                              ? "bg-amber-950/30 border-amber-500/50 text-slate-200"
                              : "bg-[#090D16] border-slate-800 text-slate-200"
                          }`}
                        >
                          <div className="flex justify-between items-center text-[10px] text-slate-400">
                            <span>R{idx}</span>
                            <span>
                              {isWatched && (
                                <span className="text-amber-400 mr-1">🔔</span>
                              )}
                              {justWritten && (
                                <span className="text-blue-400 font-bold">
                                  WRITE
                                </span>
                              )}
                            </span>
                          </div>
                          <div className="text-sm font-bold mt-0.5">
                            0x{val.toString(16).padStart(2, "0").toUpperCase()}
                          </div>
                          <div className="text-[10px] text-slate-500">
                            u:{val} / s:{signedVal}
                          </div>
                        </div>
                      );
                    })}
                  </div>
                </div>

                {/* int8 Neural Network Accelerator Panel (0x50 - 0x5F) */}
                <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-4 shadow-xl flex flex-col justify-between gap-2.5">
                  <div className="flex items-center justify-between">
                    <span className="text-xs font-semibold uppercase tracking-wider text-blue-400 flex items-center gap-1.5">
                      <Zap className="w-3.5 h-3.5" /> int8 NN Accelerator
                      (0x50–0x5F)
                    </span>
                    <span
                      className={`text-[10px] font-mono px-2 py-0.5 rounded border ${
                        reconstructedState.nn.unlocked
                          ? "bg-emerald-500/15 text-emerald-300 border-emerald-500/30"
                          : "bg-slate-800 text-slate-400 border-slate-700"
                      }`}
                    >
                      {reconstructedState.nn.unlocked
                        ? "KEY 0xA5 UNLOCKED"
                        : "LOCKED"}
                    </span>
                  </div>

                  <div className="grid grid-cols-3 gap-2 font-mono text-xs">
                    <div className="bg-[#090D16] border border-slate-800 rounded-xl p-2">
                      <div className="text-[10px] text-slate-500">
                        NN_A (0x50)
                      </div>
                      <div className="font-bold text-slate-200">
                        0x
                        {reconstructedState.nn.nnA
                          .toString(16)
                          .padStart(2, "0")
                          .toUpperCase()}
                      </div>
                    </div>
                    <div className="bg-[#090D16] border border-slate-800 rounded-xl p-2">
                      <div className="text-[10px] text-slate-500">
                        NN_W (0x51)
                      </div>
                      <div className="font-bold text-slate-200">
                        0x
                        {reconstructedState.nn.nnW
                          .toString(16)
                          .padStart(2, "0")
                          .toUpperCase()}
                      </div>
                    </div>
                    <div className="bg-[#090D16] border border-slate-800 rounded-xl p-2">
                      <div className="text-[10px] text-slate-500">
                        24-Bit ACC
                      </div>
                      <div className="font-bold text-blue-400">
                        0x
                        {reconstructedState.nn.nnAcc
                          .toString(16)
                          .padStart(6, "0")
                          .toUpperCase()}
                      </div>
                    </div>
                    <div className="bg-[#090D16] border border-slate-800 rounded-xl p-2">
                      <div className="text-[10px] text-slate-500">
                        QOUT (0x57)
                      </div>
                      <div className="font-bold text-emerald-300">
                        0x
                        {reconstructedState.nn.nnQout
                          .toString(16)
                          .padStart(2, "0")
                          .toUpperCase()}{" "}
                        (&gt;&gt;{reconstructedState.nn.nnShift})
                      </div>
                    </div>
                    <div className="bg-[#090D16] border border-slate-800 rounded-xl p-2">
                      <div className="text-[10px] text-slate-500">
                        NN_ACT (0x59)
                      </div>
                      <div className="font-bold text-amber-300">
                        0x
                        {reconstructedState.nn.nnAct
                          .toString(16)
                          .padStart(2, "0")
                          .toUpperCase()}{" "}
                        (B{reconstructedState.nn.nnLutSel})
                      </div>
                    </div>
                    <div className="bg-[#090D16] border border-slate-800 rounded-xl p-2">
                      <div className="text-[10px] text-slate-500">
                        MAC / SKIP
                      </div>
                      <div className="font-bold text-slate-200">
                        {reconstructedState.nn.nnMacCnt} /{" "}
                        <span className="text-blue-400">
                          {reconstructedState.nn.nnSkipCnt}
                        </span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              {/* Row 3: Golden Trace Table with Clickable PC Breakpoints (Feature 1) */}
              <div className="grid grid-cols-1 md:grid-cols-12 gap-4">
                <div className="md:col-span-7 bg-[#0F1624] border border-slate-800 rounded-2xl p-4 shadow-xl flex flex-col h-[270px]">
                  <div className="flex items-center justify-between mb-2">
                    <span className="text-xs font-semibold uppercase tracking-wider text-slate-400">
                      Instruction Trace (Click ● to toggle PC Breakpoint)
                    </span>
                    <span className="text-[11px] font-mono text-amber-400">
                      Breakpoints: {breakpoints.length}
                    </span>
                  </div>
                  <div className="flex-1 overflow-auto border border-slate-800/80 rounded-xl bg-[#090D16]">
                    <table className="w-full text-left font-mono text-[11px]">
                      <thead className="bg-slate-900/90 text-slate-400 sticky top-0">
                        <tr>
                          <th className="py-1.5 px-2">BP</th>
                          <th className="py-1.5 px-2">#</th>
                          <th className="py-1.5 px-2">PC</th>
                          <th className="py-1.5 px-2">IR</th>
                          <th className="py-1.5 px-2">Instruction</th>
                          <th className="py-1.5 px-2">WB</th>
                        </tr>
                      </thead>
                      <tbody className="divide-y divide-slate-800/60">
                        {trace.slice(0, 300).map((t, idx) => {
                          const isCurr = idx === stepIdx;
                          const hasBp = breakpoints.includes(t.pc_int);
                          return (
                            <tr
                              key={t.seq}
                              onClick={() => {
                                setIsPlaying(false);
                                setStepIdx(idx);
                              }}
                              className={`cursor-pointer transition ${
                                isCurr
                                  ? "bg-blue-600/30 text-white font-semibold"
                                  : "hover:bg-slate-800/50 text-slate-300"
                              }`}
                            >
                              <td
                                onClick={(e) => {
                                  e.stopPropagation();
                                  toggleBreakpoint(t.pc_int);
                                }}
                                className="py-1 px-2 text-center"
                              >
                                <span
                                  className={`inline-block w-2.5 h-2.5 rounded-full ${
                                    hasBp
                                      ? "bg-red-500 shadow-[0_0_6px_#ef4444]"
                                      : "bg-slate-800 hover:bg-slate-600"
                                  }`}
                                />
                              </td>
                              <td className="py-1 px-2 text-slate-500">
                                {t.seq}
                              </td>
                              <td className="py-1 px-2">{t.pc}</td>
                              <td className="py-1 px-2 text-blue-400">{t.ir}</td>
                              <td className="py-1 px-2">
                                {t.decoded.disassembly}
                              </td>
                              <td className="py-1 px-2 text-emerald-400">
                                {t.rf_we
                                  ? `R${t.rd_addr}=${t.rf_data}`
                                  : t.mem_we
                                  ? `[${t.mem_addr}]=${t.mem_data}`
                                  : "-"}
                              </td>
                            </tr>
                          );
                        })}
                      </tbody>
                    </table>
                  </div>
                </div>

                {/* Data Memory 256B Hex Grid */}
                <div className="md:col-span-5 bg-[#0F1624] border border-slate-800 rounded-2xl p-4 shadow-xl flex flex-col h-[270px]">
                  <div className="flex items-center justify-between mb-2">
                    <span className="text-xs font-semibold uppercase tracking-wider text-slate-400">
                      Data Memory (256 Bytes)
                    </span>
                    <span className="text-[11px] font-mono text-slate-500">
                      0x00–0xFF
                    </span>
                  </div>
                  <div className="flex-1 overflow-auto border border-slate-800/80 rounded-xl bg-[#090D16] p-2 font-mono text-[11px]">
                    <div className="grid grid-cols-9 gap-1 text-center">
                      <div className="text-slate-500">ADDR</div>
                      {[0, 1, 2, 3, 4, 5, 6, 7].map((c) => (
                        <div key={c} className="text-slate-500">
                          +{c}
                        </div>
                      ))}
                      {Array.from({ length: 32 }).map((_, rowIdx) => {
                        const baseAddr = rowIdx * 8;
                        return (
                          <div key={`row-${baseAddr}`} className="contents">
                            <div className="text-slate-500">
                              0x
                              {baseAddr
                                .toString(16)
                                .padStart(2, "0")
                                .toUpperCase()}
                            </div>
                            {[0, 1, 2, 3, 4, 5, 6, 7].map((offset) => {
                              const addr = baseAddr + offset;
                              const val = reconstructedState.dmem[addr];
                              const isModified =
                                currentStep?.mem_we === 1 &&
                                currentStep?.mem_addr_int === addr;
                              return (
                                <div
                                  key={addr}
                                  className={`rounded py-0.5 ${
                                    isModified
                                      ? "bg-blue-600 text-white font-bold"
                                      : val !== 0
                                      ? "text-emerald-300 bg-emerald-950/30"
                                      : "text-slate-600"
                                  }`}
                                >
                                  {val
                                    .toString(16)
                                    .padStart(2, "0")
                                    .toUpperCase()}
                                </div>
                              );
                            })}
                          </div>
                        );
                      })}
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        )}

        {/* ================================================================
            TAB 2: INTERACTIVE GRAPHICAL DATAPATH SCHEMATIC (FEATURE 2)
           ================================================================ */}
        {activeTab === "datapath" && (
          <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-5 shadow-xl space-y-4">
            <div className="flex flex-wrap items-center justify-between gap-3">
              <div>
                <h2 className="text-base font-bold text-white flex items-center gap-2">
                  <Eye className="w-5 h-5 text-blue-400" />
                  Live DSD-8 Harvard Datapath & Bus Activity Schematic
                </h2>
                <p className="text-xs text-slate-400">
                  Buses and functional blocks illuminate dynamically in electric
                  blue (#2563EB) based on the active instruction at Seq #
                  {stepIdx + 1}
                </p>
              </div>
              <div className="flex items-center gap-2">
                <button
                  onClick={() => setStepIdx((s) => Math.max(0, s - 1))}
                  className="px-3 py-1.5 rounded-lg bg-slate-800 hover:bg-slate-700 text-xs font-mono"
                >
                  ◀ Prev Instruction
                </button>
                <span className="px-3 py-1.5 rounded-lg bg-[#090D16] border border-slate-800 text-xs font-mono text-blue-400">
                  {currentStep
                    ? `${currentStep.pc}: ${currentStep.decoded.disassembly}`
                    : "No Trace"}
                </span>
                <button
                  onClick={() =>
                    setStepIdx((s) => Math.min(trace.length - 1, s + 1))
                  }
                  className="px-3 py-1.5 rounded-lg bg-slate-800 hover:bg-slate-700 text-xs font-mono"
                >
                  Next Instruction ▶
                </button>
              </div>
            </div>

            {/* Interactive SVG Block Diagram */}
            {(() => {
              const op = currentStep?.decoded.opcode ?? 0;
              const isAluOp = [0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb].includes(
                op
              );
              const isMemOp = op === 0x2 || op === 0x3;
              const isIoOp = op === 0xe;
              const isWbActive = (currentStep?.rf_we ?? 0) === 1;
              const isBranch = op === 0xc || op === 0xd;

              const strokeActive = "#2563EB";
              const strokeIdle = "#1E293B";

              return (
                <div className="w-full overflow-x-auto bg-[#090D16] border border-slate-800 rounded-2xl p-4">
                  <svg
                    viewBox="0 0 1100 460"
                    className="w-full min-w-[900px] h-auto font-mono"
                  >
                    {/*Connecting Buses */}
                    {/* PC -> IMEM */}
                    <line
                      x1="150"
                      y1="140"
                      x2="220"
                      y2="140"
                      stroke={strokeActive}
                      strokeWidth="4"
                    />
                    {/* IMEM -> IR/Decoder */}
                    <line
                      x1="370"
                      y1="140"
                      x2="440"
                      y2="140"
                      stroke={strokeActive}
                      strokeWidth="4"
                    />
                    {/* Decoder -> RegFile */}
                    <line
                      x1="580"
                      y1="140"
                      x2="650"
                      y2="140"
                      stroke={strokeActive}
                      strokeWidth="3"
                    />
                    {/* RegFile -> ALU */}
                    <line
                      x1="800"
                      y1="140"
                      x2="880"
                      y2="140"
                      stroke={isAluOp ? strokeActive : strokeIdle}
                      strokeWidth="4"
                    />
                    {/* RegFile -> DMEM */}
                    <path
                      d="M 725 220 L 725 320 L 650 320"
                      fill="none"
                      stroke={isMemOp ? strokeActive : strokeIdle}
                      strokeWidth="4"
                    />
                    {/* RegFile -> IO & NN Accel */}
                    <path
                      d="M 760 220 L 760 360 L 860 360"
                      fill="none"
                      stroke={isIoOp ? strokeActive : strokeIdle}
                      strokeWidth="4"
                    />
                    {/* Writeback Bus -> RegFile */}
                    <path
                      d="M 960 220 L 960 420 L 700 420 L 700 220"
                      fill="none"
                      stroke={isWbActive ? "#10B981" : strokeIdle}
                      strokeWidth="4"
                      strokeDasharray={isWbActive ? "none" : "6,6"}
                    />

                    {/* BLOCK 1: 9-Bit PC */}
                    <rect
                      x="30"
                      y="85"
                      width="120"
                      height="110"
                      rx="12"
                      fill="#0F1624"
                      stroke={isBranch ? "#F59E0B" : strokeActive}
                      strokeWidth="2.5"
                    />
                    <text
                      x="90"
                      y="115"
                      textAnchor="middle"
                      fill="#94A3B8"
                      fontSize="11"
                    >
                      9-BIT PC
                    </text>
                    <text
                      x="90"
                      y="148"
                      textAnchor="middle"
                      fill="#F8FAFC"
                      fontSize="18"
                      fontWeight="bold"
                    >
                      {currentStep?.pc || "0x000"}
                    </text>
                    <text
                      x="90"
                      y="175"
                      textAnchor="middle"
                      fill="#38BDF8"
                      fontSize="10"
                    >
                      {isBranch ? "BRANCH/JMP" : "PC + 1"}
                    </text>

                    {/* BLOCK 2: Instruction Memory (512x16) */}
                    <rect
                      x="220"
                      y="70"
                      width="150"
                      height="140"
                      rx="12"
                      fill="#0F1624"
                      stroke={strokeActive}
                      strokeWidth="2.5"
                    />
                    <text
                      x="295"
                      y="100"
                      textAnchor="middle"
                      fill="#94A3B8"
                      fontSize="11"
                    >
                      IMEM (512x16)
                    </text>
                    <text
                      x="295"
                      y="135"
                      textAnchor="middle"
                      fill="#60A5FA"
                      fontSize="16"
                      fontWeight="bold"
                    >
                      {currentStep?.ir || "0x0000"}
                    </text>
                    <text
                      x="295"
                      y="165"
                      textAnchor="middle"
                      fill="#E2E8F0"
                      fontSize="11"
                    >
                      {currentStep?.decoded.disassembly || "NOP"}
                    </text>

                    {/* BLOCK 3: Control Unit & 6-State FSM */}
                    <rect
                      x="440"
                      y="70"
                      width="140"
                      height="140"
                      rx="12"
                      fill="#0F1624"
                      stroke={strokeActive}
                      strokeWidth="2.5"
                    />
                    <text
                      x="510"
                      y="98"
                      textAnchor="middle"
                      fill="#94A3B8"
                      fontSize="11"
                    >
                      DECODER & FSM
                    </text>
                    <text
                      x="510"
                      y="125"
                      textAnchor="middle"
                      fill="#F8FAFC"
                      fontSize="12"
                    >
                      OP: {currentStep?.decoded.opcode_hex || "0x0"}
                    </text>
                    <text
                      x="510"
                      y="150"
                      textAnchor="middle"
                      fill="#34D399"
                      fontSize="11"
                    >
                      wb_sel: {currentStep?.decoded.wb_sel || "--"}
                    </text>
                    <text
                      x="510"
                      y="175"
                      textAnchor="middle"
                      fill="#FBBF24"
                      fontSize="11"
                    >
                      {currentStep?.decoded.cycles || 2} Cycles
                    </text>

                    {/* BLOCK 4: 8x8 Register File */}
                    <rect
                      x="650"
                      y="65"
                      width="150"
                      height="155"
                      rx="12"
                      fill="#0F1624"
                      stroke={isWbActive ? "#10B981" : strokeActive}
                      strokeWidth="2.5"
                    />
                    <text
                      x="725"
                      y="92"
                      textAnchor="middle"
                      fill="#94A3B8"
                      fontSize="11"
                    >
                      8x8 REG FILE
                    </text>
                    <text
                      x="725"
                      y="118"
                      textAnchor="middle"
                      fill="#E2E8F0"
                      fontSize="11"
                    >
                      Rd: R{currentStep?.decoded.rd ?? 0} | Rs1: R
                      {currentStep?.decoded.rs1 ?? 0}
                    </text>
                    <text
                      x="725"
                      y="142"
                      textAnchor="middle"
                      fill="#E2E8F0"
                      fontSize="11"
                    >
                      Rs2: R{currentStep?.decoded.rs2 ?? 0}
                    </text>
                    <text
                      x="725"
                      y="175"
                      textAnchor="middle"
                      fill={isWbActive ? "#34D399" : "#64748B"}
                      fontSize="12"
                      fontWeight="bold"
                    >
                      {isWbActive
                        ? `WE=1 (R${currentStep?.rd_addr}←${currentStep?.rf_data})`
                        : "WE=0"}
                    </text>

                    {/* BLOCK 5: 8-Bit ALU + ZNCV Flags */}
                    <rect
                      x="880"
                      y="65"
                      width="175"
                      height="155"
                      rx="12"
                      fill="#0F1624"
                      stroke={isAluOp ? strokeActive : strokeIdle}
                      strokeWidth="2.5"
                    />
                    <text
                      x="967"
                      y="92"
                      textAnchor="middle"
                      fill="#94A3B8"
                      fontSize="11"
                    >
                      8-BIT ALU + FLAGS
                    </text>
                    <text
                      x="967"
                      y="125"
                      textAnchor="middle"
                      fill={isAluOp ? "#60A5FA" : "#64748B"}
                      fontSize="14"
                      fontWeight="bold"
                    >
                      {isAluOp ? currentStep?.decoded.disassembly : "IDLE"}
                    </text>
                    <text
                      x="967"
                      y="160"
                      textAnchor="middle"
                      fill="#34D399"
                      fontSize="13"
                    >
                      ZNCV = {reconstructedState.flags}
                    </text>

                    {/* BLOCK 6: Data Memory (256x8) */}
                    <rect
                      x="460"
                      y="270"
                      width="190"
                      height="115"
                      rx="12"
                      fill="#0F1624"
                      stroke={isMemOp ? strokeActive : strokeIdle}
                      strokeWidth="2.5"
                    />
                    <text
                      x="555"
                      y="298"
                      textAnchor="middle"
                      fill="#94A3B8"
                      fontSize="11"
                    >
                      DATA MEM (256x8)
                    </text>
                    <text
                      x="555"
                      y="328"
                      textAnchor="middle"
                      fill={isMemOp ? "#F8FAFC" : "#64748B"}
                      fontSize="12"
                    >
                      {isMemOp
                        ? `Addr: ${currentStep?.mem_addr} | Data: ${currentStep?.mem_data}`
                        : "No Memory Access"}
                    </text>
                    <text
                      x="555"
                      y="355"
                      textAnchor="middle"
                      fill="#38BDF8"
                      fontSize="11"
                    >
                      mem_we = {currentStep?.mem_we ?? 0}
                    </text>

                    {/* BLOCK 7: int8 Neural Accelerator & Local I/O */}
                    <rect
                      x="860"
                      y="270"
                      width="195"
                      height="115"
                      rx="12"
                      fill="#0F1624"
                      stroke={isIoOp ? strokeActive : strokeIdle}
                      strokeWidth="2.5"
                    />
                    <text
                      x="957"
                      y="298"
                      textAnchor="middle"
                      fill="#60A5FA"
                      fontSize="11"
                      fontWeight="bold"
                    >
                      I/O & int8 NN ACCEL
                    </text>
                    <text
                      x="957"
                      y="325"
                      textAnchor="middle"
                      fill="#E2E8F0"
                      fontSize="11"
                    >
                      Port: {currentStep?.decoded.port || "0x00"} (
                      {isIoOp
                        ? currentStep?.decoded.io_dir
                          ? "OUT"
                          : "IN"
                        : "IDLE"}
                      )
                    </text>
                    <text
                      x="957"
                      y="352"
                      textAnchor="middle"
                      fill="#34D399"
                      fontSize="11"
                    >
                      ACC: 0x
                      {reconstructedState.nn.nnAcc
                        .toString(16)
                        .padStart(6, "0")
                        .toUpperCase()}{" "}
                      | ACT: 0x
                      {reconstructedState.nn.nnAct
                        .toString(16)
                        .padStart(2, "0")
                        .toUpperCase()}
                    </text>
                  </svg>
                </div>
              );
            })()}
          </div>
        )}

        {/* ================================================================
            TAB 3: IN-BROWSER WAVEFORM VIEWER (FEATURE 3)
           ================================================================ */}
        {activeTab === "waveform" && (
          <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-5 shadow-xl space-y-4">
            <div className="flex flex-wrap items-center justify-between gap-3">
              <div>
                <h2 className="text-base font-bold text-white flex items-center gap-2">
                  <Radio className="w-5 h-5 text-blue-400" />
                  Cycle-Accurate Hardware Timing Diagram Viewer (.VCD)
                </h2>
                <p className="text-xs text-slate-400">
                  Renders curated signals from{" "}
                  <code className="text-blue-300">
                    build/waveform/dsd8_wave.vcd
                  </code>{" "}
                  (or live trace synthesis) across SYS, CPU, IO, and NN scopes.
                </p>
              </div>

              <div className="flex flex-wrap items-center gap-2">
                {(["ALL", "CPU", "IO", "NN"] as const).map((grp) => (
                  <button
                    key={grp}
                    onClick={() => setWaveGroupFilter(grp)}
                    className={`px-3 py-1 rounded-lg text-xs font-mono transition ${
                      waveGroupFilter === grp
                        ? "bg-blue-600 text-white"
                        : "bg-[#090D16] text-slate-400 border border-slate-800"
                    }`}
                  >
                    {grp}
                  </button>
                ))}
                <button
                  onClick={() => setWaveZoom((z) => Math.max(0.5, z - 0.5))}
                  className="px-2.5 py-1 rounded bg-slate-800 text-xs font-mono"
                >
                  Zoom -
                </button>
                <button
                  onClick={() => setWaveZoom((z) => Math.min(4, z + 0.5))}
                  className="px-2.5 py-1 rounded bg-slate-800 text-xs font-mono"
                >
                  Zoom +
                </button>
                <button
                  onClick={loadVcdWaveform}
                  disabled={isLoadingVcd}
                  className="px-3 py-1.5 rounded-lg bg-blue-600 hover:bg-blue-500 text-xs font-semibold text-white"
                >
                  {isLoadingVcd ? "Generating VCD..." : "Run make waveform"}
                </button>
              </div>
            </div>

            {/* Waveform Canvas */}
            <div className="bg-[#090D16] border border-slate-800 rounded-xl p-4 overflow-x-auto">
              {vcdData.signals && vcdData.signals.length > 0 ? (
                <div
                  className="space-y-2"
                  style={{ minWidth: `${850 * waveZoom}px` }}
                >
                  {vcdData.signals
                    .filter(
                      (s) =>
                        waveGroupFilter === "ALL" || s.group === waveGroupFilter
                    )
                    .map((sig) => {
                      const maxT = Math.max(1, vcdData.max_time);
                      return (
                        <div
                          key={sig.id}
                          className="grid grid-cols-12 items-center border-b border-slate-800/60 pb-2"
                        >
                          <div className="col-span-3 pr-2 font-mono text-xs truncate">
                            <span className="text-[10px] px-1.5 py-0.5 rounded bg-blue-500/10 text-blue-400 mr-1.5">
                              {sig.group}
                            </span>
                            <span className="text-slate-200">{sig.name}</span>
                            <span className="text-slate-500 text-[10px] ml-1">
                              [{sig.width}b]
                            </span>
                          </div>
                          <div className="col-span-9 h-8 bg-slate-950/80 rounded relative overflow-hidden border border-slate-800/60">
                            <svg
                              viewBox="0 0 1000 32"
                              preserveAspectRatio="none"
                              className="w-full h-full"
                            >
                              {sig.transitions.map((tr, i) => {
                                const nextT =
                                  i < sig.transitions.length - 1
                                    ? sig.transitions[i + 1].t
                                    : maxT;
                                const x1 = (tr.t / maxT) * 1000;
                                const x2 = (nextT / maxT) * 1000;
                                const isBit = sig.width === 1;
                                const yHigh = 6;
                                const yLow = 26;

                                if (isBit) {
                                  const y = tr.v === "1" ? yHigh : yLow;
                                  return (
                                    <g key={i}>
                                      <line
                                        x1={x1}
                                        y1={y}
                                        x2={x2}
                                        y2={y}
                                        stroke={
                                          tr.v === "1" ? "#34D399" : "#475569"
                                        }
                                        strokeWidth="2"
                                      />
                                      {i > 0 && (
                                        <line
                                          x1={x1}
                                          y1={yHigh}
                                          x2={x1}
                                          y2={yLow}
                                          stroke="#34D399"
                                          strokeWidth="1.5"
                                        />
                                      )}
                                    </g>
                                  );
                                } else {
                                  return (
                                    <g key={i}>
                                      <rect
                                        x={x1}
                                        y={4}
                                        width={Math.max(2, x2 - x1)}
                                        height={24}
                                        fill="#1E293B"
                                        stroke="#2563EB"
                                        strokeWidth="1"
                                      />
                                      {x2 - x1 > 35 && (
                                        <text
                                          x={x1 + 4}
                                          y={20}
                                          fill="#93C5FD"
                                          fontSize="10"
                                          fontFamily="monospace"
                                        >
                                          {tr.v}
                                        </text>
                                      )}
                                    </g>
                                  );
                                }
                              })}
                            </svg>
                          </div>
                        </div>
                      );
                    })}
                </div>
              ) : (
                <div className="text-center py-8 text-xs font-mono text-slate-400">
                  Click "Run make waveform" above to compile RTL with Icarus
                  Verilog and render{" "}
                  <code className="text-blue-400">
                    build/waveform/dsd8_wave.vcd
                  </code>
                  .
                </div>
              )}
            </div>
          </div>
        )}

        {/* ================================================================
            TAB 4: NN ACCELERATOR BENCHMARK DASHBOARD
           ================================================================ */}
        {activeTab === "nn" && (
          <div className="space-y-5">
            <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
              <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-4">
                <div className="text-xs text-slate-400">Topology & Dataset</div>
                <div className="text-xl font-bold text-white mt-1">
                  4 → 6 → 3 MLP (Iris)
                </div>
                <div className="text-xs text-blue-400 mt-1 font-mono">
                  int8 Weights + 24-bit Accumulator
                </div>
              </div>
              <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-4">
                <div className="text-xs text-slate-400">
                  Classification Accuracy
                </div>
                <div className="text-xl font-bold text-emerald-400 mt-1">
                  22 / 23 (95.65%)
                </div>
                <div className="text-xs text-slate-400 mt-1 font-mono">
                  Bit-exact across Python, Sim & RTL
                </div>
              </div>
              <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-4">
                <div className="text-xs text-slate-400">
                  Max Hardware Speedup (a4)
                </div>
                <div className="text-xl font-bold text-blue-400 mt-1">
                  39.7× vs b0 (22.5× vs b1)
                </div>
                <div className="text-xs text-slate-400 mt-1 font-mono">
                  43,155 cycles → 1,087 cycles
                </div>
              </div>
              <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-4">
                <div className="text-xs text-slate-400">
                  RTL Conformance Matrix
                </div>
                <div className="text-xl font-bold text-amber-300 mt-1">
                  230 / 230 PASS
                </div>
                <div className="text-xs text-slate-400 mt-1 font-mono">
                  23 samples × 5 variants × 2 modes
                </div>
              </div>
            </div>

            <div className="grid grid-cols-1 lg:grid-cols-12 gap-5">
              <div className="lg:col-span-7 bg-[#0F1624] border border-slate-800 rounded-2xl p-5 space-y-4">
                <h2 className="text-sm font-bold uppercase tracking-wider text-slate-300">
                  Certified Cycle & Speedup Comparison (23 Held-Out Iris Samples)
                </h2>
                <div className="space-y-3">
                  {certifiedMetrics.map((m) => {
                    const widthPct = Math.max(
                      4,
                      Math.round((m.mean_cycles / 43155) * 100)
                    );
                    const isAccel = m.variant.startsWith("a");
                    return (
                      <div
                        key={m.variant}
                        className="bg-[#090D16] border border-slate-800 rounded-xl p-3 space-y-2"
                      >
                        <div className="flex justify-between items-center text-xs">
                          <div>
                            <span className="font-mono font-bold uppercase px-2 py-0.5 rounded bg-blue-600/20 text-blue-400 mr-2">
                              {m.variant}
                            </span>
                            <span className="font-semibold text-slate-200">
                              {m.title}
                            </span>
                          </div>
                          <div className="font-mono text-xs">
                            <span className="text-slate-400 mr-3">
                              Mean:{" "}
                              <strong className="text-white">
                                {m.mean_cycles.toLocaleString()}
                              </strong>{" "}
                              cyc
                            </span>
                            <span className="text-emerald-400 font-bold">
                              {m.speedup_b0}× vs b0
                            </span>
                          </div>
                        </div>
                        <div className="w-full h-2.5 bg-slate-900 rounded-full overflow-hidden">
                          <div
                            className={`h-full rounded-full ${
                              isAccel ? "bg-blue-500" : "bg-slate-600"
                            }`}
                            style={{ width: `${widthPct}%` }}
                          />
                        </div>
                      </div>
                    );
                  })}
                </div>
              </div>

              <div className="lg:col-span-5 bg-[#0F1624] border border-slate-800 rounded-2xl p-5 flex flex-col justify-between space-y-4">
                <div className="space-y-3">
                  <h2 className="text-sm font-bold uppercase tracking-wider text-slate-300">
                    Interactive Iris Sample Launcher
                  </h2>
                  <p className="text-xs text-slate-400">
                    Select any of the 23 quantized test samples and an
                    implementation variant (`b0`, `b1`, `a0`, `a2`, `a4`) to
                    load its generated assembly directly into the CPU debugger.
                  </p>

                  <div className="space-y-2">
                    <label className="text-xs text-slate-400 block">
                      Test Sample (s00 – s22)
                    </label>
                    <select
                      value={selectedSampleIdx}
                      onChange={(e) =>
                        setSelectedSampleIdx(Number(e.target.value))
                      }
                      className="w-full bg-[#090D16] border border-slate-700 rounded-xl px-3 py-2 text-xs font-mono text-slate-200"
                    >
                      {nnSamples.map((s) => (
                        <option key={s.index} value={s.index}>
                          {s.sample_id.toUpperCase()} — Features: [
                          {Array.isArray(s.features)
                            ? s.features.join(", ")
                            : String(s.features ?? "")}
                          ] → Expected: {s.class_name} ({s.expected_class})
                        </option>
                      ))}
                    </select>
                  </div>

                  <div className="space-y-2">
                    <label className="text-xs text-slate-400 block">
                      Implementation Variant
                    </label>
                    <div className="grid grid-cols-5 gap-2">
                      {["b0", "b1", "a0", "a2", "a4"].map((v) => (
                        <button
                          key={v}
                          onClick={() => setSelectedVariant(v)}
                          className={`py-2 rounded-xl font-mono text-xs font-bold uppercase border transition ${
                            selectedVariant === v
                              ? "bg-blue-600 text-white border-blue-500"
                              : "bg-[#090D16] text-slate-400 border-slate-800 hover:text-slate-200"
                          }`}
                        >
                          {v}
                        </button>
                      ))}
                    </div>
                  </div>
                </div>

                <button
                  onClick={() =>
                    loadAndRunNnSample(selectedSampleIdx, selectedVariant)
                  }
                  className="w-full py-2.5 rounded-xl bg-blue-600 hover:bg-blue-500 text-xs font-semibold text-white shadow-lg shadow-blue-600/20 flex items-center justify-center gap-2 cursor-pointer"
                >
                  <Play className="w-4 h-4 fill-current" />
                  Load s{selectedSampleIdx.toString().padStart(2, "0")}_
                  {selectedVariant}.asm into CPU Workbench
                </button>
              </div>
            </div>
          </div>
        )}

        {/* ================================================================
            TAB 5: CUSTOM NEURAL NETWORK QUANTIZATION WIZARD (FEATURE 5)
           ================================================================ */}
        {activeTab === "wizard" && (
          <div className="grid grid-cols-1 lg:grid-cols-12 gap-5">
            <div className="lg:col-span-5 bg-[#0F1624] border border-slate-800 rounded-2xl p-5 space-y-4 shadow-xl">
              <div>
                <h2 className="text-base font-bold text-white flex items-center gap-2">
                  <Sparkles className="w-5 h-5 text-blue-400" />
                  Custom int8 Neural Network Quantization Wizard
                </h2>
                <p className="text-xs text-slate-400 mt-1">
                  Customize 4 signed int8 Iris input features, requantization
                  right-shifts (`NN_SHIFT`), and hardware activation LUT bank
                  (`NN_LUT_SEL`).
                </p>
              </div>

              <div className="space-y-3">
                {[
                  "Sepal Length (x0)",
                  "Sepal Width (x1)",
                  "Petal Length (x2)",
                  "Petal Width (x3)",
                ].map((label, idx) => (
                  <div
                    key={idx}
                    className="bg-[#090D16] border border-slate-800 rounded-xl p-3"
                  >
                    <div className="flex justify-between text-xs font-mono mb-1">
                      <span className="text-slate-300">{label}</span>
                      <span className="text-blue-400 font-bold">
                        {customFeatures[idx]} (0x
                        {(customFeatures[idx] & 0xff)
                          .toString(16)
                          .padStart(2, "0")
                          .toUpperCase()}
                        )
                      </span>
                    </div>
                    <input
                      type="range"
                      min={-128}
                      max={127}
                      value={customFeatures[idx]}
                      onChange={(e) => {
                        const next = [...customFeatures];
                        next[idx] = Number(e.target.value);
                        setCustomFeatures(next);
                      }}
                      className="w-full accent-blue-600"
                    />
                  </div>
                ))}
              </div>

              <div className="grid grid-cols-3 gap-3">
                <div className="bg-[#090D16] border border-slate-800 rounded-xl p-3">
                  <label className="text-[11px] font-mono text-slate-400 block">
                    Layer-1 Shift
                  </label>
                  <input
                    type="number"
                    min={0}
                    max={15}
                    value={customShift1}
                    onChange={(e) => setCustomShift1(Number(e.target.value))}
                    className="w-full mt-1 bg-slate-900 border border-slate-700 rounded px-2 py-1 text-xs font-mono"
                  />
                </div>
                <div className="bg-[#090D16] border border-slate-800 rounded-xl p-3">
                  <label className="text-[11px] font-mono text-slate-400 block">
                    Layer-2 Shift
                  </label>
                  <input
                    type="number"
                    min={0}
                    max={15}
                    value={customShift2}
                    onChange={(e) => setCustomShift2(Number(e.target.value))}
                    className="w-full mt-1 bg-slate-900 border border-slate-700 rounded px-2 py-1 text-xs font-mono"
                  />
                </div>
                <div className="bg-[#090D16] border border-slate-800 rounded-xl p-3">
                  <label className="text-[11px] font-mono text-slate-400 block">
                    LUT Bank (0x58)
                  </label>
                  <select
                    value={customLutBank}
                    onChange={(e) => setCustomLutBank(Number(e.target.value))}
                    className="w-full mt-1 bg-slate-900 border border-slate-700 rounded px-2 py-1 text-xs font-mono"
                  >
                    <option value={0}>0: ReLU</option>
                    <option value={1}>1: Sigmoid</option>
                    <option value={2}>2: Tanh</option>
                    <option value={3}>3: OffsetBin</option>
                  </select>
                </div>
              </div>

              <div className="flex gap-2">
                <button
                  onClick={runCustomInference}
                  className="flex-1 py-2.5 rounded-xl bg-blue-600 hover:bg-blue-500 text-xs font-semibold text-white cursor-pointer"
                >
                  Evaluate Quantized Network
                </button>
                {customNnResult?.generated_asm && (
                  <button
                    onClick={() => {
                      setAsmCode(customNnResult.generated_asm);
                      setUseNnSim(true);
                      setActiveTab("ide");
                      runSimulation(
                        customNnResult.generated_asm,
                        true,
                        switchBits,
                        buttonBits
                      );
                    }}
                    className="flex-1 py-2.5 rounded-xl bg-emerald-600 hover:bg-emerald-500 text-xs font-semibold text-white cursor-pointer"
                  >
                    Load Generated ASM in IDE
                  </button>
                )}
              </div>
            </div>

            <div className="lg:col-span-7 bg-[#0F1624] border border-slate-800 rounded-2xl p-5 space-y-4 shadow-xl">
              <h3 className="text-sm font-bold uppercase tracking-wider text-slate-300">
                Hardware Co-Processor Layer-by-Layer Inspection
              </h3>
              {customNnResult ? (
                <div className="space-y-4 font-mono text-xs">
                  <div className="grid grid-cols-3 gap-3">
                    <div className="bg-[#090D16] border border-slate-800 rounded-xl p-3">
                      <div className="text-slate-400 text-[10px]">
                        PREDICTED CLASS
                      </div>
                      <div className="text-base font-bold text-emerald-400 mt-1">
                        {customNnResult.predicted_class_name} (
                        {customNnResult.predicted_class})
                      </div>
                    </div>
                    <div className="bg-[#090D16] border border-slate-800 rounded-xl p-3">
                      <div className="text-slate-400 text-[10px]">
                        NONZERO MAC OPS
                      </div>
                      <div className="text-base font-bold text-blue-400 mt-1">
                        {customNnResult.mac_ops} MACs
                      </div>
                    </div>
                    <div className="bg-[#090D16] border border-slate-800 rounded-xl p-3">
                      <div className="text-slate-400 text-[10px]">
                        ZERO-SKIP SAVED
                      </div>
                      <div className="text-base font-bold text-amber-400 mt-1">
                        {customNnResult.zero_skips} Skips
                      </div>
                    </div>
                  </div>

                  <div className="bg-[#090D16] border border-slate-800 rounded-xl p-3 space-y-2">
                    <div className="text-slate-400 text-[11px]">
                      Hidden Layer (6 Neurons): 24-bit ACC → QOUT (&gt;&gt;
                      {customNnResult.shift1}) → LUT Activation
                    </div>
                    <div className="grid grid-cols-6 gap-2 text-center">
                      {customNnResult.hidden_act?.map(
                        (actVal: number, idx: number) => (
                          <div
                            key={idx}
                            className="bg-slate-900 border border-slate-800 rounded-lg p-2"
                          >
                            <div className="text-[10px] text-slate-500">
                              H{idx}
                            </div>
                            <div className="text-[10px] text-slate-400">
                              ACC:{customNnResult.hidden_acc[idx]}
                            </div>
                            <div className="text-emerald-400 font-bold mt-0.5">
                              ACT: {actVal}
                            </div>
                          </div>
                        )
                      )}
                    </div>
                  </div>

                  <div className="bg-[#090D16] border border-slate-800 rounded-xl p-3 space-y-2">
                    <div className="text-slate-400 text-[11px]">
                      Output Layer Logits (3 Iris Classes)
                    </div>
                    <div className="grid grid-cols-3 gap-3">
                      {customNnResult.out_logits?.map(
                        (logit: number, idx: number) => (
                          <div
                            key={idx}
                            className={`rounded-xl p-2.5 border ${
                              idx === customNnResult.predicted_class
                                ? "bg-emerald-950/40 border-emerald-500 text-emerald-300"
                                : "bg-slate-900 border-slate-800 text-slate-300"
                            }`}
                          >
                            <div className="text-[10px]">Class {idx}</div>
                            <div className="text-sm font-bold">
                              Logit: {logit} (ACC: {customNnResult.out_acc[idx]})
                            </div>
                          </div>
                        )
                      )}
                    </div>
                  </div>

                  <div>
                    <div className="text-slate-400 text-[11px] mb-1">
                      Auto-Generated DSD-8 Assembly Preview:
                    </div>
                    <pre className="bg-[#090D16] border border-slate-800 rounded-xl p-3 text-[11px] text-blue-300 max-h-[170px] overflow-auto">
                      {customNnResult.generated_asm}
                    </pre>
                  </div>
                </div>
              ) : null}
            </div>
          </div>
        )}

        {/* ================================================================
            TAB 6: AUTOMATED TEST SUITE RUNNER & ARTIFACT EXPORT (FEATURES 4 & 6)
           ================================================================ */}
        {activeTab === "verify" && (
          <div className="space-y-5">
            {/* Feature 4: One-Click Unit Test & Conformance Matrix */}
            <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-5 shadow-xl space-y-4">
              <div className="flex flex-wrap items-center justify-between gap-2">
                <div>
                  <h2 className="text-base font-bold text-white flex items-center gap-2">
                    <ShieldCheck className="w-5 h-5 text-blue-400" />
                    Automated Hardware Testbench & Conformance Runner
                  </h2>
                  <p className="text-xs text-slate-400">
                    Execute individual Verilog unit testbenches (`tb_alu`,
                    `tb_nn_accel`, `tb_cpu`) and golden trace conformance checks.
                  </p>
                </div>
              </div>

              <div className="grid grid-cols-1 md:grid-cols-5 gap-3">
                {[
                  { key: "lint", label: "make lint", desc: "Verilator + Icarus" },
                  {
                    key: "tb_alu",
                    label: "tb_alu.v",
                    desc: "ALU Unit Testbench",
                  },
                  {
                    key: "tb_nn",
                    label: "tb_nn_accel.v",
                    desc: "NN MAC/LUT Testbench",
                  },
                  {
                    key: "tb_cpu",
                    label: "make test",
                    desc: "Directed CPU Tests",
                  },
                  {
                    key: "conformance",
                    label: "make conformance",
                    desc: "Golden vs RTL Trace",
                  },
                ].map((item) => {
                  const res = suiteResults[item.key];
                  const isRunning = runningTarget === item.key;
                  return (
                    <div
                      key={item.key}
                      className="bg-[#090D16] border border-slate-800 rounded-xl p-3.5 flex flex-col justify-between gap-3"
                    >
                      <div>
                        <div className="flex items-center justify-between">
                          <span className="font-mono text-xs font-bold text-white">
                            {item.label}
                          </span>
                          {res &&
                            (res.passed ? (
                              <CheckCircle2 className="w-4 h-4 text-emerald-400" />
                            ) : (
                              <XCircle className="w-4 h-4 text-red-400" />
                            ))}
                        </div>
                        <div className="text-[11px] text-slate-400 mt-1">
                          {item.desc}
                        </div>
                        {res && (
                          <div
                            className={`text-[10px] font-mono mt-2 ${
                              res.passed ? "text-emerald-400" : "text-red-400"
                            }`}
                          >
                            {res.passed ? "PASSED" : "FAILED"} in{" "}
                            {res.elapsed_sec}s
                          </div>
                        )}
                      </div>
                      <button
                        onClick={() => runSuiteTarget(item.key)}
                        disabled={isRunning}
                        className="w-full py-1.5 rounded-lg bg-blue-600/20 hover:bg-blue-600 text-blue-300 hover:text-white border border-blue-500/30 text-xs font-mono transition cursor-pointer"
                      >
                        {isRunning ? "Running..." : "Run Target"}
                      </button>
                    </div>
                  );
                })}
              </div>
            </div>

            {/* Feature 6: Report & Artifact Export Engine */}
            <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-5 shadow-xl space-y-3">
              <h3 className="text-sm font-bold uppercase tracking-wider text-slate-300 flex items-center gap-2">
                <FileSpreadsheet className="w-4 h-4 text-blue-400" />
                Artifact & Lab Report Export Center
              </h3>
              <div className="flex flex-wrap gap-2.5">
                <button
                  onClick={() => downloadTextFile("program.asm", asmCode)}
                  className="px-3.5 py-2 rounded-xl bg-[#090D16] hover:bg-slate-800 border border-slate-700 text-xs font-mono flex items-center gap-1.5"
                >
                  <Download className="w-3.5 h-3.5 text-blue-400" /> Download .ASM
                </button>
                <button
                  onClick={() =>
                    downloadTextFile("program.hex", hexOutput || "; Empty")
                  }
                  className="px-3.5 py-2 rounded-xl bg-[#090D16] hover:bg-slate-800 border border-slate-700 text-xs font-mono flex items-center gap-1.5"
                >
                  <Download className="w-3.5 h-3.5 text-emerald-400" /> Download
                  .HEX
                </button>
                <button
                  onClick={() =>
                    downloadTextFile(
                      "program.lst",
                      listingOutput || "; Empty"
                    )
                  }
                  className="px-3.5 py-2 rounded-xl bg-[#090D16] hover:bg-slate-800 border border-slate-700 text-xs font-mono flex items-center gap-1.5"
                >
                  <Download className="w-3.5 h-3.5 text-amber-400" /> Download
                  .LST
                </button>
                <button
                  onClick={() =>
                    downloadTextFile(
                      "golden.trace",
                      rawTraceOutput || "# Run simulation first"
                    )
                  }
                  className="px-3.5 py-2 rounded-xl bg-[#090D16] hover:bg-slate-800 border border-slate-700 text-xs font-mono flex items-center gap-1.5"
                >
                  <Download className="w-3.5 h-3.5 text-purple-400" /> Download
                  Golden .TRACE
                </button>
                {benchMarkdown && (
                  <button
                    onClick={() => downloadTextFile("bench.md", benchMarkdown)}
                    className="px-3.5 py-2 rounded-xl bg-[#090D16] hover:bg-slate-800 border border-slate-700 text-xs font-mono flex items-center gap-1.5"
                  >
                    <Download className="w-3.5 h-3.5 text-pink-400" /> Download
                    bench.md Report
                  </button>
                )}
                <button
                  onClick={() => window.print()}
                  className="px-3.5 py-2 rounded-xl bg-blue-600/20 hover:bg-blue-600/30 border border-blue-500/40 text-blue-300 text-xs font-mono flex items-center gap-1.5"
                >
                  Print / Save PDF Verification Report
                </button>
              </div>
            </div>

            {/* Real-Time SSE Streaming Terminal */}
            <div className="bg-[#0F1624] border border-slate-800 rounded-2xl p-5 shadow-xl space-y-4">
              <div className="flex flex-wrap items-center justify-between gap-2">
                <div className="flex items-center gap-2">
                  <Terminal className="w-4 h-4 text-blue-400" />
                  <span className="text-sm font-bold">
                    Live Toolchain & Makefile Streaming Console (SSE)
                  </span>
                </div>
                <div className="flex flex-wrap gap-1.5">
                  {[
                    { key: "lint", label: "make lint" },
                    { key: "test", label: "make test" },
                    { key: "conformance", label: "make conformance" },
                    { key: "waveform", label: "make waveform" },
                    { key: "nn_ref", label: "python3 nn/nn_ref.py" },
                    { key: "nn_rtl", label: "make nn" },
                    { key: "bench", label: "make bench" },
                  ].map((cmd) => (
                    <button
                      key={cmd.key}
                      disabled={isRunningCmd}
                      onClick={() => runStreamCommand(cmd.key)}
                      className="px-2.5 py-1 rounded-lg bg-[#090D16] hover:bg-blue-600 text-xs font-mono text-slate-300 hover:text-white border border-slate-800 transition disabled:opacity-40"
                    >
                      $ {cmd.label}
                    </button>
                  ))}
                </div>
              </div>

              <div className="bg-[#090D16] border border-slate-800 rounded-xl p-4 h-[340px] overflow-auto font-mono text-xs space-y-1">
                {consoleLogs.map((line, i) => {
                  const isPass = line.includes("PASS") || line.includes("SUCCESS");
                  const isFail = line.includes("FAIL") || line.includes("ERROR");
                  return (
                    <div
                      key={i}
                      className={
                        isPass
                          ? "text-emerald-400 font-semibold"
                          : isFail
                          ? "text-red-400 font-semibold"
                          : "text-slate-300"
                      }
                    >
                      {line}
                    </div>
                  );
                })}
                <div ref={consoleEndRef} />
              </div>
            </div>
          </div>
        )}
      </main>
    </div>
  );
}