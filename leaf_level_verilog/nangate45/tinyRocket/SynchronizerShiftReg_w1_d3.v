module SynchronizerShiftReg_w1_d3( // @[:freechips.rocketchip.system.TinyConfig.fir@115270.2]
  input   clock, // @[:freechips.rocketchip.system.TinyConfig.fir@115271.4]
  input   io_d, // @[:freechips.rocketchip.system.TinyConfig.fir@115273.4]
  output  io_q // @[:freechips.rocketchip.system.TinyConfig.fir@115273.4]
);
  reg  sync_0; // @[ShiftReg.scala 114:16:freechips.rocketchip.system.TinyConfig.fir@115278.4]
  reg [31:0] _RAND_0;
  reg  sync_1; // @[ShiftReg.scala 114:16:freechips.rocketchip.system.TinyConfig.fir@115279.4]
  reg [31:0] _RAND_1;
  reg  sync_2; // @[ShiftReg.scala 114:16:freechips.rocketchip.system.TinyConfig.fir@115280.4]
  reg [31:0] _RAND_2;
  assign io_q = sync_0; // @[ShiftReg.scala 123:8:freechips.rocketchip.system.TinyConfig.fir@115284.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  sync_0 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  sync_1 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  sync_2 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    sync_0 <= sync_1;
    sync_1 <= sync_2;
    sync_2 <= io_d;
  end
endmodule