import uart_pkg::*;
module SYS_CTRL (

    // INPUT PORTS
    input        CLK,
    input        RST,
    input        FULL,
    input [15:0] ALU_OUT,
    input        OUT_Valid,
    input [ 7:0] RX_P_Data,
    input        RX_D_VLD,
    input [ 7:0] RdData,
    input        RdData_Valid,

    // OUTPUT PORTS
    output reg       ALU_EN,
    output reg [3:0] ALU_FUN,
    output reg       CLK_EN,
    output reg [3:0] Address,
    output reg       WrEN,
    output reg       RdEN,
    output reg [7:0] WrData,
    output reg [7:0] TX_P_Data,
    output reg       TX_D_VLD
);

  sys_ctrl_e        current_state;
  sys_ctrl_e        next_state;
  reg               ALU_EN_comb;
  reg        [ 3:0] ALU_FUN_comb;
  reg               CLK_EN_comb;
  reg               WrEN_comb;
  reg               RdEN_comb;
  reg        [ 7:0] WrData_comb;
  reg        [ 7:0] TX_P_Data_comb;
  reg               TX_D_VLD_comb;
  reg        [15:0] alu_out_reg;
  reg        [ 3:0] Address_comb;
  reg               addr_en;
  reg               done;

  always @(posedge CLK or negedge RST) begin
    if (!RST) begin
      current_state <= SYS_IDLE;
      ALU_EN        <= 'd0;
      ALU_FUN       <= 'd0;
      CLK_EN        <= 'd0;
      Address       <= 'd0;
      WrEN          <= 'd0;
      RdEN          <= 'd0;
      WrData        <= 'd0;
      TX_P_Data     <= 'd0;
      TX_D_VLD      <= 'd0;
      alu_out_reg   <= 'd0;
      done          <= 'd0;
    end else begin
      current_state <= next_state;
      ALU_EN        <= ALU_EN_comb;
      ALU_FUN       <= ALU_FUN_comb;
      CLK_EN        <= CLK_EN_comb;
      WrEN          <= WrEN_comb;
      RdEN          <= RdEN_comb;
      WrData        <= WrData_comb;
      TX_P_Data     <= TX_P_Data_comb;
      TX_D_VLD      <= TX_D_VLD_comb;

      if (addr_en) begin
        Address <= Address_comb;
      end

      if (OUT_Valid) begin
        alu_out_reg <= ALU_OUT;
        done        <= 1'b1;
      end else if (current_state == SYS_IDLE) begin
        done <= 1'b0;
      end
    end

  end

  always_comb begin
    // INITIALIZING SIGNALS
    ALU_EN_comb    = 'd0;
    ALU_FUN_comb   = 'd0;
    CLK_EN_comb    = 'd0;
    addr_en        = 'd0;
    WrEN_comb      = 'd0;
    RdEN_comb      = 'd0;
    WrData_comb    = 'd0;
    TX_P_Data_comb = 'd0;
    TX_D_VLD_comb  = 'd0;
    Address_comb   = 'd0;
    next_state     = SYS_IDLE;

    // THE FSM LOGIC
    case (current_state)
      SYS_IDLE: begin
        if (RX_D_VLD) begin
          case (RX_P_Data)
            8'hAA:   next_state = WRITE_ADDR;
            8'hBB:   next_state = READ_ADDR;
            8'hCC:   next_state = OPERAND_A;
            8'hDD:   next_state = ALU_FUNCTION;
            default: next_state = SYS_IDLE;
          endcase
        end
      end

      WRITE_ADDR: begin
        if (RX_D_VLD) begin
          addr_en      = 'd1;
          Address_comb = RX_P_Data[3:0];
          next_state   = WRITE_DATA;
        end else begin
          next_state = WRITE_ADDR;
        end
      end

      WRITE_DATA: begin
        if (RX_D_VLD) begin
          WrEN_comb   = 1;
          WrData_comb = RX_P_Data;
          next_state  = SYS_IDLE;
        end else begin
          next_state = WRITE_DATA;
        end
      end

      READ_ADDR: begin
        if (RX_D_VLD) begin
          addr_en      = 'd1;
          Address_comb = RX_P_Data[3:0];
          next_state   = READ_DATA;
        end else begin
          next_state = READ_ADDR;
        end
      end

      READ_DATA: begin
        RdEN_comb = 1;
        if (RdData_Valid) begin
          if (!FULL) begin
            TX_P_Data_comb = RdData;
            TX_D_VLD_comb = 'd1;
            next_state = SYS_IDLE;
          end else begin
            next_state = READ_DATA;
          end
        end else next_state = READ_DATA;
      end

      OPERAND_A: begin
        CLK_EN_comb  = 'd1;
        Address_comb = 8'h0;
        if (RX_D_VLD) begin
          addr_en     = 'd1;
          WrEN_comb   = 'd1;
          WrData_comb = RX_P_Data;
          next_state  = OPERAND_B;
        end else begin
          next_state = OPERAND_A;
        end
      end

      OPERAND_B: begin
        CLK_EN_comb  = 'd1;
        Address_comb = 8'h1;
        if (RX_D_VLD) begin
          addr_en     = 'd1;
          WrEN_comb   = 'd1;
          WrData_comb = RX_P_Data;
          next_state  = ALU_FUNCTION;
        end else begin
          next_state = OPERAND_B;
        end
      end

      ALU_FUNCTION: begin
        CLK_EN_comb = 'd1;
        if (RX_D_VLD) begin
          ALU_EN_comb  = 'd1;
          ALU_FUN_comb = RX_P_Data[3:0];
          next_state   = ALU_OUT_0;
        end else begin
          next_state = ALU_FUNCTION;
        end
      end
      ALU_OUT_0: begin
        CLK_EN_comb = 'd1;
        if (OUT_Valid || done) begin
          if (!FULL) begin
            TX_D_VLD_comb = 'd1;
            TX_P_Data_comb = OUT_Valid ? ALU_OUT[7:0] : alu_out_reg[7:0];
            next_state = ALU_OUT_1;
          end else begin
            next_state = ALU_OUT_0;
          end
        end else next_state = ALU_OUT_0;
      end

      ALU_OUT_1: begin
        CLK_EN_comb = 'd1;
        if (!FULL) begin
          TX_D_VLD_comb = 'd1;
          TX_P_Data_comb = alu_out_reg[15:8];
          next_state = SYS_IDLE;
        end else begin
          next_state = ALU_OUT_1;
        end
      end

      default: next_state = SYS_IDLE;
    endcase
  end

endmodule
