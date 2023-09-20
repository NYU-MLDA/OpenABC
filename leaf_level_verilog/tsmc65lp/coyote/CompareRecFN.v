module CompareRecFN
(
  io_a,
  io_b,
  io_signaling,
  io_lt,
  io_eq,
  io_gt,
  io_exceptionFlags
);

  input [64:0] io_a;
  input [64:0] io_b;
  output [4:0] io_exceptionFlags;
  input io_signaling;
  output io_lt;
  output io_eq;
  output io_gt;
  wire [4:0] io_exceptionFlags;
  wire io_lt,io_eq,io_gt,N0,T15,T1,T2,ordered,T9,T3,rawB_isNaN,rawA_isNaN,T22,T16,T17,
  T23,T50,T29,ordered_eq,bothZeros,T30,T43,T31,bothInfs,common_eqMags,eqExps,T32,
  rawA_isInf,rawB_isInf,T38,T41,T51,ordered_lt,T67,T52,T65,T53,T64,T54,T60,T55,T59,
  common_ltMags,T58,T56,T57,T62,T61,T63,T66,N1,N2,N3,N4,N5,N6,N7,N8;
  assign io_exceptionFlags[0] = 1'b0;
  assign io_exceptionFlags[1] = 1'b0;
  assign io_exceptionFlags[2] = 1'b0;
  assign io_exceptionFlags[3] = 1'b0;
  assign T32 = { 1'b0, 1'b1, io_a[51:0], 1'b0, 1'b0 } == { 1'b0, 1'b1, io_b[51:0], 1'b0, 1'b0 };
  assign eqExps = { 1'b0, io_a[63:52] } == { 1'b0, io_b[63:52] };
  assign N0 = io_a[64] ^ io_b[64];
  assign T43 = ~N0;
  assign T57 = { 1'b0, 1'b1, io_a[51:0], 1'b0, 1'b0 } < { 1'b0, 1'b1, io_b[51:0], 1'b0, 1'b0 };
  assign T58 = $signed({ 1'b0, io_a[63:52] }) < $signed({ 1'b0, io_b[63:52] });
  assign N1 = io_a[62] | io_a[63];
  assign N2 = io_a[61] | N1;
  assign N3 = ~N2;
  assign N4 = io_b[62] | io_b[63];
  assign N5 = io_b[61] | N4;
  assign N6 = ~N5;
  assign N7 = io_a[62] & io_a[63];
  assign N8 = io_b[62] & io_b[63];
  assign io_exceptionFlags[4] = T15 | T1;
  assign T1 = io_signaling & T2;
  assign T2 = ~ordered;
  assign ordered = T9 & T3;
  assign T3 = ~rawB_isNaN;
  assign rawB_isNaN = N8 & io_b[61];
  assign T9 = ~rawA_isNaN;
  assign rawA_isNaN = N7 & io_a[61];
  assign T15 = T22 | T16;
  assign T16 = rawB_isNaN & T17;
  assign T17 = ~io_b[51];
  assign T22 = rawA_isNaN & T23;
  assign T23 = ~io_a[51];
  assign io_gt = T50 & T29;
  assign T29 = ~ordered_eq;
  assign ordered_eq = bothZeros | T30;
  assign T30 = T43 & T31;
  assign T31 = bothInfs | common_eqMags;
  assign common_eqMags = eqExps & T32;
  assign bothInfs = rawA_isInf & rawB_isInf;
  assign rawB_isInf = N8 & T38;
  assign T38 = ~io_b[61];
  assign rawA_isInf = N7 & T41;
  assign T41 = ~io_a[61];
  assign bothZeros = N3 & N6;
  assign T50 = ordered & T51;
  assign T51 = ~ordered_lt;
  assign ordered_lt = T67 & T52;
  assign T52 = T65 | T53;
  assign T53 = T64 & T54;
  assign T54 = T60 | T55;
  assign T55 = T59 & common_ltMags;
  assign common_ltMags = T58 | T56;
  assign T56 = eqExps & T57;
  assign T59 = ~io_b[64];
  assign T60 = T62 & T61;
  assign T61 = ~common_eqMags;
  assign T62 = io_a[64] & T63;
  assign T63 = ~common_ltMags;
  assign T64 = ~bothInfs;
  assign T65 = io_a[64] & T66;
  assign T66 = ~io_b[64];
  assign T67 = ~bothZeros;
  assign io_eq = ordered & ordered_eq;
  assign io_lt = ordered & ordered_lt;

endmodule