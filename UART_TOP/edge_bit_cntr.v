module edge_bit_cntr (
    input clk,
    input rst,
    input enable,
    input par_en,
    input [5:0] prescale,
    output reg [3:0] bit_cnt,
    output reg [5:0] edg_cnt,
    output reg [5:0] limit_edg
);
    reg [3:0] limit_bit;


  always @(*) begin
    limit_bit = (par_en) ? 4'd10 : 4'd9;
    limit_edg = prescale - 1'b1;
  end


  always @(posedge clk or negedge rst) begin
    if (!rst) begin
      bit_cnt <= 0;
      edg_cnt <= 0;
    end else begin
      if (enable) begin
        if (edg_cnt == limit_edg) begin
          edg_cnt <= 0;
          if (bit_cnt == limit_bit) begin
            bit_cnt <= 0;
          end else bit_cnt <= bit_cnt + 1;
        end else begin
          edg_cnt <= edg_cnt + 1;
        end
      end else begin
        bit_cnt <= 0;
        edg_cnt <= 0;
      end
    end
  end
endmodule
