module bsg_nor2_width_p33
(
  a_i,
  b_i,
  o
);

  input [32:0] a_i;
  input [32:0] b_i;
  output [32:0] o;
  wire [32:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32;
  assign o[32] = ~N0;
  assign N0 = a_i[32] | b_i[32];
  assign o[31] = ~N1;
  assign N1 = a_i[31] | b_i[31];
  assign o[30] = ~N2;
  assign N2 = a_i[30] | b_i[30];
  assign o[29] = ~N3;
  assign N3 = a_i[29] | b_i[29];
  assign o[28] = ~N4;
  assign N4 = a_i[28] | b_i[28];
  assign o[27] = ~N5;
  assign N5 = a_i[27] | b_i[27];
  assign o[26] = ~N6;
  assign N6 = a_i[26] | b_i[26];
  assign o[25] = ~N7;
  assign N7 = a_i[25] | b_i[25];
  assign o[24] = ~N8;
  assign N8 = a_i[24] | b_i[24];
  assign o[23] = ~N9;
  assign N9 = a_i[23] | b_i[23];
  assign o[22] = ~N10;
  assign N10 = a_i[22] | b_i[22];
  assign o[21] = ~N11;
  assign N11 = a_i[21] | b_i[21];
  assign o[20] = ~N12;
  assign N12 = a_i[20] | b_i[20];
  assign o[19] = ~N13;
  assign N13 = a_i[19] | b_i[19];
  assign o[18] = ~N14;
  assign N14 = a_i[18] | b_i[18];
  assign o[17] = ~N15;
  assign N15 = a_i[17] | b_i[17];
  assign o[16] = ~N16;
  assign N16 = a_i[16] | b_i[16];
  assign o[15] = ~N17;
  assign N17 = a_i[15] | b_i[15];
  assign o[14] = ~N18;
  assign N18 = a_i[14] | b_i[14];
  assign o[13] = ~N19;
  assign N19 = a_i[13] | b_i[13];
  assign o[12] = ~N20;
  assign N20 = a_i[12] | b_i[12];
  assign o[11] = ~N21;
  assign N21 = a_i[11] | b_i[11];
  assign o[10] = ~N22;
  assign N22 = a_i[10] | b_i[10];
  assign o[9] = ~N23;
  assign N23 = a_i[9] | b_i[9];
  assign o[8] = ~N24;
  assign N24 = a_i[8] | b_i[8];
  assign o[7] = ~N25;
  assign N25 = a_i[7] | b_i[7];
  assign o[6] = ~N26;
  assign N26 = a_i[6] | b_i[6];
  assign o[5] = ~N27;
  assign N27 = a_i[5] | b_i[5];
  assign o[4] = ~N28;
  assign N28 = a_i[4] | b_i[4];
  assign o[3] = ~N29;
  assign N29 = a_i[3] | b_i[3];
  assign o[2] = ~N30;
  assign N30 = a_i[2] | b_i[2];
  assign o[1] = ~N31;
  assign N31 = a_i[1] | b_i[1];
  assign o[0] = ~N32;
  assign N32 = a_i[0] | b_i[0];

endmodule