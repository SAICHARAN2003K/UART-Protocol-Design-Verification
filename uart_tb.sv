module uart_tb;
  logic clk = 0, rst = 0, tx_start = 0;
  logic [7:0] data;
  logic tx_line, tx_done;

  uart_tx dut (.clk(clk), .rst(rst), .tx_start(tx_start), .data(data), .tx_line(tx_line), .tx_done(tx_done));

  always #5 clk = ~clk;

  initial begin
    rst = 1; #10; rst = 0;
    repeat (10) begin
      @(posedge clk);
      data = $urandom_range(0, 255);
      tx_start = 1; @(posedge clk);
      tx_start = 0;
      wait(tx_done);
    end
    $finish;
  end

  // Coverage
  covergroup uart_cov;
    coverpoint data;
  endgroup
  uart_cov uc = new();

endmodule
