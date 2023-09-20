module instr_scan_eaddr_width_p64_instr_width_p32
(
  instr_i,
  scan_o
);

  input [31:0] instr_i;
  output [68:0] scan_o;
  wire [68:0] scan_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,
  N23,N24,N25,N26,N27,N28,N29,N30;
  assign scan_o[66] = 1'b0;
  assign scan_o[67] = 1'b0;
  assign N7 = instr_i[0] & instr_i[1];
  assign scan_o[68] = ~N7;
  assign N9 = ~instr_i[6];
  assign N10 = ~instr_i[5];
  assign N11 = ~instr_i[3];
  assign N12 = ~instr_i[2];
  assign N13 = ~instr_i[1];
  assign N14 = ~instr_i[0];
  assign N15 = N10 | N9;
  assign N16 = instr_i[4] | N15;
  assign N17 = N11 | N16;
  assign N18 = N12 | N17;
  assign N19 = N13 | N18;
  assign N20 = N14 | N19;
  assign N21 = ~N20;
  assign N22 = instr_i[3] | N16;
  assign N23 = N12 | N22;
  assign N24 = N13 | N23;
  assign N25 = N14 | N24;
  assign N26 = ~N25;
  assign N27 = instr_i[2] | N22;
  assign N28 = N13 | N27;
  assign N29 = N14 | N28;
  assign N30 = ~N29;
  assign scan_o[65:64] = (N0)? { 1'b0, 1'b0 } :
                         (N1)? { 1'b0, 1'b1 } :
                         (N4)? { 1'b1, N20 } : 1'b0;
  assign N0 = N30;
  assign N1 = N26;
  assign scan_o[63:0] = (N0)? { instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[7:7], instr_i[30:25], instr_i[11:8], 1'b0 } :
                        (N1)? { instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:20] } :
                        (N2)? { instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[19:12], instr_i[20:20], instr_i[30:21], 1'b0 } :
                        (N6)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N2 = N21;
  assign N3 = N26 | N30;
  assign N4 = ~N3;
  assign N5 = N21 | N3;
  assign N6 = ~N5;

endmodule