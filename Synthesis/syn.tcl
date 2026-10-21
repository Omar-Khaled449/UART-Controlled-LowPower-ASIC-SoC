####################################################################################
#                                 syn.tcl
#            Design Compiler Synthesis Script for SYS_TOP Module
####################################################################################

#===================================================================================
# 1. Define Top Module & Directories
#===================================================================================
set top_module SYS_TOP

# Create work directory and report/output directories
file mkdir ./work
file mkdir ./reports
file mkdir ./netlists
file mkdir ./ddc
file mkdir ./sdc

# Define active design library as uppercase WORK
define_design_lib WORK -path ./work

#===================================================================================
# 2. Setup Search Paths & Target/Link Libraries
#===================================================================================
lappend search_path [pwd]
lappend search_path ./rtl
lappend search_path ../rtl
lappend search_path ./std_cells
lappend search_path ../std_cells

# Define corner libraries
set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

# Standard cell target libraries
set target_library [list $SSLIB $TTLIB $FFLIB]

# DesignWare synthetic library (for arithmetic/multiplication/division)
set synthetic_library [list "dw_foundation.sldb"]

# Link libraries (including DesignWare)
set link_library [list * $SSLIB $TTLIB $FFLIB dw_foundation.sldb]

# Enable SVF recording for Formality Post-Synthesis verification
set_svf ./SYS_TOP.svf

#===================================================================================
# 3. Analyze RTL Files into Library WORK
#===================================================================================
puts "###############################################"
puts "############# Analyzing RTL Files #############"
puts "###############################################"

set file_format sverilog

analyze -format $file_format -work WORK uart_pkg.sv
analyze -format $file_format -work WORK ALU.v
analyze -format $file_format -work WORK reg_file.v
analyze -format $file_format -work WORK clk_div.v
analyze -format $file_format -work WORK CLKDIV_MUX.v
analyze -format $file_format -work WORK CLK_GATE.v
analyze -format $file_format -work WORK rst_sync.v
analyze -format $file_format -work WORK Data_syn.v
analyze -format $file_format -work WORK Pulse_gen.v
analyze -format $file_format -work WORK FIFO_MEM_CNTRL.v
analyze -format $file_format -work WORK FIFO_RD.v
analyze -format $file_format -work WORK FIFO_WR.v
analyze -format $file_format -work WORK DF_SYNC.v
analyze -format $file_format -work WORK ASYNC_FIFO.v
analyze -format $file_format -work WORK data_sampling.v
analyze -format verilog       -work WORK deserializer.v
analyze -format verilog       -work WORK edge_bit_cntr.v
analyze -format $file_format -work WORK par_chck.sv
analyze -format verilog       -work WORK stp_checker.v
analyze -format verilog       -work WORK strt_checker.v
analyze -format $file_format -work WORK UART_RX_FSM.sv
analyze -format $file_format -work WORK RX_TOP.sv
analyze -format $file_format -work WORK MUX.sv
analyze -format $file_format -work WORK parity_calc.sv
analyze -format verilog       -work WORK serializer.v
analyze -format $file_format -work WORK UART_TX_FSM.sv
analyze -format $file_format -work WORK TX_TOP.sv
analyze -format $file_format -work WORK UART.sv
analyze -format $file_format -work WORK SYS_CTRL.sv
analyze -format $file_format -work WORK SYS_TOP.sv

#===================================================================================
# 4. Elaborate Top-Level & Link
#===================================================================================
puts "###############################################"
puts "############# Elaborating SYS_TOP #############"
puts "###############################################"
elaborate $top_module -work WORK

current_design $top_module

puts "###############################################"
puts "######## Linking All The Design Parts #########"
puts "###############################################"
link

puts "###############################################"
puts "######## Checking Design Consistency ##########"
puts "###############################################"
check_design > reports/check_design.rpt

#===================================================================================
# 5. Define Path Groups for Timing Optimization
#===================================================================================
puts "###############################################"
puts "################ Path Groups ##################"
puts "###############################################"
group_path -name INREG   -from [all_inputs]
group_path -name REGOUT  -to   [all_outputs]
group_path -name INOUT   -from [all_inputs] -to [all_outputs]
group_path -name REG2REG -from [all_registers] -to [all_registers]

#===================================================================================
# 6. Apply Constraints
#===================================================================================
puts "###############################################"
puts "############ Sourcing cons.tcl ################"
puts "###############################################"
source -echo ./cons.tcl

puts "###############################################"
puts "############ Checking Timing Setup ############"
puts "###############################################"
check_timing > reports/check_timing.rpt

#===================================================================================
# 7. Synthesis Compilation & Scan Replacement Mapping
#===================================================================================
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"
compile -scan -map_effort high

#===================================================================================
# 8. Generate Reports
#===================================================================================
puts "###############################################"
puts "########### Generating Reports ################"
puts "###############################################"

# Timing reports: Setup (max delay) and Hold (min delay)
report_timing -delay_type max -max_paths 20 > reports/setup_timing.rpt
report_timing -delay_type min -max_paths 20 > reports/hold_timing.rpt

# Area, Power, Clock, and Quality of Results (QoR)
report_area -hierarchy                      > reports/area.rpt
report_power -hierarchy                     > reports/power.rpt
report_clock                                > reports/clock.rpt
report_constraint -all_violators            > reports/constraints.rpt
report_qor                                  > reports/qor.rpt

# Check for Latches & Loops
all_registers -level_sensitive              > reports/latches.rpt

#===================================================================================
# 9. Export Synthesized Netlist, DDC & Constraints
#===================================================================================
puts "###############################################"
puts "######### Exporting Netlist & Files ###########"
puts "###############################################"

# Turn off SVF recording
set_svf -off

# Avoid writing assign statements in netlist
change_names -hier -rule verilog

# Gate-level Verilog netlist (for Formality, Simulation, and PnR)
write_file -format verilog -hierarchy -output netlists/SYS_TOP.v

# Synopsys DDC format database
write_file -format ddc -hierarchy -output ddc/SYS_TOP.ddc

# Synopsys Design Constraints
write_sdc -nosplit sdc/SYS_TOP.sdc

puts "###############################################"
puts "######### Synthesis Run Completed! ############"
puts "###############################################"
