module ShiftQueue( // @[:freechips.rocketchip.system.TinyConfig.fir@109889.2]
  input         clock, // @[:freechips.rocketchip.system.TinyConfig.fir@109890.4]
  input         reset, // @[:freechips.rocketchip.system.TinyConfig.fir@109891.4]
  output        io_enq_ready, // @[:freechips.rocketchip.system.TinyConfig.fir@109892.4]
  input         io_enq_valid, // @[:freechips.rocketchip.system.TinyConfig.fir@109892.4]
  input  [31:0] io_enq_bits_pc, // @[:freechips.rocketchip.system.TinyConfig.fir@109892.4]
  input  [31:0] io_enq_bits_data, // @[:freechips.rocketchip.system.TinyConfig.fir@109892.4]
  input         io_enq_bits_xcpt_ae_inst, // @[:freechips.rocketchip.system.TinyConfig.fir@109892.4]
  input         io_enq_bits_replay, // @[:freechips.rocketchip.system.TinyConfig.fir@109892.4]
  input         io_deq_ready, // @[:freechips.rocketchip.system.TinyConfig.fir@109892.4]
  output        io_deq_valid, // @[:freechips.rocketchip.system.TinyConfig.fir@109892.4]
  output [31:0] io_deq_bits_pc, // @[:freechips.rocketchip.system.TinyConfig.fir@109892.4]
  output [31:0] io_deq_bits_data, // @[:freechips.rocketchip.system.TinyConfig.fir@109892.4]
  output        io_deq_bits_xcpt_ae_inst, // @[:freechips.rocketchip.system.TinyConfig.fir@109892.4]
  output        io_deq_bits_replay, // @[:freechips.rocketchip.system.TinyConfig.fir@109892.4]
  output [4:0]  io_mask // @[:freechips.rocketchip.system.TinyConfig.fir@109892.4]
);
  reg  _T_1_0; // @[ShiftQueue.scala 20:30:freechips.rocketchip.system.TinyConfig.fir@109904.4]
  reg [31:0] _RAND_0;
  reg  _T_1_1; // @[ShiftQueue.scala 20:30:freechips.rocketchip.system.TinyConfig.fir@109904.4]
  reg [31:0] _RAND_1;
  reg  _T_1_2; // @[ShiftQueue.scala 20:30:freechips.rocketchip.system.TinyConfig.fir@109904.4]
  reg [31:0] _RAND_2;
  reg  _T_1_3; // @[ShiftQueue.scala 20:30:freechips.rocketchip.system.TinyConfig.fir@109904.4]
  reg [31:0] _RAND_3;
  reg  _T_1_4; // @[ShiftQueue.scala 20:30:freechips.rocketchip.system.TinyConfig.fir@109904.4]
  reg [31:0] _RAND_4;
  reg [31:0] _T_2_0_pc; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.TinyConfig.fir@109905.4]
  reg [31:0] _RAND_5;
  reg [31:0] _T_2_0_data; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.TinyConfig.fir@109905.4]
  reg [31:0] _RAND_6;
  reg  _T_2_0_xcpt_ae_inst; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.TinyConfig.fir@109905.4]
  reg [31:0] _RAND_7;
  reg  _T_2_0_replay; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.TinyConfig.fir@109905.4]
  reg [31:0] _RAND_8;
  reg [31:0] _T_2_1_pc; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.TinyConfig.fir@109905.4]
  reg [31:0] _RAND_9;
  reg [31:0] _T_2_1_data; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.TinyConfig.fir@109905.4]
  reg [31:0] _RAND_10;
  reg  _T_2_1_xcpt_ae_inst; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.TinyConfig.fir@109905.4]
  reg [31:0] _RAND_11;
  reg  _T_2_1_replay; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.TinyConfig.fir@109905.4]
  reg [31:0] _RAND_12;
  reg [31:0] _T_2_2_pc; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.TinyConfig.fir@109905.4]
  reg [31:0] _RAND_13;
  reg [31:0] _T_2_2_data; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.TinyConfig.fir@109905.4]
  reg [31:0] _RAND_14;
  reg  _T_2_2_xcpt_ae_inst; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.TinyConfig.fir@109905.4]
  reg [31:0] _RAND_15;
  reg  _T_2_2_replay; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.TinyConfig.fir@109905.4]
  reg [31:0] _RAND_16;
  reg [31:0] _T_2_3_pc; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.TinyConfig.fir@109905.4]
  reg [31:0] _RAND_17;
  reg [31:0] _T_2_3_data; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.TinyConfig.fir@109905.4]
  reg [31:0] _RAND_18;
  reg  _T_2_3_xcpt_ae_inst; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.TinyConfig.fir@109905.4]
  reg [31:0] _RAND_19;
  reg  _T_2_3_replay; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.TinyConfig.fir@109905.4]
  reg [31:0] _RAND_20;
  reg [31:0] _T_2_4_pc; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.TinyConfig.fir@109905.4]
  reg [31:0] _RAND_21;
  reg [31:0] _T_2_4_data; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.TinyConfig.fir@109905.4]
  reg [31:0] _RAND_22;
  reg  _T_2_4_xcpt_ae_inst; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.TinyConfig.fir@109905.4]
  reg [31:0] _RAND_23;
  reg  _T_2_4_replay; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.TinyConfig.fir@109905.4]
  reg [31:0] _RAND_24;
  wire  _T_4; // @[Decoupled.scala 37:37:freechips.rocketchip.system.TinyConfig.fir@109907.4]
  wire  _T_6; // @[ShiftQueue.scala 29:45:freechips.rocketchip.system.TinyConfig.fir@109909.4]
  wire  _T_7; // @[ShiftQueue.scala 29:28:freechips.rocketchip.system.TinyConfig.fir@109910.4]
  wire  _T_10; // @[ShiftQueue.scala 30:48:freechips.rocketchip.system.TinyConfig.fir@109913.4]
  wire  _T_11; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.TinyConfig.fir@109914.4]
  wire  _T_12; // @[ShiftQueue.scala 28:10:freechips.rocketchip.system.TinyConfig.fir@109915.4]
  wire  _T_19; // @[ShiftQueue.scala 36:45:freechips.rocketchip.system.TinyConfig.fir@109925.4]
  wire  _T_24; // @[ShiftQueue.scala 29:45:freechips.rocketchip.system.TinyConfig.fir@109931.4]
  wire  _T_25; // @[ShiftQueue.scala 29:28:freechips.rocketchip.system.TinyConfig.fir@109932.4]
  wire  _T_28; // @[ShiftQueue.scala 30:48:freechips.rocketchip.system.TinyConfig.fir@109935.4]
  wire  _T_29; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.TinyConfig.fir@109936.4]
  wire  _T_30; // @[ShiftQueue.scala 28:10:freechips.rocketchip.system.TinyConfig.fir@109937.4]
  wire  _T_37; // @[ShiftQueue.scala 36:45:freechips.rocketchip.system.TinyConfig.fir@109947.4]
  wire  _T_42; // @[ShiftQueue.scala 29:45:freechips.rocketchip.system.TinyConfig.fir@109953.4]
  wire  _T_43; // @[ShiftQueue.scala 29:28:freechips.rocketchip.system.TinyConfig.fir@109954.4]
  wire  _T_46; // @[ShiftQueue.scala 30:48:freechips.rocketchip.system.TinyConfig.fir@109957.4]
  wire  _T_47; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.TinyConfig.fir@109958.4]
  wire  _T_48; // @[ShiftQueue.scala 28:10:freechips.rocketchip.system.TinyConfig.fir@109959.4]
  wire  _T_55; // @[ShiftQueue.scala 36:45:freechips.rocketchip.system.TinyConfig.fir@109969.4]
  wire  _T_60; // @[ShiftQueue.scala 29:45:freechips.rocketchip.system.TinyConfig.fir@109975.4]
  wire  _T_61; // @[ShiftQueue.scala 29:28:freechips.rocketchip.system.TinyConfig.fir@109976.4]
  wire  _T_64; // @[ShiftQueue.scala 30:48:freechips.rocketchip.system.TinyConfig.fir@109979.4]
  wire  _T_65; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.TinyConfig.fir@109980.4]
  wire  _T_66; // @[ShiftQueue.scala 28:10:freechips.rocketchip.system.TinyConfig.fir@109981.4]
  wire  _T_73; // @[ShiftQueue.scala 36:45:freechips.rocketchip.system.TinyConfig.fir@109991.4]
  wire  _T_77; // @[ShiftQueue.scala 29:45:freechips.rocketchip.system.TinyConfig.fir@109996.4]
  wire  _T_81; // @[ShiftQueue.scala 30:48:freechips.rocketchip.system.TinyConfig.fir@110000.4]
  wire  _T_82; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.TinyConfig.fir@110001.4]
  wire  _T_83; // @[ShiftQueue.scala 28:10:freechips.rocketchip.system.TinyConfig.fir@110002.4]
  wire  _T_90; // @[ShiftQueue.scala 36:45:freechips.rocketchip.system.TinyConfig.fir@110012.4]
  wire [1:0] _T_94; // @[ShiftQueue.scala 52:20:freechips.rocketchip.system.TinyConfig.fir@110026.4]
  wire [2:0] _T_96; // @[ShiftQueue.scala 52:20:freechips.rocketchip.system.TinyConfig.fir@110028.4]
  assign _T_4 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.TinyConfig.fir@109907.4]
  assign _T_6 = _T_4 & _T_1_0; // @[ShiftQueue.scala 29:45:freechips.rocketchip.system.TinyConfig.fir@109909.4]
  assign _T_7 = _T_1_1 | _T_6; // @[ShiftQueue.scala 29:28:freechips.rocketchip.system.TinyConfig.fir@109910.4]
  assign _T_10 = _T_1_0 == 1'h0; // @[ShiftQueue.scala 30:48:freechips.rocketchip.system.TinyConfig.fir@109913.4]
  assign _T_11 = _T_4 & _T_10; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.TinyConfig.fir@109914.4]
  assign _T_12 = io_deq_ready ? _T_7 : _T_11; // @[ShiftQueue.scala 28:10:freechips.rocketchip.system.TinyConfig.fir@109915.4]
  assign _T_19 = _T_4 | _T_1_0; // @[ShiftQueue.scala 36:45:freechips.rocketchip.system.TinyConfig.fir@109925.4]
  assign _T_24 = _T_4 & _T_1_1; // @[ShiftQueue.scala 29:45:freechips.rocketchip.system.TinyConfig.fir@109931.4]
  assign _T_25 = _T_1_2 | _T_24; // @[ShiftQueue.scala 29:28:freechips.rocketchip.system.TinyConfig.fir@109932.4]
  assign _T_28 = _T_1_1 == 1'h0; // @[ShiftQueue.scala 30:48:freechips.rocketchip.system.TinyConfig.fir@109935.4]
  assign _T_29 = _T_6 & _T_28; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.TinyConfig.fir@109936.4]
  assign _T_30 = io_deq_ready ? _T_25 : _T_29; // @[ShiftQueue.scala 28:10:freechips.rocketchip.system.TinyConfig.fir@109937.4]
  assign _T_37 = _T_6 | _T_1_1; // @[ShiftQueue.scala 36:45:freechips.rocketchip.system.TinyConfig.fir@109947.4]
  assign _T_42 = _T_4 & _T_1_2; // @[ShiftQueue.scala 29:45:freechips.rocketchip.system.TinyConfig.fir@109953.4]
  assign _T_43 = _T_1_3 | _T_42; // @[ShiftQueue.scala 29:28:freechips.rocketchip.system.TinyConfig.fir@109954.4]
  assign _T_46 = _T_1_2 == 1'h0; // @[ShiftQueue.scala 30:48:freechips.rocketchip.system.TinyConfig.fir@109957.4]
  assign _T_47 = _T_24 & _T_46; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.TinyConfig.fir@109958.4]
  assign _T_48 = io_deq_ready ? _T_43 : _T_47; // @[ShiftQueue.scala 28:10:freechips.rocketchip.system.TinyConfig.fir@109959.4]
  assign _T_55 = _T_24 | _T_1_2; // @[ShiftQueue.scala 36:45:freechips.rocketchip.system.TinyConfig.fir@109969.4]
  assign _T_60 = _T_4 & _T_1_3; // @[ShiftQueue.scala 29:45:freechips.rocketchip.system.TinyConfig.fir@109975.4]
  assign _T_61 = _T_1_4 | _T_60; // @[ShiftQueue.scala 29:28:freechips.rocketchip.system.TinyConfig.fir@109976.4]
  assign _T_64 = _T_1_3 == 1'h0; // @[ShiftQueue.scala 30:48:freechips.rocketchip.system.TinyConfig.fir@109979.4]
  assign _T_65 = _T_42 & _T_64; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.TinyConfig.fir@109980.4]
  assign _T_66 = io_deq_ready ? _T_61 : _T_65; // @[ShiftQueue.scala 28:10:freechips.rocketchip.system.TinyConfig.fir@109981.4]
  assign _T_73 = _T_42 | _T_1_3; // @[ShiftQueue.scala 36:45:freechips.rocketchip.system.TinyConfig.fir@109991.4]
  assign _T_77 = _T_4 & _T_1_4; // @[ShiftQueue.scala 29:45:freechips.rocketchip.system.TinyConfig.fir@109996.4]
  assign _T_81 = _T_1_4 == 1'h0; // @[ShiftQueue.scala 30:48:freechips.rocketchip.system.TinyConfig.fir@110000.4]
  assign _T_82 = _T_60 & _T_81; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.TinyConfig.fir@110001.4]
  assign _T_83 = io_deq_ready ? _T_77 : _T_82; // @[ShiftQueue.scala 28:10:freechips.rocketchip.system.TinyConfig.fir@110002.4]
  assign _T_90 = _T_60 | _T_1_4; // @[ShiftQueue.scala 36:45:freechips.rocketchip.system.TinyConfig.fir@110012.4]
  assign _T_94 = {_T_1_1,_T_1_0}; // @[ShiftQueue.scala 52:20:freechips.rocketchip.system.TinyConfig.fir@110026.4]
  assign _T_96 = {_T_1_4,_T_1_3,_T_1_2}; // @[ShiftQueue.scala 52:20:freechips.rocketchip.system.TinyConfig.fir@110028.4]
  assign io_enq_ready = _T_1_4 == 1'h0; // @[ShiftQueue.scala 39:16:freechips.rocketchip.system.TinyConfig.fir@110016.4]
  assign io_deq_valid = io_enq_valid ? 1'h1 : _T_1_0; // @[ShiftQueue.scala 40:16:freechips.rocketchip.system.TinyConfig.fir@110017.4 ShiftQueue.scala 44:40:freechips.rocketchip.system.TinyConfig.fir@110020.6]
  assign io_deq_bits_pc = _T_10 ? io_enq_bits_pc : _T_2_0_pc; // @[ShiftQueue.scala 41:15:freechips.rocketchip.system.TinyConfig.fir@110018.4 ShiftQueue.scala 45:36:freechips.rocketchip.system.TinyConfig.fir@110024.6]
  assign io_deq_bits_data = _T_10 ? io_enq_bits_data : _T_2_0_data; // @[ShiftQueue.scala 41:15:freechips.rocketchip.system.TinyConfig.fir@110018.4 ShiftQueue.scala 45:36:freechips.rocketchip.system.TinyConfig.fir@110024.6]
  assign io_deq_bits_xcpt_ae_inst = _T_10 ? io_enq_bits_xcpt_ae_inst : _T_2_0_xcpt_ae_inst; // @[ShiftQueue.scala 41:15:freechips.rocketchip.system.TinyConfig.fir@110018.4 ShiftQueue.scala 45:36:freechips.rocketchip.system.TinyConfig.fir@110024.6]
  assign io_deq_bits_replay = _T_10 ? io_enq_bits_replay : _T_2_0_replay; // @[ShiftQueue.scala 41:15:freechips.rocketchip.system.TinyConfig.fir@110018.4 ShiftQueue.scala 45:36:freechips.rocketchip.system.TinyConfig.fir@110024.6]
  assign io_mask = {_T_96,_T_94}; // @[ShiftQueue.scala 52:11:freechips.rocketchip.system.TinyConfig.fir@110030.4]
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
  _T_1_0 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_1_1 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_1_2 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_1_3 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_1_4 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_2_0_pc = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_2_0_data = _RAND_6[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_2_0_xcpt_ae_inst = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_2_0_replay = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_2_1_pc = _RAND_9[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_2_1_data = _RAND_10[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_2_1_xcpt_ae_inst = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_2_1_replay = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_2_2_pc = _RAND_13[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_2_2_data = _RAND_14[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_2_2_xcpt_ae_inst = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_2_2_replay = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_2_3_pc = _RAND_17[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_2_3_data = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_2_3_xcpt_ae_inst = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_2_3_replay = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_2_4_pc = _RAND_21[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_2_4_data = _RAND_22[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_2_4_xcpt_ae_inst = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  _T_2_4_replay = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (reset) begin
      _T_1_0 <= 1'h0;
    end else begin
      if (io_deq_ready) begin
        _T_1_0 <= _T_7;
      end else begin
        _T_1_0 <= _T_19;
      end
    end
    if (reset) begin
      _T_1_1 <= 1'h0;
    end else begin
      if (io_deq_ready) begin
        _T_1_1 <= _T_25;
      end else begin
        _T_1_1 <= _T_37;
      end
    end
    if (reset) begin
      _T_1_2 <= 1'h0;
    end else begin
      if (io_deq_ready) begin
        _T_1_2 <= _T_43;
      end else begin
        _T_1_2 <= _T_55;
      end
    end
    if (reset) begin
      _T_1_3 <= 1'h0;
    end else begin
      if (io_deq_ready) begin
        _T_1_3 <= _T_61;
      end else begin
        _T_1_3 <= _T_73;
      end
    end
    if (reset) begin
      _T_1_4 <= 1'h0;
    end else begin
      if (io_deq_ready) begin
        _T_1_4 <= _T_77;
      end else begin
        _T_1_4 <= _T_90;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_pc <= _T_2_1_pc;
      end else begin
        _T_2_0_pc <= io_enq_bits_pc;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_data <= _T_2_1_data;
      end else begin
        _T_2_0_data <= io_enq_bits_data;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_xcpt_ae_inst <= _T_2_1_xcpt_ae_inst;
      end else begin
        _T_2_0_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_replay <= _T_2_1_replay;
      end else begin
        _T_2_0_replay <= io_enq_bits_replay;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_pc <= _T_2_2_pc;
      end else begin
        _T_2_1_pc <= io_enq_bits_pc;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_data <= _T_2_2_data;
      end else begin
        _T_2_1_data <= io_enq_bits_data;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_xcpt_ae_inst <= _T_2_2_xcpt_ae_inst;
      end else begin
        _T_2_1_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_replay <= _T_2_2_replay;
      end else begin
        _T_2_1_replay <= io_enq_bits_replay;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_pc <= _T_2_3_pc;
      end else begin
        _T_2_2_pc <= io_enq_bits_pc;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_data <= _T_2_3_data;
      end else begin
        _T_2_2_data <= io_enq_bits_data;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_xcpt_ae_inst <= _T_2_3_xcpt_ae_inst;
      end else begin
        _T_2_2_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_replay <= _T_2_3_replay;
      end else begin
        _T_2_2_replay <= io_enq_bits_replay;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_pc <= _T_2_4_pc;
      end else begin
        _T_2_3_pc <= io_enq_bits_pc;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_data <= _T_2_4_data;
      end else begin
        _T_2_3_data <= io_enq_bits_data;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_xcpt_ae_inst <= _T_2_4_xcpt_ae_inst;
      end else begin
        _T_2_3_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_replay <= _T_2_4_replay;
      end else begin
        _T_2_3_replay <= io_enq_bits_replay;
      end
    end
    if (_T_83) begin
      _T_2_4_pc <= io_enq_bits_pc;
    end
    if (_T_83) begin
      _T_2_4_data <= io_enq_bits_data;
    end
    if (_T_83) begin
      _T_2_4_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
    end
    if (_T_83) begin
      _T_2_4_replay <= io_enq_bits_replay;
    end
  end
endmodule