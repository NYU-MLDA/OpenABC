module bp_cce_alu_width_p16
(
  v_i,
  opd_a_i,
  opd_b_i,
  alu_op_i,
  v_o,
  res_o,
  branch_res_o
);

  input [15:0] opd_a_i;
  input [15:0] opd_b_i;
  input [2:0] alu_op_i;
  output [15:0] res_o;
  input v_i;
  output v_o;
  output branch_res_o;
  wire [15:0] res_o;
  wire v_o,branch_res_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,v_i,equal,less,N11,N12,N13,
  N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,
  N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,
  N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,
  N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,
  N94,N95,N96,N97,N98,N99,N100,N101;
  assign v_o = v_i;
  assign equal = opd_a_i == opd_b_i;
  assign less = opd_a_i < opd_b_i;
  assign N12 = alu_op_i[2] | N28;
  assign N13 = N12 | alu_op_i[0];
  assign N16 = N12 | N15;
  assign N18 = N27 | alu_op_i[1];
  assign N19 = N18 | alu_op_i[0];
  assign N21 = N18 | N15;
  assign N23 = alu_op_i[2] & alu_op_i[1];
  assign N24 = N23 & alu_op_i[0];
  assign N25 = N27 | N28;
  assign N26 = N25 | alu_op_i[0];
  assign N29 = N27 & N28;
  assign { N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37 } = opd_a_i + opd_b_i;
  assign { N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53 } = opd_a_i - opd_b_i;
  assign N33 = (N0)? equal :
               (N1)? N31 :
               (N2)? less :
               (N3)? N32 :
               (N4)? 1'b1 :
               (N5)? 1'b0 : 1'b0;
  assign N0 = N14;
  assign N1 = N17;
  assign N2 = N20;
  assign N3 = N22;
  assign N4 = N24;
  assign N5 = N30;
  assign branch_res_o = (N6)? N33 :
                        (N7)? 1'b0 : 1'b0;
  assign N6 = v_i;
  assign N7 = N11;
  assign { N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69 } = (N8)? { N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37 } :
                                                                                              (N9)? { N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53 } : 1'b0;
  assign N8 = N15;
  assign N9 = alu_op_i[0];
  assign { N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85 } = (N10)? { N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69 } :
                                                                                               (N35)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N10 = N29;
  assign res_o = (N6)? { N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85 } :
                 (N7)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N11 = ~v_i;
  assign N14 = ~N13;
  assign N15 = ~alu_op_i[0];
  assign N17 = ~N16;
  assign N20 = ~N19;
  assign N22 = ~N21;
  assign N27 = ~alu_op_i[2];
  assign N28 = ~alu_op_i[1];
  assign N30 = N101 | N29;
  assign N101 = ~N26;
  assign N31 = ~equal;
  assign N32 = less | equal;
  assign N34 = v_i;
  assign N35 = ~N29;
  assign N36 = N34 & N29;

endmodule