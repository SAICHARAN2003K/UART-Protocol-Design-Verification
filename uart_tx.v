module uart_tx #(parameter CLK_PER_BIT = 87) (
  input  logic clk, rst, tx_start,
  input  logic [7:0] data,
  output logic tx_line,
  output logic tx_done
);
  // Simplified FSM UART TX
  // Implement: IDLE → START → DATA → STOP
endmodule
