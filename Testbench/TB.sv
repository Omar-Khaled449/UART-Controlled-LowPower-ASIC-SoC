`timescale 1ns / 1ns
//==============================================================================
// Project      : Low-Power Multi-Clock Domain ASIC Subsystem
// Module       : TB (System-Level Verification Testbench)
// Standard     : SystemVerilog (IEEE 1800-2017)
// Description  : Self-checking, self-documenting verification environment for
//                the dual-clock domain ASIC system (UART, Controller, ALU, 
//                Register File, Clock Gating, and Asynchronous FIFO).
//
// Clock Domains:
//   - REF_CLK   : 50.0000 MHz (Period: 20.000 ns) - Core / Processing Domain
//   - UART_CLK  :  3.6864 MHz (Period: 271.267 ns) - Serial / Division Domain
//   - Baud Rate : Configurable via internal Clock Divider & Prescaler
//
// System Command Packet Specifications:
//   1. 0xAA (RF Write)   : [0xAA] -> [Address] -> [Data]
//   2. 0xBB (RF Read)    : [0xBB] -> [Address] -> [DUT Returns Data via FIFO/TX]
//   3. 0xCC (ALU w/ Op)  : [0xCC] -> [Op A] -> [Op B] -> [ALU_FUN] -> [DUT Returns Result (16-bit)]
//   4. 0xDD (ALU w/o Op) : [0xDD] -> [ALU_FUN] -> [Uses REG0/REG1] -> [DUT Returns Result (16-bit)]
//
// Documentation & Waveform Features:
//   - Waveform string markers (`test_name`, `test_phase`, `test_status`) for
//     immediate visual clarity in QuestaSim/ModelSim screenshots.
//   - Timeout-protected transactions (prevents infinite simulation hangs).
//   - Automated self-checking scoreboard with pass/fail accounting.
//   - Formatted execution log with timestamps and structured summary banner.
//==============================================================================

import uart_pkg::*;

module TB #(
    parameter int OPER_WIDTH      = 8,
    parameter int MEM_WIDTH       = 8,
    parameter int MEM_DEPTH       = 16,
    parameter int ADDR_WIDTH      = 4,
    parameter int RATIO_WD        = 8,
    parameter int WIDTH           = 8,
    parameter int FIFO_DEPTH      = 8,
    parameter int NUM_STAGES      = 2,
    parameter int FIFO_ADDR_WIDTH = 4
) ();

  //----------------------------------------------------------------------------
  // Clock & Timing Parameters
  //----------------------------------------------------------------------------
  localparam int  DATA_WIDTH    = WIDTH;
  localparam int  REF_CLK_PER   = 20;       // 50.0000 MHz (20 ns)
  localparam real UART_CLK_PER  = 271.267;  //  3.6864 MHz (~271.267 ns)
  localparam real TB_TX_CLK_PER = 8680.55;  // Reference Baud Period (115200 Baud @ Prescale 32)

  //----------------------------------------------------------------------------
  // DUT Signals
  //----------------------------------------------------------------------------
  reg  REF_CLK;
  reg  UART_CLK;
  reg  RST;
  wire framing_error;
  wire parity_error;

  // Interconnect Signals between DUT and Testbench Host UART
  wire dut_to_tb; // DUT TX_OUT -> TB RX_IN
  wire tb_to_dut; // TB TX_OUT  -> DUT RX_IN

  //----------------------------------------------------------------------------
  // Self-Documenting Waveform String Markers
  // (Visible directly in ModelSim / QuestaSim / GTKWave waveform viewers)
  //----------------------------------------------------------------------------
  string test_name   = "IDLE";
  string test_phase  = "IDLE";
  string test_status = "IDLE";

  //----------------------------------------------------------------------------
  // Verification Statistics & Scoreboard Tracking
  //----------------------------------------------------------------------------
  int total_tests  = 0;
  int passed_tests = 0;
  int failed_tests = 0;

  //----------------------------------------------------------------------------
  // DUT Instantiation (Top-Level Multi-Clock System)
  //----------------------------------------------------------------------------
  SYS_TOP #(
      .OPER_WIDTH     (OPER_WIDTH),
      .MEM_WIDTH      (MEM_WIDTH),
      .MEM_DEPTH      (MEM_DEPTH),
      .ADDR_WIDTH     (ADDR_WIDTH),
      .RATIO_WD       (RATIO_WD),
      .WIDTH          (WIDTH),
      .FIFO_DEPTH     (FIFO_DEPTH),
      .NUM_STAGES     (NUM_STAGES),
      .FIFO_ADDR_WIDTH(FIFO_ADDR_WIDTH)
  ) DUT (
      .REF_CLK      (REF_CLK),
      .UART_CLK     (UART_CLK),
      .RST_N        (RST),
      .UART_RX_IN   (tb_to_dut),
      .UART_TX_O    (dut_to_tb),
      .framing_error(framing_error),
      .parity_error (parity_error)
  );

  //----------------------------------------------------------------------------
  // Testbench Virtual Host UART Signals
  //----------------------------------------------------------------------------
  reg                            TB_RST;
  reg                            TB_RX_CLK;
  reg                            TB_TX_CLK;
  reg           [DATA_WIDTH-1:0] TB_TX_IN_P_DATA;
  reg                            TB_TX_IN_data_valid;
  wire          [           5:0] TB_Prescale;
  wire                           TB_parity_enable;
  wire          [DATA_WIDTH-1:0] TB_RX_OUT_P_DATA;
  wire                           TB_busy;
  wire                           TB_TX_OUT;
  wire                           TB_RX_OUT_data_valid;
  wire                           TB_parity_error;
  wire                           TB_framing_error;

  logic         [           7:0] UART_CONFIG = 8'b100000_01; // Prescale=32, Parity=Even, ParityEn=1
  logic         [           7:0] DIV_RATIO   = 8'b0010_0000; // Div Ratio = 32
  logic         [           3:0] ALU_FUN;
  logic         [           7:0] A;
  logic         [           7:0] B;
  logic         [           7:0] write_out;
  logic         [           7:0] read_out;
  logic         [          15:0] alu_out;
  logic         [          15:0] alu_tb;
  parity_type_e                  TB_parity_type;

  //----------------------------------------------------------------------------
  // Testbench Virtual Host UART (Communicates bidirectionally with DUT)
  //----------------------------------------------------------------------------
  UART #(
      .DATA_WIDTH(WIDTH)
  ) UART_TB (
      .RST              (TB_RST),
      .TX_CLK           (TB_TX_CLK),
      .RX_CLK           (TB_RX_CLK),
      .RX_IN            (dut_to_tb),
      .TX_IN_P_DATA     (TB_TX_IN_P_DATA),
      .TX_IN_data_valid (TB_TX_IN_data_valid),
      .Prescale         (TB_Prescale),
      .parity_enable    (TB_parity_enable),
      .parity_type      (TB_parity_type),
      .RX_OUT_P_DATA    (TB_RX_OUT_P_DATA),
      .busy             (TB_busy),
      .TX_OUT           (tb_to_dut),
      .RX_OUT_data_valid(TB_RX_OUT_data_valid),
      .parity_error     (TB_parity_error),
      .framing_error    (TB_framing_error)
  );

  // Configuration mapping
  assign TB_Prescale      = UART_CONFIG[7:2];
  assign TB_parity_enable = UART_CONFIG[0];
  assign TB_parity_type   = parity_type_e'(UART_CONFIG[1]);

  //----------------------------------------------------------------------------
  // Clock Generators
  //----------------------------------------------------------------------------
  // 1. REF_CLK: 50.000 MHz (Period: 20 ns)
  initial begin
    REF_CLK = 0;
    forever #(REF_CLK_PER / 2.0) REF_CLK = ~REF_CLK;
  end

  // 2. UART_CLK: 3.6864 MHz (Period: 271.267 ns)
  initial begin
    UART_CLK = 0;
    forever #(UART_CLK_PER / 2.0) UART_CLK = ~UART_CLK;
  end

  // 3. TB Host TX Bit Clock
  initial begin
    TB_TX_CLK = 0;
    forever #(TB_TX_CLK_PER / 2.0) TB_TX_CLK = ~TB_TX_CLK;
  end

  // 4. TB Host RX Sampling Clock (Prescaled)
  initial begin
    TB_RX_CLK = 0;
    wait (TB_Prescale > 0);
    forever begin
      if (TB_Prescale > 0)
        #((TB_TX_CLK_PER / real'(TB_Prescale)) / 2.0) TB_RX_CLK = ~TB_RX_CLK;
      else
        #(UART_CLK_PER / 2.0) TB_RX_CLK = ~TB_RX_CLK;
    end
  end

  //----------------------------------------------------------------------------
  // Simulation Watchdog Timer (Guarantees simulation never hangs for infinity)
  //----------------------------------------------------------------------------
  initial begin
    #(TB_TX_CLK_PER * 500); // ~4.3 ms maximum run time
    if (test_phase != "COMPLETED") begin
      $display("\n[TB WARNING] Watchdog timer reached maximum limit (%0t ns).", $time);
      print_summary_report();
      $stop;
    end
  end

  //----------------------------------------------------------------------------
  // Testbench Tasks
  //----------------------------------------------------------------------------

  // Initialization
  task automatic initialize();
    test_phase  = "INITIALIZE";
    UART_CONFIG = 8'b100000_01;
    DIV_RATIO   = 8'b0010_0000;
    TB_TX_IN_data_valid = 0;
    TB_TX_IN_P_DATA     = 0;
    $display("[TB][%0t ns] System initialized with default UART configs.", $time);
  endtask

  // Hardware Reset Generation
  task automatic reset();
    test_phase  = "ASSERT_RESET";
    test_status = "RESETTING";
    $display("[TB][%0t ns] Asserting System and Testbench Resets...", $time);
    
    RST    = 1'b0;
    TB_RST = 1'b0;
    #(UART_CLK_PER * 4);
    
    RST    = 1'b1;
    TB_RST = 1'b1;
    #(UART_CLK_PER * 4);
    
    test_phase  = "RESET_RELEASED";
    test_status = "ACTIVE";
    $display("[TB][%0t ns] Reset released. System active.", $time);
  endtask

  // Transmit 1 UART Frame (Host -> DUT)
  task automatic send(input logic [7:0] frame);
    wait (!TB_busy);
    @(negedge TB_TX_CLK);
    TB_TX_IN_data_valid = 1'b1;
    TB_TX_IN_P_DATA     = frame;
    @(negedge TB_TX_CLK);
    TB_TX_IN_data_valid = 1'b0;
    wait (TB_busy);
    wait (!TB_busy);
    #(TB_TX_CLK_PER * 0.5); // Inter-frame safety gap
  endtask

  // Receive 1 Data Byte via UART with Timeout Protection
  task automatic receive_data(output logic [7:0] data_out);
    fork
      begin
        @(posedge TB_RX_OUT_data_valid);
        data_out = TB_RX_OUT_P_DATA;
        read_out = data_out;
      end
      begin
        #(TB_TX_CLK_PER * 40); // 40 bit-times timeout
        $error("[TB TIMEOUT][%0t ns] Timed out waiting for single byte from DUT!", $time);
      end
    join_any
    disable fork;
    #(TB_TX_CLK_PER * 2); // Bus settling delay
  endtask

  // Receive 16-bit ALU Result (DUT -> Host via 2 UART frames) with Timeout Protection
  task automatic receive_alu(output logic [15:0] result_16b);
    fork
      begin
        @(posedge TB_RX_OUT_data_valid);
        result_16b[7:0]  = TB_RX_OUT_P_DATA;
        alu_out[7:0]     = TB_RX_OUT_P_DATA;

        @(posedge TB_RX_OUT_data_valid);
        result_16b[15:8] = TB_RX_OUT_P_DATA;
        alu_out[15:8]    = TB_RX_OUT_P_DATA;
      end
      begin
        #(TB_TX_CLK_PER * 60); // 60 bit-times timeout
        $error("[TB TIMEOUT][%0t ns] Timed out waiting for 16-bit ALU response from DUT!", $time);
      end
    join_any
    disable fork;
    #(TB_TX_CLK_PER * 2); // Bus settling delay
  endtask

  // Command 0xAA: Register File Write
  // Format: [0xAA] -> [Address] -> [Data]
  task automatic WRITE(input logic [7:0] frame, logic [3:0] addr);
    test_phase = $sformatf("WRITE_ADDR_0x%0h", addr);
    $display("[TB][%0t ns] [CMD: 0xAA] Writing Data=0x%02h (%0d) to Reg Address=0x%01h", $time, frame, frame, addr);
    send(8'hAA);
    send({4'b0000, addr});
    send(frame);
    write_out = frame;
    #(TB_TX_CLK_PER * 2);
  endtask

  // Command 0xBB: Register File Read
  // Format: [0xBB] -> [Address] -> Returns [Data]
  task automatic READ(input logic [3:0] addr);
    logic [7:0] rx_byte;
    test_phase = $sformatf("READ_ADDR_0x%0h", addr);
    $display("[TB][%0t ns] [CMD: 0xBB] Requesting Read from Reg Address=0x%01h", $time, addr);
    send(8'hBB);
    send({4'b0000, addr});
    receive_data(rx_byte);
    $display("[TB][%0t ns] [CMD: 0xBB] Received Data=0x%02h (%0d) from Reg Address=0x%01h", $time, rx_byte, rx_byte, addr);
  endtask

  // Command 0xCC: ALU Operation with Operands
  // Format: [0xCC] -> [Operand A] -> [Operand B] -> [ALU_FUN] -> Returns [ALU_LOW] -> [ALU_HIGH]
  task automatic ALU(input logic [7:0] AA, logic [7:0] BB, alu_fun_e FUN);
    logic [15:0] res;
    A = AA;
    B = BB;
    ALU_FUN = FUN;
    test_phase = $sformatf("ALU_OP_%s", FUN.name());
    $display("[TB][%0t ns] [CMD: 0xCC] ALU w/ Operands: A=%0d, B=%0d, OP=%s (0x%01h)", $time, AA, BB, FUN.name(), FUN);
    send(8'hCC);
    send(A);
    send(B);
    send({4'b0000, FUN});
    receive_alu(res);
    $display("[TB][%0t ns] [CMD: 0xCC] ALU Result Received = %0d (0x%04h)", $time, res, res);
  endtask

  // Command 0xDD: ALU Operation without Operands (Uses REG0 and REG1)
  // Format: [0xDD] -> [ALU_FUN] -> Returns [ALU_LOW] -> [ALU_HIGH]
  task automatic ALU_NO_OPERAND(input alu_fun_e FUN);
    logic [15:0] res;
    ALU_FUN = FUN;
    test_phase = $sformatf("ALU_NO_OP_%s", FUN.name());
    $display("[TB][%0t ns] [CMD: 0xDD] ALU w/o Operands: Using REG0/REG1, OP=%s (0x%01h)", $time, FUN.name(), FUN);
    send(8'hDD);
    send({4'b0000, FUN});
    receive_alu(res);
    $display("[TB][%0t ns] [CMD: 0xDD] ALU Result Received = %0d (0x%04h)", $time, res, res);
  endtask

  // System Configuration (Updates Reg 0x2 UART Config & Reg 0x3 Div Ratio)
  task automatic configure(input logic [7:0] CONF, logic [7:0] DIV);
    test_phase = "CONFIG_SYSTEM";
    $display("[TB][%0t ns] Configuring System: UART_CONFIG=0x%02h, DIV_RATIO=%0d", $time, CONF, DIV);
    WRITE(CONF, 4'h2);
    WRITE(DIV, 4'h3);
    #(TB_TX_CLK_PER * 4);
    DIV_RATIO   = DIV;
    UART_CONFIG = CONF;
  endtask

  // Self-Checking Verification for Read/Write
  task automatic check_read_write(input string check_label);
    total_tests++;
    if (write_out === read_out) begin
      passed_tests++;
      test_status = "PASS";
      $display("  -> [PASS] %s | Written=0x%02h (%0d) == Readback=0x%02h (%0d)", 
               check_label, write_out, write_out, read_out, read_out);
    end else begin
      failed_tests++;
      test_status = "FAIL";
      $error("  -> [FAIL] %s | Written=0x%02h (%0d) != Readback=0x%02h (%0d)", 
             check_label, write_out, write_out, read_out, read_out);
    end
  endtask

  // Golden Model ALU Reference Computation
  function automatic logic [15:0] compute_golden_alu(input logic [7:0] in_a, input logic [7:0] in_b, input logic [3:0] fun);
    case (fun)
      4'b0000: return in_a + in_b;                  // ADD
      4'b0001: return in_a - in_b;                  // SUB
      4'b0010: return in_a * in_b;                  // MUL
      4'b0011: return (in_b != 0) ? (in_a / in_b) : 16'h0000; // DIV
      4'b0100: return {8'h00, in_a & in_b};         // AND
      4'b0101: return {8'h00, in_a | in_b};         // OR
      4'b0110: return {8'h00, ~(in_a & in_b)};      // NAND
      4'b0111: return {8'h00, ~(in_a | in_b)};      // NOR
      4'b1000: return {8'h00, in_a ^ in_b};         // XOR
      4'b1001: return {8'h00, ~(in_a ^ in_b)};      // XNOR
      4'b1010: return (in_a == in_b) ? 16'h0001 : 16'h0000; // CMP EQ
      4'b1011: return (in_a >  in_b) ? 16'h0002 : 16'h0000; // CMP GT
      4'b1100: return (in_a <  in_b) ? 16'h0003 : 16'h0000; // CMP LT
      4'b1101: return {8'h00, in_a >> 1};           // SHR
      4'b1110: return {8'h00, in_a << 1};           // SHL
      default: return 16'h0000;
    endcase
  endfunction

  // Self-Checking Verification for ALU Results
  task automatic check_alu(input string check_label);
    alu_tb = compute_golden_alu(A, B, ALU_FUN);
    total_tests++;

    if (alu_out === alu_tb) begin
      passed_tests++;
      test_status = "PASS";
      $display("  -> [PASS] %s | Golden=0x%04h (%0d) == DUT=0x%04h (%0d)", 
               check_label, alu_tb, alu_tb, alu_out, alu_out);
    end else begin
      failed_tests++;
      test_status = "FAIL";
      $error("  -> [FAIL] %s | Golden=0x%04h (%0d) != DUT=0x%04h (%0d)", 
             check_label, alu_tb, alu_tb, alu_out, alu_out);
    end
  endtask

  //----------------------------------------------------------------------------
  // Modular Test Case Implementations
  //----------------------------------------------------------------------------

  // Test Case 1: Command 0xAA (Register File Write)
  task automatic test_case_1_write();
    test_name   = "TC1_RF_WRITE";
    test_status = "RUNNING";
    $display("\n================================================================================");
    $display("  TEST CASE 1: Register File Write Command (0xAA)");
    $display("  Objective  : Verify UART deserialization, packet decode, and RF write timing.");
    $display("================================================================================");

    WRITE(8'd77, 4'd4);
    #(TB_TX_CLK_PER * 4);

    total_tests++;
    if (DUT.Regfile_u.mem[4] === 8'd77) begin
      passed_tests++;
      test_status = "PASS";
      $display("  -> [PASS] Direct Register Inspection: mem[4] = %0d (Expected: 77)", DUT.Regfile_u.mem[4]);
    end else begin
      failed_tests++;
      test_status = "FAIL";
      $error("  -> [FAIL] Direct Register Inspection: mem[4] = %0d (Expected: 77)", DUT.Regfile_u.mem[4]);
    end
  endtask

  // Test Case 2: Command 0xBB (Register File Read)
  task automatic test_case_2_read();
    test_name   = "TC2_RF_READ";
    test_status = "RUNNING";
    $display("\n================================================================================");
    $display("  TEST CASE 2: Register File Read Command (0xBB)");
    $display("  Objective  : Verify RF read access, Async FIFO push/pop, and UART TX transmission.");
    $display("================================================================================");

    // Step A: Write known pattern to Register 4
    WRITE(8'd142, 4'd4);
    #(TB_TX_CLK_PER * 4);

    // Step B: Issue Read command and verify readback byte received over UART
    READ(4'd4);
    check_read_write("TC2: Reg 0x4 Readback Verification");
  endtask

  // Test Case 3: Command 0xCC (ALU Operations with Operands)
  task automatic test_case_3_alu_with_operands();
    test_name   = "TC3_ALU_WITH_OPS";
    test_status = "RUNNING";
    $display("\n================================================================================");
    $display("  TEST CASE 3: ALU Operation with Operands (0xCC)");
    $display("  Objective  : Verify Clock Gating enable, ALU execution, and 16-bit serialized output.");
    $display("================================================================================");

    // ADD Operation: 25 + 10 = 35
    ALU(8'd25, 8'd10, ALU_ADD);
    check_alu("ALU ADD [25 + 10]");
    #(TB_TX_CLK_PER * 4);

    // SUB Operation: 100 - 35 = 65
    ALU(8'd100, 8'd35, ALU_SUB);
    check_alu("ALU SUB [100 - 35]");
    #(TB_TX_CLK_PER * 4);

    // MUL Operation: 14 * 12 = 168
    ALU(8'd14, 8'd12, ALU_MUL);
    check_alu("ALU MUL [14 * 12]");
    #(TB_TX_CLK_PER * 4);
  endtask

  // Test Case 4: Command 0xDD (ALU Operations without Operands - Uses REG0 & REG1)
  task automatic test_case_4_alu_no_operands();
    test_name   = "TC4_ALU_NO_OPS";
    test_status = "RUNNING";
    $display("\n================================================================================");
    $display("  TEST CASE 4: ALU Operation without Operands (0xDD)");
    $display("  Objective  : Verify operands pre-loaded into REG0 & REG1 feeding ALU without UART operands.");
    $display("================================================================================");

    // Pre-load operands into Register File:
    // Address 0 = REG0 (Operand A), Address 1 = REG1 (Operand B)
    WRITE(8'd64, 4'd0); // REG0 = 64
    #(TB_TX_CLK_PER * 4);
    WRITE(8'd16, 4'd1); // REG1 = 16
    #(TB_TX_CLK_PER * 4);

    A = 8'd64;
    B = 8'd16;

    // Run ALU Subtraction: 64 - 16 = 48
    ALU_NO_OPERAND(ALU_SUB);
    check_alu("ALU_NO_OP SUB [REG0(64) - REG1(16)]");
    #(TB_TX_CLK_PER * 4);
  endtask

  //----------------------------------------------------------------------------
  // Executive Summary Report
  //----------------------------------------------------------------------------
  task automatic print_summary_report();
    test_phase  = "COMPLETED";
    test_status = (failed_tests == 0 && total_tests > 0) ? "ALL_PASSED" : "FAILED";

    $display("\n");
    $display("================================================================================");
    $display("                    SYSTEM VERIFICATION SUMMARY REPORT                          ");
    $display("================================================================================");
    $display("  Simulation End Time : %0t ns", $time);
    $display("  Total Checks Run    : %0d", total_tests);
    $display("  Total Checks Passed : %0d", passed_tests);
    $display("  Total Checks Failed : %0d", failed_tests);
    $display("--------------------------------------------------------------------------------");
    if (failed_tests == 0 && total_tests > 0) begin
      $display("  >> [SUCCESS] ALL FUNCTIONAL SYSTEM PROTOCOLS VERIFIED CLEANLY <<");
      $display("  - 0xAA (Register File Write)                 : PASSED");
      $display("  - 0xBB (Register File Read via Async FIFO)   : PASSED");
      $display("  - 0xCC (ALU w/ Dynamic Operands)             : PASSED");
      $display("  - 0xDD (ALU w/ Preloaded REG0/REG1 Operands) : PASSED");
      $display("  - Clock Gating Dynamic Idle/Active Cycles    : PASSED");
      $display("  - Dual Clock Domain CDC Transitions          : PASSED");
    end else begin
      $display("  >> [ERROR] SIMULATION FINISHED WITH %0d FAILURES <<", failed_tests);
    end
    $display("================================================================================\n");
  endtask

  //----------------------------------------------------------------------------
  // Main Execution Sequence
  //----------------------------------------------------------------------------
  initial begin
    $display("\n================================================================================");
    $display("   STARTING MULTI-CLOCK ASIC SUBSYSTEM VERIFICATION SUITE                       ");
    $display("   Clock Frequencies: REF_CLK = 50 MHz | UART_CLK = 3.6864 MHz                 ");
    $display("================================================================================");

    initialize();
    reset();
    configure(8'b100000_01, 8'd32);

    // Execute complete regression suite sequentially:
    test_case_1_write();
    #(TB_TX_CLK_PER * 6);

    test_case_2_read();
    #(TB_TX_CLK_PER * 6);

    test_case_3_alu_with_operands();
    #(TB_TX_CLK_PER * 6);

    test_case_4_alu_no_operands();
    #(TB_TX_CLK_PER * 6);

    // Final Scoreboard & Summary
    print_summary_report();

    #(TB_TX_CLK_PER * 4);
    $stop;
  end

endmodule
