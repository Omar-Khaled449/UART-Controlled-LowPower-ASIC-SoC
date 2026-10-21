import uart_pkg::*;
`timescale 1ns / 100ps

module MUX (
    input clk,
    input rst,
    input ser_data,
    input par_bit,
    input input_e mux_sel,
    output reg tx_out
);

  reg tx_out_comb;

  always @(posedge clk or negedge rst) begin
    if (!rst) begin
      tx_out <= 1;
    end else begin
      tx_out <= tx_out_comb;

    end
  end

  always @(*) begin
    case (mux_sel)
      START_BIT: tx_out_comb = 1'b0;
      STOP_BIT:  tx_out_comb = 1'b1;
      SER_DATA:  tx_out_comb = ser_data;
      PAR_BIT:   tx_out_comb = par_bit;
      default:   tx_out_comb = 1;
    endcase
  end

endmodule
