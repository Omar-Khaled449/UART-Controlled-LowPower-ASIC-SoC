module ASYNC_FIFO #(
    parameter DATA_WIDTH = 8,
    parameter FIFO_DEPTH = 8,
    parameter NUM_STAGES = 2,
    parameter ADDR_WIDTH = 4
) (
    input                  W_clk,
    input                  W_rst,
    input                  W_inc,
    input                  R_clk,
    input                  R_rst,
    input                  R_inc,
    input [DATA_WIDTH-1:0] WR_data,

    output                  FULL,
    output                  EMPTY,
    output [DATA_WIDTH-1:0] RD_data
);

  // INTERNAL INTERCONNECT WIRES
  wire W_CLKEN;
  wire [ADDR_WIDTH-1:0] w_ptr, r_ptr;
  wire [ADDR_WIDTH-1:0] WQ2_rptr, RQ2_wptr;
  wire [ADDR_WIDTH-1:0] w_addr, r_addr;

  // WRITE CONTROL LOGIC
  FIFO_WR #(
      .ADDR_WIDTH(ADDR_WIDTH),
      .FIFO_DEPTH(FIFO_DEPTH)
  ) FIFO_WR_u (
      .W_clk(W_clk),
      .W_rst(W_rst),
      .W_inc(W_inc),
      .WQ2_rptr(WQ2_rptr),
      .W_ptr(w_ptr),
      .W_addr(w_addr),
      .FULL(FULL),
      .W_CLKEN(W_CLKEN)
  );

  // READ CONTROL LOGIC
  FIFO_RD #(
      .ADDR_WIDTH(ADDR_WIDTH),
      .FIFO_DEPTH(FIFO_DEPTH)
  ) FIFO_RD_u (
      .R_clk(R_clk),
      .R_rst(R_rst),
      .R_inc(R_inc),
      .RQ2_wptr(RQ2_wptr),
      .R_ptr(r_ptr),
      .R_addr(r_addr),
      .EMPTY(EMPTY)
  );

  // READ POINTER TO WRITE DOMAIN SYNCHRONIZER
  DF_SYNC #(
      .ADDR_WIDTH(ADDR_WIDTH),
      .FIFO_DEPTH(FIFO_DEPTH),
      .NUM_STAGES(NUM_STAGES)
  ) SYNC_R2W_u (
      .clk  (W_clk),
      .rst  (W_rst),
      .i_ptr(r_ptr),
      .o_ptr(WQ2_rptr)
  );

  // WRITE POINTER TO READ DOMAIN SYNCHRONIZER
  DF_SYNC #(
      .ADDR_WIDTH(ADDR_WIDTH),
      .FIFO_DEPTH(FIFO_DEPTH),
      .NUM_STAGES(NUM_STAGES)
  ) SYNC_W2R_u (
      .clk  (R_clk),
      .rst  (R_rst),
      .i_ptr(w_ptr),
      .o_ptr(RQ2_wptr)
  );

  // DUAL PORT RAM (Addresses sliced to drop the wrap bit)
  FIFO_MEM_CNTRL #(
      .ADDR_WIDTH(ADDR_WIDTH),
      .DATA_WIDTH(DATA_WIDTH),
      .FIFO_DEPTH(FIFO_DEPTH)
  ) FIFO_MEM_u (
      .W_clk  (W_clk),
      .W_rst  (W_rst),
      .W_CLKEN(W_CLKEN),
      .W_addr (w_addr[ADDR_WIDTH-2:0]),
      .R_addr (r_addr[ADDR_WIDTH-2:0]),
      .WR_data(WR_data),
      .RD_data(RD_data)
  );

endmodule
