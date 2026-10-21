module data_sampling (
    input clk,
    input rst,
    input dat_samp_en,
    input [5:0] edg_cnt,
    input rx_in,
    input [5:0] prescale,
    output reg sampled_bit
);

  reg  [1:0] i;
  wire [4:0] targ_edg;
  reg  [2:0] sampled_data;

  assign targ_edg = (prescale / 2) - 1;

  always @(posedge clk or negedge rst) begin
    if (!rst) begin
      i            <= 0;
      sampled_bit  <= 1;
      sampled_data <= 0;
    end else begin
      if (dat_samp_en) begin
        if (edg_cnt >= (targ_edg - 1) && edg_cnt <= (targ_edg + 1)) begin
          sampled_data[i] <= rx_in;
          i <= i + 1;
        end else if (edg_cnt > targ_edg + 1) begin
          i <= 0;
          if ((&sampled_data) || (~|sampled_data)) begin
            sampled_bit <= sampled_data[0];
          end else sampled_bit <= ~(^(sampled_data));
        end
      end else begin
        i <= 0;
        sampled_data <= 0;
      end
    end
  end
endmodule
