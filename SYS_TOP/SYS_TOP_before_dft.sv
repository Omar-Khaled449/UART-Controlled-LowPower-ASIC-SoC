module SYS_TOP #(
    parameter int OPER_WIDTH      = 8,
    parameter int MEM_WIDTH       = 8,
    parameter int MEM_DEPTH       = 16,
    parameter int ADDR_WIDTH      = 4,
    parameter int RATIO_WD        = 8,
    parameter int WIDTH           = 8,
    parameter int FIFO_DEPTH      = 8,
    parameter int NUM_STAGES      = 2,
    parameter int FIFO_ADDR_WIDTH = 4
) (
    // Functional Clock & Reset
    input  wire RST_N,
    input  wire UART_CLK,
    input  wire REF_CLK,

    // Functional UART I/O
    input  wire UART_RX_IN,
    output wire UART_TX_O,
    output wire parity_error,
    output wire framing_error
);

  //===========================================================================
  // Internal Interconnect Wires (Declared first to avoid forward-reference errors)
  //===========================================================================

  // Reset Synchronizers
  wire                     SYNC_RST_1;
  wire                     SYNC_RST_2;

  // ALU & Clock Gating
  wire [3:0]                ALU_FUN;
  wire [(2*OPER_WIDTH)-1:0] ALU_OUT;
  wire                      OUT_VALID;
  wire                      ALU_EN;
  wire                      GATED_CLK;
  wire                      CLK_EN;

  // Register File
  wire                     WrEn;
  wire                     RdEn;
  wire [ADDR_WIDTH-1:0]    Address;
  wire [MEM_WIDTH-1:0]     WrData;
  wire [MEM_WIDTH-1:0]     RdData;
  wire                     RdData_Valid;
  wire [MEM_WIDTH-1:0]     REG0;
  wire [MEM_WIDTH-1:0]     REG1;
  wire [MEM_WIDTH-1:0]     REG2;
  wire [MEM_WIDTH-1:0]     REG3;

  // System Controller to FIFO
  wire                     FULL;
  wire [WIDTH-1:0]         TX_IN_P_DATA;
  wire                     TX_IN_data_valid;

  // Clock Dividers
  wire [WIDTH-1:0]         RX_div_ratio;
  wire                     RX_CLK;
  wire                     TX_CLK;

  // FIFO & Pulse Generator
  wire                     EMPTY;
  wire [WIDTH-1:0]         RD_data;
  wire                     R_inc;
  wire                     busy;

  // RX & CDC Synchronizer
  wire [WIDTH-1:0]         RX_OUT_P_DATA;
  wire                     RX_OUT_data_valid;
  wire [WIDTH-1:0]         sync_RX_OUT_P_DATA;
  wire                     sync_RX_OUT_data_valid;


  //===========================================================================
  // Module Instantiations
  //===========================================================================

  // 1. Reset Synchronizers
  rst_sync #(
      .NUM_STAGES(NUM_STAGES)
  ) RST_SYNC_1_u (
      .CLK     (REF_CLK),
      .RST     (RST_N),
      .sync_rst(SYNC_RST_1)
  );

  rst_sync #(
      .NUM_STAGES(NUM_STAGES)
  ) RST_SYNC_2_u (
      .CLK     (UART_CLK),
      .RST     (RST_N),
      .sync_rst(SYNC_RST_2)
  );

  // 2. Clock Gating Logic
  CLK_GATE clk_gate_u (
      .CLK      (REF_CLK),
      .CLK_EN   (CLK_EN),
      .GATED_CLK(GATED_CLK)
  );

  // 3. ALU Block
  ALU #(
      .OPER_WIDTH(OPER_WIDTH),
      .OUT_WIDTH (2 * OPER_WIDTH)
  ) ALU_u (
      .CLK      (GATED_CLK),
      .RST      (SYNC_RST_1),
      .A        (REG0),
      .B        (REG1),
      .EN       (ALU_EN),
      .ALU_FUN  (ALU_FUN),
      .ALU_OUT  (ALU_OUT),
      .OUT_VALID(OUT_VALID)
  );

  // 4. Register File
  reg_file #(
      .MEM_DEPTH (MEM_DEPTH),
      .MEM_WIDTH (MEM_WIDTH),
      .ADDR_WIDTH(ADDR_WIDTH)
  ) Regfile_u (
      .CLK         (REF_CLK),
      .RST         (SYNC_RST_1),
      .Address     (Address),
      .WrEn        (WrEn),
      .RdEn        (RdEn),
      .WrData      (WrData),
      .RdData      (RdData),
      .RdData_valid(RdData_Valid),
      .REG0        (REG0),
      .REG1        (REG1),
      .REG2        (REG2),
      .REG3        (REG3)
  );

  // 5. System Controller
  SYS_CTRL sys_ctrl_u (
      .CLK         (REF_CLK),
      .RST         (SYNC_RST_1),
      .FULL        (FULL),
      .ALU_OUT     (ALU_OUT),
      .OUT_Valid   (OUT_VALID),
      .ALU_FUN     (ALU_FUN),
      .ALU_EN      (ALU_EN),
      .CLK_EN      (CLK_EN),
      .Address     (Address),
      .WrEN        (WrEn),
      .RdEN        (RdEn),
      .WrData      (WrData),
      .RdData      (RdData),
      .RdData_Valid(RdData_Valid),
      .RX_P_Data   (sync_RX_OUT_P_DATA),
      .RX_D_VLD    (sync_RX_OUT_data_valid),
      .TX_P_Data   (TX_IN_P_DATA),
      .TX_D_VLD    (TX_IN_data_valid)
  );

  // 6. Clock Divider Prescaler MUX
  CLKDIV_MUX #(
      .WIDTH(4)
  ) CLKDIV_MUX_u (
      .IN (REG2[7:2]),
      .OUT(RX_div_ratio)
  );

  // 7. Clock Dividers (RX & TX)
  clk_div #(
      .RATIO_WD(RATIO_WD)
  ) clk_div_RX_u (
      .i_ref_clk  (UART_CLK),
      .i_rst_n    (SYNC_RST_2),
      .i_clk_en   (1'b1),
      .i_div_ratio(RX_div_ratio),
      .o_div_clk  (RX_CLK)
  );

  clk_div #(
      .RATIO_WD(RATIO_WD)
  ) clk_div_TX_u (
      .i_ref_clk  (UART_CLK),
      .i_rst_n    (SYNC_RST_2),
      .i_clk_en   (1'b1),
      .i_div_ratio(REG3),
      .o_div_clk  (TX_CLK)
  );

  // 8. Asynchronous FIFO
  ASYNC_FIFO #(
      .DATA_WIDTH(WIDTH),
      .FIFO_DEPTH(FIFO_DEPTH),
      .NUM_STAGES(NUM_STAGES),
      .ADDR_WIDTH(FIFO_ADDR_WIDTH)
  ) FIFO_u (
      .W_clk  (REF_CLK),
      .W_rst  (SYNC_RST_1),
      .W_inc  (TX_IN_data_valid),
      .WR_data(TX_IN_P_DATA),
      .FULL   (FULL),
      .R_clk  (TX_CLK),
      .R_rst  (SYNC_RST_2),
      .R_inc  (R_inc),
      .RD_data(RD_data),
      .EMPTY  (EMPTY)
  );

  // 9. Pulse Generator
  Pulse_gen PULSE_GEN_u (
      .CLK      (TX_CLK),
      .RST      (SYNC_RST_2),
      .LVL_SIG  (busy),
      .PULSE_SIG(R_inc)
  );

  // 10. UART Module
  UART #(
      .DATA_WIDTH(WIDTH)
  ) UART_u (
      .RST              (SYNC_RST_2),
      .TX_CLK           (TX_CLK),
      .RX_CLK           (RX_CLK),
      .RX_IN            (UART_RX_IN),
      .RX_OUT_P_DATA    (RX_OUT_P_DATA),
      .RX_OUT_data_valid(RX_OUT_data_valid),
      .TX_IN_P_DATA     (RD_data),
      .TX_IN_data_valid (!EMPTY),
      .TX_OUT           (UART_TX_O),
      .busy             (busy),
      .Prescale         (REG2[7:2]),
      .parity_enable    (REG2[0]),
      .parity_type      (REG2[1]),
      .parity_error     (parity_error),
      .framing_error    (framing_error)
  );

  // 11. RX Data Synchronizer
  Data_syn #(
      .NUM_STAGES(NUM_STAGES),
      .BUS_WIDTH (WIDTH)
  ) synchronizer_u (
      .CLK         (REF_CLK),
      .RST         (SYNC_RST_1),
      .bus_enable  (RX_OUT_data_valid),
      .unsync_bus  (RX_OUT_P_DATA),
      .sync_bus    (sync_RX_OUT_P_DATA),
      .enable_pulse(sync_RX_OUT_data_valid)
  );

endmodule
