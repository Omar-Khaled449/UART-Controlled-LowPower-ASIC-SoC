import uart_pkg::*;

module RX_TOP (
    input CLK,
    input RST,
    input parity_enable,
    input RX_IN,
    input [5:0] Prescale,
    input parity_type_e parity_type,
    output framing_error,
    output parity_error,
    output data_valid,
    output [7:0] P_DATA
);

  wire [3:0] bit_cnt;
  wire [5:0] edg_cnt;
  wire [5:0] limit_edg;
  wire [3:0] limit_bit;
  wire enable;
  wire dat_samp_en;
  wire par_chk_en;
  wire strt_chk_en;
  wire strt_glitch;
  wire stp_chk_en;
  wire sampled_bit;
  wire deser_en;


  UART_RX_FSM FSM_u (
      .clk(CLK),
      .rst(RST),
      .Prescale(Prescale),
      .limit_edg(limit_edg),
      .rx_in(RX_IN),
      .par_en(parity_enable),
      .enable(enable),
      .bit_cnt(bit_cnt),
      .edg_cnt(edg_cnt),
      .par_chk_en(par_chk_en),
      .par_err(parity_error),
      .strt_chk_en(strt_chk_en),
      .strt_glitch(strt_glitch),
      .stp_chk_en(stp_chk_en),
      .stp_err(framing_error),
      .data_valid(data_valid),
      .deser_en(deser_en),
      .dat_samp_en(dat_samp_en)
  );

  edge_bit_cntr edg_cnt_u (
      .clk(CLK),
      .rst(RST),
      .limit_edg(limit_edg),
      .par_en(parity_enable),
      .prescale(Prescale),
      .edg_cnt(edg_cnt),
      .bit_cnt(bit_cnt),
      .enable(enable)
  );

  data_sampling sampler_u (
      .clk(CLK),
      .rst(RST),
      .rx_in(RX_IN),
      .edg_cnt(edg_cnt),
      .prescale(Prescale),
      .sampled_bit(sampled_bit),
      .dat_samp_en(dat_samp_en)
  );

  par_chck parity_u (
      .clk(CLK),
      .rst(RST),
      .P_data(P_DATA),
      .par_typ(parity_type),
      .par_err(parity_error),
      .par_chk_en(par_chk_en),
      .sampled_bit(sampled_bit)
  );

  strt_checker strt_checker_u (
      .clk(CLK),
      .rst(RST),
      .strt_chk_en(strt_chk_en),
      .strt_glitch(strt_glitch),
      .sampled_bit(sampled_bit)
  );

  stp_checker stp_checker_u (
      .clk(CLK),
      .rst(RST),
      .stp_err(framing_error),
      .stp_chk_en(stp_chk_en),
      .sampled_bit(sampled_bit)
  );

  deserializer deserializer_u (
      .clk(CLK),
      .rst(RST),
      .P_data(P_DATA),
      .deser_en(deser_en),
      .sampled_bit(sampled_bit)
  );

endmodule
