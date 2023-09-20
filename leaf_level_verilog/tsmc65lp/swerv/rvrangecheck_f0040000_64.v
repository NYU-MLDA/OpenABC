module rvrangecheck_f0040000_64
(
  addr,
  in_range,
  in_region
);

  input [31:0] addr;
  output in_range;
  output in_region;
  wire in_range,in_region,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,
  N17,N18,N19,N21,N22;
  assign N0 = ~addr[31];
  assign N1 = ~addr[30];
  assign N2 = ~addr[29];
  assign N3 = ~addr[28];
  assign N4 = ~addr[18];
  assign N5 = N1 | N0;
  assign N6 = N2 | N5;
  assign N7 = N3 | N6;
  assign N8 = addr[27] | N7;
  assign N9 = addr[26] | N8;
  assign N10 = addr[25] | N9;
  assign N11 = addr[24] | N10;
  assign N12 = addr[23] | N11;
  assign N13 = addr[22] | N12;
  assign N14 = addr[21] | N13;
  assign N15 = addr[20] | N14;
  assign N16 = addr[19] | N15;
  assign N17 = N4 | N16;
  assign N18 = addr[17] | N17;
  assign N19 = addr[16] | N18;
  assign in_range = ~N19;
  assign N21 = addr[30] & addr[31];
  assign N22 = addr[29] & N21;
  assign in_region = addr[28] & N22;

endmodule