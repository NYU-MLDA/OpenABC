module ScratchpadSlavePort( // @[:freechips.rocketchip.system.TinyConfig.fir@112949.2]
  input         clock, // @[:freechips.rocketchip.system.TinyConfig.fir@112950.4]
  input         reset, // @[:freechips.rocketchip.system.TinyConfig.fir@112951.4]
  output        auto_in_a_ready, // @[:freechips.rocketchip.system.TinyConfig.fir@112952.4]
  input         auto_in_a_valid, // @[:freechips.rocketchip.system.TinyConfig.fir@112952.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:freechips.rocketchip.system.TinyConfig.fir@112952.4]
  input  [2:0]  auto_in_a_bits_param, // @[:freechips.rocketchip.system.TinyConfig.fir@112952.4]
  input  [1:0]  auto_in_a_bits_size, // @[:freechips.rocketchip.system.TinyConfig.fir@112952.4]
  input  [10:0] auto_in_a_bits_source, // @[:freechips.rocketchip.system.TinyConfig.fir@112952.4]
  input  [31:0] auto_in_a_bits_address, // @[:freechips.rocketchip.system.TinyConfig.fir@112952.4]
  input  [3:0]  auto_in_a_bits_mask, // @[:freechips.rocketchip.system.TinyConfig.fir@112952.4]
  input  [31:0] auto_in_a_bits_data, // @[:freechips.rocketchip.system.TinyConfig.fir@112952.4]
  input         auto_in_d_ready, // @[:freechips.rocketchip.system.TinyConfig.fir@112952.4]
  output        auto_in_d_valid, // @[:freechips.rocketchip.system.TinyConfig.fir@112952.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:freechips.rocketchip.system.TinyConfig.fir@112952.4]
  output [1:0]  auto_in_d_bits_size, // @[:freechips.rocketchip.system.TinyConfig.fir@112952.4]
  output [10:0] auto_in_d_bits_source, // @[:freechips.rocketchip.system.TinyConfig.fir@112952.4]
  output [31:0] auto_in_d_bits_data, // @[:freechips.rocketchip.system.TinyConfig.fir@112952.4]
  input         io_dmem_req_ready, // @[:freechips.rocketchip.system.TinyConfig.fir@112953.4]
  output        io_dmem_req_valid, // @[:freechips.rocketchip.system.TinyConfig.fir@112953.4]
  output [31:0] io_dmem_req_bits_addr, // @[:freechips.rocketchip.system.TinyConfig.fir@112953.4]
  output [4:0]  io_dmem_req_bits_cmd, // @[:freechips.rocketchip.system.TinyConfig.fir@112953.4]
  output [1:0]  io_dmem_req_bits_size, // @[:freechips.rocketchip.system.TinyConfig.fir@112953.4]
  output        io_dmem_s1_kill, // @[:freechips.rocketchip.system.TinyConfig.fir@112953.4]
  output [31:0] io_dmem_s1_data_data, // @[:freechips.rocketchip.system.TinyConfig.fir@112953.4]
  output [3:0]  io_dmem_s1_data_mask, // @[:freechips.rocketchip.system.TinyConfig.fir@112953.4]
  input         io_dmem_s2_nack, // @[:freechips.rocketchip.system.TinyConfig.fir@112953.4]
  input         io_dmem_resp_valid, // @[:freechips.rocketchip.system.TinyConfig.fir@112953.4]
  input  [31:0] io_dmem_resp_bits_data_raw // @[:freechips.rocketchip.system.TinyConfig.fir@112953.4]
);
  reg [2:0] state; // @[ScratchpadSlavePort.scala 46:20:freechips.rocketchip.system.TinyConfig.fir@112962.4]
  reg [31:0] _RAND_0;
  wire  _T; // @[ScratchpadSlavePort.scala 48:17:freechips.rocketchip.system.TinyConfig.fir@112965.4]
  wire  _T_51; // @[ScratchpadSlavePort.scala 98:50:freechips.rocketchip.system.TinyConfig.fir@113056.4]
  wire  tl_in_d_valid; // @[ScratchpadSlavePort.scala 98:41:freechips.rocketchip.system.TinyConfig.fir@113057.4]
  wire  _T_1; // @[Decoupled.scala 37:37:freechips.rocketchip.system.TinyConfig.fir@112972.4]
  wire  _T_6; // @[ScratchpadSlavePort.scala 86:23:freechips.rocketchip.system.TinyConfig.fir@112991.4]
  wire  _T_7; // @[ScratchpadSlavePort.scala 86:44:freechips.rocketchip.system.TinyConfig.fir@112992.4]
  wire  _T_8; // @[ScratchpadSlavePort.scala 86:56:freechips.rocketchip.system.TinyConfig.fir@112993.4]
  wire  _T_9; // @[ScratchpadSlavePort.scala 86:78:freechips.rocketchip.system.TinyConfig.fir@112994.4]
  wire  ready; // @[ScratchpadSlavePort.scala 86:35:freechips.rocketchip.system.TinyConfig.fir@112995.4]
  wire  _T_10; // @[ScratchpadSlavePort.scala 87:38:freechips.rocketchip.system.TinyConfig.fir@112996.4]
  wire  _T_11; // @[ScratchpadSlavePort.scala 87:57:freechips.rocketchip.system.TinyConfig.fir@112997.4]
  wire  dmem_req_valid; // @[ScratchpadSlavePort.scala 87:48:freechips.rocketchip.system.TinyConfig.fir@112998.4]
  wire  _T_2; // @[ScratchpadSlavePort.scala 52:26:freechips.rocketchip.system.TinyConfig.fir@112979.4]
  reg [2:0] acq_opcode; // @[ScratchpadSlavePort.scala 54:18:freechips.rocketchip.system.TinyConfig.fir@112983.4]
  reg [31:0] _RAND_1;
  reg [2:0] acq_param; // @[ScratchpadSlavePort.scala 54:18:freechips.rocketchip.system.TinyConfig.fir@112983.4]
  reg [31:0] _RAND_2;
  reg [1:0] acq_size; // @[ScratchpadSlavePort.scala 54:18:freechips.rocketchip.system.TinyConfig.fir@112983.4]
  reg [31:0] _RAND_3;
  reg [10:0] acq_source; // @[ScratchpadSlavePort.scala 54:18:freechips.rocketchip.system.TinyConfig.fir@112983.4]
  reg [31:0] _RAND_4;
  reg [31:0] acq_address; // @[ScratchpadSlavePort.scala 54:18:freechips.rocketchip.system.TinyConfig.fir@112983.4]
  reg [31:0] _RAND_5;
  reg [3:0] acq_mask; // @[ScratchpadSlavePort.scala 54:18:freechips.rocketchip.system.TinyConfig.fir@112983.4]
  reg [31:0] _RAND_6;
  reg [31:0] acq_data; // @[ScratchpadSlavePort.scala 54:18:freechips.rocketchip.system.TinyConfig.fir@112983.4]
  reg [31:0] _RAND_7;
  wire  tl_in_a_ready; // @[ScratchpadSlavePort.scala 91:40:freechips.rocketchip.system.TinyConfig.fir@113004.4]
  wire  _T_3; // @[Decoupled.scala 37:37:freechips.rocketchip.system.TinyConfig.fir@112984.4]
  wire  ready_likely; // @[ScratchpadSlavePort.scala 85:42:freechips.rocketchip.system.TinyConfig.fir@112990.4]
  wire  _T_13; // @[ScratchpadSlavePort.scala 88:48:freechips.rocketchip.system.TinyConfig.fir@113000.4]
  wire [2:0] _T_17_opcode; // @[ScratchpadSlavePort.scala 92:41:freechips.rocketchip.system.TinyConfig.fir@113007.4]
  wire [2:0] _T_17_param; // @[ScratchpadSlavePort.scala 92:41:freechips.rocketchip.system.TinyConfig.fir@113007.4]
  wire  _T_21; // @[Mux.scala 69:19:freechips.rocketchip.system.TinyConfig.fir@113014.4]
  wire [3:0] _T_22; // @[Mux.scala 69:16:freechips.rocketchip.system.TinyConfig.fir@113015.4]
  wire  _T_23; // @[Mux.scala 69:19:freechips.rocketchip.system.TinyConfig.fir@113016.4]
  wire [3:0] _T_24; // @[Mux.scala 69:16:freechips.rocketchip.system.TinyConfig.fir@113017.4]
  wire  _T_25; // @[Mux.scala 69:19:freechips.rocketchip.system.TinyConfig.fir@113018.4]
  wire [3:0] _T_26; // @[Mux.scala 69:16:freechips.rocketchip.system.TinyConfig.fir@113019.4]
  wire  _T_27; // @[Mux.scala 69:19:freechips.rocketchip.system.TinyConfig.fir@113020.4]
  wire [3:0] _T_28; // @[Mux.scala 69:16:freechips.rocketchip.system.TinyConfig.fir@113021.4]
  wire  _T_29; // @[Mux.scala 69:19:freechips.rocketchip.system.TinyConfig.fir@113022.4]
  wire [3:0] _T_30; // @[Mux.scala 69:16:freechips.rocketchip.system.TinyConfig.fir@113023.4]
  wire [2:0] _T_33; // @[Mux.scala 69:16:freechips.rocketchip.system.TinyConfig.fir@113027.4]
  wire [3:0] _T_35; // @[Mux.scala 69:16:freechips.rocketchip.system.TinyConfig.fir@113029.4]
  wire [3:0] _T_37; // @[Mux.scala 69:16:freechips.rocketchip.system.TinyConfig.fir@113031.4]
  wire [3:0] _T_39; // @[Mux.scala 69:16:freechips.rocketchip.system.TinyConfig.fir@113033.4]
  wire  _T_42; // @[Mux.scala 69:19:freechips.rocketchip.system.TinyConfig.fir@113036.4]
  wire [3:0] _T_43; // @[Mux.scala 69:16:freechips.rocketchip.system.TinyConfig.fir@113037.4]
  wire  _T_44; // @[Mux.scala 69:19:freechips.rocketchip.system.TinyConfig.fir@113038.4]
  wire [3:0] _T_45; // @[Mux.scala 69:16:freechips.rocketchip.system.TinyConfig.fir@113039.4]
  wire  _T_46; // @[Mux.scala 69:19:freechips.rocketchip.system.TinyConfig.fir@113040.4]
  wire [4:0] _T_47; // @[Mux.scala 69:16:freechips.rocketchip.system.TinyConfig.fir@113041.4]
  wire  _T_48; // @[Mux.scala 69:19:freechips.rocketchip.system.TinyConfig.fir@113042.4]
  wire  _T_53; // @[package.scala 15:47:freechips.rocketchip.system.TinyConfig.fir@113059.4]
  wire  _T_54; // @[package.scala 15:47:freechips.rocketchip.system.TinyConfig.fir@113060.4]
  wire  _T_55; // @[package.scala 15:62:freechips.rocketchip.system.TinyConfig.fir@113061.4]
  reg [31:0] _T_60; // @[Reg.scala 15:16:freechips.rocketchip.system.TinyConfig.fir@113085.4]
  reg [31:0] _RAND_8;
  assign _T = state == 3'h1; // @[ScratchpadSlavePort.scala 48:17:freechips.rocketchip.system.TinyConfig.fir@112965.4]
  assign _T_51 = state == 3'h4; // @[ScratchpadSlavePort.scala 98:50:freechips.rocketchip.system.TinyConfig.fir@113056.4]
  assign tl_in_d_valid = io_dmem_resp_valid | _T_51; // @[ScratchpadSlavePort.scala 98:41:freechips.rocketchip.system.TinyConfig.fir@113057.4]
  assign _T_1 = auto_in_d_ready & tl_in_d_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.TinyConfig.fir@112972.4]
  assign _T_6 = state == 3'h0; // @[ScratchpadSlavePort.scala 86:23:freechips.rocketchip.system.TinyConfig.fir@112991.4]
  assign _T_7 = state == 3'h2; // @[ScratchpadSlavePort.scala 86:44:freechips.rocketchip.system.TinyConfig.fir@112992.4]
  assign _T_8 = _T_7 & io_dmem_resp_valid; // @[ScratchpadSlavePort.scala 86:56:freechips.rocketchip.system.TinyConfig.fir@112993.4]
  assign _T_9 = _T_8 & auto_in_d_ready; // @[ScratchpadSlavePort.scala 86:78:freechips.rocketchip.system.TinyConfig.fir@112994.4]
  assign ready = _T_6 | _T_9; // @[ScratchpadSlavePort.scala 86:35:freechips.rocketchip.system.TinyConfig.fir@112995.4]
  assign _T_10 = auto_in_a_valid & ready; // @[ScratchpadSlavePort.scala 87:38:freechips.rocketchip.system.TinyConfig.fir@112996.4]
  assign _T_11 = state == 3'h3; // @[ScratchpadSlavePort.scala 87:57:freechips.rocketchip.system.TinyConfig.fir@112997.4]
  assign dmem_req_valid = _T_10 | _T_11; // @[ScratchpadSlavePort.scala 87:48:freechips.rocketchip.system.TinyConfig.fir@112998.4]
  assign _T_2 = dmem_req_valid & io_dmem_req_ready; // @[ScratchpadSlavePort.scala 52:26:freechips.rocketchip.system.TinyConfig.fir@112979.4]
  assign tl_in_a_ready = io_dmem_req_ready & ready; // @[ScratchpadSlavePort.scala 91:40:freechips.rocketchip.system.TinyConfig.fir@113004.4]
  assign _T_3 = tl_in_a_ready & auto_in_a_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.TinyConfig.fir@112984.4]
  assign ready_likely = _T_6 | _T_7; // @[ScratchpadSlavePort.scala 85:42:freechips.rocketchip.system.TinyConfig.fir@112990.4]
  assign _T_13 = auto_in_a_valid & ready_likely; // @[ScratchpadSlavePort.scala 88:48:freechips.rocketchip.system.TinyConfig.fir@113000.4]
  assign _T_17_opcode = _T_11 ? acq_opcode : auto_in_a_bits_opcode; // @[ScratchpadSlavePort.scala 92:41:freechips.rocketchip.system.TinyConfig.fir@113007.4]
  assign _T_17_param = _T_11 ? acq_param : auto_in_a_bits_param; // @[ScratchpadSlavePort.scala 92:41:freechips.rocketchip.system.TinyConfig.fir@113007.4]
  assign _T_21 = 3'h4 == _T_17_param; // @[Mux.scala 69:19:freechips.rocketchip.system.TinyConfig.fir@113014.4]
  assign _T_22 = _T_21 ? 4'h8 : 4'h0; // @[Mux.scala 69:16:freechips.rocketchip.system.TinyConfig.fir@113015.4]
  assign _T_23 = 3'h3 == _T_17_param; // @[Mux.scala 69:19:freechips.rocketchip.system.TinyConfig.fir@113016.4]
  assign _T_24 = _T_23 ? 4'hf : _T_22; // @[Mux.scala 69:16:freechips.rocketchip.system.TinyConfig.fir@113017.4]
  assign _T_25 = 3'h2 == _T_17_param; // @[Mux.scala 69:19:freechips.rocketchip.system.TinyConfig.fir@113018.4]
  assign _T_26 = _T_25 ? 4'he : _T_24; // @[Mux.scala 69:16:freechips.rocketchip.system.TinyConfig.fir@113019.4]
  assign _T_27 = 3'h1 == _T_17_param; // @[Mux.scala 69:19:freechips.rocketchip.system.TinyConfig.fir@113020.4]
  assign _T_28 = _T_27 ? 4'hd : _T_26; // @[Mux.scala 69:16:freechips.rocketchip.system.TinyConfig.fir@113021.4]
  assign _T_29 = 3'h0 == _T_17_param; // @[Mux.scala 69:19:freechips.rocketchip.system.TinyConfig.fir@113022.4]
  assign _T_30 = _T_29 ? 4'hc : _T_28; // @[Mux.scala 69:16:freechips.rocketchip.system.TinyConfig.fir@113023.4]
  assign _T_33 = _T_23 ? 3'h4 : 3'h0; // @[Mux.scala 69:16:freechips.rocketchip.system.TinyConfig.fir@113027.4]
  assign _T_35 = _T_25 ? 4'hb : {{1'd0}, _T_33}; // @[Mux.scala 69:16:freechips.rocketchip.system.TinyConfig.fir@113029.4]
  assign _T_37 = _T_27 ? 4'ha : _T_35; // @[Mux.scala 69:16:freechips.rocketchip.system.TinyConfig.fir@113031.4]
  assign _T_39 = _T_29 ? 4'h9 : _T_37; // @[Mux.scala 69:16:freechips.rocketchip.system.TinyConfig.fir@113033.4]
  assign _T_42 = 3'h3 == _T_17_opcode; // @[Mux.scala 69:19:freechips.rocketchip.system.TinyConfig.fir@113036.4]
  assign _T_43 = _T_42 ? _T_39 : 4'h0; // @[Mux.scala 69:16:freechips.rocketchip.system.TinyConfig.fir@113037.4]
  assign _T_44 = 3'h2 == _T_17_opcode; // @[Mux.scala 69:19:freechips.rocketchip.system.TinyConfig.fir@113038.4]
  assign _T_45 = _T_44 ? _T_30 : _T_43; // @[Mux.scala 69:16:freechips.rocketchip.system.TinyConfig.fir@113039.4]
  assign _T_46 = 3'h1 == _T_17_opcode; // @[Mux.scala 69:19:freechips.rocketchip.system.TinyConfig.fir@113040.4]
  assign _T_47 = _T_46 ? 5'h11 : {{1'd0}, _T_45}; // @[Mux.scala 69:16:freechips.rocketchip.system.TinyConfig.fir@113041.4]
  assign _T_48 = 3'h0 == _T_17_opcode; // @[Mux.scala 69:19:freechips.rocketchip.system.TinyConfig.fir@113042.4]
  assign _T_53 = acq_opcode == 3'h0; // @[package.scala 15:47:freechips.rocketchip.system.TinyConfig.fir@113059.4]
  assign _T_54 = acq_opcode == 3'h1; // @[package.scala 15:47:freechips.rocketchip.system.TinyConfig.fir@113060.4]
  assign _T_55 = _T_53 | _T_54; // @[package.scala 15:62:freechips.rocketchip.system.TinyConfig.fir@113061.4]
  assign auto_in_a_ready = io_dmem_req_ready & ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.TinyConfig.fir@112961.4]
  assign auto_in_d_valid = io_dmem_resp_valid | _T_51; // @[LazyModule.scala 173:31:freechips.rocketchip.system.TinyConfig.fir@112961.4]
  assign auto_in_d_bits_opcode = _T_55 ? 3'h0 : 3'h1; // @[LazyModule.scala 173:31:freechips.rocketchip.system.TinyConfig.fir@112961.4]
  assign auto_in_d_bits_size = acq_size; // @[LazyModule.scala 173:31:freechips.rocketchip.system.TinyConfig.fir@112961.4]
  assign auto_in_d_bits_source = acq_source; // @[LazyModule.scala 173:31:freechips.rocketchip.system.TinyConfig.fir@112961.4]
  assign auto_in_d_bits_data = _T_7 ? io_dmem_resp_bits_data_raw : _T_60; // @[LazyModule.scala 173:31:freechips.rocketchip.system.TinyConfig.fir@112961.4]
  assign io_dmem_req_valid = _T_13 | _T_11; // @[ScratchpadSlavePort.scala 90:23:freechips.rocketchip.system.TinyConfig.fir@113003.4]
  assign io_dmem_req_bits_addr = _T_11 ? acq_address : auto_in_a_bits_address; // @[ScratchpadSlavePort.scala 92:22:freechips.rocketchip.system.TinyConfig.fir@113050.4]
  assign io_dmem_req_bits_cmd = _T_48 ? 5'h1 : _T_47; // @[ScratchpadSlavePort.scala 92:22:freechips.rocketchip.system.TinyConfig.fir@113050.4]
  assign io_dmem_req_bits_size = _T_11 ? acq_size : auto_in_a_bits_size; // @[ScratchpadSlavePort.scala 92:22:freechips.rocketchip.system.TinyConfig.fir@113050.4]
  assign io_dmem_s1_kill = state != 3'h1; // @[ScratchpadSlavePort.scala 95:21:freechips.rocketchip.system.TinyConfig.fir@113054.4]
  assign io_dmem_s1_data_data = acq_data; // @[ScratchpadSlavePort.scala 93:26:freechips.rocketchip.system.TinyConfig.fir@113051.4]
  assign io_dmem_s1_data_mask = acq_mask; // @[ScratchpadSlavePort.scala 94:26:freechips.rocketchip.system.TinyConfig.fir@113052.4]
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
  state = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  acq_opcode = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  acq_param = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  acq_size = _RAND_3[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  acq_source = _RAND_4[10:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  acq_address = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  acq_mask = _RAND_6[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  acq_data = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_60 = _RAND_8[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (reset) begin
      state <= 3'h0;
    end else begin
      if (_T_2) begin
        state <= 3'h1;
      end else begin
        if (io_dmem_s2_nack) begin
          state <= 3'h3;
        end else begin
          if (_T_1) begin
            state <= 3'h0;
          end else begin
            if (io_dmem_resp_valid) begin
              state <= 3'h4;
            end else begin
              if (_T) begin
                state <= 3'h2;
              end
            end
          end
        end
      end
    end
    if (_T_3) begin
      acq_opcode <= auto_in_a_bits_opcode;
    end
    if (_T_3) begin
      acq_param <= auto_in_a_bits_param;
    end
    if (_T_3) begin
      acq_size <= auto_in_a_bits_size;
    end
    if (_T_3) begin
      acq_source <= auto_in_a_bits_source;
    end
    if (_T_3) begin
      acq_address <= auto_in_a_bits_address;
    end
    if (_T_3) begin
      acq_mask <= auto_in_a_bits_mask;
    end
    if (_T_3) begin
      acq_data <= auto_in_a_bits_data;
    end
    if (_T_7) begin
      _T_60 <= io_dmem_resp_bits_data_raw;
    end
  end
endmodule