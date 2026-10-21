import uart_pkg::*;

module par_chck (
    input clk,
    input rst,
    input [7:0] P_data,
    input parity_type_e par_typ,
    input par_chk_en,
    input sampled_bit,
    output reg par_err
);

  wire par_bit = (par_typ == EVEN) ? ^P_data : ~^P_data;

  always @(posedge clk or negedge rst) begin
    if (!rst) begin
      par_err <= 0;
    end else begin
      if (par_chk_en) begin
        if (sampled_bit == par_bit) begin
          par_err <= 0;
        end else par_err <= 1;
      end else begin
        par_err <= par_err;
      end
    end
  end
endmodule
