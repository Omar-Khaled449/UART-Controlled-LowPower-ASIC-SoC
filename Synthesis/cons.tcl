####################################################################################
#                                cons.tcl
#            Design Compiler Constraints for SYS_TOP Synthesis
#            - REF_CLK: 100 MHz (Period = 10.0 ns)
#            - UART_CLK: 3.686 MHz (Period = 271.2968 ns)
#            - Prescale between RX and TX = 8 (TX_CLK divide_by = 8)
####################################################################################

puts "###############################################"
puts "############ Applying Design Constraints #######"
puts "###############################################"

# Prevent assign statements in the generated netlist
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

#===================================================================================
# 1. Clock Periods Calculation
#===================================================================================
# REF_CLK: 100 MHz -> Period = 10 ns
set REF_CLK_PER 10.0

# UART_CLK: 3.686 MHz -> Period = 271.2968 ns
set UART_CLK_PER 271.2968

# CLK_DIV_RATIO:
set CLK_DIV_RATIO 32

# TX_CLK runs at the baud rate (8x slower than the RX oversampling clock)
set TX_CLK_PER [expr {$UART_CLK_PER * $CLK_DIV_RATIO}]

# Prescale between RX and TX is 8:
set PRESCALE_RX_TX 8

# RX_CLK: master_clk = UART_CLK, div_ratio = 1
set RX_CLK_PER [expr {$TX_CLK_PER / $PRESCALE_RX_TX}]

#===================================================================================
# 2. Master Clocks Definition
#===================================================================================
create_clock -name REF_CLK  -period $REF_CLK_PER  [get_ports REF_CLK]
create_clock -name UART_CLK -period $UART_CLK_PER [get_ports UART_CLK]

#===================================================================================
# 3. Generated Clocks Definition
#===================================================================================
# ALU_CLK: master_clk = REF_CLK, div_ratio = 1 (from Clock Gating Cell)
create_generated_clock -name ALU_CLK \
                       -source [get_ports REF_CLK] \
                       -master_clock REF_CLK \
                       -divide_by 1 \
                       [get_pins clk_gate_u/GATED_CLK]

# RX_CLK: master_clk = UART_CLK, div_ratio = 1
create_generated_clock -name RX_CLK \
                       -source [get_ports UART_CLK] \
                       -master_clock UART_CLK \
                       -divide_by 1 \
                       [get_pins clk_div_RX_u/o_div_clk]

# TX_CLK: master_clk = UART_CLK, div_ratio = 8 (Prescale between RX and TX is 8)
create_generated_clock -name TX_CLK \
                       -source [get_ports UART_CLK] \
                       -master_clock UART_CLK \
                       -divide_by $PRESCALE_RX_TX \
                       [get_pins clk_div_TX_u/o_div_clk]

set ALL_CLOCKS    [get_clocks "REF_CLK UART_CLK ALU_CLK RX_CLK TX_CLK"]
set MASTER_CLOCKS [get_clocks "REF_CLK UART_CLK"]

#===================================================================================
# 4. Clock Uncertainty & Transition
#===================================================================================
# Clock uncertainty for setup: 0.2 ns (master & generated clocks)
set_clock_uncertainty -setup 0.2 $ALL_CLOCKS

# Clock uncertainty for hold: 0.1 ns (master & generated clocks)
set_clock_uncertainty -hold 0.1 $ALL_CLOCKS

# Clock transition: 0.05 ns for all master clocks
set_clock_transition 0.05 $MASTER_CLOCKS

#===================================================================================
# 5. Don't Touch Network
#===================================================================================
# Set don't touch on all master and generated clock networks
set_dont_touch_network $ALL_CLOCKS

# Set don't touch on primary reset network
set_dont_touch_network [get_ports RST_N]

#===================================================================================
# 6. Clock Grouping (Asynchronous Clock Domains)
#===================================================================================
set_clock_groups -asynchronous \
                 -group [get_clocks "REF_CLK ALU_CLK"] \
                 -group [get_clocks "UART_CLK RX_CLK TX_CLK"]

#===================================================================================
# 7. Input Delays (20% of respective clock period, except CLK & RST)
#===================================================================================
# Input port: UART_RX_IN belongs to the UART RX domain
set in_delay_rx [expr {0.2 * $RX_CLK_PER}]
set_input_delay $in_delay_rx -clock RX_CLK [get_ports UART_RX_IN]

#===================================================================================
# 8. Output Delays (20% of respective clock period)
#===================================================================================
# Output port: UART_TX_O belongs to TX_CLK domain (20% of TX_CLK period)
set out_delay_tx [expr {0.2 * $TX_CLK_PER}]
set_output_delay $out_delay_tx -clock TX_CLK [get_ports UART_TX_O]

# Output ports: framing_error and parity_error belong to RX_CLK domain (20% of RX_CLK period)
set out_delay_rx [expr {0.2 * $RX_CLK_PER}]
set_output_delay $out_delay_rx -clock RX_CLK [get_ports "framing_error parity_error"]

#===================================================================================
# 9. Driving Cell for Inputs (Except CLK & RST)
#===================================================================================
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c \
                 -lib_cell BUFX2M \
                 -pin Y \
                 [get_ports UART_RX_IN]

#===================================================================================
# 10. Output Load
#===================================================================================
# Add load of 0.1 pF on all output ports
set_load 0.1 [all_outputs]

#===================================================================================
# 11. Operating Conditions & Wire Load Model
#===================================================================================
set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" \
                         -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" \
                         -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" \
                         -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

set_wire_load_model -name tsmc13_wl10 \
                    -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c

puts "###############################################"
puts "####### Constraints Successfully Applied ######"
puts "###############################################"
