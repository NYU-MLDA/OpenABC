module bsg_cache_decode
(
  opcode_i,
  decode_o
);

  input [5:0] opcode_i;
  output [18:0] decode_o;
  wire [18:0] decode_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N44,N45,N46,N48,N50,N51,N52,N53,N54,N56,N58,N59,N61,N63,N64,N65,N66,N68,N69,
  N70,N71,N72,N73,N75,N76,N77,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,
  N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,
  N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N123,N124,N125,N126,
  N127,N128,N129,N130,N131,N132,N133,N134,N135,N136,N137,N138,N139,N140,N141,N142,
  N143,N144,N145,N146,N147,N148,N149;
  assign N6 = N68 & N36;
  assign N8 = opcode_i[3] | opcode_i[2];
  assign N9 = N44 | N37;
  assign N10 = N8 | N9;
  assign N11 = N50 | opcode_i[2];
  assign N12 = N11 | N9;
  assign N13 = opcode_i[3] | N63;
  assign N14 = N13 | N9;
  assign N16 = N44 | opcode_i[0];
  assign N17 = N8 | N16;
  assign N18 = N11 | N16;
  assign N19 = N13 | N16;
  assign N21 = opcode_i[1] | N37;
  assign N22 = N8 | N21;
  assign N23 = N11 | N21;
  assign N24 = N13 | N21;
  assign N26 = N50 & N63;
  assign N27 = N44 & N37;
  assign N28 = N26 & N27;
  assign N29 = opcode_i[1] | opcode_i[0];
  assign N30 = N11 | N29;
  assign N31 = N13 | N29;
  assign N33 = opcode_i[3] & opcode_i[2];
  assign N36 = ~opcode_i[4];
  assign N37 = ~opcode_i[0];
  assign N38 = N36 | opcode_i[5];
  assign N39 = opcode_i[3] | N38;
  assign N40 = opcode_i[2] | N39;
  assign N41 = opcode_i[1] | N40;
  assign N42 = N37 | N41;
  assign decode_o[11] = ~N42;
  assign N44 = ~opcode_i[1];
  assign N45 = N44 | N40;
  assign N46 = opcode_i[0] | N45;
  assign decode_o[10] = ~N46;
  assign N48 = N37 | N45;
  assign decode_o[9] = ~N48;
  assign N50 = ~opcode_i[3];
  assign N51 = N50 | N38;
  assign N52 = opcode_i[2] | N51;
  assign N53 = opcode_i[1] | N52;
  assign N54 = opcode_i[0] | N53;
  assign decode_o[8] = ~N54;
  assign N56 = N37 | N53;
  assign decode_o[7] = ~N56;
  assign N58 = N44 | N52;
  assign N59 = opcode_i[0] | N58;
  assign decode_o[6] = ~N59;
  assign N61 = N37 | N58;
  assign decode_o[5] = ~N61;
  assign N63 = ~opcode_i[2];
  assign N64 = N63 | N51;
  assign N65 = opcode_i[1] | N64;
  assign N66 = opcode_i[0] | N65;
  assign decode_o[4] = ~N66;
  assign N68 = ~opcode_i[5];
  assign N69 = opcode_i[4] | N68;
  assign N70 = opcode_i[3] | N69;
  assign N71 = opcode_i[2] | N70;
  assign N72 = opcode_i[1] | N71;
  assign N73 = opcode_i[0] | N72;
  assign decode_o[1] = ~N73;
  assign N75 = N63 | N70;
  assign N76 = opcode_i[1] | N75;
  assign N77 = opcode_i[0] | N76;
  assign decode_o[0] = ~N77;
  assign N79 = opcode_i[4] | opcode_i[5];
  assign N80 = opcode_i[3] | N79;
  assign N81 = opcode_i[2] | N80;
  assign N82 = opcode_i[1] | N81;
  assign N83 = opcode_i[0] | N82;
  assign N84 = ~N83;
  assign N85 = N37 | N82;
  assign N86 = ~N85;
  assign N87 = N44 | N81;
  assign N88 = opcode_i[0] | N87;
  assign N89 = ~N88;
  assign N90 = N37 | N87;
  assign N91 = ~N90;
  assign N92 = N50 | N79;
  assign N93 = N63 | N92;
  assign N94 = opcode_i[1] | N93;
  assign N95 = opcode_i[0] | N94;
  assign N96 = ~N95;
  assign N97 = N37 | N94;
  assign N98 = ~N97;
  assign N99 = N63 | N80;
  assign N100 = opcode_i[1] | N99;
  assign N101 = opcode_i[0] | N100;
  assign N102 = ~N101;
  assign N103 = N37 | N100;
  assign N104 = ~N103;
  assign N105 = N44 | N99;
  assign N106 = opcode_i[0] | N105;
  assign N107 = ~N106;
  assign N108 = N37 | N105;
  assign N109 = ~N108;
  assign N110 = opcode_i[2] | N92;
  assign N111 = opcode_i[1] | N110;
  assign N112 = opcode_i[0] | N111;
  assign N113 = ~N112;
  assign N114 = N37 | N111;
  assign N115 = ~N114;
  assign N116 = N44 | N110;
  assign N117 = opcode_i[0] | N116;
  assign N118 = ~N117;
  assign N119 = N37 | N116;
  assign N120 = ~N119;
  assign N121 = opcode_i[0] | N41;
  assign decode_o[12] = ~N121;
  assign { N35, N34 } = (N0)? { 1'b1, 1'b1 } : 
                        (N1)? { 1'b1, 1'b0 } : 
                        (N2)? { 1'b0, 1'b1 } : 
                        (N3)? { 1'b0, 1'b0 } : 
                        (N4)? { 1'b0, 1'b0 } : 1'b0;
  assign N0 = N15;
  assign N1 = N20;
  assign N2 = N25;
  assign N3 = N32;
  assign N4 = N33;
  assign decode_o[18:17] = (N5)? { N35, N34 } : 
                           (N7)? { 1'b0, 1'b0 } : 1'b0;
  assign N5 = N6;
  assign N7 = ~N6;
  assign N15 = N125 | N126;
  assign N125 = N123 | N124;
  assign N123 = ~N10;
  assign N124 = ~N12;
  assign N126 = ~N14;
  assign N20 = N129 | N130;
  assign N129 = N127 | N128;
  assign N127 = ~N17;
  assign N128 = ~N18;
  assign N130 = ~N19;
  assign N25 = N133 | N134;
  assign N133 = N131 | N132;
  assign N131 = ~N22;
  assign N132 = ~N23;
  assign N134 = ~N24;
  assign N32 = N136 | N137;
  assign N136 = N28 | N135;
  assign N135 = ~N30;
  assign N137 = ~N31;
  assign decode_o[15] = N96 | N98;
  assign decode_o[16] = N139 | N91;
  assign N139 = N138 | N89;
  assign N138 = N84 | N86;
  assign decode_o[14] = N146 | N96;
  assign N146 = N145 | N109;
  assign N145 = N144 | N107;
  assign N144 = N143 | N104;
  assign N143 = N142 | N102;
  assign N142 = N141 | N91;
  assign N141 = N140 | N89;
  assign N140 = N84 | N86;
  assign decode_o[13] = N149 | N98;
  assign N149 = N148 | N120;
  assign N148 = N147 | N118;
  assign N147 = N113 | N115;
  assign decode_o[3] = ~decode_o[12];
  assign decode_o[2] = decode_o[1] | decode_o[0];

endmodule