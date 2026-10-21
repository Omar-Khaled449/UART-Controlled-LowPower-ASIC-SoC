module DF_SYNC #(
    parameter FIFO_DEPTH = 8,
    parameter NUM_STAGES = 2,
    parameter ADDR_WIDTH = 4
) (
    input                       clk,
    input                       rst,
    input      [ADDR_WIDTH-1:0] i_ptr,
    output reg [ADDR_WIDTH-1:0] o_ptr
);
  integer i;
  reg [NUM_STAGES-1:0] sync_reg[ADDR_WIDTH-1:0];

  always @(posedge clk or negedge rst) begin
    if (!rst) begin
      for (i = 0; i < ADDR_WIDTH; i = i + 1) begin
        sync_reg[i] <= 'd0;
      end
    end else begin
      for (i = 0; i < ADDR_WIDTH; i = i + 1) begin
        sync_reg[i] <= {i_ptr[i], sync_reg[i][NUM_STAGES-1:1]};
      end
    end
  end

  always @(*) begin
    for (i = 0; i < ADDR_WIDTH; i = i + 1) begin
      o_ptr[i] = sync_reg[i][0];
    end
  end

endmodule
