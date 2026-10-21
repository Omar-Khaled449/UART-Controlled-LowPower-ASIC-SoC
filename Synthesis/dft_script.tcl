####################################################################################
#                              dft_script.tcl
#            Design Compiler DFT Synthesis & Scan Insertion Script
####################################################################################

########################### Define Top Module ############################
set top_module SYS_TOP

##################### Define Working Library Directory ######################
file mkdir ./work
file mkdir ./reports
file mkdir ./netlists
file mkdir ./sdc
file mkdir ./sdf

define_design_lib WORK -path ./work

############################# Formality Setup File ##########################
set_svf $top_module.svf

################## Design Compiler Library Files Setup ######################
puts "###########################################"
puts "#      Setting Design Libraries           #"
puts "###########################################"

lappend search_path [pwd]
lappend search_path ./rtl
lappend search_path ../rtl
lappend search_path ./std_cells
lappend search_path ../std_cells

set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## DesignWare Synthetic Library
set synthetic_library [list "dw_foundation.sldb"]

## Link Libraries
set link_library [list * $SSLIB $TTLIB $FFLIB dw_foundation.sldb]

######################## Reading RTL Files #################################
puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

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

###################### Elaborate Top Module #################################
puts "###########################################"
puts "#            Elaborating SYS_TOP          #"
puts "###########################################"

elaborate $top_module -work WORK
current_design $top_module

#################### Linking All The Design Parts #########################
puts "###############################################"
puts "######## Linking All The Design Parts #########"
puts "###############################################"
link 

check_design > reports/check_design.rpt

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints ###############"
puts "###############################################"

if {[file exists ./cons_dft.tcl]} {
    source -echo ./cons_dft.tcl
} else {
    source -echo ./cons.tcl
}

#################### Architecture Scan Chains #########################
puts "###############################################"
puts "############ Configure Scan Chains ############"
puts "###############################################"

# Note on chain count: 1 chain because the top-level has 1 SI port and 1 SO port.
set_scan_configuration -chain_count 1 \
                       -clock_mixing no_mix \
                       -style multiplexed_flip_flop \
                       -replace true \
                       -max_length 100

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Compile -scan (Mapping) ############"
puts "###############################################"

compile -scan

################################################################### 
# Setting Test Timing Variables
################################################################### 

# Preclock Measure Protocol (default protocol)
set test_default_period 100
set test_default_delay 0
set test_default_bidir_delay 0
set test_default_strobe 20
set test_default_strobe_width 0

########################## Define DFT Signals ##########################
puts "###############################################"
puts "############ Define DFT Signals ###############"
puts "###############################################"

set_dft_signal -port [get_ports scan_clk]  -type ScanClock   -view existing_dft  -timing {30 60}
set_dft_signal -port [get_ports scan_rst]  -type Reset       -view existing_dft  -active_state 0
set_dft_signal -port [get_ports test_mode] -type Constant    -view existing_dft  -active_state 1 
set_dft_signal -port [get_ports test_mode] -type TestMode    -view spec          -active_state 1 
set_dft_signal -port [get_ports SE]        -type ScanEnable  -view spec          -active_state 1 -usage scan
set_dft_signal -port [get_ports SI]        -type ScanDataIn  -view spec 
set_dft_signal -port [get_ports SO]        -type ScanDataOut -view spec  

############################# Create Test Protocol #####################
create_test_protocol

###################### Pre-DFT Design Rule Checking ####################
dft_drc -verbose
dft_drc -verbose > reports/dft_drc_pre.rpt

############################# Preview DFT ##############################
preview_dft -show scan_summary
preview_dft -show scan_summary > reports/scan_summary.rpt

############################# Insert DFT ###############################
insert_dft

######################## Optimize Logic post DFT #######################
puts "###############################################"
puts "######## Incremental Scan Optimization ########"
puts "###############################################"

compile -scan -incremental

###################### Design Rule Checking post DFT ###################
dft_drc -verbose -coverage_estimate
dft_drc -verbose -coverage_estimate > reports/dft_drc_post.rpt

##################### Close Formality Setup file ###########################
set_svf -off

#############################################################################
# Write out files
#############################################################################
change_names -hier -rule verilog

write_file -format ddc -hierarchy -output netlists/$top_module.ddc
write_file -format verilog -hierarchy -output netlists/$top_module.v
write_sdf  sdf/$top_module.sdf
write_sdc  -nosplit sdc/$top_module.sdc
write_test_protocol -output netlists/$top_module.spf

####################### Reporting ##########################################
report_area -hierarchy                      > reports/area.rpt
report_power -hierarchy                     > reports/power.rpt
report_timing -delay_type min -max_paths 20 > reports/hold.rpt
report_timing -delay_type max -max_paths 20 > reports/setup.rpt
report_clock -attributes                    > reports/clocks.rpt
report_constraint -all_violators -nosplit   > reports/constraints.rpt
report_scan_chain                           > reports/scan_chains.rpt

puts "#################################################################"
puts "############# DFT FLOW COMPLETED SUCCESSFULLY ###################"
puts "#################################################################"
