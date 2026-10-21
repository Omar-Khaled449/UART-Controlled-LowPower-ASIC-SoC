module reg_file #(
    parameter MEM_WIDTH  = 8,
    parameter MEM_DEPTH  = 16,
    parameter ADDR_WIDTH = 4
) (
    input                        WrEn,
    input                        RdEn,
    input                        CLK,
    input                        RST,
    input      [ADDR_WIDTH-1:0] Address,
    input      [MEM_WIDTH-1 : 0] WrData,
    output reg [MEM_WIDTH-1 : 0] RdData,
    output reg                   RdData_valid,
    output     [MEM_WIDTH-1:0]       REG0,
    output     [MEM_WIDTH-1:0]       REG1,
    output     [MEM_WIDTH-1:0]       REG2,
    output     [MEM_WIDTH-1:0]       REG3
);
  integer i;

  reg [MEM_WIDTH-1:0] mem[MEM_DEPTH-1:0];

  always @(posedge CLK or negedge RST) begin
    if (!RST) begin
      RdData     <= 0;
      RdData_valid <= 0;
      for (i = 0; i < MEM_DEPTH; i = i + 1) begin
        if (i == 2) begin
          mem[i] <= 'b100000_01;
        end else if (i == 3) begin
          mem[i] <= 'b0010_0000;
        end else mem[i] <= 'b0;
      end
    end else if (WrEn && !RdEn) begin
      mem[Address] <= WrData;
    end else if (RdEn && !WrEn) begin
      RdData     <= mem[Address];
      RdData_valid <= 1;
    end else begin
      RdData_valid <= 0;
    end
  end

  assign REG0 = mem[0];
  assign REG1 = mem[1];
  assign REG2 = mem[2];
  assign REG3 = mem[3];

endmodule
