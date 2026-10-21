import uart_pkg::*;

module UART_RX_FSM (
    input clk,
    input rst,
    input rx_in,
    input par_en,
    input [5:0] Prescale,
    input [3:0] bit_cnt,
    input [5:0] edg_cnt,
    input [5:0] limit_edg,
    input par_err,
    input stp_err,
    input strt_glitch,

    output reg dat_samp_en,
    output reg enable,
    output reg data_valid,
    output reg deser_en,
    output reg stp_chk_en,
    output reg strt_chk_en,
    output reg par_chk_en
);

  state_e current_state;
  state_e next_state;
  reg data_valid_comb;
  reg [5:0] count;
  reg [5:0] stretch;

  always @(posedge clk or negedge rst) begin
    if (!rst) begin
      count         <= 'd0;
      stretch       <= 'd0;
      data_valid    <= 'd0;
      current_state <= IDLE;
    end else begin
      // ASSIGNE NEXT STATE
      current_state <= next_state;
      // STRECTH THE DATA VALID PULSE
      if (stretch == 'd0) begin
        if (data_valid_comb) begin
          data_valid <= 1;
          stretch    <= 1;
        end else begin
          data_valid <= 0;
        end
      end else if (count == Prescale - 1) begin
        data_valid <= 0;
        stretch    <= 0;
        count      <= 0;
      end else begin
        data_valid <= 1;
        count      <= count + 1;
      end
    end
  end


  always @(*) begin

    enable          = 0;
    deser_en        = 0;
    stp_chk_en      = 0;
    strt_chk_en     = 0;
    par_chk_en      = 0;
    dat_samp_en     = 1;
    next_state      = IDLE;
    data_valid_comb = 0;


    case (current_state)
      IDLE: begin
        if (rx_in == 0) begin
          next_state = START;
        end

      end

      START: begin
        strt_chk_en = 1;
        enable = 1;
        // ASSIGN NEXT STATE
        if (edg_cnt == limit_edg) begin
          if (!strt_glitch) begin
            next_state = DATA;
          end else begin
            next_state = IDLE;
          end
        end else begin
          next_state = START;
        end
      end

      DATA: begin
        enable = 1;
        if (edg_cnt == limit_edg) begin
          deser_en = 1;
        end
        // ASSIGN NEXT STATE
        if (edg_cnt == limit_edg) begin
          if (bit_cnt == 4'd8) begin
            if (par_en) begin
              next_state = PARITY;
            end else next_state = STOP;
          end else next_state = DATA;
        end else next_state = DATA;
      end

      PARITY: begin
        par_chk_en = 1;
        enable = 1;
        // ASSIGN NEXT STATE
        if (edg_cnt == limit_edg) begin
          next_state = STOP;
        end else next_state = PARITY;
      end

      STOP: begin
        enable = 1;
        stp_chk_en = 1;
        // ASSIGN NEXT STATE
        if (edg_cnt == limit_edg - 1) begin
          next_state = ERR_CHCK;
        end else next_state = STOP;
      end

      ERR_CHCK: begin
        enable = 1;
        if (!par_err && !stp_err) begin
          data_valid_comb = 1;
        end else data_valid_comb = 0;
        // ASSIGN NEXT STATE
        if (rx_in == 0) begin
          next_state = START;
        end else next_state = IDLE;
      end
      default: next_state = IDLE;
    endcase
  end
endmodule
