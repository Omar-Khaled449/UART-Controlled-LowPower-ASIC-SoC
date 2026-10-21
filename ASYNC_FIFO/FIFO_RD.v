module FIFO_RD #(
    parameter FIFO_DEPTH = 8,
    parameter ADDR_WIDTH = 4
) (
    input                       R_clk,
    input                       R_rst,
    input                       R_inc,
    input      [ADDR_WIDTH-1:0] RQ2_wptr,
    output reg [ADDR_WIDTH-1:0] R_ptr,
    output reg [ADDR_WIDTH-1:0] R_addr,
    output                      EMPTY
);
  integer i;
  reg [ADDR_WIDTH-1:0] R_ptr_next;
  reg [ADDR_WIDTH-1:0] R_addr_next;

  // GENERATE EMPTY SIGNAL
  assign EMPTY = (R_ptr == RQ2_wptr) ? 1 : 0;


  // GENERATE GRAY CODE FOR R_PTR
  always @(*) begin
    R_addr_next = R_addr + 'd1;
    R_ptr_next  = R_addr_next ^ (R_addr_next >> 1);
  end

  always @(posedge R_clk or negedge R_rst) begin
    if (!R_rst) begin
      R_addr <= 'd0;
      R_ptr  <= 'd0;
    end else begin
      if (R_inc && !EMPTY) begin
        R_addr <= R_addr_next;
        R_ptr  <= R_ptr_next;
      end
    end
  end
endmodule
