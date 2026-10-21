# Change directory to the folder where this script is located
cd [file dirname [file normalize [info script]]]

# Quit previous simulation if active
quit -sim

# Create and map working library
vlib work
vmap work work

# Compile packages first
vlog -work work -sv uart_pkg.sv

# Compile all Verilog and SystemVerilog files
vlog -work work *.v
vlog -work work -sv *.sv

# Elaborate and load top-level simulation with full access
vsim -voptargs="+acc" work.TB -do wave.do

# Run simulation
run -all
