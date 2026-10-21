module rst_sync #(
    parameter NUM_STAGES = 2
) (
    input  CLK,
    input  RST,
    output sync_rst
);

  reg [NUM_STAGES-1:0] sync_reg;
  integer i;

  always @(posedge CLK or negedge RST) begin
    if (!RST) begin
      for (i = 0; i < NUM_STAGES; i = i + 1) begin
        sync_reg[i] <= 'd0;
      end
    end else begin
      sync_reg <= {1'b1, sync_reg[NUM_STAGES-1:1]};
    end
  end

  assign sync_rst = sync_reg[0];

endmodule
