module rvrangecheck_f00c0000_32
(
  addr,
  in_range,
  in_region
);

  input [31:0] addr;
  output in_range;
  output in_region;
  wire in_range,in_region,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,
  N17,N18,N19,N20,N21,N23,N24;
  assign N0 = ~addr[31];
  assign N1 = ~addr[30];
  assign N2 = ~addr[29];
  assign N3 = ~addr[28];
  assign N4 = ~addr[19];
  assign N5 = ~addr[18];
  assign N6 = N1 | N0;
  assign N7 = N2 | N6;
  assign N8 = N3 | N7;
  assign N9 = addr[27] | N8;
  assign N10 = addr[26] | N9;
  assign N11 = addr[25] | N10;
  assign N12 = addr[24] | N11;
  assign N13 = addr[23] | N12;
  assign N14 = addr[22] | N13;
  assign N15 = addr[21] | N14;
  assign N16 = addr[20] | N15;
  assign N17 = N4 | N16;
  assign N18 = N5 | N17;
  assign N19 = addr[17] | N18;
  assign N20 = addr[16] | N19;
  assign N21 = addr[15] | N20;
  assign in_range = ~N21;
  assign N23 = addr[30] & addr[31];
  assign N24 = addr[29] & N23;
  assign in_region = addr[28] & N24;

endmodule