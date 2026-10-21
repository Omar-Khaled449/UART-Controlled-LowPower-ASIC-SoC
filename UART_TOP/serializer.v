`timescale 1ns / 100ps

module serializer (
    input wire clk,
    input wire rst,
    input wire ser_en,
    input wire [7:0] P_data,
    output reg ser_data,
    output reg ser_done
);

  reg [2:0] cntr;

  always @(posedge clk or negedge rst) begin
    if (!rst) begin
      ser_done <= 1'b0;
      ser_data <= 1'b1;
      cntr     <= 3'd0;
    end else begin
      if (ser_en) begin
        ser_data <= P_data[cntr];
        if (cntr == 3'd7) begin
          ser_done <= 1'b1;
          cntr     <= 3'd0;
        end else begin
          ser_done <= 1'b0;
          cntr     <= cntr + 3'd1;
        end
      end else begin
        cntr     <= 3'd0;
        ser_done <= 1'b0;
        ser_data <= 1'b1;
      end
    end
  end

endmodule
