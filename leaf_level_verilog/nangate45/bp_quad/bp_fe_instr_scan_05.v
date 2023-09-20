module bp_fe_instr_scan_05
(
  instr_i,
  scan_o
);

  input [31:0] instr_i;
  output [42:0] scan_o;
  wire [42:0] scan_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42;
  assign scan_o[2] = 1'b0;
  assign scan_o[3] = 1'b0;
  assign scan_o[4] = 1'b0;
  assign N11 = instr_i[6] & instr_i[5];
  assign N12 = N10 & instr_i[1];
  assign N13 = N11 & N12;
  assign N14 = N13 & instr_i[0];
  assign N18 = N16 & N17;
  assign N19 = instr_i[3] & instr_i[2];
  assign N20 = instr_i[3] | N17;
  assign N21 = N16 | instr_i[2];
  assign { N9, N8 } = (N0)? { 1'b1, 1'b1 } : 
                      (N1)? { 1'b0, 1'b1 } : 
                      (N2)? { 1'b1, 1'b0 } : 
                      (N3)? { 1'b0, 1'b0 } : 1'b0;
  assign N0 = N18;
  assign N1 = N19;
  assign N2 = N6;
  assign N3 = N7;
  assign scan_o[1:0] = (N4)? { N9, N8 } : 
                       (N15)? { 1'b0, 1'b0 } : 1'b0;
  assign N4 = N14;
  assign { N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23 } = (N0)? { instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[31:31], instr_i[7:7], instr_i[30:25], instr_i[11:8] } : 
                                                                                                                  (N1)? { instr_i[31:31], instr_i[19:12], instr_i[20:20], instr_i[30:21] } : 
                                                                                                                  (N5)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N5 = N22;
  assign scan_o[42:5] = (N4)? { N42, N42, N42, N42, N42, N42, N42, N42, N42, N42, N42, N42, N42, N42, N42, N42, N42, N42, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23 } : 
                        (N15)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N6 = ~N20;
  assign N7 = ~N21;
  assign N10 = ~instr_i[4];
  assign N15 = ~N14;
  assign N16 = ~instr_i[3];
  assign N17 = ~instr_i[2];
  assign N22 = N6 | N7;

endmodule