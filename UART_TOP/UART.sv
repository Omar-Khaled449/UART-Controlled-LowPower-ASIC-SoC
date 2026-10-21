import uart_pkg::*;

module UART #(
    parameter int DATA_WIDTH = 8
) (
    input  wire                  RST,
    input  wire                  TX_CLK,
    input  wire                  RX_CLK,
    input  wire                  RX_IN,
    input  wire [DATA_WIDTH-1:0] TX_IN_P_DATA,
    input  wire                  TX_IN_data_valid,
    input  wire [           5:0] Prescale,
    input  wire                  parity_enable,
    input  wire                  parity_type,
    output wire                  RX_OUT_data_valid,
    output wire [DATA_WIDTH-1:0] RX_OUT_P_DATA,
    output wire                  busy,
    output wire                  parity_error,
    output wire                  TX_OUT,
    output wire                  framing_error
);


  TX_TOP UART_TX_u (
      .CLK(TX_CLK),
      .RST(RST),
      .P_DATA(TX_IN_P_DATA),
      .data_valid(TX_IN_data_valid),
      .parity_enable(parity_enable),
      .parity_type(parity_type_e'(parity_type)),
      .TX_OUT(TX_OUT),
      .busy(busy)
  );


  RX_TOP UART_RX_u (
      .CLK(RX_CLK),
      .RST(RST),
      .RX_IN(RX_IN),
      .Prescale(Prescale),
      .parity_enable(parity_enable),
      .parity_type(parity_type_e'(parity_type)),
      .P_DATA(RX_OUT_P_DATA),
      .data_valid(RX_OUT_data_valid),
      .parity_error(parity_error),
      .framing_error(framing_error)
  );




endmodule
