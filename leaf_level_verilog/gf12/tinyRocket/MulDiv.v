module MulDiv( // @[:freechips.rocketchip.system.TinyConfig.fir@123475.2]
  input         clock, // @[:freechips.rocketchip.system.TinyConfig.fir@123476.4]
  input         reset, // @[:freechips.rocketchip.system.TinyConfig.fir@123477.4]
  output        io_req_ready, // @[:freechips.rocketchip.system.TinyConfig.fir@123478.4]
  input         io_req_valid, // @[:freechips.rocketchip.system.TinyConfig.fir@123478.4]
  input  [3:0]  io_req_bits_fn, // @[:freechips.rocketchip.system.TinyConfig.fir@123478.4]
  input  [31:0] io_req_bits_in1, // @[:freechips.rocketchip.system.TinyConfig.fir@123478.4]
  input  [31:0] io_req_bits_in2, // @[:freechips.rocketchip.system.TinyConfig.fir@123478.4]
  input  [4:0]  io_req_bits_tag, // @[:freechips.rocketchip.system.TinyConfig.fir@123478.4]
  input         io_kill, // @[:freechips.rocketchip.system.TinyConfig.fir@123478.4]
  input         io_resp_ready, // @[:freechips.rocketchip.system.TinyConfig.fir@123478.4]
  output        io_resp_valid, // @[:freechips.rocketchip.system.TinyConfig.fir@123478.4]
  output [31:0] io_resp_bits_data, // @[:freechips.rocketchip.system.TinyConfig.fir@123478.4]
  output [4:0]  io_resp_bits_tag // @[:freechips.rocketchip.system.TinyConfig.fir@123478.4]
);
  reg [2:0] state; // @[Multiplier.scala 51:18:freechips.rocketchip.system.TinyConfig.fir@123483.4]
  reg [31:0] _RAND_0;
  reg [4:0] req_tag; // @[Multiplier.scala 53:16:freechips.rocketchip.system.TinyConfig.fir@123484.4]
  reg [31:0] _RAND_1;
  reg [5:0] count; // @[Multiplier.scala 54:18:freechips.rocketchip.system.TinyConfig.fir@123485.4]
  reg [31:0] _RAND_2;
  reg  neg_out; // @[Multiplier.scala 57:20:freechips.rocketchip.system.TinyConfig.fir@123486.4]
  reg [31:0] _RAND_3;
  reg  isHi; // @[Multiplier.scala 58:17:freechips.rocketchip.system.TinyConfig.fir@123487.4]
  reg [31:0] _RAND_4;
  reg  resHi; // @[Multiplier.scala 59:18:freechips.rocketchip.system.TinyConfig.fir@123488.4]
  reg [31:0] _RAND_5;
  reg [32:0] divisor; // @[Multiplier.scala 60:20:freechips.rocketchip.system.TinyConfig.fir@123489.4]
  reg [63:0] _RAND_6;
  reg [65:0] remainder; // @[Multiplier.scala 61:22:freechips.rocketchip.system.TinyConfig.fir@123490.4]
  reg [95:0] _RAND_7;
  wire [3:0] _T; // @[Decode.scala 14:65:freechips.rocketchip.system.TinyConfig.fir@123491.4]
  wire  cmdMul; // @[Decode.scala 14:121:freechips.rocketchip.system.TinyConfig.fir@123492.4]
  wire [3:0] _T_3; // @[Decode.scala 14:65:freechips.rocketchip.system.TinyConfig.fir@123494.4]
  wire  _T_4; // @[Decode.scala 14:121:freechips.rocketchip.system.TinyConfig.fir@123495.4]
  wire [3:0] _T_5; // @[Decode.scala 14:65:freechips.rocketchip.system.TinyConfig.fir@123496.4]
  wire  _T_6; // @[Decode.scala 14:121:freechips.rocketchip.system.TinyConfig.fir@123497.4]
  wire  cmdHi; // @[Decode.scala 15:30:freechips.rocketchip.system.TinyConfig.fir@123499.4]
  wire [3:0] _T_9; // @[Decode.scala 14:65:freechips.rocketchip.system.TinyConfig.fir@123500.4]
  wire  _T_10; // @[Decode.scala 14:121:freechips.rocketchip.system.TinyConfig.fir@123501.4]
  wire [3:0] _T_11; // @[Decode.scala 14:65:freechips.rocketchip.system.TinyConfig.fir@123502.4]
  wire  _T_12; // @[Decode.scala 14:121:freechips.rocketchip.system.TinyConfig.fir@123503.4]
  wire  lhsSigned; // @[Decode.scala 15:30:freechips.rocketchip.system.TinyConfig.fir@123505.4]
  wire  _T_16; // @[Decode.scala 14:121:freechips.rocketchip.system.TinyConfig.fir@123507.4]
  wire  rhsSigned; // @[Decode.scala 15:30:freechips.rocketchip.system.TinyConfig.fir@123509.4]
  wire  _T_22; // @[Multiplier.scala 81:48:freechips.rocketchip.system.TinyConfig.fir@123517.4]
  wire  lhs_sign; // @[Multiplier.scala 81:23:freechips.rocketchip.system.TinyConfig.fir@123519.4]
  wire [15:0] _T_26; // @[Multiplier.scala 82:43:freechips.rocketchip.system.TinyConfig.fir@123522.4]
  wire [15:0] _T_28; // @[Multiplier.scala 83:15:freechips.rocketchip.system.TinyConfig.fir@123524.4]
  wire [31:0] lhs_in; // @[Cat.scala 30:58:freechips.rocketchip.system.TinyConfig.fir@123525.4]
  wire  _T_32; // @[Multiplier.scala 81:48:freechips.rocketchip.system.TinyConfig.fir@123529.4]
  wire  rhs_sign; // @[Multiplier.scala 81:23:freechips.rocketchip.system.TinyConfig.fir@123531.4]
  wire [15:0] _T_36; // @[Multiplier.scala 82:43:freechips.rocketchip.system.TinyConfig.fir@123534.4]
  wire [15:0] _T_38; // @[Multiplier.scala 83:15:freechips.rocketchip.system.TinyConfig.fir@123536.4]
  wire [32:0] _T_39; // @[Multiplier.scala 88:29:freechips.rocketchip.system.TinyConfig.fir@123538.4]
  wire [32:0] subtractor; // @[Multiplier.scala 88:37:freechips.rocketchip.system.TinyConfig.fir@123540.4]
  wire [31:0] _T_41; // @[Multiplier.scala 89:36:freechips.rocketchip.system.TinyConfig.fir@123541.4]
  wire [31:0] _T_42; // @[Multiplier.scala 89:57:freechips.rocketchip.system.TinyConfig.fir@123542.4]
  wire [31:0] result; // @[Multiplier.scala 89:19:freechips.rocketchip.system.TinyConfig.fir@123543.4]
  wire [31:0] negated_remainder; // @[Multiplier.scala 90:27:freechips.rocketchip.system.TinyConfig.fir@123545.4]
  wire  _T_44; // @[Multiplier.scala 92:39:freechips.rocketchip.system.TinyConfig.fir@123546.4]
  wire  _T_45; // @[Multiplier.scala 93:20:freechips.rocketchip.system.TinyConfig.fir@123548.6]
  wire  _T_46; // @[Multiplier.scala 96:18:freechips.rocketchip.system.TinyConfig.fir@123552.6]
  wire  _T_47; // @[Multiplier.scala 101:39:freechips.rocketchip.system.TinyConfig.fir@123558.4]
  wire  _T_48; // @[Multiplier.scala 106:39:freechips.rocketchip.system.TinyConfig.fir@123564.4]
  wire [32:0] _T_49; // @[Multiplier.scala 107:31:freechips.rocketchip.system.TinyConfig.fir@123566.6]
  wire [64:0] _T_51; // @[Cat.scala 30:58:freechips.rocketchip.system.TinyConfig.fir@123568.6]
  wire  _T_52; // @[Multiplier.scala 108:31:freechips.rocketchip.system.TinyConfig.fir@123569.6]
  wire [31:0] _T_53; // @[Multiplier.scala 109:24:freechips.rocketchip.system.TinyConfig.fir@123570.6]
  wire [32:0] _T_54; // @[Multiplier.scala 110:23:freechips.rocketchip.system.TinyConfig.fir@123571.6]
  wire [32:0] _T_55; // @[Multiplier.scala 110:37:freechips.rocketchip.system.TinyConfig.fir@123572.6]
  wire [32:0] _T_56; // @[Multiplier.scala 111:26:freechips.rocketchip.system.TinyConfig.fir@123573.6]
  wire [7:0] _T_57; // @[Multiplier.scala 112:38:freechips.rocketchip.system.TinyConfig.fir@123574.6]
  wire [8:0] _T_58; // @[Cat.scala 30:58:freechips.rocketchip.system.TinyConfig.fir@123575.6]
  wire [8:0] _T_59; // @[Multiplier.scala 112:60:freechips.rocketchip.system.TinyConfig.fir@123576.6]
  wire [32:0] _GEN_35; // @[Multiplier.scala 112:67:freechips.rocketchip.system.TinyConfig.fir@123577.6]
  wire [41:0] _T_60; // @[Multiplier.scala 112:67:freechips.rocketchip.system.TinyConfig.fir@123577.6]
  wire [41:0] _GEN_36; // @[Multiplier.scala 112:76:freechips.rocketchip.system.TinyConfig.fir@123578.6]
  wire [41:0] _T_62; // @[Multiplier.scala 112:76:freechips.rocketchip.system.TinyConfig.fir@123579.6]
  wire [41:0] _T_63; // @[Multiplier.scala 112:76:freechips.rocketchip.system.TinyConfig.fir@123580.6]
  wire [23:0] _T_64; // @[Multiplier.scala 113:38:freechips.rocketchip.system.TinyConfig.fir@123581.6]
  wire [41:0] _T_65; // @[Cat.scala 30:58:freechips.rocketchip.system.TinyConfig.fir@123582.6]
  wire [65:0] _T_66; // @[Cat.scala 30:58:freechips.rocketchip.system.TinyConfig.fir@123583.6]
  wire  _T_67; // @[Multiplier.scala 114:32:freechips.rocketchip.system.TinyConfig.fir@123584.6]
  wire  _T_68; // @[Multiplier.scala 114:57:freechips.rocketchip.system.TinyConfig.fir@123585.6]
  wire  _T_77; // @[Multiplier.scala 118:7:freechips.rocketchip.system.TinyConfig.fir@123594.6]
  wire [32:0] _T_88; // @[Multiplier.scala 120:37:freechips.rocketchip.system.TinyConfig.fir@123605.6]
  wire [31:0] _T_90; // @[Multiplier.scala 120:82:freechips.rocketchip.system.TinyConfig.fir@123607.6]
  wire [64:0] _T_91; // @[Cat.scala 30:58:freechips.rocketchip.system.TinyConfig.fir@123608.6]
  wire [32:0] _T_92; // @[Multiplier.scala 121:34:freechips.rocketchip.system.TinyConfig.fir@123609.6]
  wire [31:0] _T_93; // @[Multiplier.scala 121:67:freechips.rocketchip.system.TinyConfig.fir@123610.6]
  wire [65:0] _T_95; // @[Cat.scala 30:58:freechips.rocketchip.system.TinyConfig.fir@123612.6]
  wire [5:0] _T_97; // @[Multiplier.scala 123:20:freechips.rocketchip.system.TinyConfig.fir@123615.6]
  wire  _T_98; // @[Multiplier.scala 124:25:freechips.rocketchip.system.TinyConfig.fir@123617.6]
  wire  _T_100; // @[Multiplier.scala 129:39:freechips.rocketchip.system.TinyConfig.fir@123624.4]
  wire  _T_101; // @[Multiplier.scala 133:28:freechips.rocketchip.system.TinyConfig.fir@123626.6]
  wire [31:0] _T_102; // @[Multiplier.scala 134:24:freechips.rocketchip.system.TinyConfig.fir@123627.6]
  wire [31:0] _T_103; // @[Multiplier.scala 134:45:freechips.rocketchip.system.TinyConfig.fir@123628.6]
  wire [31:0] _T_104; // @[Multiplier.scala 134:14:freechips.rocketchip.system.TinyConfig.fir@123629.6]
  wire  _T_106; // @[Multiplier.scala 134:67:freechips.rocketchip.system.TinyConfig.fir@123631.6]
  wire [64:0] _T_108; // @[Cat.scala 30:58:freechips.rocketchip.system.TinyConfig.fir@123633.6]
  wire  _T_109; // @[Multiplier.scala 138:17:freechips.rocketchip.system.TinyConfig.fir@123635.6]
  wire  _T_113; // @[Multiplier.scala 146:24:freechips.rocketchip.system.TinyConfig.fir@123644.6]
  wire  _T_116; // @[Multiplier.scala 146:30:freechips.rocketchip.system.TinyConfig.fir@123647.6]
  wire  _T_118; // @[Multiplier.scala 159:18:freechips.rocketchip.system.TinyConfig.fir@123649.6]
  wire  _T_119; // @[Decoupled.scala 37:37:freechips.rocketchip.system.TinyConfig.fir@123654.4]
  wire  _T_120; // @[Multiplier.scala 161:24:freechips.rocketchip.system.TinyConfig.fir@123655.4]
  wire  _T_121; // @[Decoupled.scala 37:37:freechips.rocketchip.system.TinyConfig.fir@123659.4]
  wire  _T_122; // @[Multiplier.scala 165:46:freechips.rocketchip.system.TinyConfig.fir@123661.6]
  wire  _T_129; // @[Multiplier.scala 169:46:freechips.rocketchip.system.TinyConfig.fir@123672.6]
  wire [32:0] _T_131; // @[Cat.scala 30:58:freechips.rocketchip.system.TinyConfig.fir@123675.6]
  wire [15:0] _T_140; // @[Multiplier.scala 176:69:freechips.rocketchip.system.TinyConfig.fir@123689.4]
  wire [15:0] loOut; // @[Multiplier.scala 176:86:freechips.rocketchip.system.TinyConfig.fir@123690.4]
  wire  _T_149; // @[Multiplier.scala 180:27:freechips.rocketchip.system.TinyConfig.fir@123702.4]
  wire  _T_150; // @[Multiplier.scala 180:51:freechips.rocketchip.system.TinyConfig.fir@123703.4]
  assign _T = io_req_bits_fn & 4'h4; // @[Decode.scala 14:65:freechips.rocketchip.system.TinyConfig.fir@123491.4]
  assign cmdMul = _T == 4'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.TinyConfig.fir@123492.4]
  assign _T_3 = io_req_bits_fn & 4'h5; // @[Decode.scala 14:65:freechips.rocketchip.system.TinyConfig.fir@123494.4]
  assign _T_4 = _T_3 == 4'h1; // @[Decode.scala 14:121:freechips.rocketchip.system.TinyConfig.fir@123495.4]
  assign _T_5 = io_req_bits_fn & 4'h2; // @[Decode.scala 14:65:freechips.rocketchip.system.TinyConfig.fir@123496.4]
  assign _T_6 = _T_5 == 4'h2; // @[Decode.scala 14:121:freechips.rocketchip.system.TinyConfig.fir@123497.4]
  assign cmdHi = _T_4 | _T_6; // @[Decode.scala 15:30:freechips.rocketchip.system.TinyConfig.fir@123499.4]
  assign _T_9 = io_req_bits_fn & 4'h6; // @[Decode.scala 14:65:freechips.rocketchip.system.TinyConfig.fir@123500.4]
  assign _T_10 = _T_9 == 4'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.TinyConfig.fir@123501.4]
  assign _T_11 = io_req_bits_fn & 4'h1; // @[Decode.scala 14:65:freechips.rocketchip.system.TinyConfig.fir@123502.4]
  assign _T_12 = _T_11 == 4'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.TinyConfig.fir@123503.4]
  assign lhsSigned = _T_10 | _T_12; // @[Decode.scala 15:30:freechips.rocketchip.system.TinyConfig.fir@123505.4]
  assign _T_16 = _T_3 == 4'h4; // @[Decode.scala 14:121:freechips.rocketchip.system.TinyConfig.fir@123507.4]
  assign rhsSigned = _T_10 | _T_16; // @[Decode.scala 15:30:freechips.rocketchip.system.TinyConfig.fir@123509.4]
  assign _T_22 = io_req_bits_in1[31]; // @[Multiplier.scala 81:48:freechips.rocketchip.system.TinyConfig.fir@123517.4]
  assign lhs_sign = lhsSigned & _T_22; // @[Multiplier.scala 81:23:freechips.rocketchip.system.TinyConfig.fir@123519.4]
  assign _T_26 = io_req_bits_in1[31:16]; // @[Multiplier.scala 82:43:freechips.rocketchip.system.TinyConfig.fir@123522.4]
  assign _T_28 = io_req_bits_in1[15:0]; // @[Multiplier.scala 83:15:freechips.rocketchip.system.TinyConfig.fir@123524.4]
  assign lhs_in = {_T_26,_T_28}; // @[Cat.scala 30:58:freechips.rocketchip.system.TinyConfig.fir@123525.4]
  assign _T_32 = io_req_bits_in2[31]; // @[Multiplier.scala 81:48:freechips.rocketchip.system.TinyConfig.fir@123529.4]
  assign rhs_sign = rhsSigned & _T_32; // @[Multiplier.scala 81:23:freechips.rocketchip.system.TinyConfig.fir@123531.4]
  assign _T_36 = io_req_bits_in2[31:16]; // @[Multiplier.scala 82:43:freechips.rocketchip.system.TinyConfig.fir@123534.4]
  assign _T_38 = io_req_bits_in2[15:0]; // @[Multiplier.scala 83:15:freechips.rocketchip.system.TinyConfig.fir@123536.4]
  assign _T_39 = remainder[64:32]; // @[Multiplier.scala 88:29:freechips.rocketchip.system.TinyConfig.fir@123538.4]
  assign subtractor = _T_39 - divisor; // @[Multiplier.scala 88:37:freechips.rocketchip.system.TinyConfig.fir@123540.4]
  assign _T_41 = remainder[64:33]; // @[Multiplier.scala 89:36:freechips.rocketchip.system.TinyConfig.fir@123541.4]
  assign _T_42 = remainder[31:0]; // @[Multiplier.scala 89:57:freechips.rocketchip.system.TinyConfig.fir@123542.4]
  assign result = resHi ? _T_41 : _T_42; // @[Multiplier.scala 89:19:freechips.rocketchip.system.TinyConfig.fir@123543.4]
  assign negated_remainder = 32'h0 - result; // @[Multiplier.scala 90:27:freechips.rocketchip.system.TinyConfig.fir@123545.4]
  assign _T_44 = state == 3'h1; // @[Multiplier.scala 92:39:freechips.rocketchip.system.TinyConfig.fir@123546.4]
  assign _T_45 = remainder[31]; // @[Multiplier.scala 93:20:freechips.rocketchip.system.TinyConfig.fir@123548.6]
  assign _T_46 = divisor[31]; // @[Multiplier.scala 96:18:freechips.rocketchip.system.TinyConfig.fir@123552.6]
  assign _T_47 = state == 3'h5; // @[Multiplier.scala 101:39:freechips.rocketchip.system.TinyConfig.fir@123558.4]
  assign _T_48 = state == 3'h2; // @[Multiplier.scala 106:39:freechips.rocketchip.system.TinyConfig.fir@123564.4]
  assign _T_49 = remainder[65:33]; // @[Multiplier.scala 107:31:freechips.rocketchip.system.TinyConfig.fir@123566.6]
  assign _T_51 = {_T_49,_T_42}; // @[Cat.scala 30:58:freechips.rocketchip.system.TinyConfig.fir@123568.6]
  assign _T_52 = remainder[32]; // @[Multiplier.scala 108:31:freechips.rocketchip.system.TinyConfig.fir@123569.6]
  assign _T_53 = _T_51[31:0]; // @[Multiplier.scala 109:24:freechips.rocketchip.system.TinyConfig.fir@123570.6]
  assign _T_54 = _T_51[64:32]; // @[Multiplier.scala 110:23:freechips.rocketchip.system.TinyConfig.fir@123571.6]
  assign _T_55 = $signed(_T_54); // @[Multiplier.scala 110:37:freechips.rocketchip.system.TinyConfig.fir@123572.6]
  assign _T_56 = $signed(divisor); // @[Multiplier.scala 111:26:freechips.rocketchip.system.TinyConfig.fir@123573.6]
  assign _T_57 = _T_53[7:0]; // @[Multiplier.scala 112:38:freechips.rocketchip.system.TinyConfig.fir@123574.6]
  assign _T_58 = {_T_52,_T_57}; // @[Cat.scala 30:58:freechips.rocketchip.system.TinyConfig.fir@123575.6]
  assign _T_59 = $signed(_T_58); // @[Multiplier.scala 112:60:freechips.rocketchip.system.TinyConfig.fir@123576.6]
  assign _GEN_35 = {{24{_T_59[8]}},_T_59}; // @[Multiplier.scala 112:67:freechips.rocketchip.system.TinyConfig.fir@123577.6]
  assign _T_60 = $signed(_GEN_35) * $signed(_T_56); // @[Multiplier.scala 112:67:freechips.rocketchip.system.TinyConfig.fir@123577.6]
  assign _GEN_36 = {{9{_T_55[32]}},_T_55}; // @[Multiplier.scala 112:76:freechips.rocketchip.system.TinyConfig.fir@123578.6]
  assign _T_62 = $signed(_T_60) + $signed(_GEN_36); // @[Multiplier.scala 112:76:freechips.rocketchip.system.TinyConfig.fir@123579.6]
  assign _T_63 = $signed(_T_62); // @[Multiplier.scala 112:76:freechips.rocketchip.system.TinyConfig.fir@123580.6]
  assign _T_64 = _T_53[31:8]; // @[Multiplier.scala 113:38:freechips.rocketchip.system.TinyConfig.fir@123581.6]
  assign _T_65 = $unsigned(_T_63); // @[Cat.scala 30:58:freechips.rocketchip.system.TinyConfig.fir@123582.6]
  assign _T_66 = {_T_65,_T_64}; // @[Cat.scala 30:58:freechips.rocketchip.system.TinyConfig.fir@123583.6]
  assign _T_67 = count == 6'h2; // @[Multiplier.scala 114:32:freechips.rocketchip.system.TinyConfig.fir@123584.6]
  assign _T_68 = _T_67 & neg_out; // @[Multiplier.scala 114:57:freechips.rocketchip.system.TinyConfig.fir@123585.6]
  assign _T_77 = isHi == 1'h0; // @[Multiplier.scala 118:7:freechips.rocketchip.system.TinyConfig.fir@123594.6]
  assign _T_88 = _T_66[64:32]; // @[Multiplier.scala 120:37:freechips.rocketchip.system.TinyConfig.fir@123605.6]
  assign _T_90 = _T_66[31:0]; // @[Multiplier.scala 120:82:freechips.rocketchip.system.TinyConfig.fir@123607.6]
  assign _T_91 = {_T_88,_T_90}; // @[Cat.scala 30:58:freechips.rocketchip.system.TinyConfig.fir@123608.6]
  assign _T_92 = _T_91[64:32]; // @[Multiplier.scala 121:34:freechips.rocketchip.system.TinyConfig.fir@123609.6]
  assign _T_93 = _T_91[31:0]; // @[Multiplier.scala 121:67:freechips.rocketchip.system.TinyConfig.fir@123610.6]
  assign _T_95 = {_T_92,_T_68,_T_93}; // @[Cat.scala 30:58:freechips.rocketchip.system.TinyConfig.fir@123612.6]
  assign _T_97 = count + 6'h1; // @[Multiplier.scala 123:20:freechips.rocketchip.system.TinyConfig.fir@123615.6]
  assign _T_98 = count == 6'h3; // @[Multiplier.scala 124:25:freechips.rocketchip.system.TinyConfig.fir@123617.6]
  assign _T_100 = state == 3'h3; // @[Multiplier.scala 129:39:freechips.rocketchip.system.TinyConfig.fir@123624.4]
  assign _T_101 = subtractor[32]; // @[Multiplier.scala 133:28:freechips.rocketchip.system.TinyConfig.fir@123626.6]
  assign _T_102 = remainder[63:32]; // @[Multiplier.scala 134:24:freechips.rocketchip.system.TinyConfig.fir@123627.6]
  assign _T_103 = subtractor[31:0]; // @[Multiplier.scala 134:45:freechips.rocketchip.system.TinyConfig.fir@123628.6]
  assign _T_104 = _T_101 ? _T_102 : _T_103; // @[Multiplier.scala 134:14:freechips.rocketchip.system.TinyConfig.fir@123629.6]
  assign _T_106 = _T_101 == 1'h0; // @[Multiplier.scala 134:67:freechips.rocketchip.system.TinyConfig.fir@123631.6]
  assign _T_108 = {_T_104,_T_42,_T_106}; // @[Cat.scala 30:58:freechips.rocketchip.system.TinyConfig.fir@123633.6]
  assign _T_109 = count == 6'h20; // @[Multiplier.scala 138:17:freechips.rocketchip.system.TinyConfig.fir@123635.6]
  assign _T_113 = count == 6'h0; // @[Multiplier.scala 146:24:freechips.rocketchip.system.TinyConfig.fir@123644.6]
  assign _T_116 = _T_113 & _T_106; // @[Multiplier.scala 146:30:freechips.rocketchip.system.TinyConfig.fir@123647.6]
  assign _T_118 = _T_116 & _T_77; // @[Multiplier.scala 159:18:freechips.rocketchip.system.TinyConfig.fir@123649.6]
  assign _T_119 = io_resp_ready & io_resp_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.TinyConfig.fir@123654.4]
  assign _T_120 = _T_119 | io_kill; // @[Multiplier.scala 161:24:freechips.rocketchip.system.TinyConfig.fir@123655.4]
  assign _T_121 = io_req_ready & io_req_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.TinyConfig.fir@123659.4]
  assign _T_122 = lhs_sign | rhs_sign; // @[Multiplier.scala 165:46:freechips.rocketchip.system.TinyConfig.fir@123661.6]
  assign _T_129 = lhs_sign != rhs_sign; // @[Multiplier.scala 169:46:freechips.rocketchip.system.TinyConfig.fir@123672.6]
  assign _T_131 = {rhs_sign,_T_36,_T_38}; // @[Cat.scala 30:58:freechips.rocketchip.system.TinyConfig.fir@123675.6]
  assign _T_140 = result[31:16]; // @[Multiplier.scala 176:69:freechips.rocketchip.system.TinyConfig.fir@123689.4]
  assign loOut = result[15:0]; // @[Multiplier.scala 176:86:freechips.rocketchip.system.TinyConfig.fir@123690.4]
  assign _T_149 = state == 3'h6; // @[Multiplier.scala 180:27:freechips.rocketchip.system.TinyConfig.fir@123702.4]
  assign _T_150 = state == 3'h7; // @[Multiplier.scala 180:51:freechips.rocketchip.system.TinyConfig.fir@123703.4]
  assign io_req_ready = state == 3'h0; // @[Multiplier.scala 181:16:freechips.rocketchip.system.TinyConfig.fir@123707.4]
  assign io_resp_valid = _T_149 | _T_150; // @[Multiplier.scala 180:17:freechips.rocketchip.system.TinyConfig.fir@123705.4]
  assign io_resp_bits_data = {_T_140,loOut}; // @[Multiplier.scala 179:21:freechips.rocketchip.system.TinyConfig.fir@123701.4]
  assign io_resp_bits_tag = req_tag; // @[Multiplier.scala 178:16:freechips.rocketchip.system.TinyConfig.fir@123699.4]
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
  req_tag = _RAND_1[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  count = _RAND_2[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  neg_out = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  isHi = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  resHi = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {2{`RANDOM}};
  divisor = _RAND_6[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {3{`RANDOM}};
  remainder = _RAND_7[65:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (reset) begin
      state <= 3'h0;
    end else begin
      if (_T_121) begin
        if (cmdMul) begin
          state <= 3'h2;
        end else begin
          if (_T_122) begin
            state <= 3'h1;
          end else begin
            state <= 3'h3;
          end
        end
      end else begin
        if (_T_120) begin
          state <= 3'h0;
        end else begin
          if (_T_100) begin
            if (_T_109) begin
              if (neg_out) begin
                state <= 3'h5;
              end else begin
                state <= 3'h7;
              end
            end else begin
              if (_T_48) begin
                if (_T_98) begin
                  state <= 3'h6;
                end else begin
                  if (_T_47) begin
                    state <= 3'h7;
                  end else begin
                    if (_T_44) begin
                      state <= 3'h3;
                    end
                  end
                end
              end else begin
                if (_T_47) begin
                  state <= 3'h7;
                end else begin
                  if (_T_44) begin
                    state <= 3'h3;
                  end
                end
              end
            end
          end else begin
            if (_T_48) begin
              if (_T_98) begin
                state <= 3'h6;
              end else begin
                if (_T_47) begin
                  state <= 3'h7;
                end else begin
                  if (_T_44) begin
                    state <= 3'h3;
                  end
                end
              end
            end else begin
              if (_T_47) begin
                state <= 3'h7;
              end else begin
                if (_T_44) begin
                  state <= 3'h3;
                end
              end
            end
          end
        end
      end
    end
    if (_T_121) begin
      req_tag <= io_req_bits_tag;
    end
    if (_T_121) begin
      count <= 6'h0;
    end else begin
      if (_T_100) begin
        count <= _T_97;
      end else begin
        if (_T_48) begin
          count <= _T_97;
        end
      end
    end
    if (_T_121) begin
      if (cmdHi) begin
        neg_out <= lhs_sign;
      end else begin
        neg_out <= _T_129;
      end
    end else begin
      if (_T_100) begin
        if (_T_118) begin
          neg_out <= 1'h0;
        end
      end
    end
    if (_T_121) begin
      isHi <= cmdHi;
    end
    if (_T_121) begin
      resHi <= 1'h0;
    end else begin
      if (_T_100) begin
        if (_T_109) begin
          resHi <= isHi;
        end else begin
          if (_T_48) begin
            if (_T_98) begin
              resHi <= isHi;
            end else begin
              if (_T_47) begin
                resHi <= 1'h0;
              end
            end
          end else begin
            if (_T_47) begin
              resHi <= 1'h0;
            end
          end
        end
      end else begin
        if (_T_48) begin
          if (_T_98) begin
            resHi <= isHi;
          end else begin
            if (_T_47) begin
              resHi <= 1'h0;
            end
          end
        end else begin
          if (_T_47) begin
            resHi <= 1'h0;
          end
        end
      end
    end
    if (_T_121) begin
      divisor <= _T_131;
    end else begin
      if (_T_44) begin
        if (_T_46) begin
          divisor <= subtractor;
        end
      end
    end
    if (_T_121) begin
      remainder <= {{34'd0}, lhs_in};
    end else begin
      if (_T_100) begin
        remainder <= {{1'd0}, _T_108};
      end else begin
        if (_T_48) begin
          remainder <= _T_95;
        end else begin
          if (_T_47) begin
            remainder <= {{34'd0}, negated_remainder};
          end else begin
            if (_T_44) begin
              if (_T_45) begin
                remainder <= {{34'd0}, negated_remainder};
              end
            end
          end
        end
      end
    end
  end
endmodule