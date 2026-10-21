#=============================================================================
# ModelSim / QuestaSim Readable Waveform Script: wave.do
# Focused on key system transactions with clean spacing and clear dividers
#=============================================================================

onerror {resume}
quietly WaveActivateNextPane {} 0

#=============================================================================
# 0. TEST PHASE & DOCUMENTATION MARKERS
#=============================================================================
add wave -noupdate -divider {===== 0. TEST PHASE & STATUS =====}
add wave -noupdate -color {Cyan}        -radix ascii            -label Test_Name        /TB/test_name
add wave -noupdate -color {Magenta}     -radix ascii            -label Test_Phase       /TB/test_phase
add wave -noupdate -color {Lime}        -radix ascii            -label Test_Status      /TB/test_status

# Visual Spacer
add wave -noupdate -divider {}

#=============================================================================
# 1. CLOCKS & SYSTEM STATE
#=============================================================================
add wave -noupdate -divider {===== 1. CLOCKS & SYSTEM STATE =====}
add wave -noupdate -color {Yellow}      -label REF_CLK          /TB/REF_CLK
add wave -noupdate -color {Orange}      -label UART_CLK         /TB/UART_CLK
add wave -noupdate -color {Red}         -label RST_N            /TB/RST
add wave -noupdate -color {Cyan}        -radix ascii            -label SYS_State        /TB/DUT/sys_ctrl_u/current_state

# Visual Spacer
add wave -noupdate -divider {}

#=============================================================================
# 2. UART SERIAL INTERFACE
#=============================================================================
add wave -noupdate -divider {===== 2. UART SERIAL I/O =====}
add wave -noupdate -color {Green}       -label {RX_IN (TB->DUT)}  /TB/tb_to_dut
add wave -noupdate -color {Aquamarine}  -label {TX_OUT (DUT->TB)} /TB/dut_to_tb
add wave -noupdate -color {Pink}        -label Framing_Error      /TB/framing_error
add wave -noupdate -color {Pink}        -label Parity_Error       /TB/parity_error

# Visual Spacer
add wave -noupdate -divider {}

#=============================================================================
# 3. REGISTER FILE TRANSACTIONS
#=============================================================================
add wave -noupdate -divider {===== 3. REGISTER FILE =====}
add wave -noupdate -color {Magenta}     -label Reg_Address      -radix hexadecimal  /TB/DUT/sys_ctrl_u/Address
add wave -noupdate -color {White}       -label Reg_Wr_EN        /TB/DUT/sys_ctrl_u/WrEN
add wave -noupdate -color {Green}       -label Reg_Wr_Data      -radix hexadecimal  /TB/DUT/sys_ctrl_u/WrData
add wave -noupdate -color {White}       -label Reg_Rd_EN        /TB/DUT/sys_ctrl_u/RdEN
add wave -noupdate -color {Yellow}      -label Reg_Rd_Data      -radix hexadecimal  /TB/DUT/sys_ctrl_u/RdData

# Visual Spacer
add wave -noupdate -divider {}

#=============================================================================
# 4. ALU EXECUTION
#=============================================================================
add wave -noupdate -divider {===== 4. ALU EXECUTION =====}
add wave -noupdate -color {Yellow}      -label {Operand_A (REG0)}  -radix unsigned  /TB/DUT/REG0
add wave -noupdate -color {Orange}      -label {Operand_B (REG1)}  -radix unsigned  /TB/DUT/REG1
add wave -noupdate -color {Magenta}     -label ALU_Function        -radix ascii     /TB/DUT/ALU_u/ALU_FUN
add wave -noupdate -color {Green}       -label ALU_Result          -radix unsigned  /TB/DUT/ALU_u/ALU_OUT
add wave -noupdate -color {White}       -label ALU_Valid           /TB/DUT/ALU_u/OUT_VALID

# Visual Spacer
add wave -noupdate -divider {}

#=============================================================================
# 5. ASYNC FIFO & TX FLOW
#=============================================================================
add wave -noupdate -divider {===== 5. FIFO & TX FLOW =====}
add wave -noupdate -color {Green}       -label FIFO_Write_Data  -radix hexadecimal  /TB/DUT/FIFO_u/WR_data
add wave -noupdate -color {White}       -label FIFO_Write_Inc   /TB/DUT/FIFO_u/W_inc
add wave -noupdate -color {Red}         -label FIFO_Full        /TB/DUT/FIFO_u/FULL
add wave -noupdate -color {Cyan}        -label FIFO_Read_Data   -radix hexadecimal  /TB/DUT/FIFO_u/RD_data
add wave -noupdate -color {White}       -label FIFO_Read_Inc    /TB/DUT/FIFO_u/R_inc
add wave -noupdate -color {Yellow}      -label FIFO_Empty       /TB/DUT/FIFO_u/EMPTY
add wave -noupdate -color {Orange}      -label UART_TX_Busy     /TB/DUT/busy

# Visual Spacer
add wave -noupdate -divider {}

#=============================================================================
# 6. TESTBENCH VERIFICATION RESULTS
#=============================================================================
add wave -noupdate -divider {===== 6. TB VERIFICATION =====}
add wave -noupdate -color {Green}       -label TB_Written_Data  -radix unsigned     /TB/write_out
add wave -noupdate -color {Cyan}        -label TB_Readback_Data -radix unsigned     /TB/read_out
add wave -noupdate -color {Gold}        -label TB_ALU_Calculated -radix unsigned    /TB/alu_tb
add wave -noupdate -color {Lime}        -label TB_ALU_Readback   -radix unsigned    /TB/alu_out

# Waveform window formatting
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 220
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -timeline 1
configure wave -timelineunits us
update
WaveRestoreZoom {0 ps} {3000 us}
