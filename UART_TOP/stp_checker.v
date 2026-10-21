module stp_checker (
    input clk,
    input rst,
    input stp_chk_en,
    input sampled_bit,
    output reg stp_err
);

  always @(posedge clk or negedge rst) begin
    if (!rst) begin
      stp_err <= 0;
    end else begin
      if (stp_chk_en) begin
        if (sampled_bit) begin
          stp_err <= 0;
        end else stp_err <= 1;
      end
    end
  end
endmodule
