module Queue_39( // @[:freechips.rocketchip.system.TinyConfig.fir@114907.2]
  input         clock, // @[:freechips.rocketchip.system.TinyConfig.fir@114908.4]
  input         reset, // @[:freechips.rocketchip.system.TinyConfig.fir@114909.4]
  output        io_enq_ready, // @[:freechips.rocketchip.system.TinyConfig.fir@114910.4]
  input         io_enq_valid, // @[:freechips.rocketchip.system.TinyConfig.fir@114910.4]
  input  [2:0]  io_enq_bits_opcode, // @[:freechips.rocketchip.system.TinyConfig.fir@114910.4]
  input  [1:0]  io_enq_bits_param, // @[:freechips.rocketchip.system.TinyConfig.fir@114910.4]
  input  [3:0]  io_enq_bits_size, // @[:freechips.rocketchip.system.TinyConfig.fir@114910.4]
  input         io_enq_bits_source, // @[:freechips.rocketchip.system.TinyConfig.fir@114910.4]
  input         io_enq_bits_sink, // @[:freechips.rocketchip.system.TinyConfig.fir@114910.4]
  input         io_enq_bits_denied, // @[:freechips.rocketchip.system.TinyConfig.fir@114910.4]
  input  [31:0] io_enq_bits_data, // @[:freechips.rocketchip.system.TinyConfig.fir@114910.4]
  input         io_enq_bits_corrupt, // @[:freechips.rocketchip.system.TinyConfig.fir@114910.4]
  input         io_deq_ready, // @[:freechips.rocketchip.system.TinyConfig.fir@114910.4]
  output        io_deq_valid, // @[:freechips.rocketchip.system.TinyConfig.fir@114910.4]
  output [2:0]  io_deq_bits_opcode, // @[:freechips.rocketchip.system.TinyConfig.fir@114910.4]
  output [1:0]  io_deq_bits_param, // @[:freechips.rocketchip.system.TinyConfig.fir@114910.4]
  output [3:0]  io_deq_bits_size, // @[:freechips.rocketchip.system.TinyConfig.fir@114910.4]
  output        io_deq_bits_source, // @[:freechips.rocketchip.system.TinyConfig.fir@114910.4]
  output        io_deq_bits_sink, // @[:freechips.rocketchip.system.TinyConfig.fir@114910.4]
  output        io_deq_bits_denied, // @[:freechips.rocketchip.system.TinyConfig.fir@114910.4]
  output [31:0] io_deq_bits_data, // @[:freechips.rocketchip.system.TinyConfig.fir@114910.4]
  output        io_deq_bits_corrupt // @[:freechips.rocketchip.system.TinyConfig.fir@114910.4]
);
  reg [2:0] _T_opcode [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  reg [31:0] _RAND_0;
  wire [2:0] _T_opcode__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_opcode__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire [2:0] _T_opcode__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_opcode__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_opcode__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_opcode__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  reg [1:0] _T_param [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  reg [31:0] _RAND_1;
  wire [1:0] _T_param__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_param__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire [1:0] _T_param__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_param__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_param__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_param__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  reg [3:0] _T_size [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  reg [31:0] _RAND_2;
  wire [3:0] _T_size__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_size__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire [3:0] _T_size__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_size__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_size__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_size__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  reg  _T_source [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  reg [31:0] _RAND_3;
  wire  _T_source__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_source__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_source__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_source__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_source__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_source__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  reg  _T_sink [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  reg [31:0] _RAND_4;
  wire  _T_sink__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_sink__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_sink__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_sink__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_sink__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_sink__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  reg  _T_denied [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  reg [31:0] _RAND_5;
  wire  _T_denied__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_denied__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_denied__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_denied__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_denied__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_denied__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  reg [31:0] _T_data [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  reg [31:0] _RAND_6;
  wire [31:0] _T_data__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_data__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire [31:0] _T_data__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_data__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_data__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_data__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  reg  _T_corrupt [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  reg [31:0] _RAND_7;
  wire  _T_corrupt__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_corrupt__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_corrupt__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_corrupt__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_corrupt__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  wire  _T_corrupt__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  reg  value; // @[Counter.scala 26:33:freechips.rocketchip.system.TinyConfig.fir@114913.4]
  reg [31:0] _RAND_8;
  reg  value_1; // @[Counter.scala 26:33:freechips.rocketchip.system.TinyConfig.fir@114914.4]
  reg [31:0] _RAND_9;
  reg  _T_1; // @[Decoupled.scala 218:35:freechips.rocketchip.system.TinyConfig.fir@114915.4]
  reg [31:0] _RAND_10;
  wire  _T_2; // @[Decoupled.scala 220:41:freechips.rocketchip.system.TinyConfig.fir@114916.4]
  wire  _T_3; // @[Decoupled.scala 221:36:freechips.rocketchip.system.TinyConfig.fir@114917.4]
  wire  _T_4; // @[Decoupled.scala 221:33:freechips.rocketchip.system.TinyConfig.fir@114918.4]
  wire  _T_5; // @[Decoupled.scala 222:32:freechips.rocketchip.system.TinyConfig.fir@114919.4]
  wire  _T_6; // @[Decoupled.scala 37:37:freechips.rocketchip.system.TinyConfig.fir@114920.4]
  wire  _T_8; // @[Decoupled.scala 37:37:freechips.rocketchip.system.TinyConfig.fir@114923.4]
  wire  _T_12; // @[Counter.scala 35:22:freechips.rocketchip.system.TinyConfig.fir@114938.6]
  wire  _T_14; // @[Counter.scala 35:22:freechips.rocketchip.system.TinyConfig.fir@114944.6]
  wire  _T_15; // @[Decoupled.scala 233:16:freechips.rocketchip.system.TinyConfig.fir@114947.4]
  assign _T_opcode__T_18_addr = value_1;
  assign _T_opcode__T_18_data = _T_opcode[_T_opcode__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  assign _T_opcode__T_10_data = io_enq_bits_opcode;
  assign _T_opcode__T_10_addr = value;
  assign _T_opcode__T_10_mask = 1'h1;
  assign _T_opcode__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_param__T_18_addr = value_1;
  assign _T_param__T_18_data = _T_param[_T_param__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  assign _T_param__T_10_data = io_enq_bits_param;
  assign _T_param__T_10_addr = value;
  assign _T_param__T_10_mask = 1'h1;
  assign _T_param__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_size__T_18_addr = value_1;
  assign _T_size__T_18_data = _T_size[_T_size__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  assign _T_size__T_10_data = io_enq_bits_size;
  assign _T_size__T_10_addr = value;
  assign _T_size__T_10_mask = 1'h1;
  assign _T_size__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_source__T_18_addr = value_1;
  assign _T_source__T_18_data = _T_source[_T_source__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  assign _T_source__T_10_data = io_enq_bits_source;
  assign _T_source__T_10_addr = value;
  assign _T_source__T_10_mask = 1'h1;
  assign _T_source__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_sink__T_18_addr = value_1;
  assign _T_sink__T_18_data = _T_sink[_T_sink__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  assign _T_sink__T_10_data = io_enq_bits_sink;
  assign _T_sink__T_10_addr = value;
  assign _T_sink__T_10_mask = 1'h1;
  assign _T_sink__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_denied__T_18_addr = value_1;
  assign _T_denied__T_18_data = _T_denied[_T_denied__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  assign _T_denied__T_10_data = io_enq_bits_denied;
  assign _T_denied__T_10_addr = value;
  assign _T_denied__T_10_mask = 1'h1;
  assign _T_denied__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_data__T_18_addr = value_1;
  assign _T_data__T_18_data = _T_data[_T_data__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  assign _T_data__T_10_data = io_enq_bits_data;
  assign _T_data__T_10_addr = value;
  assign _T_data__T_10_mask = 1'h1;
  assign _T_data__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_corrupt__T_18_addr = value_1;
  assign _T_corrupt__T_18_data = _T_corrupt[_T_corrupt__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
  assign _T_corrupt__T_10_data = io_enq_bits_corrupt;
  assign _T_corrupt__T_10_addr = value;
  assign _T_corrupt__T_10_mask = 1'h1;
  assign _T_corrupt__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_2 = value == value_1; // @[Decoupled.scala 220:41:freechips.rocketchip.system.TinyConfig.fir@114916.4]
  assign _T_3 = _T_1 == 1'h0; // @[Decoupled.scala 221:36:freechips.rocketchip.system.TinyConfig.fir@114917.4]
  assign _T_4 = _T_2 & _T_3; // @[Decoupled.scala 221:33:freechips.rocketchip.system.TinyConfig.fir@114918.4]
  assign _T_5 = _T_2 & _T_1; // @[Decoupled.scala 222:32:freechips.rocketchip.system.TinyConfig.fir@114919.4]
  assign _T_6 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.TinyConfig.fir@114920.4]
  assign _T_8 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.TinyConfig.fir@114923.4]
  assign _T_12 = value + 1'h1; // @[Counter.scala 35:22:freechips.rocketchip.system.TinyConfig.fir@114938.6]
  assign _T_14 = value_1 + 1'h1; // @[Counter.scala 35:22:freechips.rocketchip.system.TinyConfig.fir@114944.6]
  assign _T_15 = _T_6 != _T_8; // @[Decoupled.scala 233:16:freechips.rocketchip.system.TinyConfig.fir@114947.4]
  assign io_enq_ready = _T_5 == 1'h0; // @[Decoupled.scala 238:16:freechips.rocketchip.system.TinyConfig.fir@114954.4]
  assign io_deq_valid = _T_4 == 1'h0; // @[Decoupled.scala 237:16:freechips.rocketchip.system.TinyConfig.fir@114952.4]
  assign io_deq_bits_opcode = _T_opcode__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.TinyConfig.fir@114963.4]
  assign io_deq_bits_param = _T_param__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.TinyConfig.fir@114962.4]
  assign io_deq_bits_size = _T_size__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.TinyConfig.fir@114961.4]
  assign io_deq_bits_source = _T_source__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.TinyConfig.fir@114960.4]
  assign io_deq_bits_sink = _T_sink__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.TinyConfig.fir@114959.4]
  assign io_deq_bits_denied = _T_denied__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.TinyConfig.fir@114958.4]
  assign io_deq_bits_data = _T_data__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.TinyConfig.fir@114957.4]
  assign io_deq_bits_corrupt = _T_corrupt__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.TinyConfig.fir@114956.4]
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
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_opcode[initvar] = _RAND_0[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_param[initvar] = _RAND_1[1:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_size[initvar] = _RAND_2[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_source[initvar] = _RAND_3[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_sink[initvar] = _RAND_4[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_5 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_denied[initvar] = _RAND_5[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_6 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_data[initvar] = _RAND_6[31:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_7 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_corrupt[initvar] = _RAND_7[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  value = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  value_1 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_1 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if(_T_opcode__T_10_en & _T_opcode__T_10_mask) begin
      _T_opcode[_T_opcode__T_10_addr] <= _T_opcode__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
    end
    if(_T_param__T_10_en & _T_param__T_10_mask) begin
      _T_param[_T_param__T_10_addr] <= _T_param__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
    end
    if(_T_size__T_10_en & _T_size__T_10_mask) begin
      _T_size[_T_size__T_10_addr] <= _T_size__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
    end
    if(_T_source__T_10_en & _T_source__T_10_mask) begin
      _T_source[_T_source__T_10_addr] <= _T_source__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
    end
    if(_T_sink__T_10_en & _T_sink__T_10_mask) begin
      _T_sink[_T_sink__T_10_addr] <= _T_sink__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
    end
    if(_T_denied__T_10_en & _T_denied__T_10_mask) begin
      _T_denied[_T_denied__T_10_addr] <= _T_denied__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
    end
    if(_T_data__T_10_en & _T_data__T_10_mask) begin
      _T_data[_T_data__T_10_addr] <= _T_data__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
    end
    if(_T_corrupt__T_10_en & _T_corrupt__T_10_mask) begin
      _T_corrupt[_T_corrupt__T_10_addr] <= _T_corrupt__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@114912.4]
    end
    if (reset) begin
      value <= 1'h0;
    end else begin
      if (_T_6) begin
        value <= _T_12;
      end
    end
    if (reset) begin
      value_1 <= 1'h0;
    end else begin
      if (_T_8) begin
        value_1 <= _T_14;
      end
    end
    if (reset) begin
      _T_1 <= 1'h0;
    end else begin
      if (_T_15) begin
        _T_1 <= _T_6;
      end
    end
  end
endmodule