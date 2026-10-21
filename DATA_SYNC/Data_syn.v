module Data_syn #(
    parameter NUM_STAGES = 2,
    parameter BUS_WIDTH  = 8
) (
    input  wire                 CLK,
    input  wire                 RST,
    input  wire                 bus_enable,
    input  wire [BUS_WIDTH-1:0] unsync_bus,
    output reg                  enable_pulse,
    output reg  [BUS_WIDTH-1:0] sync_bus
);

  // NUM_STAGES for multi-flop synchronization + 1 extra stage for edge detection
  reg  [NUM_STAGES:0] sync_reg;
  wire                pulse_gen;

  always @(posedge CLK or negedge RST) begin
    if (!RST) begin
      sync_reg     <= 'd0;
      sync_bus     <= 'd0;
      enable_pulse <= 1'b0;
    end else begin
      /////////////////////////////////////
      ////////// SHIFT BUS_ENABLE /////////
      /////////////////////////////////////
      sync_reg <= {sync_reg[NUM_STAGES-1:0], bus_enable};

      ///////////////////////////////////////////////////
      ////////// SAMPLE DATA, GEN ENABLE_PULSE //////////
      ///////////////////////////////////////////////////
      if (pulse_gen) begin
        sync_bus     <= unsync_bus;
        enable_pulse <= 1'b1;
      end else begin
        enable_pulse <= 1'b0;
      end
    end
  end

  ///////////////////////////////////////
  //////// GENERATE ENABLE_PULSE ////////
  ///////////////////////////////////////
  // Rising-edge detector on the synchronized output
  assign pulse_gen = sync_reg[NUM_STAGES-1] && !sync_reg[NUM_STAGES];

endmodule
