# Low-Power Multi-Clock Domain ASIC Processing Subsystem
### Complete RTL-to-GDSII Digital ASIC Implementation in TSMC 130nm CMOS

[![Language](https://img.shields.io/badge/Language-Verilog%20%7C%20SystemVerilog-blue.svg)](https://en.wikipedia.org/wiki/SystemVerilog)
[![Technology](https://img.shields.io/badge/Technology-TSMC%20130nm-orange.svg)]()
[![Lint & CDC](https://img.shields.io/badge/Lint%20%26%20CDC-Synopsys%20SpyGlass-brightgreen.svg)]()
[![Synthesis](https://img.shields.io/badge/Synthesis-Synopsys%20Design%20Compiler-red.svg)]()
[![Formal](https://img.shields.io/badge/LEC-Synopsys%20Formality-purple.svg)]()
[![DFT](https://img.shields.io/badge/DFT-Synopsys%20DFT%20Compiler-green.svg)]()
[![PnR](https://img.shields.io/badge/PnR-Cadence%20Innovus-yellow.svg)]()
[![Timing](https://img.shields.io/badge/Timing%20Closure-Zero%20Slack%20Violations-success.svg)]()

---

## 📌 Executive Overview

This repository showcases the full-flow digital ASIC design, verification, logic synthesis, formal verification, scan insertion (DFT), and physical implementation (PnR) of a **Low-Power Multi-Clock Domain Processing Subsystem**.

The subsystem interfaces with a master controller via an asynchronous, full-duplex **UART interface** and coordinates command decoding, internal register management, arithmetic/logic computations, and multi-clock domain data exchange.

### Key Architectural Highlights
- **Dual Independent Clock Domains**:
  - `REF_CLK` (**50.0 MHz**, T = 20 ns): Powers the Core Processing Domain, including the System Controller FSM, Register File, and ALU.
  - `UART_CLK` (**3.6864 MHz**, T ≈ 271.27 ns): Powers the Serial Communications & Baud Clock Division Domain.
- **Robust Clock Domain Crossing (CDC) Protection**:
  - Dual-flop Reset Synchronizers (Asynchronous Assert, Synchronous Deassert).
  - Multi-stage Data Synchronizer with pulse-enable sequencing for UART reception.
  - Dual-clock **Asynchronous FIFO** with Gray-coded read/write pointer synchronization for reliable high-speed data transfer between domains.
- **Low-Power Architecture**:
  - Dynamic **Integrated Clock Gating (ICG)** cell driving the ALU logic—isolating dynamic power dissipation when arithmetic processing is idle.
- **Full Tapeout-Ready ASIC Backend Flow (TSMC 130nm CMOS)**:
  - **Lint & CDC**: 0 Errors, 0 Warnings via **Synopsys SpyGlass**.
  - **Logic Synthesis**: Target library `scmetro_tsmc_cl013g_rvt_ss_1p08v_125c` with zero setup/hold timing violations.
  - **Formal Verification**: 100% equivalent (391 compare points) pre-DFT and post-DFT using **Synopsys Formality**.
  - **Design For Test (DFT)**: 4 multiplexed scan chains, 387 scan flip-flops, 100% test coverage.
  - **Physical Design (PnR)**: Complete floorplan, power stripes/rings, CTS, and detailed routing in **Cadence Innovus**.

---

## 🏗️ System Architecture & Block Diagram

```mermaid
flowchart TB
    subgraph UART_DOMAIN["UART Clock Domain (3.6864 MHz)"]
        direction TB
        UART_CLK(["UART_CLK (3.6864 MHz)"])
        RST_SYNC2["Reset Synchronizer 2"]
        CLK_DIV_TX["TX Clock Divider"]
        CLK_DIV_RX["RX Clock Divider"]
        UART_RX["UART Receiver (w/ 3-Sample Majority Voting)"]
        UART_TX["UART Transmitter"]
        PULSE_GEN["Pulse Generator"]
    end

    subgraph CDC_BOUNDARY["Clock Domain Crossing (CDC) Boundary"]
        direction TB
        DATA_SYNC["Multi-Stage Data Synchronizer"]
        ASYNC_FIFO["Asynchronous FIFO (8x8-bit, Gray-coded)"]
    end

    subgraph CORE_DOMAIN["Core Processing Domain (50.0 MHz)"]
        direction TB
        REF_CLK(["REF_CLK (50.0 MHz)"])
        RST_SYNC1["Reset Synchronizer 1"]
        SYS_CTRL["System Controller (FSM)"]
        REG_FILE["16 x 8-bit Register File"]
        CLK_GATE["Integrated Clock Gating (ICG)"]
        ALU["16-Function ALU (16-bit Output)"]
    end

    UART_CLK --> RST_SYNC2
    UART_CLK --> CLK_DIV_TX
    UART_CLK --> CLK_DIV_RX

    CLK_DIV_RX --> UART_RX
    CLK_DIV_TX --> UART_TX
    CLK_DIV_TX --> PULSE_GEN

    UART_RX -- "Unsync Data & Valid" --> DATA_SYNC
    DATA_SYNC -- "sync_RX_OUT_P_DATA" --> SYS_CTRL

    REF_CLK --> RST_SYNC1
    REF_CLK --> SYS_CTRL
    REF_CLK --> REG_FILE
    REF_CLK --> CLK_GATE

    SYS_CTRL -- "ALU_EN & Funct" --> CLK_GATE
    CLK_GATE -- "GATED_CLK" --> ALU
    REG_FILE -- "REG0 (Op A), REG1 (Op B)" --> ALU
    SYS_CTRL -- "Wr / Rd Commands" --> REG_FILE

    ALU -- "ALU_OUT [15:0]" --> SYS_CTRL
    REG_FILE -- "RdData" --> SYS_CTRL

    SYS_CTRL -- "TX_P_Data & Valid" --> ASYNC_FIFO
    ASYNC_FIFO -- "RD_Data & Valid" --> UART_TX
    PULSE_GEN -- "R_inc (Pop)" --> ASYNC_FIFO
```

---

## ⚡ Functional Modules Description

### 1. Master System Controller (`SYS_CTRL`)
The brain of the subsystem. Operates in the `REF_CLK` domain as a multi-state Moore/Mealy FSM that processes UART commands, orchestrates register file accesses, configures clock dividers, and coordinates ALU operations.

| State | Description |
| :--- | :--- |
| `SYS_IDLE` | Awaits incoming synchronized UART commands. |
| `WRITE_ADDR` | Captures target Register File address for write operation. |
| `WRITE_DATA` | Captures payload byte and asserts write enable to Register File. |
| `READ_ADDR` | Captures target Register File address for read operation. |
| `READ_DATA` | Fetches data from Register File and pushes it into the Asynchronous FIFO. |
| `OPERAND_A` | Captures first 8-bit operand and pre-loads it into `REG0`. |
| `OPERAND_B` | Captures second 8-bit operand and pre-loads it into `REG1`. |
| `ALU_FUNCTION` | Captures operation opcode, enables ALU, and asserts clock gate enable. |
| `ALU_OUT_0` | Pushes least-significant byte `ALU_OUT[7:0]` into Asynchronous FIFO. |
| `ALU_OUT_1` | Pushes most-significant byte `ALU_OUT[15:8]` into Asynchronous FIFO. |

### 2. Universal Asynchronous Receiver / Transmitter (`UART`)
- **Receiver (`RX`)**: Features an oversampling engine (default 8× / 16× / 32× prescale) with **3-sample majority voting** around the bit center to reject noise, plus integrated start-bit glitch detection, framing error detection, and parity checking (Even/Odd).
- **Transmitter (`TX`)**: Full serialization pipeline with start/stop framing and automatic parity bit generation.

### 3. Asynchronous FIFO (`ASYNC_FIFO`)
- Crosses transmitted responses from the fast core domain (`50 MHz REF_CLK`) to the serial transmission domain (`TX_CLK`).
- Dual-port circular buffer memory with **Gray-coded write and read pointers** synchronized across domains via 2-stage flip-flop synchronizers (`DF_SYNC`).
- Prevents write-on-full and read-on-empty overflow conditions.

### 4. Arithmetic Logic Unit (`ALU`) with Clock Gating
Supports 16 operations with a 16-bit wide output to support full multiplier dynamic range without truncation:

| Opcode | Operation | Function | Description |
| :---: | :---: | :---: | :--- |
| `4'b0000` | **ADD** | `A + B` | 8-bit unsigned addition |
| `4'b0001` | **SUB** | `A - B` | 8-bit unsigned subtraction |
| `4'b0010` | **MUL** | `A × B` | 8-bit unsigned multiplication (16-bit result) |
| `4'b0011` | **DIV** | `A / B` | 8-bit integer division with zero-division safeguard |
| `4'b0100` | **AND** | `A & B` | Bitwise AND |
| `4'b0101` | **OR** | `A \| B` | Bitwise OR |
| `4'b0110` | **NAND** | `~(A & B)` | Bitwise NAND |
| `4'b0111` | **NOR** | `~(A \| B)` | Bitwise NOR |
| `4'b1000` | **XOR** | `A ^ B` | Bitwise XOR |
| `4'b1001` | **XNOR** | `~(A ^ B)` | Bitwise XNOR |
| `4'b1010` | **CMP EQ** | `A == B` | Compare Equal (Returns 16'h0001 if true) |
| `4'b1011` | **CMP GT** | `A > B` | Compare Greater-Than (Returns 16'h0002 if true) |
| `4'b1100` | **CMP LT** | `A < B` | Compare Less-Than (Returns 16'h0003 if true) |
| `4'b1101` | **SHR** | `A >> 1` | Logical shift right by 1 bit |
| `4'b1110` | **SHL** | `A << 1` | Logical shift left by 1 bit |
| `4'b1111` | **NOP** | `16'h0000` | Idle / Default state |

- **Clock Gating**: Integrated latch-based Clock Gating cell (`CLK_GATE`) gates `REF_CLK` to produce `GATED_CLK`. The ALU logic toggles only during `OPERAND_A`, `OPERAND_B`, `ALU_FUNCTION`, and `ALU_OUT` states, completely eliminating idle clock tree switching power.

### 5. Register File (`Reg_FIle`)
- 16 registers × 8-bit wide array.
- Dedicated configuration mappings:
  - `REG0` (Address `0x0`): Pre-loaded Operand A.
  - `REG1` (Address `0x1`): Pre-loaded Operand B.
  - `REG2` (Address `0x2`): UART Configuration (Prescaler division & parity select).
  - `REG3` (Address `0x3`): TX Clock Divider Ratio.
  - `REG4` - `REG15`: General-purpose scratchpad registers.

---

## 📡 Serial Protocol & Command Frames

The subsystem parses 4 primary packet structures:

### 1. Register File Write Command (`0xAA`)
```text
Host -> DUT: [ 0xAA (CMD) ] ──> [ 0x0_Addr (4-bit) ] ──> [ 8-bit Data ]
```

### 2. Register File Read Command (`0xBB`)
```text
Host -> DUT: [ 0xBB (CMD) ] ──> [ 0x0_Addr (4-bit) ]
DUT -> Host:                                          ──> [ 8-bit Read Data ]
```

### 3. ALU Operation with Dynamic Operands (`0xCC`)
```text
Host -> DUT: [ 0xCC (CMD) ] ──> [ Operand A ] ──> [ Operand B ] ──> [ 0x0_Opcode ]
DUT -> Host:                                                         ──> [ ALU_OUT[7:0] ] ──> [ ALU_OUT[15:8] ]
```

### 4. ALU Operation with Preloaded Register Operands (`0xDD`)
```text
Host -> DUT: [ 0xDD (CMD) ] ──> [ 0x0_Opcode ]
DUT -> Host:                                    ──> [ ALU_OUT[7:0] ] ──> [ ALU_OUT[15:8] ]
```

---

## 🧪 Simulation & Functional Verification

A comprehensive, self-checking SystemVerilog testbench (`TB.sv`) runs automated regression tests covering all 4 system commands with built-in scoreboards, timeout safeguards, and waveform phase markers.

### Verification Regression Log
The testbench validates all transactions, CDC synchronization, clock gating wake-up, and parity checking:

![Simulation Transcript Part 1](assets/TB_log_1.png)
![Simulation Transcript Part 2](assets/TB_log_2.png)

```text
================================================================================
                    SYSTEM VERIFICATION SUMMARY REPORT                          
================================================================================
  Simulation End Time : 3,842,500 ns
  Total Checks Run    : 11
  Total Checks Passed : 11
  Total Checks Failed : 0
--------------------------------------------------------------------------------
  >> [SUCCESS] ALL FUNCTIONAL SYSTEM PROTOCOLS VERIFIED CLEANLY <<
  - 0xAA (Register File Write)                 : PASSED
  - 0xBB (Register File Read via Async FIFO)   : PASSED
  - 0xCC (ALU w/ Dynamic Operands)             : PASSED
  - 0xDD (ALU w/ Preloaded REG0/REG1 Operands) : PASSED
  - Clock Gating Dynamic Idle/Active Cycles    : PASSED
  - Dual Clock Domain CDC Transitions          : PASSED
================================================================================
```

---

## ⚙️ ASIC Implementation Flow & QoR Metrics

The design was fully taken through a complete commercial ASIC flow using the **TSMC 130nm FSG CMOS Standard Cell Library**.

```mermaid
flowchart LR
    RTL["Synthesizable RTL\n(Verilog / SV)"] --> SPYGLASS["Synopsys SpyGlass\n(Lint & CDC/RDC)"]
    SPYGLASS --> DC["Synopsys Design Compiler\n(Logic Synthesis & SDC)"]
    DC --> FM1["Synopsys Formality\n(Pre-DFT LEC)"]
    DC --> DFT["Synopsys DFT Compiler\n(Scan Insertion)"]
    DFT --> FM2["Synopsys Formality\n(Post-DFT LEC)"]
    DFT --> INNOVUS["Cadence Innovus\n(Floorplan, CTS, PnR)"]
    INNOVUS --> GDS["Tapeout Clean GDSII"]
```

### 1. RTL Linting & CDC Analysis (Synopsys SpyGlass)
- **Lint**: Clean run with **0 Errors, 0 Warnings** (`lint_moresimple.rpt`).
- **CDC Setup & Verification**: All clock crossings structurally synchronized via dual-flop synchronizers and Gray encoding.
- **RDC**: Reset-domain crossing integrity cleanly verified.

### 2. Logic Synthesis (Synopsys Design Compiler)
Synthesized under Worst-Case Slow-Slow Corner (**1.08V, 125°C, `tsmc13_wl10`**):

| Metric | Result | Notes |
| :--- | :---: | :--- |
| **Technology Node** | **TSMC 130 nm** | `scmetro_tsmc_cl013g_rvt_ss_1p08v_125c` |
| **Total Leaf Cell Count** | **2,285 cells** | 1,897 Combinational + 388 Sequential |
| **Inverters / Buffers** | **466 cells** | 373 Inverters + 93 Buffers |
| **Cell Area** | **29,615.2 µm²** | Gate area |
| **Total Design Area** | **324,363.3 µm²** | Including net routing area |
| **Dynamic Power** | **0.495 mW** | Clock gating saves ~38% active ALU power |
| **Leakage Power** | **19.2 µW** | At 125°C worst-case corner |
| **Total Power** | **0.515 mW** | Ultra-low power |
| **Worst Negative Slack (WNS)** | **0.00 ns** | **Zero Setup Violations** |
| **Total Negative Slack (TNS)** | **0.00 ns** | Clean timing closure across all paths |
| **Hold Violations** | **0.00 ns** | **Zero Hold Violations** |
| **DRC Violations** | **0** | 0 Max Capacitance, 0 Max Transition |

### 3. Logic Equivalence Checking (Synopsys Formality)
- **Pre-DFT (RTL vs Synthesized Netlist)**: **391 / 391 compare points PASSED** (0 Failing, 0 Aborted, 0 Unverified).
- **Post-DFT (Synthesized Netlist vs Scan Netlist)**: **391 / 391 compare points PASSED** with full scan test mode constraints applied.

### 4. Design For Test (Synopsys DFT Compiler)
- **Scan Methodology**: Full Scan, Multiplexed Flip-Flop style.
- **Number of Scan Chains**: **4 chains** (balanced length).
- **Scan Flop Count**: **387 scan flip-flops** inserted.
- **Pre-DRC & Post-DRC**: Clean pass with 0 design rule violations.

### 5. Physical Design (Cadence Innovus)
- Floorplanned with core rings, intermediate power stripes (VDD / VSS), macro/standard cell placement, Clock Tree Synthesis (CTS), and nanoroute detailed routing up to Metal 8.
- **DRC & LVS**: 100% clean, zero antenna or connectivity violations.

#### Final Core & Chip Layout:
![Final PnR Layout](assets/pnr_final.png)

---

## 📂 Repository File Structure

```text
├── assets/                     # Silicon layout screenshots & verification transcripts
│   ├── pnr_final.png           # Innovus post-route chip layout
│   ├── TB_log_1.png            # ModelSim regression transcript (Part 1)
│   └── TB_log_2.png            # ModelSim regression transcript (Part 2)
│
├── ALU/                        # 16-operation Arithmetic & Logic Unit
│   └── ALU.v
├── ASYNC_FIFO/                 # Dual-clock Asynchronous FIFO with Gray-code pointers
│   ├── ASYNC_FIFO.v            # Top-level FIFO wrapper
│   ├── DF_SYNC.v               # 2-stage Flip-Flop synchronizer
│   ├── FIFO_MEM_CNTRL.v        # FIFO memory controller & memory array
│   ├── FIFO_RD.v               # Read pointer & empty generation
│   └── FIFO_WR.v               # Write pointer & full generation
├── CLK_DIV/                    # Integer clock divider
│   └── clk_div.v
├── CLKDIV_MUX/                 # Clock divider prescale selector
│   └── CLKDIV_MUX.v
├── Clock_Gating/               # Integrated Clock Gating (ICG) cell
│   └── CLK_GATE.v
├── DATA_SYNC/                  # Multi-stage data synchronizer with pulse generator
│   └── Data_syn.v
├── Pulse_gen/                  # Edge detection pulse generator
│   └── Pulse_gen.v
├── Reg_FIle/                   # 16x8-bit register file
│   └── reg_file.v
├── RST_SYNC/                   # Dual-stage reset synchronizer
│   └── rst_sync.v
├── SYS_CTRL/                   # Master System Controller FSM & protocol package
│   ├── SYS_CTRL.sv
│   └── uart_pkg.sv
├── SYS_TOP/                    # Top-level SoC subsystem integration
│   ├── SYS_TOP.sv              # Subsystem top (with DFT scan ports)
│   ├── SYS_TOP_before_dft.sv   # Subsystem top (functional)
│   └── TOP.sv                  # Simplified top wrapper
├── UART_TOP/                   # Complete full-duplex UART module
│   ├── UART.sv                 # Top-level UART wrapper
│   ├── RX_TOP.sv               # UART Receiver top
│   ├── TX_TOP.sv               # UART Transmitter top
│   ├── UART_RX_FSM.sv          # RX controller FSM with oversampling
│   ├── UART_TX_FSM.sv          # TX serializer FSM
│   ├── data_sampling.v         # 3-sample majority voter
│   ├── deserializer.v          # Serial-to-parallel converter
│   ├── serializer.v            # Parallel-to-serial converter
│   ├── edge_bit_cntr.v         # Bit and oversampling edge counter
│   ├── par_chck.sv             # Parity check logic
│   ├── parity_calc.sv          # Parity calculation logic
│   ├── strt_checker.v          # Start bit glitch filter
│   ├── stp_checker.v           # Stop bit framer
│   └── MUX.sv                  # TX output bit multiplexer
├── Testbench/                  # Verification Environment
│   ├── TB.sv                   # Self-checking, self-documenting testbench
│   ├── run.do                  # QuestaSim execution script
│   └── wave.do                 # Formatted waveform script
├── Synthesis/                  # Logic Synthesis & DFT Compiler Scripts
│   ├── syn.tcl                 # Design Compiler synthesis script
│   ├── cons.tcl                # SDC timing constraints
│   ├── dft_script.tcl          # Scan insertion & test protocol script
│   └── cons_dft.tcl            # Scan timing & test mode constraints
├── SYSTEM_spyglass/            # Lint & CDC Verification
│   ├── TOP.SGDC                # SpyGlass CDC & clock domain constraints
│   └── lint.prj                # SpyGlass project definition
├── formal_verification/        # Synopsys Formality LEC Verification
│   ├── pre_dft/                # Golden RTL vs Synthesized Netlist (391/391 passed)
│   ├── post_dft/               # Golden RTL vs Post-DFT Netlist (391/391 passed)
│   └── post_pnr/               # Golden RTL vs Routed PnR Netlist (391/391 passed)
├── netlists/                   # Gate-Level Netlists Across ASIC Flow Stages
│   ├── 1_synthesis/            # Stage 1: Design Compiler post-synthesis netlist
│   │   └── SYS_TOP.v
│   ├── 2_dft/                  # Stage 2: DFT Compiler scan-inserted netlist (4 chains)
│   │   └── SYS_TOP.v
│   └── 3_pnr/                  # Stage 3: Cadence Innovus post-route physical netlists
│       ├── SYS_TOP.v           # Detailed routed netlist
│       └── SYS_TOP_pg.v        # Routed netlist with VDD/VSS power & ground rails
├── reports/                    # Quality of Results (QoR) by Implementation Stage
│   ├── 1_synthesis/            # Stage 1 Synthesis: Area, Power, Setup, Hold, QoR, Clocks
│   │   ├── area.rpt
│   │   ├── power.rpt
│   │   ├── setup_timing.rpt
│   │   ├── hold_timing.rpt
│   │   ├── qor.rpt
│   │   ├── clock.rpt
│   │   └── constraints.rpt
│   ├── 2_dft/                  # Stage 2 DFT: Scan preview, DRC pre/post, Area, Power, Timing
│   │   ├── scan_summary.rpt    # 4 chains, 387 scan flip-flops
│   │   ├── dft_drc_post.rpt    # Post-scan DRC verification
│   │   ├── area.rpt
│   │   ├── power.rpt
│   │   ├── setup.rpt
│   │   └── hold.rpt
│   └── 3_pnr/                  # Stage 3 Physical Sign-Off: DRC, LVS, Antenna & Power
│       ├── SYS_TOP.conn.rpt    # LVS Connectivity Check (0 violations)
│       ├── SYS_TOP.geom.rpt    # Geometry DRC Check (0 violations)
│       ├── SYS_TOP.antenna.rpt # Antenna DRC Check (0 violations)
│       └── power.rpt           # Post-route physical power report
├── docs/                       # Verification Snippets & Additional Documentation
│   └── Snippets.pdf            # SpyGlass lint & synthesis execution snippets
├── .gitignore                  # Foundry NDA & simulation dump filter
└── README.md                   # Complete system technical documentation
```

---

## 🚀 How to Run Simulation

### Prerequisites
- **QuestaSim / ModelSim** (Version 2020.1 or newer recommended)

### Execution
1. Open QuestaSim / ModelSim.
2. Change directory to the repository folder:
   ```tcl
   cd <path_to_repository>
   ```
3. Execute the automated regression script:
   ```tcl
   do run.do
   ```
4. The simulation will automatically:
   - Compile all packages and SystemVerilog/Verilog source files.
   - Load the top-level testbench with full signal accessibility.
   - Configure the waveform viewer with color-coded signal dividers and live documentation string markers (`test_name`, `test_phase`, `test_status`).
   - Run the full suite of regression tests.
   - Print the verification summary scoreboard to the transcript window.

---

## 🛡️ License & NDA Disclaimer

The standard cell models, technology LEF files, and timing libraries (`.lib`, `.db`, `.lef`, `.capTbl`) utilized for physical synthesis and place-and-route are property of **Taiwan Semiconductor Manufacturing Company (TSMC)** and are protected under academic/commercial Non-Disclosure Agreements (NDAs). Consequently, proprietary foundry library files are omitted from this repository. All synthesizable RTL, testbenches, verification harnesses, synthesis constraint files (SDC), and flow scripts represent original work and are provided for educational and portfolio demonstration purposes.

---

## 👨‍💻 Author & Contact

Designed and implemented with precision for Digital ASIC Design, Verification, and Physical Implementation.

- **Author**: Omar Khaled
- **GitHub**: [@Omar-Khaled449](https://github.com/Omar-Khaled449)
- **Focus Areas**: Digital IC Design, Clock Domain Crossing (CDC), Low-Power ASIC, Static Timing Analysis (STA), DFT, Physical Design (PnR).
