module Repeater_5( // @[:freechips.rocketchip.system.TinyConfig.fir@113101.2]
  input         clock, // @[:freechips.rocketchip.system.TinyConfig.fir@113102.4]
  input         reset, // @[:freechips.rocketchip.system.TinyConfig.fir@113103.4]
  input         io_repeat, // @[:freechips.rocketchip.system.TinyConfig.fir@113104.4]
  output        io_full, // @[:freechips.rocketchip.system.TinyConfig.fir@113104.4]
  output        io_enq_ready, // @[:freechips.rocketchip.system.TinyConfig.fir@113104.4]
  input         io_enq_valid, // @[:freechips.rocketchip.system.TinyConfig.fir@113104.4]
  input  [2:0]  io_enq_bits_opcode, // @[:freechips.rocketchip.system.TinyConfig.fir@113104.4]
  input  [2:0]  io_enq_bits_param, // @[:freechips.rocketchip.system.TinyConfig.fir@113104.4]
  input  [2:0]  io_enq_bits_size, // @[:freechips.rocketchip.system.TinyConfig.fir@113104.4]
  input  [4:0]  io_enq_bits_source, // @[:freechips.rocketchip.system.TinyConfig.fir@113104.4]
  input  [31:0] io_enq_bits_address, // @[:freechips.rocketchip.system.TinyConfig.fir@113104.4]
  input  [3:0]  io_enq_bits_mask, // @[:freechips.rocketchip.system.TinyConfig.fir@113104.4]
  input         io_deq_ready, // @[:freechips.rocketchip.system.TinyConfig.fir@113104.4]
  output        io_deq_valid, // @[:freechips.rocketchip.system.TinyConfig.fir@113104.4]
  output [2:0]  io_deq_bits_opcode, // @[:freechips.rocketchip.system.TinyConfig.fir@113104.4]
  output [2:0]  io_deq_bits_param, // @[:freechips.rocketchip.system.TinyConfig.fir@113104.4]
  output [2:0]  io_deq_bits_size, // @[:freechips.rocketchip.system.TinyConfig.fir@113104.4]
  output [4:0]  io_deq_bits_source, // @[:freechips.rocketchip.system.TinyConfig.fir@113104.4]
  output [31:0] io_deq_bits_address, // @[:freechips.rocketchip.system.TinyConfig.fir@113104.4]
  output [3:0]  io_deq_bits_mask // @[:freechips.rocketchip.system.TinyConfig.fir@113104.4]
);
  reg  full; // @[Repeater.scala 18:21:freechips.rocketchip.system.TinyConfig.fir@113109.4]
  reg [31:0] _RAND_0;
  reg [2:0] saved_opcode; // @[Repeater.scala 19:18:freechips.rocketchip.system.TinyConfig.fir@113110.4]
  reg [31:0] _RAND_1;
  reg [2:0] saved_param; // @[Repeater.scala 19:18:freechips.rocketchip.system.TinyConfig.fir@113110.4]
  reg [31:0] _RAND_2;
  reg [2:0] saved_size; // @[Repeater.scala 19:18:freechips.rocketchip.system.TinyConfig.fir@113110.4]
  reg [31:0] _RAND_3;
  reg [4:0] saved_source; // @[Repeater.scala 19:18:freechips.rocketchip.system.TinyConfig.fir@113110.4]
  reg [31:0] _RAND_4;
  reg [31:0] saved_address; // @[Repeater.scala 19:18:freechips.rocketchip.system.TinyConfig.fir@113110.4]
  reg [31:0] _RAND_5;
  reg [3:0] saved_mask; // @[Repeater.scala 19:18:freechips.rocketchip.system.TinyConfig.fir@113110.4]
  reg [31:0] _RAND_6;
  wire  _T_1; // @[Repeater.scala 23:35:freechips.rocketchip.system.TinyConfig.fir@113113.4]
  wire  _T_4; // @[Decoupled.scala 37:37:freechips.rocketchip.system.TinyConfig.fir@113119.4]
  wire  _T_5; // @[Repeater.scala 27:23:freechips.rocketchip.system.TinyConfig.fir@113120.4]
  wire  _T_6; // @[Decoupled.scala 37:37:freechips.rocketchip.system.TinyConfig.fir@113125.4]
  wire  _T_7; // @[Repeater.scala 28:26:freechips.rocketchip.system.TinyConfig.fir@113126.4]
  wire  _T_8; // @[Repeater.scala 28:23:freechips.rocketchip.system.TinyConfig.fir@113127.4]
  assign _T_1 = full == 1'h0; // @[Repeater.scala 23:35:freechips.rocketchip.system.TinyConfig.fir@113113.4]
  assign _T_4 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.TinyConfig.fir@113119.4]
  assign _T_5 = _T_4 & io_repeat; // @[Repeater.scala 27:23:freechips.rocketchip.system.TinyConfig.fir@113120.4]
  assign _T_6 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.TinyConfig.fir@113125.4]
  assign _T_7 = io_repeat == 1'h0; // @[Repeater.scala 28:26:freechips.rocketchip.system.TinyConfig.fir@113126.4]
  assign _T_8 = _T_6 & _T_7; // @[Repeater.scala 28:23:freechips.rocketchip.system.TinyConfig.fir@113127.4]
  assign io_full = full; // @[Repeater.scala 25:11:freechips.rocketchip.system.TinyConfig.fir@113118.4]
  assign io_enq_ready = io_deq_ready & _T_1; // @[Repeater.scala 23:16:freechips.rocketchip.system.TinyConfig.fir@113115.4]
  assign io_deq_valid = io_enq_valid | full; // @[Repeater.scala 22:16:freechips.rocketchip.system.TinyConfig.fir@113112.4]
  assign io_deq_bits_opcode = full ? saved_opcode : io_enq_bits_opcode; // @[Repeater.scala 24:15:freechips.rocketchip.system.TinyConfig.fir@113117.4]
  assign io_deq_bits_param = full ? saved_param : io_enq_bits_param; // @[Repeater.scala 24:15:freechips.rocketchip.system.TinyConfig.fir@113117.4]
  assign io_deq_bits_size = full ? saved_size : io_enq_bits_size; // @[Repeater.scala 24:15:freechips.rocketchip.system.TinyConfig.fir@113117.4]
  assign io_deq_bits_source = full ? saved_source : io_enq_bits_source; // @[Repeater.scala 24:15:freechips.rocketchip.system.TinyConfig.fir@113117.4]
  assign io_deq_bits_address = full ? saved_address : io_enq_bits_address; // @[Repeater.scala 24:15:freechips.rocketchip.system.TinyConfig.fir@113117.4]
  assign io_deq_bits_mask = full ? saved_mask : io_enq_bits_mask; // @[Repeater.scala 24:15:freechips.rocketchip.system.TinyConfig.fir@113117.4]
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
  full = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  saved_opcode = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  saved_param = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  saved_size = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  saved_source = _RAND_4[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  saved_address = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  saved_mask = _RAND_6[3:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (reset) begin
      full <= 1'h0;
    end else begin
      if (_T_8) begin
        full <= 1'h0;
      end else begin
        if (_T_5) begin
          full <= 1'h1;
        end
      end
    end
    if (_T_5) begin
      saved_opcode <= io_enq_bits_opcode;
    end
    if (_T_5) begin
      saved_param <= io_enq_bits_param;
    end
    if (_T_5) begin
      saved_size <= io_enq_bits_size;
    end
    if (_T_5) begin
      saved_source <= io_enq_bits_source;
    end
    if (_T_5) begin
      saved_address <= io_enq_bits_address;
    end
    if (_T_5) begin
      saved_mask <= io_enq_bits_mask;
    end
  end
endmodule