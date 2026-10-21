import uart_pkg::*;
`timescale 1ns / 100ps
module UART_TX_FSM (
    input clk,
    input rst,
    input data_valid,
    input par_en,
    input ser_done,
    output reg ser_en,
    output reg busy,
    output input_e mux_sel
);


  state_e next_state;
  state_e current_state;
  reg busy_comb;


  always @(posedge clk or negedge rst) begin
    if (!rst) begin
      current_state <= IDLE;
      busy <= 'd0;
    end else begin
      current_state <= next_state;
      busy <= busy_comb;
    end
  end


  always @(*) begin

    busy_comb  = 1'b1;
    ser_en     = 1'b0;
    mux_sel    = STOP_BIT;
    next_state = IDLE;

    case (current_state)
      IDLE: begin
        busy_comb = 1'b0;
        ser_en    = 1'b0;
        mux_sel   = STOP_BIT;

        if (data_valid == 1) begin
          next_state = START;
        end else begin
          next_state = IDLE;
        end
      end

      // START STATE
      START: begin
        busy_comb    = 1'b1;
        ser_en  = 1'b1;
        mux_sel = START_BIT;
        next_state = DATA;
      end


      // DATA STATE
      DATA: begin

        // ENABLE SERIALIZER
        busy_comb = 1'b1;
        ser_en = 1'b1;
        mux_sel = SER_DATA;

        // COUNT 8 CYCLES FOR DATA BITS
        if (!ser_done) begin
          next_state = DATA;

          // CHECK NEXT STATE FOR PARITY
        end else if (par_en) begin
          next_state = PARITY;
        end else if (!par_en) begin
          next_state = STOP;
        end

      end


      // PARITY STATE
      PARITY: begin
        busy_comb = 1'b1;
        ser_en = 1'b0;
        mux_sel = PAR_BIT;
        next_state = STOP;
      end


      // STOP STATE
      STOP: begin
        busy_comb = 1'b1;
        ser_en = 1'b0;
        mux_sel = STOP_BIT;
        next_state = IDLE;
      end

      default: begin
        next_state = IDLE;
      end
    endcase

  end
endmodule
