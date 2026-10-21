module deserializer (
    input clk,
    input rst,
    input deser_en,
    input sampled_bit,
    output reg [7:0] P_data
);

  reg [2:0] i;

  always @(posedge clk or negedge rst) begin

    if (!rst) begin
      i      <= 3'd0;
      P_data <= 8'd0;
    end else begin
      if (deser_en) begin
        P_data[i] <= sampled_bit;
        if (i == 3'd7) begin
          i <= 3'd0;
        end else begin
          i <= i + 3'd1;
        end
      end
    end
  end

endmodule
