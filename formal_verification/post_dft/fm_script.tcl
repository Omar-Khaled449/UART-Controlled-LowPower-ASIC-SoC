###################################################################
# Formality Equivalence Script: Post-DFT
###################################################################

set synopsys_auto_setup true
set_svf "SYS_TOP.svf"

# Reference Container (RTL)
read_sverilog -container Ref "uart_pkg.sv"
read_sverilog -container Ref "ALU.v"
read_sverilog -container Ref "reg_file.v"
read_sverilog -container Ref "clk_div.v"
read_sverilog -container Ref "CLKDIV_MUX.v"
read_sverilog -container Ref "CLK_GATE.v"
read_sverilog -container Ref "rst_sync.v"
read_sverilog -container Ref "Data_syn.v"
read_sverilog -container Ref "Pulse_gen.v"
read_sverilog -container Ref "FIFO_MEM_CNTRL.v"
read_sverilog -container Ref "FIFO_RD.v"
read_sverilog -container Ref "FIFO_WR.v"
read_sverilog -container Ref "DF_SYNC.v"
read_sverilog -container Ref "ASYNC_FIFO.v"
read_sverilog -container Ref "data_sampling.v"
read_sverilog -container Ref "deserializer.v"
read_sverilog -container Ref "edge_bit_cntr.v"
read_sverilog -container Ref "par_chck.sv"
read_sverilog -container Ref "stp_checker.v"
read_sverilog -container Ref "strt_checker.v"
read_sverilog -container Ref "UART_RX_FSM.sv"
read_sverilog -container Ref "RX_TOP.sv"
read_sverilog -container Ref "MUX.sv"
read_sverilog -container Ref "parity_calc.sv"
read_sverilog -container Ref "serializer.v"
read_sverilog -container Ref "UART_TX_FSM.sv"
read_sverilog -container Ref "TX_TOP.sv"
read_sverilog -container Ref "UART.sv"
read_sverilog -container Ref "SYS_CTRL.sv"
read_sverilog -container Ref "SYS_TOP.sv"

set_reference_design SYS_TOP
set_top SYS_TOP

# Implementation Container (Post-DFT Gate Netlist)
read_verilog -netlist -container Imp "netlists/SYS_TOP.v"

set_implementation_design SYS_TOP
set_top SYS_TOP

# Disable Scan Mode for Functional Equivalence
set_constant -type port Ref:/WORK/SYS_TOP/test_mode 0
set_constant -type port Ref:/WORK/SYS_TOP/SE        0
set_constant -type port Ref:/WORK/SYS_TOP/scan_rst  1
set_constant -type port Ref:/WORK/SYS_TOP/scan_clk  0
set_constant -type port Ref:/WORK/SYS_TOP/SI        0

set_constant -type port Imp:/WORK/SYS_TOP/test_mode 0
set_constant -type port Imp:/WORK/SYS_TOP/SE        0
set_constant -type port Imp:/WORK/SYS_TOP/scan_rst  1
set_constant -type port Imp:/WORK/SYS_TOP/scan_clk  0
set_constant -type port Imp:/WORK/SYS_TOP/SI        0

set_dont_verify_points -type port Ref:/WORK/SYS_TOP/SO
set_dont_verify_points -type port Imp:/WORK/SYS_TOP/SO

# Match & Verify
match
set successful [verify]
if {!$successful} {
  diagnose
  analyze_points -failing
}

report_passing_points > "reports/fm_passing_points.rpt"
report_failing_points > "reports/fm_failing_points.rpt"
