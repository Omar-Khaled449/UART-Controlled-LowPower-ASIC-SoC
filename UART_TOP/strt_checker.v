module strt_checker (
    input  clk,
    input  rst,
    input  strt_chk_en,
    input  sampled_bit,
    output reg strt_glitch
);

  always @(posedge clk or negedge rst) begin
    if (!rst) begin
      strt_glitch <= 1;
    end else begin
      if (strt_chk_en) begin
        if (!sampled_bit) begin
          strt_glitch <= 0;
        end
      end
    end
  end
endmodule
