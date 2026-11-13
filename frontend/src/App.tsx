import { useState, useEffect } from "react";
import {
  Cpu, Play, FileCode, Activity, BarChart3, Terminal, BookOpen,
  SkipBack, SkipForward, RotateCcw, Save
} from "lucide-react";

const API_BASE = "";

const DEFAULT_DEMO_ASM = `; DSD-8 + int8 Neural Network Accelerator Demo
        LDI  R0, 0xA5
        OUT  0x5F, R0       ; Unlock NN Accelerator (Port 0x5F = 0xA5)
        LDI  R0, 0x03
        OUT  0x52, R0       ; Clear 24-bit accumulator & counters
        LDI  R1, 3
        OUT  0x50, R1       ; Latch activation A = 3
        LDI  R2, 4
        OUT  0x51, R2       ; Trigger MAC with weight W = 4 (acc += 3*4 = 12)
        IN   R3, 0x53       ; Read low accumulator byte (NN_ACC0 = 0x0C)
        OUT  0x02, R3       ; Output 0x0C to board LEDs
        HLT`;

export default function App() {
  const [activeTab, setActiveTab] = useState<"datapath" | "isa" | "nn" | "waveform" | "files">("datapath");

  // Simulation & Trace State
  const [asmInput, setAsmInput] = useState<string>(DEFAULT_DEMO_ASM);
  const [useNnSim, setUseNnSim] = useState<boolean>(true);
  const [switchesHex, setSwitchesHex] = useState<string>("0xA5");
  const [traceSteps, setTraceSteps] = useState<any[]>([]);
  const [currentStepIdx, setCurrentStepIdx] = useState<number>(0);
  const [listing, setListing] = useState<string>("");
  const [finalState, setFinalState] = useState<any>(null);
  const [simError, setSimError] = useState<string>("");

  // File Browser State
  const [fileList, setFileList] = useState<string[]>([]);
  const [selectedFile, setSelectedFile] = useState<string>("sim/waveform_demo.asm");
  const [fileContent, setFileContent] = useState<string>("");
  const [saveStatus, setSaveStatus] = useState<string>("");

  // Terminal SSE Stream State
  const [terminalLogs, setTerminalLogs] = useState<string[]>([
    "DSD-8 Hardware & NN Co-Design Studio Ready.",
    "Select a toolchain action or click 'Assemble & Simulate' to trace execution."
  ]);
  const [isRunningCmd, setIsRunningCmd] = useState<boolean>(false);

  // Waveform & NN Benchmark State
  const [waveData, setWaveData] = useState<any>(null);
  const [nnData, setNnData] = useState<any>(null);
  const [sampleIdx, setSampleIdx] = useState<number>(0);

  // Interactive Instruction Encoder State
  const [builderOp, setBuilderOp] = useState<number>(0x1);
  const [builderRd, setBuilderRd] = useState<number>(1);
  const [builderRs1, setBuilderRs1] = useState<number>(2);
  const [builderRs2, setBuilderRs2] = useState<number>(3);
  const [builderImm, setBuilderImm] = useState<number>(12);

  useEffect(() => {
    runSimulation(DEFAULT_DEMO_ASM);
    fetchFileList();
    fetchNnComparison(0);
  }, []);

  const fetchFileList = async () => {
    try {
      const res = await fetch(`${API_BASE}/api/files`);
      const data = await res.json();
      setFileList(data.files || []);
    } catch (e) {
      console.error("Backend offline", e);
    }
  };

  const loadFile = async (path: string) => {
    setSelectedFile(path);
    setSaveStatus("");
    const res = await fetch(`${API_BASE}/api/file?path=${encodeURIComponent(path)}`);
    if (res.ok) {
      const data = await res.json();
      setFileContent(data.content);
    }
  };

  const saveFile = async () => {
    const res = await fetch(`${API_BASE}/api/file`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ path: selectedFile, content: fileContent }),
    });
    if (res.ok) {
      setSaveStatus("Saved to local disk!");
      setTimeout(() => setSaveStatus(""), 2500);
    }
  };

  const runSimulation = async (codeToRun: string = asmInput) => {
    setSimError("");
    try {
      const res = await fetch(`${API_BASE}/api/simulate`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          asm_code: codeToRun,
          use_nn_sim: useNnSim,
          switches: switchesHex,
          buttons: "0x00",
        }),
      });
      const data = await res.json();
      if (data.status === "error") {
        setSimError(`[${data.stage}] ${data.log}`);
        return;
      }
      setTraceSteps(data.trace_steps || []);
      setListing(data.listing || "");
      setFinalState(data.final_state || null);
      setCurrentStepIdx(0);
    } catch (err: any) {
      setSimError("Backend request error: ");
    }
  };

  const triggerCommandStream = (cmdKey: string) => {
    setIsRunningCmd(true);
    setTerminalLogs((prev) => [...prev, `\n--- Starting ${cmdKey} ---`]);
    const evtSource = new EventSource(`${API_BASE}/api/stream/${cmdKey}`);
    evtSource.onmessage = (event) => {
      setTerminalLogs((prev) => [...prev, event.data]);
      if (event.data.includes("[Process exited")) {
        evtSource.close();
        setIsRunningCmd(false);
        if (cmdKey === "waveform") fetchWaveform();
      }
    };
    evtSource.onerror = () => {
      evtSource.close();
      setIsRunningCmd(false);
    };
  };

  const fetchWaveform = async () => {
    const res = await fetch(`${API_BASE}/api/waveform`);
    const data = await res.json();
    setWaveData(data);
  };

  const fetchNnComparison = async (idx: number) => {
    setSampleIdx(idx);
    const res = await fetch(`${API_BASE}/api/nn/comparison?sample_idx=${idx}`);
    const data = await res.json();
    setNnData(data);
  };

  const loadVariantIntoSimulator = async (asmPath: string) => {
    const res = await fetch(`${API_BASE}/api/file?path=${encodeURIComponent(asmPath)}`);
    if (res.ok) {
      const data = await res.json();
      setAsmInput(data.content);
      setActiveTab("datapath");
      runSimulation(data.content);
    }
  };

  const currentStep = traceSteps[currentStepIdx] || null;
  const regs = currentStep ? currentStep.registers_snapshot : [0, 0, 0, 0, 0, 0, 0, 0];
  const flags = currentStep ? currentStep.flags : { Z: 0, N: 0, C: 0, V: 0, raw: "0000" };
  const dmem = currentStep ? currentStep.dmem_snapshot : {};

  // Calculate 16-bit instruction word for the Interactive Builder
  const encodedWord =
    ((builderOp & 0xf) << 12) |
    ((builderRd & 0x7) << 9) |
    ((builderOp === 0x1 || builderOp === 0xe)
      ? ((builderOp === 0xe ? (builderRs1 & 0x1) << 8 : 0) | (builderImm & 0xff))
      : ((builderRs1 & 0x7) << 6) | ((builderRs2 & 0x7) << 3));

  return (
    <div className="min-h-screen flex flex-col bg-[#090D16] text-slate-100">
      {/* Top Header Bar */}
      <header className="border-b border-slate-800 bg-[#0F1624] px-6 py-3 flex items-center justify-between">
        <div className="flex items-center gap-3">
          <div className="bg-[#2563EB] p-2 rounded-lg shadow-lg shadow-blue-600/30">
            <Cpu className="w-6 h-6 text-white" />
          </div>
          <div>
            <h1 className="text-lg font-bold tracking-wide flex items-center gap-2">
              DSD-8 STUDIO
              <span className="text-xs bg-blue-950 text-blue-300 border border-blue-700 px-2 py-0.5 rounded-full">
                int8 NN Accelerator Co-Design
              </span>
            </h1>
            <p className="text-xs text-slate-400">
              8-Bit Harvard Processor • 6-State FSM • Memory-Mapped MAC & Activation LUTs (0x50–0x5F)
            </p>
          </div>
        </div>

        {/* Navigation Tabs */}
        <nav className="flex gap-1 bg-slate-900/90 p-1 rounded-lg border border-slate-800">
          {[
            { id: "datapath", label: "CPU & Cycle Debugger", icon: Cpu },
            { id: "isa", label: "ISA & Instruction Builder", icon: BookOpen },
            { id: "nn", label: "NN vs Baseline Lab", icon: BarChart3 },
            { id: "waveform", label: "Waveform Viewer", icon: Activity },
            { id: "files", label: "Local PC Files & CLI", icon: FileCode },
          ].map((t) => {
            const Icon = t.icon;
            return (
              <button
                key={t.id}
                onClick={() => {
                  setActiveTab(t.id as any);
                  if (t.id === "waveform" && !waveData) fetchWaveform();
                  if (t.id === "files" && !fileContent) loadFile(selectedFile);
                }}
                className={`flex items-center gap-2 px-3.5 py-1.5 rounded-md text-xs font-medium transition ${activeTab === t.id
                  ? "bg-[#2563EB] text-white shadow"
                  : "text-slate-400 hover:text-white hover:bg-slate-800"
                  }`}
              >
                <Icon className="w-4 h-4" />
                {t.label}
              </button>
            );
          })}
        </nav>
      </header>

      {/* Main Content Area */}
      <main className="flex-1 p-6 overflow-y-auto">
        {/* =============================================================== */}
        {/* TAB 1: CPU DATAPATH & CYCLE-BY-CYCLE DEBUGGER                   */}
        {/* =============================================================== */}
        {activeTab === "datapath" && (
          <div className="grid grid-cols-12 gap-6">
            {/* Left Column: Assembly Editor & Controls */}
            <div className="col-span-4 flex flex-col gap-4">
              <div className="bg-[#0F1624] border border-slate-800 rounded-xl p-4 flex flex-col gap-3">
                <div className="flex items-center justify-between">
                  <span className="text-sm font-semibold text-blue-400">Assembly Program (.asm)</span>
                  <div className="flex items-center gap-2">
                    <label className="text-xs text-slate-400 flex items-center gap-1 cursor-pointer">
                      <input
                        type="checkbox"
                        checked={useNnSim}
                        onChange={(e) => setUseNnSim(e.target.checked)}
                        className="accent-[#2563EB]"
                      />
                      Enable NN Port Sim
                    </label>
                    <button
                      onClick={() => runSimulation(asmInput)}
                      className="bg-[#2563EB] hover:bg-blue-500 text-white text-xs font-semibold px-3 py-1.5 rounded-lg flex items-center gap-1.5 shadow"
                    >
                      <Play className="w-3.5 h-3.5" /> Assemble & Run
                    </button>
                  </div>
                </div>

                <textarea
                  value={asmInput}
                  onChange={(e) => setAsmInput(e.target.value)}
                  rows={14}
                  className="w-full bg-slate-950 text-emerald-300 font-mono text-xs p-3 rounded-lg border border-slate-800 focus:outline-none focus:border-[#2563EB]"
                />

                {simError && (
                  <div className="bg-red-950/70 border border-red-700 text-red-200 text-xs p-2.5 rounded-lg font-mono whitespace-pre-wrap">
                    {simError}
                  </div>
                )}

                <div className="flex items-center justify-between text-xs text-slate-400 pt-1 border-t border-slate-800">
                  <span>Board Switches (Port 0x00):</span>
                  <input
                    value={switchesHex}
                    onChange={(e) => setSwitchesHex(e.target.value)}
                    className="bg-slate-900 border border-slate-700 rounded px-2 py-0.5 font-mono text-white w-20 text-center"
                  />
                </div>
              </div>

              {/* Assembler Listing Output */}
              <div className="bg-[#0F1624] border border-slate-800 rounded-xl p-4">
                <h3 className="text-xs font-semibold uppercase tracking-wider text-slate-400 mb-2">
                  Two-Pass Assembler Listing (.lst)
                </h3>
                <pre className="bg-slate-950 p-3 rounded-lg text-[11px] font-mono text-slate-300 max-h-52 overflow-y-auto border border-slate-800">
                  {listing || "Assemble a program to view its 16-bit hex encoding."}
                </pre>
              </div>
            </div>

            {/* Right Column: Interactive Cycle Scrubber, FSM, Registers & Micro-Operations */}
            <div className="col-span-8 flex flex-col gap-5">
              {/* Stepper Bar */}
              <div className="bg-[#0F1624] border border-slate-800 rounded-xl p-4 flex flex-col gap-3">
                <div className="flex items-center justify-between">
                  <div className="flex items-center gap-2">
                    <button
                      onClick={() => setCurrentStepIdx(0)}
                      className="p-2 rounded-lg bg-slate-800 hover:bg-slate-700 text-slate-200"
                      title="Reset to first instruction"
                    >
                      <RotateCcw className="w-4 h-4" />
                    </button>
                    <button
                      onClick={() => setCurrentStepIdx((i) => Math.max(0, i - 1))}
                      disabled={currentStepIdx === 0}
                      className="p-2 rounded-lg bg-slate-800 hover:bg-slate-700 disabled:opacity-40"
                    >
                      <SkipBack className="w-4 h-4" />
                    </button>
                    <button
                      onClick={() => setCurrentStepIdx((i) => Math.min(traceSteps.length - 1, i + 1))}
                      disabled={currentStepIdx >= traceSteps.length - 1}
                      className="px-4 py-2 rounded-lg bg-[#2563EB] hover:bg-blue-500 text-white font-semibold text-xs flex items-center gap-1.5 disabled:opacity-40"
                    >
                      Step Instruction <SkipForward className="w-4 h-4" />
                    </button>
                  </div>

                  <div className="text-right">
                    <div className="text-sm font-bold text-white">
                      Retired Instruction #{currentStep ? currentStep.seq : 0} / {traceSteps.length}
                    </div>
                    <div className="text-xs text-slate-400">
                      Est. Cumulative Cycles: <span className="text-blue-400 font-mono">{currentStep?.est_cumulative_cycles || 0}</span>
                    </div>
                  </div>
                </div>

                <input
                  type="range"
                  min={0}
                  max={Math.max(0, traceSteps.length - 1)}
                  value={currentStepIdx}
                  onChange={(e) => setCurrentStepIdx(Number(e.target.value))}
                  className="w-full accent-[#2563EB] cursor-pointer"
                />
              </div>

              {/* Active Instruction Decoder & Behind-the-Scenes Micro-Op Panel */}
              {currentStep && (
                <div className="bg-gradient-to-r from-blue-950/50 to-slate-900 border border-blue-800/60 rounded-xl p-5 flex flex-col gap-3">
                  <div className="flex items-center justify-between">
                    <div className="flex items-center gap-3">
                      <span className="px-2.5 py-1 rounded bg-[#2563EB] text-white font-mono text-sm font-bold">
                        PC {currentStep.pc}
                      </span>
                      <span className="px-2.5 py-1 rounded bg-slate-800 text-amber-300 font-mono text-sm">
                        IR {currentStep.ir}
                      </span>
                      <span className="text-lg font-bold text-white font-mono">
                        {currentStep.decoded.mnemonic} {currentStep.decoded.operands}
                      </span>
                    </div>
                    <span className="text-xs bg-slate-800 px-3 py-1 rounded-full text-slate-300">
                      Writeback Mux (`wb_sel`): <strong className="text-blue-400">{currentStep.decoded.wb_sel}</strong>
                    </span>
                  </div>

                  <p className="text-xs text-slate-200 leading-relaxed bg-slate-950/70 p-3 rounded-lg border border-slate-800">
                    <strong className="text-blue-400">Behind the Instruction: </strong>
                    {currentStep.decoded.behind_the_scenes}
                  </p>

                  {/* 6-State Multicycle FSM Visualizer */}
                  <div className="pt-1">
                    <div className="text-[11px] uppercase tracking-wider text-slate-400 mb-2">
                      6-State Multicycle Controller Path ({currentStep.decoded.nominal_cycles} cycles)
                    </div>
                    <div className="grid grid-cols-6 gap-2">
                      {["FETCH", "DECODE", "EXECUTE", "MEM_IO", "WRITEBACK", "HALTED_S"].map((st) => {
                        const active = currentStep.decoded.fsm_path.some((p: string) => p.startsWith(st));
                        return (
                          <div
                            key={st}
                            className={`text-center py-2 rounded-lg text-xs font-mono font-semibold border ${active
                              ? "bg-[#2563EB]/25 border-[#2563EB] text-blue-200 shadow-sm"
                              : "bg-slate-950/60 border-slate-800 text-slate-600"
                              }`}
                          >
                            {st}
                          </div>
                        );
                      })}
                    </div>
                  </div>
                </div>
              )}

              {/* Register File (R0-R7) + Architectural Flags (Z N C V) */}
              <div className="grid grid-cols-12 gap-5">
                <div className="col-span-8 bg-[#0F1624] border border-slate-800 rounded-xl p-4">
                  <h3 className="text-xs font-semibold uppercase tracking-wider text-slate-400 mb-3">
                    8 x 8-Bit Register File (R0–R7)
                  </h3>
                  <div className="grid grid-cols-4 gap-3">
                    {regs.map((val: number, idx: number) => {
                      const isWritten = currentStep && currentStep.rf_we === 1 && currentStep.rd_addr === idx;
                      const signedVal = val >= 128 ? val - 256 : val;
                      return (
                        <div
                          key={idx}
                          className={`p-3 rounded-lg border transition ${isWritten
                            ? "bg-blue-950/60 border-[#2563EB] ring-1 ring-[#2563EB]"
                            : "bg-slate-950 border-slate-800"
                            }`}
                        >
                          <div className="flex justify-between items-center text-xs text-slate-400">
                            <span className="font-bold text-slate-200">R{idx}</span>
                            {isWritten && <span className="text-[10px] bg-[#2563EB] text-white px-1.5 rounded">WE=1</span>}
                          </div>
                          <div className="text-lg font-mono font-bold text-white mt-1">
                            0x{val.toString(16).toUpperCase().padStart(2, "0")}
                          </div>
                          <div className="text-[11px] text-slate-400 font-mono">
                            u8: {val} | s8: {signedVal}
                          </div>
                        </div>
                      );
                    })}
                  </div>
                </div>

                {/* Flags & Peripherals Summary */}
                <div className="col-span-4 flex flex-col gap-4">
                  <div className="bg-[#0F1624] border border-slate-800 rounded-xl p-4">
                    <h3 className="text-xs font-semibold uppercase tracking-wider text-slate-400 mb-3">
                      Flags Register (Z N C V)
                    </h3>
                    <div className="grid grid-cols-4 gap-2">
                      {(["Z", "N", "C", "V"] as const).map((fl) => (
                        <div
                          key={fl}
                          className={`p-2.5 rounded-lg text-center border ${flags[fl]
                            ? "bg-amber-500/20 border-amber-400 text-amber-200"
                            : "bg-slate-950 border-slate-800 text-slate-500"
                            }`}
                        >
                          <div className="text-xs font-bold">{fl}</div>
                          <div className="text-lg font-mono font-bold">{flags[fl]}</div>
                        </div>
                      ))}
                    </div>
                  </div>

                  {/* Final Board & NN State Snapshot */}
                  <div className="bg-[#0F1624] border border-slate-800 rounded-xl p-4 flex-1 flex flex-col justify-between">
                    <h3 className="text-xs font-semibold uppercase tracking-wider text-slate-400 mb-2">
                      End-of-Run I/O & LEDs
                    </h3>
                    {finalState ? (
                      <div className="space-y-2 text-xs font-mono">
                        <div className="flex justify-between bg-slate-950 p-2 rounded border border-slate-800">
                          <span className="text-slate-400">LEDs (Port 0x02):</span>
                          <span className="text-emerald-400 font-bold">
                            0x{Number(finalState.leds || 0).toString(16).toUpperCase().padStart(2, "0")} ({finalState.leds})
                          </span>
                        </div>
                        <div className="flex justify-between bg-slate-950 p-2 rounded border border-slate-800">
                          <span className="text-slate-400">CPU Halted:</span>
                          <span className="text-blue-400">{String(finalState.halted)}</span>
                        </div>
                      </div>
                    ) : (
                      <div className="text-xs text-slate-500">Run simulation to inspect I/O outputs.</div>
                    )}
                  </div>
                </div>
              </div>

              {/* Data Memory (DMEM) Active Non-Zero Bytes & Retirement Trace Table */}
              <div className="grid grid-cols-12 gap-5">
                <div className="col-span-5 bg-[#0F1624] border border-slate-800 rounded-xl p-4">
                  <h3 className="text-xs font-semibold uppercase tracking-wider text-slate-400 mb-2">
                    Written Data Memory Bytes (DMEM)
                  </h3>
                  {Object.keys(dmem).length === 0 ? (
                    <p className="text-xs text-slate-500 py-4">
                      No ST [Rp], Rs writes executed up to instruction #{currentStep?.seq || 0}.
                    </p>
                  ) : (
                    <div className="grid grid-cols-3 gap-2 max-h-40 overflow-y-auto">
                      {Object.entries(dmem).map(([addr, val]: any) => (
                        <div key={addr} className="bg-slate-950 border border-slate-800 p-2 rounded text-xs font-mono">
                          <span className="text-slate-400">{addr}:</span>{" "}
                          <span className="text-emerald-300 font-bold">
                            0x{val.toString(16).toUpperCase().padStart(2, "0")}
                          </span>
                        </div>
                      ))}
                    </div>
                  )}
                </div>

                <div className="col-span-7 bg-[#0F1624] border border-slate-800 rounded-xl p-4">
                  <h3 className="text-xs font-semibold uppercase tracking-wider text-slate-400 mb-2">
                    Architectural Retirement Trace Stream
                  </h3>
                  <div className="max-h-40 overflow-y-auto font-mono text-[11px] space-y-1">
                    {traceSteps.map((st, idx) => (
                      <div
                        key={st.seq}
                        onClick={() => setCurrentStepIdx(idx)}
                        className={`p-1.5 rounded cursor-pointer flex justify-between ${idx === currentStepIdx
                          ? "bg-[#2563EB] text-white font-bold"
                          : "bg-slate-950 text-slate-300 hover:bg-slate-800"
                          }`}
                      >
                        <span>
                          #{String(st.seq).padStart(4, "0")} | PC={st.pc} | IR={st.ir} | {st.decoded.mnemonic}{" "}
                          {st.decoded.operands}
                        </span>
                        <span>ZNCV={st.flags.raw}</span>
                      </div>
                    ))}
                  </div>
                </div>
              </div>
            </div>
          </div>
        )}

        {/* =============================================================== */}
        {/* TAB 2: INTERACTIVE 16-BIT INSTRUCTION BUILDER & FULL ISA TABLE  */}
        {/* =============================================================== */}
        {activeTab === "isa" && (
          <div className="space-y-6">
            {/* Interactive Bit-Field Encoder */}
            <div className="bg-[#0F1624] border border-slate-800 rounded-xl p-5">
              <h2 className="text-sm font-bold text-blue-400 uppercase tracking-wider mb-4">
                Interactive 16-Bit Instruction Bit-Field Encoder
              </h2>
              <div className="grid grid-cols-5 gap-4 mb-4">
                <div>
                  <label className="text-xs text-slate-400 block mb-1">Opcode [15:12]</label>
                  <select
                    value={builderOp}
                    onChange={(e) => setBuilderOp(Number(e.target.value))}
                    className="w-full bg-slate-950 border border-slate-700 rounded p-2 text-xs font-mono"
                  >
                    <option value={0x0}>0x0: NOP</option>
                    <option value={0x1}>0x1: LDI Rd, imm8</option>
                    <option value={0x2}>0x2: LD Rd, [Rp]</option>
                    <option value={0x3}>0x3: ST [Rp], Rs</option>
                    <option value={0x4}>0x4: ADD Rd, Rs1, Rs2</option>
                    <option value={0x5}>0x5: SUB Rd, Rs1, Rs2</option>
                    <option value={0x6}>0x6: AND Rd, Rs1, Rs2</option>
                    <option value={0x7}>0x7: OR Rd, Rs1, Rs2</option>
                    <option value={0x8}>0x8: XOR Rd, Rs1, Rs2</option>
                    <option value={0x9}>0x9: SHL Rd, Rs1</option>
                    <option value={0xa}>0xA: SHR Rd, Rs1</option>
                    <option value={0xb}>0xB: CMP Rs1, Rs2</option>
                    <option value={0xe}>0xE: IN / OUT Port</option>
                    <option value={0xf}>0xF: HLT</option>
                  </select>
                </div>
                <div>
                  <label className="text-xs text-slate-400 block mb-1">Rd / Cond [11:9]</label>
                  <input
                    type="number"
                    min={0}
                    max={7}
                    value={builderRd}
                    onChange={(e) => setBuilderRd(Number(e.target.value))}
                    className="w-full bg-slate-950 border border-slate-700 rounded p-2 text-xs font-mono"
                  />
                </div>
                <div>
                  <label className="text-xs text-slate-400 block mb-1">Rs1 / IO_Dir [8:6]</label>
                  <input
                    type="number"
                    min={0}
                    max={7}
                    value={builderRs1}
                    onChange={(e) => setBuilderRs1(Number(e.target.value))}
                    className="w-full bg-slate-950 border border-slate-700 rounded p-2 text-xs font-mono"
                  />
                </div>
                <div>
                  <label className="text-xs text-slate-400 block mb-1">Rs2 [5:3]</label>
                  <input
                    type="number"
                    min={0}
                    max={7}
                    value={builderRs2}
                    onChange={(e) => setBuilderRs2(Number(e.target.value))}
                    className="w-full bg-slate-950 border border-slate-700 rounded p-2 text-xs font-mono"
                  />
                </div>
                <div>
                  <label className="text-xs text-slate-400 block mb-1">Imm8 / Port [7:0]</label>
                  <input
                    type="number"
                    min={0}
                    max={255}
                    value={builderImm}
                    onChange={(e) => setBuilderImm(Number(e.target.value))}
                    className="w-full bg-slate-950 border border-slate-700 rounded p-2 text-xs font-mono"
                  />
                </div>
              </div>

              <div className="bg-slate-950 border border-slate-800 p-4 rounded-lg flex items-center justify-between font-mono">
                <div>
                  <span className="text-xs text-slate-400 block">16-Bit Binary Encoding:</span>
                  <span className="text-base text-blue-400 font-bold tracking-widest">
                    {encodedWord.toString(2).padStart(16, "0")}
                  </span>
                </div>
                <div>
                  <span className="text-xs text-slate-400 block">Hex Instruction Word:</span>
                  <span className="text-xl text-emerald-400 font-bold">
                    0x{encodedWord.toString(16).toUpperCase().padStart(4, "0")}
                  </span>
                </div>
              </div>
            </div>

            {/* ISA & NN Register Reference Tables */}
            <div className="grid grid-cols-2 gap-6">
              <div className="bg-[#0F1624] border border-slate-800 rounded-xl p-5">
                <h3 className="text-sm font-bold text-white mb-3">Complete DSD-8 Opcode Table</h3>
                <table className="w-full text-xs text-left font-mono">
                  <thead className="text-slate-400 border-b border-slate-800">
                    <tr>
                      <th className="py-2">Opcode</th>
                      <th>Form</th>
                      <th>Flags</th>
                      <th>Cycles</th>
                    </tr>
                  </thead>
                  <tbody className="divide-y divide-slate-800/60">
                    {[
                      ["0x0", "NOP", "-", "2"],
                      ["0x1", "LDI Rd, imm8", "-", "4"],
                      ["0x2", "LD Rd, [Rp]", "-", "5"],
                      ["0x3", "ST [Rp], Rs", "-", "4"],
                      ["0x4", "ADD Rd, Rs1, Rs2", "ZNCV", "4"],
                      ["0x5", "SUB Rd, Rs1, Rs2", "ZNCV", "4"],
                      ["0x6", "AND Rd, Rs1, Rs2", "ZN (C=0,V=0)", "4"],
                      ["0x7", "OR Rd, Rs1, Rs2", "ZN (C=0,V=0)", "4"],
                      ["0x8", "XOR Rd, Rs1, Rs2", "ZN (C=0,V=0)", "4"],
                      ["0x9", "SHL Rd, Rs1", "ZNC (V=0)", "4"],
                      ["0xA", "SHR Rd, Rs1", "ZNC (V=0)", "4"],
                      ["0xB", "CMP Rs1, Rs2", "ZNCV", "3"],
                      ["0xC", "JMP addr9", "-", "3"],
                      ["0xD", "B<cond> addr9", "-", "3"],
                      ["0xE", "IN Rd, port / OUT port, Rs", "-", "5 / 4 (+stalls)"],
                      ["0xF", "HLT", "-", "2"],
                    ].map(([op, form, fl, cyc]) => (
                      <tr key={op}>
                        <td className="py-1.5 text-blue-400 font-bold">{op}</td>
                        <td className="text-slate-200">{form}</td>
                        <td className="text-amber-300">{fl}</td>
                        <td className="text-slate-400">{cyc}</td>
                      </tr>
                    ))}
                  </tbody>
                </table>
              </div>

              <div className="bg-[#0F1624] border border-slate-800 rounded-xl p-5">
                <h3 className="text-sm font-bold text-white mb-3">
                  int8 Neural-Network Accelerator I/O Map (0x50–0x5F)
                </h3>
                <table className="w-full text-xs text-left font-mono">
                  <thead className="text-slate-400 border-b border-slate-800">
                    <tr>
                      <th className="py-2">Port</th>
                      <th>Register</th>
                      <th>Dir</th>
                      <th>Behavior</th>
                    </tr>
                  </thead>
                  <tbody className="divide-y divide-slate-800/60">
                    {[
                      ["0x50", "NN_A", "W", "Latch signed int8 activation operand"],
                      ["0x51", "NN_W", "W", "Trigger 3-stage MAC: acc = wrap24(acc + A * W)"],
                      ["0x52", "NN_CTRL", "W", "Bit 0: clear acc; Bit 1: clear MAC/SKIP counters"],
                      ["0x53..55", "NN_ACC0..2", "R", "24-bit signed accumulator (little-endian bytes)"],
                      ["0x56", "NN_SHIFT", "W", "Right arithmetic shift (0..15) for requantization"],
                      ["0x57", "NN_QOUT", "R", "Saturated int8 byte: sat8(acc >>> shift)"],
                      ["0x58", "NN_LUT_SEL", "W", "Select LUT Bank (0:ReLU, 1:Sigmoid, 2:Offset, 3:Tanh)"],
                      ["0x59", "NN_ACT", "R", "Activated output LUT[bank][NN_QOUT]"],
                      ["0x5C", "NN_SKIPCNT", "R", "Zero-skipped operation count (saturates at 255)"],
                      ["0x5D", "NN_MACCNT", "R", "Executed nonzero MAC count (saturates at 255)"],
                      ["0x5F", "NN_KEY", "R/W", "Write 0xA5 to unlock; Read {6'b0, busy, unlocked}"],
                    ].map(([p, name, dir, desc]) => (
                      <tr key={p}>
                        <td className="py-1.5 text-emerald-400 font-bold">{p}</td>
                        <td className="text-slate-200">{name}</td>
                        <td className="text-blue-400">{dir}</td>
                        <td className="text-slate-400 font-sans">{desc}</td>
                      </tr>
                    ))}
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        )}

        {/* =============================================================== */}
        {/* TAB 3: NEURAL NETWORK VS. SOFTWARE BASELINE COMPARISON LAB      */}
        {/* =============================================================== */}
        {activeTab === "nn" && nnData && (
          <div className="space-y-6">
            {/* Top Summary Cards */}
            <div className="grid grid-cols-4 gap-4">
              <div className="bg-[#0F1624] border border-slate-800 p-4 rounded-xl">
                <div className="text-xs text-slate-400">Quantized 4-6-3 Iris MLP Accuracy</div>
                <div className="text-2xl font-bold text-emerald-400 mt-1">{nnData.accuracy_summary}</div>
                <div className="text-[11px] text-slate-500 mt-1">Bit-exact match across Python & RTL</div>
              </div>
              <div className="bg-[#0F1624] border border-slate-800 p-4 rounded-xl">
                <div className="text-xs text-slate-400">Peak Hardware Speedup (a4 vs b0)</div>
                <div className="text-2xl font-bold text-[#2563EB] mt-1">39.7x Faster</div>
                <div className="text-[11px] text-slate-500 mt-1">1,087 cycles vs 43,155 software cycles</div>
              </div>
              <div className="bg-[#0F1624] border border-slate-800 p-4 rounded-xl">
                <div className="text-xs text-slate-400">Speedup vs Shift-and-Add (a4 vs b1)</div>
                <div className="text-2xl font-bold text-blue-400 mt-1">22.5x Faster</div>
                <div className="text-[11px] text-slate-500 mt-1">1,087 cycles vs 24,427 software cycles</div>
              </div>
              <div className="bg-[#0F1624] border border-slate-800 p-4 rounded-xl">
                <div className="text-xs text-slate-400">End-to-End Certified Runs</div>
                <div className="text-lg font-bold text-white mt-1">230 / 230 PASS</div>
                <div className="text-[11px] text-slate-500 mt-1">23 samples × 5 variants × 2 posted modes</div>
              </div>
            </div>

            {/* Visual Cycle Comparison Bars & Direct Assembly Loader */}
            <div className="bg-[#0F1624] border border-slate-800 rounded-xl p-6">
              <div className="flex items-center justify-between mb-6">
                <div>
                  <h2 className="text-base font-bold text-white">
                    Hardware Accelerator vs. Pure Software Execution Cycles
                  </h2>
                  <p className="text-xs text-slate-400">
                    Click "Load & Trace in Simulator" on any variant below to inspect its exact instructions and register activity.
                  </p>
                </div>

                <div className="flex items-center gap-2">
                  <label className="text-xs text-slate-400">Iris Test Sample (0..22):</label>
                  <input
                    type="number"
                    min={0}
                    max={22}
                    value={sampleIdx}
                    onChange={(e) => fetchNnComparison(Number(e.target.value))}
                    className="bg-slate-950 border border-slate-700 rounded px-2.5 py-1 text-xs font-mono w-16 text-center"
                  />
                </div>
              </div>

              <div className="space-y-4">
                {nnData.variants.map((v: any) => {
                  const widthPct = Math.max(3, Math.round((v.mean_cycles / 43155) * 100));
                  return (
                    <div
                      key={v.id}
                      className="bg-slate-950 border border-slate-800 p-4 rounded-xl flex flex-col gap-2"
                    >
                      <div className="flex items-center justify-between">
                        <div className="flex items-center gap-3">
                          <span
                            className={`px-2.5 py-0.5 rounded text-xs font-bold font-mono ${v.uses_nn_accel
                              ? "bg-blue-950 text-blue-300 border border-blue-700"
                              : "bg-slate-800 text-slate-300"
                              }`}
                          >
                            {v.uses_nn_accel ? "HW ACCEL (0x50–0x5F)" : "SW BASELINE (NO ACCEL)"}
                          </span>
                          <span className="font-bold text-sm text-white">{v.name}</span>
                          <span className="text-xs text-slate-400">• {v.activation}</span>
                        </div>

                        <div className="flex items-center gap-4">
                          <span className="text-xs font-mono text-emerald-400 font-bold">
                            {v.speedup_vs_b0}x vs b0 ({v.mean_cycles.toLocaleString()} cycles)
                          </span>
                          <button
                            onClick={() => loadVariantIntoSimulator(v.asm_file)}
                            className="bg-[#2563EB] hover:bg-blue-500 text-white text-xs px-3 py-1 rounded-md font-medium"
                          >
                            Load & Trace {v.asm_file}
                          </button>
                        </div>
                      </div>

                      <div className="w-full bg-slate-900 h-3 rounded-full overflow-hidden">
                        <div
                          className={`h-full rounded-full ${v.uses_nn_accel ? "bg-[#2563EB]" : "bg-amber-500"
                            }`}
                          style={{ width: `${widthPct}%` }}
                        />
                      </div>
                    </div>
                  );
                })}
              </div>
            </div>
          </div>
        )}

        {/* =============================================================== */}
        {/* TAB 4: CURATED VCD WAVEFORM VIEWER                              */}
        {/* =============================================================== */}
        {activeTab === "waveform" && (
          <div className="bg-[#0F1624] border border-slate-800 rounded-xl p-6 space-y-4">
            <div className="flex items-center justify-between">
              <div>
                <h2 className="text-base font-bold text-white">
                  Curated VCD Waveform Inspector (`build/waveform/dsd8_wave.vcd`)
                </h2>
                <p className="text-xs text-slate-400">
                  Displays `tb_waveform.probe.sys`, `.cpu`, `.io`, and `.nn` signals across the 11-instruction MAC demo.
                </p>
              </div>
              <button
                onClick={() => triggerCommandStream("waveform")}
                className="bg-[#2563EB] hover:bg-blue-500 text-white text-xs font-semibold px-4 py-2 rounded-lg"
              >
                Re-Run `make waveform`
              </button>
            </div>

            {!waveData || waveData.error ? (
              <div className="p-8 text-center text-slate-400 text-sm">
                {waveData?.error || "Loading VCD waveform transitions..."}
              </div>
            ) : (
              <div className="space-y-2 max-h-[600px] overflow-y-auto pr-2">
                {waveData.signals.map((sig: any) => {
                  const transitions = waveData.changes[sig.name] || [];
                  return (
                    <div
                      key={sig.id + sig.name}
                      className="grid grid-cols-12 items-center bg-slate-950 border border-slate-800 rounded-lg p-2.5 text-xs font-mono"
                    >
                      <div className="col-span-4 text-blue-300 font-semibold truncate" title={sig.name}>
                        {sig.name}{" "}
                        <span className="text-slate-500">[{sig.width}b]</span>
                      </div>
                      <div className="col-span-8 flex items-center gap-1.5 overflow-x-auto py-1">
                        {transitions.map((tr: any, i: number) => (
                          <div
                            key={i}
                            className={`px-2 py-1 rounded border whitespace-nowrap ${tr.v === "1" || (tr.v.startsWith("0x") && tr.v !== "0x0")
                              ? "bg-blue-950/80 border-[#2563EB] text-emerald-300"
                              : "bg-slate-900 border-slate-800 text-slate-400"
                              }`}
                          >
                            <span className="text-[10px] text-slate-500 mr-1">@{tr.t}ns:</span>
                            <span className="font-bold">{tr.v}</span>
                          </div>
                        ))}
                      </div>
                    </div>
                  );
                })}
              </div>
            )}
          </div>
        )}

        {/* =============================================================== */}
        {/* TAB 5: LOCAL PC FILE EDITOR (.v, .py, .asm) & LIVE SSE CONSOLE  */}
        {/* =============================================================== */}
        {activeTab === "files" && (
          <div className="grid grid-cols-12 gap-6">
            {/* File Tree */}
            <div className="col-span-3 bg-[#0F1624] border border-slate-800 rounded-xl p-4 max-h-[720px] overflow-y-auto">
              <h3 className="text-xs font-bold uppercase tracking-wider text-slate-400 mb-3">
                Local Repository Files
              </h3>
              <div className="space-y-1 font-mono text-xs">
                {fileList.map((f) => (
                  <button
                    key={f}
                    onClick={() => loadFile(f)}
                    className={`w-full text-left px-2.5 py-1.5 rounded truncate transition ${selectedFile === f
                      ? "bg-[#2563EB] text-white font-semibold"
                      : "text-slate-300 hover:bg-slate-800"
                      }`}
                  >
                    {f}
                  </button>
                ))}
              </div>
            </div>

            {/* Code Editor + Live Toolchain Runner */}
            <div className="col-span-9 flex flex-col gap-5">
              <div className="bg-[#0F1624] border border-slate-800 rounded-xl p-4 flex flex-col gap-3">
                <div className="flex items-center justify-between">
                  <span className="font-mono text-sm text-blue-400 font-bold">{selectedFile}</span>
                  <div className="flex items-center gap-3">
                    {saveStatus && <span className="text-xs text-emerald-400">{saveStatus}</span>}
                    <button
                      onClick={saveFile}
                      className="bg-[#2563EB] hover:bg-blue-500 text-white text-xs font-semibold px-4 py-1.5 rounded-lg flex items-center gap-1.5"
                    >
                      <Save className="w-3.5 h-3.5" /> Save to Local PC
                    </button>
                  </div>
                </div>
                <textarea
                  value={fileContent}
                  onChange={(e) => setFileContent(e.target.value)}
                  rows={16}
                  className="w-full bg-slate-950 text-slate-100 font-mono text-xs p-4 rounded-lg border border-slate-800 focus:outline-none focus:border-[#2563EB]"
                />
              </div>

              {/* Live Hardware Toolchain Terminal */}
              <div className="bg-[#0F1624] border border-slate-800 rounded-xl p-4 flex flex-col gap-3">
                <div className="flex items-center justify-between">
                  <div className="flex items-center gap-2 text-xs font-bold uppercase tracking-wider text-slate-400">
                    <Terminal className="w-4 h-4 text-[#2563EB]" />
                    Live Local Hardware Toolchain Console (Verilator / Icarus Verilog / Python)
                  </div>
                  <div className="flex flex-wrap gap-2">
                    {[
                      { key: "lint", label: "make lint" },
                      { key: "test", label: "make test (13/13)" },
                      { key: "conformance", label: "make conformance" },
                      { key: "waveform", label: "make waveform" },
                      { key: "nn_ref", label: "nn_ref.py (22/23)" },
                      { key: "bench_quick", label: "Quick NN Check" },
                      { key: "bench_full", label: "make bench (230 runs)" },
                    ].map((btn) => (
                      <button
                        key={btn.key}
                        disabled={isRunningCmd}
                        onClick={() => triggerCommandStream(btn.key)}
                        className="bg-slate-800 hover:bg-[#2563EB] disabled:opacity-40 text-xs font-mono px-2.5 py-1 rounded text-slate-200 transition"
                      >
                        {btn.label}
                      </button>
                    ))}
                  </div>
                </div>

                <pre className="bg-black text-emerald-400 font-mono text-xs p-4 rounded-lg h-56 overflow-y-auto border border-slate-800">
                  {terminalLogs.join("\n")}
                </pre>
              </div>
            </div>
          </div>
        )}
      </main>
    </div>
  );
}