module FPUDecoder
(
  io_inst,
  io_sigs_cmd,
  io_sigs_ldst,
  io_sigs_wen,
  io_sigs_ren1,
  io_sigs_ren2,
  io_sigs_ren3,
  io_sigs_swap12,
  io_sigs_swap23,
  io_sigs_single,
  io_sigs_fromint,
  io_sigs_toint,
  io_sigs_fastpipe,
  io_sigs_fma,
  io_sigs_div,
  io_sigs_sqrt,
  io_sigs_round,
  io_sigs_wflags
);

  input [31:0] io_inst;
  output [4:0] io_sigs_cmd;
  output io_sigs_ldst;
  output io_sigs_wen;
  output io_sigs_ren1;
  output io_sigs_ren2;
  output io_sigs_ren3;
  output io_sigs_swap12;
  output io_sigs_swap23;
  output io_sigs_single;
  output io_sigs_fromint;
  output io_sigs_toint;
  output io_sigs_fastpipe;
  output io_sigs_fma;
  output io_sigs_div;
  output io_sigs_sqrt;
  output io_sigs_round;
  output io_sigs_wflags;
  wire [4:0] io_sigs_cmd;
  wire io_sigs_ldst,io_sigs_wen,io_sigs_ren1,io_sigs_ren2,io_sigs_ren3,io_sigs_swap12,
  io_sigs_swap23,io_sigs_single,io_sigs_fromint,io_sigs_toint,io_sigs_fastpipe,
  io_sigs_fma,io_sigs_div,io_sigs_sqrt,io_sigs_round,io_sigs_wflags,T3,T6,T14,T20,T50,
  T54,T62,N1,N2,N4,N5,N6,N8,N9,N10,N12,N13,N14,N16,N17,N18,N19,N20,N21,N22,N23,
  N24,N25,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,
  N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,
  N65,N66,N67,N68,N69;
  assign io_sigs_cmd[4] = ~io_inst[4];
  assign N1 = io_inst[28] | io_inst[29];
  assign N2 = io_sigs_cmd[4] | N1;
  assign io_sigs_swap23 = ~N2;
  assign N4 = ~io_inst[31];
  assign N5 = N18 | N4;
  assign N6 = io_sigs_cmd[4] | N5;
  assign io_sigs_fromint = ~N6;
  assign N8 = N18 | io_inst[30];
  assign N9 = N21 | N8;
  assign N10 = io_sigs_cmd[4] | N9;
  assign io_sigs_div = ~N10;
  assign N12 = N16 | io_inst[31];
  assign N13 = N18 | N12;
  assign N14 = io_sigs_cmd[4] | N13;
  assign io_sigs_sqrt = ~N14;
  assign N16 = ~io_inst[30];
  assign N17 = ~io_inst[29];
  assign N18 = ~io_inst[28];
  assign N19 = io_sigs_cmd[4] | N18;
  assign N20 = ~N19;
  assign N21 = ~io_inst[27];
  assign N22 = io_sigs_cmd[4] | N21;
  assign N23 = ~N22;
  assign N24 = io_inst[5] | N18;
  assign N25 = ~N24;
  assign io_sigs_ldst = ~io_inst[6];
  assign N27 = N18 | N16;
  assign N28 = io_sigs_cmd[4] | N27;
  assign N29 = ~N28;
  assign N30 = io_inst[6] | io_inst[12];
  assign N31 = ~N30;
  assign N32 = io_sigs_ldst | io_inst[25];
  assign N33 = ~N32;
  assign N34 = io_inst[28] | N4;
  assign N35 = io_sigs_cmd[4] | N34;
  assign N36 = ~N35;
  assign N37 = N17 | io_inst[31];
  assign N38 = io_sigs_cmd[4] | N37;
  assign N39 = ~N38;
  assign N40 = io_inst[28] | N12;
  assign N41 = io_sigs_cmd[4] | N40;
  assign N42 = ~N41;
  assign N43 = io_inst[13] | N16;
  assign N44 = ~N43;
  assign N45 = io_inst[30] | N4;
  assign N46 = io_inst[2] | N45;
  assign N47 = ~N46;
  assign N48 = io_inst[5] | io_inst[31];
  assign N49 = ~N48;
  assign N50 = io_inst[4] | io_inst[5];
  assign N51 = ~N50;
  assign N52 = io_inst[2] | io_inst[31];
  assign N53 = ~N52;
  assign N54 = io_inst[2] | io_inst[28];
  assign N55 = ~N54;
  assign N56 = io_inst[2] | io_inst[30];
  assign N57 = ~N56;
  assign N58 = io_inst[29] | io_inst[30];
  assign N59 = io_inst[28] | N58;
  assign N60 = io_inst[2] | N59;
  assign N61 = ~N60;
  assign N62 = io_inst[27] | N58;
  assign N63 = io_inst[2] | N62;
  assign N64 = ~N63;
  assign N65 = io_inst[13] | N21;
  assign N66 = ~N65;
  assign N67 = io_inst[2] | io_inst[29];
  assign N68 = ~N67;
  assign N69 = io_inst[4] | io_sigs_ldst;
  assign io_sigs_ren3 = ~N69;
  assign io_sigs_wflags = T3 | N47;
  assign T3 = T6 | N66;
  assign T6 = N68 | io_sigs_ren3;
  assign io_sigs_round = T14 | N44;
  assign T14 = N68 | io_sigs_ren3;
  assign io_sigs_fma = T20 | io_sigs_ren3;
  assign T20 = N61 | N64;
  assign io_sigs_fastpipe = N39 | N42;
  assign io_sigs_toint = io_inst[5] | N36;
  assign io_sigs_single = N31 | N33;
  assign io_sigs_swap12 = io_sigs_ldst | N29;
  assign io_sigs_ren2 = T50 | io_sigs_ren3;
  assign T50 = N57 | io_inst[5];
  assign io_sigs_ren1 = T54 | io_sigs_ren3;
  assign T54 = N53 | N55;
  assign io_sigs_wen = T62 | N25;
  assign T62 = N49 | N51;
  assign io_sigs_cmd[0] = io_inst[2] | N23;
  assign io_sigs_cmd[1] = io_inst[3] | N20;
  assign io_sigs_cmd[2] = io_sigs_ldst | io_inst[29];
  assign io_sigs_cmd[3] = io_sigs_ldst | io_inst[30];

endmodule