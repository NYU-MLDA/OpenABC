module Queue_40( // @[:freechips.rocketchip.system.TinyConfig.fir@115081.2]
  input         clock, // @[:freechips.rocketchip.system.TinyConfig.fir@115082.4]
  input         reset, // @[:freechips.rocketchip.system.TinyConfig.fir@115083.4]
  output        io_enq_ready, // @[:freechips.rocketchip.system.TinyConfig.fir@115084.4]
  input         io_enq_valid, // @[:freechips.rocketchip.system.TinyConfig.fir@115084.4]
  input  [2:0]  io_enq_bits_opcode, // @[:freechips.rocketchip.system.TinyConfig.fir@115084.4]
  input  [2:0]  io_enq_bits_param, // @[:freechips.rocketchip.system.TinyConfig.fir@115084.4]
  input  [2:0]  io_enq_bits_size, // @[:freechips.rocketchip.system.TinyConfig.fir@115084.4]
  input  [4:0]  io_enq_bits_source, // @[:freechips.rocketchip.system.TinyConfig.fir@115084.4]
  input  [31:0] io_enq_bits_address, // @[:freechips.rocketchip.system.TinyConfig.fir@115084.4]
  input  [3:0]  io_enq_bits_mask, // @[:freechips.rocketchip.system.TinyConfig.fir@115084.4]
  input  [31:0] io_enq_bits_data, // @[:freechips.rocketchip.system.TinyConfig.fir@115084.4]
  input         io_deq_ready, // @[:freechips.rocketchip.system.TinyConfig.fir@115084.4]
  output        io_deq_valid, // @[:freechips.rocketchip.system.TinyConfig.fir@115084.4]
  output [2:0]  io_deq_bits_opcode, // @[:freechips.rocketchip.system.TinyConfig.fir@115084.4]
  output [2:0]  io_deq_bits_param, // @[:freechips.rocketchip.system.TinyConfig.fir@115084.4]
  output [2:0]  io_deq_bits_size, // @[:freechips.rocketchip.system.TinyConfig.fir@115084.4]
  output [4:0]  io_deq_bits_source, // @[:freechips.rocketchip.system.TinyConfig.fir@115084.4]
  output [31:0] io_deq_bits_address, // @[:freechips.rocketchip.system.TinyConfig.fir@115084.4]
  output [3:0]  io_deq_bits_mask, // @[:freechips.rocketchip.system.TinyConfig.fir@115084.4]
  output [31:0] io_deq_bits_data // @[:freechips.rocketchip.system.TinyConfig.fir@115084.4]
);
  reg [2:0] _T_opcode [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  reg [31:0] _RAND_0;
  wire [2:0] _T_opcode__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_opcode__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire [2:0] _T_opcode__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_opcode__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_opcode__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_opcode__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  reg [2:0] _T_param [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  reg [31:0] _RAND_1;
  wire [2:0] _T_param__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_param__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire [2:0] _T_param__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_param__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_param__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_param__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  reg [2:0] _T_size [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  reg [31:0] _RAND_2;
  wire [2:0] _T_size__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_size__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire [2:0] _T_size__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_size__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_size__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_size__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  reg [4:0] _T_source [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  reg [31:0] _RAND_3;
  wire [4:0] _T_source__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_source__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire [4:0] _T_source__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_source__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_source__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_source__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  reg [31:0] _T_address [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  reg [31:0] _RAND_4;
  wire [31:0] _T_address__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_address__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire [31:0] _T_address__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_address__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_address__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_address__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  reg [3:0] _T_mask [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  reg [31:0] _RAND_5;
  wire [3:0] _T_mask__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_mask__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire [3:0] _T_mask__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_mask__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_mask__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_mask__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  reg [31:0] _T_data [0:1]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  reg [31:0] _RAND_6;
  wire [31:0] _T_data__T_18_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_data__T_18_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire [31:0] _T_data__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_data__T_10_addr; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_data__T_10_mask; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  wire  _T_data__T_10_en; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  reg  value; // @[Counter.scala 26:33:freechips.rocketchip.system.TinyConfig.fir@115087.4]
  reg [31:0] _RAND_7;
  reg  value_1; // @[Counter.scala 26:33:freechips.rocketchip.system.TinyConfig.fir@115088.4]
  reg [31:0] _RAND_8;
  reg  _T_1; // @[Decoupled.scala 218:35:freechips.rocketchip.system.TinyConfig.fir@115089.4]
  reg [31:0] _RAND_9;
  wire  _T_2; // @[Decoupled.scala 220:41:freechips.rocketchip.system.TinyConfig.fir@115090.4]
  wire  _T_3; // @[Decoupled.scala 221:36:freechips.rocketchip.system.TinyConfig.fir@115091.4]
  wire  _T_4; // @[Decoupled.scala 221:33:freechips.rocketchip.system.TinyConfig.fir@115092.4]
  wire  _T_5; // @[Decoupled.scala 222:32:freechips.rocketchip.system.TinyConfig.fir@115093.4]
  wire  _T_6; // @[Decoupled.scala 37:37:freechips.rocketchip.system.TinyConfig.fir@115094.4]
  wire  _T_8; // @[Decoupled.scala 37:37:freechips.rocketchip.system.TinyConfig.fir@115097.4]
  wire  _T_12; // @[Counter.scala 35:22:freechips.rocketchip.system.TinyConfig.fir@115112.6]
  wire  _T_14; // @[Counter.scala 35:22:freechips.rocketchip.system.TinyConfig.fir@115118.6]
  wire  _T_15; // @[Decoupled.scala 233:16:freechips.rocketchip.system.TinyConfig.fir@115121.4]
  assign _T_opcode__T_18_addr = value_1;
  assign _T_opcode__T_18_data = _T_opcode[_T_opcode__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  assign _T_opcode__T_10_data = io_enq_bits_opcode;
  assign _T_opcode__T_10_addr = value;
  assign _T_opcode__T_10_mask = 1'h1;
  assign _T_opcode__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_param__T_18_addr = value_1;
  assign _T_param__T_18_data = _T_param[_T_param__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  assign _T_param__T_10_data = io_enq_bits_param;
  assign _T_param__T_10_addr = value;
  assign _T_param__T_10_mask = 1'h1;
  assign _T_param__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_size__T_18_addr = value_1;
  assign _T_size__T_18_data = _T_size[_T_size__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  assign _T_size__T_10_data = io_enq_bits_size;
  assign _T_size__T_10_addr = value;
  assign _T_size__T_10_mask = 1'h1;
  assign _T_size__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_source__T_18_addr = value_1;
  assign _T_source__T_18_data = _T_source[_T_source__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  assign _T_source__T_10_data = io_enq_bits_source;
  assign _T_source__T_10_addr = value;
  assign _T_source__T_10_mask = 1'h1;
  assign _T_source__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_address__T_18_addr = value_1;
  assign _T_address__T_18_data = _T_address[_T_address__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  assign _T_address__T_10_data = io_enq_bits_address;
  assign _T_address__T_10_addr = value;
  assign _T_address__T_10_mask = 1'h1;
  assign _T_address__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_mask__T_18_addr = value_1;
  assign _T_mask__T_18_data = _T_mask[_T_mask__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  assign _T_mask__T_10_data = io_enq_bits_mask;
  assign _T_mask__T_10_addr = value;
  assign _T_mask__T_10_mask = 1'h1;
  assign _T_mask__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_data__T_18_addr = value_1;
  assign _T_data__T_18_data = _T_data[_T_data__T_18_addr]; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
  assign _T_data__T_10_data = io_enq_bits_data;
  assign _T_data__T_10_addr = value;
  assign _T_data__T_10_mask = 1'h1;
  assign _T_data__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_2 = value == value_1; // @[Decoupled.scala 220:41:freechips.rocketchip.system.TinyConfig.fir@115090.4]
  assign _T_3 = _T_1 == 1'h0; // @[Decoupled.scala 221:36:freechips.rocketchip.system.TinyConfig.fir@115091.4]
  assign _T_4 = _T_2 & _T_3; // @[Decoupled.scala 221:33:freechips.rocketchip.system.TinyConfig.fir@115092.4]
  assign _T_5 = _T_2 & _T_1; // @[Decoupled.scala 222:32:freechips.rocketchip.system.TinyConfig.fir@115093.4]
  assign _T_6 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.TinyConfig.fir@115094.4]
  assign _T_8 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.TinyConfig.fir@115097.4]
  assign _T_12 = value + 1'h1; // @[Counter.scala 35:22:freechips.rocketchip.system.TinyConfig.fir@115112.6]
  assign _T_14 = value_1 + 1'h1; // @[Counter.scala 35:22:freechips.rocketchip.system.TinyConfig.fir@115118.6]
  assign _T_15 = _T_6 != _T_8; // @[Decoupled.scala 233:16:freechips.rocketchip.system.TinyConfig.fir@115121.4]
  assign io_enq_ready = _T_5 == 1'h0; // @[Decoupled.scala 238:16:freechips.rocketchip.system.TinyConfig.fir@115128.4]
  assign io_deq_valid = _T_4 == 1'h0; // @[Decoupled.scala 237:16:freechips.rocketchip.system.TinyConfig.fir@115126.4]
  assign io_deq_bits_opcode = _T_opcode__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.TinyConfig.fir@115137.4]
  assign io_deq_bits_param = _T_param__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.TinyConfig.fir@115136.4]
  assign io_deq_bits_size = _T_size__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.TinyConfig.fir@115135.4]
  assign io_deq_bits_source = _T_source__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.TinyConfig.fir@115134.4]
  assign io_deq_bits_address = _T_address__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.TinyConfig.fir@115133.4]
  assign io_deq_bits_mask = _T_mask__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.TinyConfig.fir@115132.4]
  assign io_deq_bits_data = _T_data__T_18_data; // @[Decoupled.scala 239:15:freechips.rocketchip.system.TinyConfig.fir@115131.4]
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
    _T_param[initvar] = _RAND_1[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_size[initvar] = _RAND_2[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_source[initvar] = _RAND_3[4:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_address[initvar] = _RAND_4[31:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_5 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_mask[initvar] = _RAND_5[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_6 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_data[initvar] = _RAND_6[31:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  value = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  value_1 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_1 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if(_T_opcode__T_10_en & _T_opcode__T_10_mask) begin
      _T_opcode[_T_opcode__T_10_addr] <= _T_opcode__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
    end
    if(_T_param__T_10_en & _T_param__T_10_mask) begin
      _T_param[_T_param__T_10_addr] <= _T_param__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
    end
    if(_T_size__T_10_en & _T_size__T_10_mask) begin
      _T_size[_T_size__T_10_addr] <= _T_size__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
    end
    if(_T_source__T_10_en & _T_source__T_10_mask) begin
      _T_source[_T_source__T_10_addr] <= _T_source__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
    end
    if(_T_address__T_10_en & _T_address__T_10_mask) begin
      _T_address[_T_address__T_10_addr] <= _T_address__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
    end
    if(_T_mask__T_10_en & _T_mask__T_10_mask) begin
      _T_mask[_T_mask__T_10_addr] <= _T_mask__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
    end
    if(_T_data__T_10_en & _T_data__T_10_mask) begin
      _T_data[_T_data__T_10_addr] <= _T_data__T_10_data; // @[Decoupled.scala 215:24:freechips.rocketchip.system.TinyConfig.fir@115086.4]
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