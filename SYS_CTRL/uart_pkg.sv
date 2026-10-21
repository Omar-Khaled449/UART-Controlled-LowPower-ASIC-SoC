package uart_pkg;
  `timescale 1ns / 100ps
  typedef enum logic {
    EVEN,
    ODD
  } parity_type_e;

  typedef enum logic [2:0] {
    START,
    IDLE,
    DATA,
    PARITY,
    STOP,
    ERR_CHCK
  } state_e;

  typedef enum logic [1:0] {
    STOP_BIT,
    START_BIT,
    SER_DATA,
    PAR_BIT
  } input_e;


  typedef enum logic [3:0] {
    READ_ADDR,
    READ_DATA,
    SYS_IDLE,
    WRITE_ADDR,
    WRITE_DATA,
    OPERAND_A,
    OPERAND_B,
    ALU_FUNCTION,
    ALU_OUT_0,
    ALU_OUT_1
  } sys_ctrl_e;

  typedef enum logic [3:0] {
    ALU_ADD  = 4'b0000,  // A + B
    ALU_SUB  = 4'b0001,  // A - B
    ALU_MUL  = 4'b0010,  // A * B
    ALU_DIV  = 4'b0011,  // A / B
    ALU_AND  = 4'b0100,  // A & B
    ALU_OR   = 4'b0101,  // A | B
    ALU_NAND = 4'b0110,  // ~(A & B)
    ALU_NOR  = 4'b0111,  // ~(A | B)
    ALU_XOR  = 4'b1000,  // A ^ B
    ALU_XNOR = 4'b1001,  // ~(A ^ B)
    ALU_EQ   = 4'b1010,  // A == B
    ALU_GT   = 4'b1011,  // A > B
    ALU_LT   = 4'b1100,  // A < B
    ALU_SHR  = 4'b1101,  // A >> 1
    ALU_SHL  = 4'b1110,  // A << 1
    ALU_NOP  = 4'b1111   // Default / unused
  } alu_fun_e;

endpackage
