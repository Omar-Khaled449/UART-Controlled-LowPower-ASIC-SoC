module Pulse_gen (
    input  wire CLK,       // Connected to TX_CLK
    input  wire RST,       // Connected to RST_SYNC_2
    input  wire LVL_SIG,   // Connected to UART_TX Busy
    output wire PULSE_SIG  // Connected to ASYNC_FIFO R_INC
);

  reg lvl_q;

  // Registered delayed level
  always @(posedge CLK or negedge RST) begin
    if (!RST) begin
      lvl_q <= 1'b0;
    end else begin
      lvl_q <= LVL_SIG;
    end
  end

  // Combinational falling-edge pulse (asserts immediately when LVL_SIG drops)
  assign PULSE_SIG = lvl_q && !LVL_SIG;

endmodule
