module clk_div #(
    parameter RATIO_WD = 8
) (
    input  wire                  i_ref_clk,
    input  wire                  i_rst_n,
    input  wire                  i_clk_en,
    input  wire [RATIO_WD-1 : 0] i_div_ratio,
    output wire                  o_div_clk
);

  wire                  clk_div_en;
  wire [RATIO_WD-2 : 0] half;
  wire [RATIO_WD-2 : 0] half_plus_one;

  reg  [RATIO_WD-2 : 0] i;
  reg                   tick_1;
  reg                   div_clk;

  assign clk_div_en    = i_clk_en && (i_div_ratio > 1);
  assign half          = (i_div_ratio >> 1) - 1'b1;
  assign half_plus_one = (i_div_ratio >> 1);

  always @(posedge i_ref_clk or negedge i_rst_n) begin
    if (!i_rst_n) begin
      div_clk <= 1'b0;
      i       <= 'd0;
      tick_1  <= 1'b0;
    end else if (clk_div_en) begin
      if (i_div_ratio[0] == 1'b0) begin
        // Even division ratio
        if (i == half) begin
          i       <= 'd0;
          div_clk <= ~div_clk;
          tick_1  <= ~tick_1;
        end else begin
          i <= i + 1'b1;
        end
      end else begin
        // Odd division ratio
        if ((!tick_1 && (i == half)) || (tick_1 && (i == half_plus_one))) begin
          i       <= 'd0;
          tick_1  <= ~tick_1;
          div_clk <= ~div_clk;
        end else begin
          i <= i + 1'b1;
        end
      end
    end else begin
      //div_clk <= 1'b0;
      i       <= 'd0;
      tick_1  <= 1'b0;
    end
  end

  assign o_div_clk = clk_div_en ? div_clk : i_ref_clk;

endmodule
