module FIFO_MEM_CNTRL #(
    parameter DATA_WIDTH = 8,
    parameter FIFO_DEPTH = 8,
    parameter ADDR_WIDTH = 4
) (
    input W_clk,
    input W_rst,
    input W_CLKEN,
    input [ADDR_WIDTH-2:0] W_addr,
    input [ADDR_WIDTH-2:0] R_addr,
    input [DATA_WIDTH-1:0] WR_data,
    output [DATA_WIDTH-1:0] RD_data

);

  reg [DATA_WIDTH-1:0] mem[FIFO_DEPTH-1 : 0];
  integer i;

  // GENERATE READ DATA
  assign RD_data = mem[R_addr];

  always @(posedge W_clk or negedge W_rst) begin
    if (!W_rst) begin
      for (i = 0; i < FIFO_DEPTH; i = i + 1) begin
        mem[i] <= 'd0;
      end
    end else begin
      if (W_CLKEN) begin
        mem[W_addr] <= WR_data;
      end
    end
  end

endmodule
