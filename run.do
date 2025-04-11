vlib work
vlog uart_tx.v
vlog uart_tb.sv
vsim -voptargs=+acc uart_tb
add wave -recursive *
run -all
