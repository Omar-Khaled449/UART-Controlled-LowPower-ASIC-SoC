import uart_pkg::*;
`timescale 1ns / 100ps

module TX_TOP (
    input CLK,
    input RST,
    input [7:0] P_DATA,
    input data_valid,
    input parity_enable,
    parity_type_e parity_type,
    output TX_OUT,
    output busy
);

  wire ser_en;
  input_e mux_sel;
  wire ser_done;
  wire ser_data;
  wire par_bit;

  UART_TX_FSM u0 (
      .clk(CLK),
      .rst(RST),
      .data_valid(data_valid),
      .par_en(parity_enable),
      .ser_done(ser_done),
      .ser_en(ser_en),
      .busy(busy),
      .mux_sel(mux_sel)
  );

  serializer u1 (
      .clk(CLK),
      .rst(RST),
      .ser_en(ser_en),
      .P_data(P_DATA),
      .ser_data(ser_data),
      .ser_done(ser_done)
  );

  parity_calc u2 (
      .clk(CLK),
      .rst(RST),
      .par_typ(parity_type),
      .P_data(P_DATA),
      .data_valid(data_valid),
      .par_bit(par_bit)
  );

  MUX u3 (
      .clk(CLK),
      .rst(RST),
      .ser_data(ser_data),
      .par_bit(par_bit),
      .mux_sel(mux_sel),
      .tx_out(TX_OUT)
  );


endmodule
