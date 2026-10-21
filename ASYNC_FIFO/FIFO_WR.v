module FIFO_WR #(
    parameter FIFO_DEPTH = 8,
    parameter ADDR_WIDTH = 4
) (
    input                       W_clk,
    input                       W_rst,
    input                       W_inc,
    input      [ADDR_WIDTH-1:0] WQ2_rptr,
    output reg [ADDR_WIDTH-1:0] W_ptr,
    output reg [ADDR_WIDTH-1:0] W_addr,
    output                      W_CLKEN,
    output                      FULL
);
  integer i;
  reg [ADDR_WIDTH -1:0] W_ptr_next;
  reg [ADDR_WIDTH -1:0] W_addr_next;

  // GENERATE W_CLKEN
  assign W_CLKEN = W_inc & !FULL;

  // GENERATE FULL SIGNAL

  assign FULL = (W_ptr[ADDR_WIDTH-1]     != WQ2_rptr[ADDR_WIDTH-1]) &&
              (W_ptr[ADDR_WIDTH-2]     != WQ2_rptr[ADDR_WIDTH-2]) &&
              (W_ptr[ADDR_WIDTH-3:0]   == WQ2_rptr[ADDR_WIDTH-3:0]);

  // GENERATE GRAY CODE FOR W_PTR
  always @(*) begin
    W_addr_next = W_addr + 'd1;
    W_ptr_next  = W_addr_next ^ (W_addr_next >> 1);

  end

  always @(posedge W_clk or negedge W_rst) begin

    // PREPARE ADDRESS FOR WRITE
    if (!W_rst) begin
      W_addr <= 'd0;
      W_ptr  <= 'd0;
    end else begin
      if (W_inc && !FULL) begin
        W_addr <= W_addr_next;
        W_ptr  <= W_ptr_next;
      end
    end
  end

endmodule
