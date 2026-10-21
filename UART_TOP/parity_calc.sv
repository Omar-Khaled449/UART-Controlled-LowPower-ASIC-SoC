`timescale 1ns / 100ps
import uart_pkg::*;

module parity_calc (
    input clk,
    input rst,
    input parity_type_e par_typ,
    input [7:0] P_data,
    input data_valid,
    output reg par_bit
);

  always @(posedge clk or negedge rst) begin
    if (!rst) begin
      par_bit <= 0;
    end else if (data_valid) begin
      if (par_typ == EVEN) begin
        par_bit <= ^(P_data);
      end else begin
        par_bit <= ~(^(P_data));
      end
    end
  end

endmodule
