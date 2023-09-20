module bp_me_cord_to_id_05
(
  cord_i,
  core_id_o,
  cce_id_o,
  lce_id0_o,
  lce_id1_o
);

  input [4:0] cord_i;
  output [1:0] core_id_o;
  output [3:0] cce_id_o;
  output [5:0] lce_id0_o;
  output [5:0] lce_id1_o;
  wire [1:0] core_id_o;
  wire [3:0] cce_id_o;
  wire [5:0] lce_id0_o,lce_id1_o;
  wire N6,N7,N8,cord_in_cc_li,N9,cord_in_mc_li,N10,cord_in_ac_li,N11,N12,N13,N14,N15,
  N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,
  N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,
  N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71;
  assign cce_id_o[1] = core_id_o[1];
  assign cce_id_o[0] = core_id_o[0];
  assign N7 = cord_i[1:0] <= { 1'b1, 1'b0 };
  assign N8 = cord_i[4:2] <= { 1'b1, 1'b1 };
  assign N9 = cord_i[4:2] > { 1'b1, 1'b1 };
  assign N10 = cord_i[1:0] > { 1'b1, 1'b0 };
  assign { N16, N15, N14 } = cord_i[4:2] - 1'b1;
  assign { N20, N19, N18, N17 } = cord_i[1:0] + { N16, N15, N14, 1'b0 };
  assign { N26, N25, N24, N23, N22, N21 } = { N20, N19, N18, N17, 1'b0 } + 1'b1;
  assign { N31, N30, N29, N28 } = { 1'b1, 1'b0, 1'b0 } + cord_i[1:0];
  assign { N36, N35, N34, N33, N32 } = { 1'b1, 1'b0, 1'b0, 1'b0 } + cord_i[1:0];
  assign lce_id1_o[0] = N21;
  assign lce_id1_o[1] = N22;
  assign lce_id1_o[2] = N23;
  assign lce_id1_o[3] = N24;
  assign lce_id1_o[4] = N25;
  assign lce_id1_o[5] = N26;
  assign { N55, N54, N53, N52 } = { 1'b1, 1'b0, 1'b0 } + cord_i[1:0];
  assign { N60, N59, N58, N57, N56 } = { 1'b1, 1'b0, 1'b0, 1'b0 } + cord_i[1:0];
  assign { N41, N40, N39, N38 } = cord_i[4:2] - 1'b1;
  assign { N45, N44, N43, N42 } = { 1'b1, 1'b0, 1'b0 } + { N41, N40, N39, N38 };
  assign { N51, N50, N49, N48, N47, N46 } = { 1'b1, 1'b0, 1'b0, 1'b0 } + { N41, N41, N41, N40, N39, N38 };
  assign { cce_id_o[3:2], core_id_o } = (N6)? { N20, N19, N18, N17 } : 
                                        (N62)? { N31, N30, N29, N28 } : 
                                        (N65)? { N45, N44, N43, N42 } : 
                                        (N13)? { N55, N54, N53, N52 } : 1'b0;
  assign N6 = cord_in_cc_li;
  assign lce_id0_o = (N6)? { 1'b0, N20, N19, N18, N17, 1'b0 } : 
                     (N62)? { 1'b0, N36, N35, N34, N33, N32 } : 
                     (N65)? { N51, N50, N49, N48, N47, N46 } : 
                     (N13)? { 1'b0, N60, N59, N58, N57, N56 } : 1'b0;
  assign cord_in_cc_li = N68 & N8;
  assign N68 = N7 & N67;
  assign N67 = N66 | cord_i[2];
  assign N66 = cord_i[4] | cord_i[3];
  assign cord_in_mc_li = N7 & N9;
  assign cord_in_ac_li = N71 & N8;
  assign N71 = N10 & N70;
  assign N70 = N69 | cord_i[2];
  assign N69 = cord_i[4] | cord_i[3];
  assign N11 = cord_in_mc_li | cord_in_cc_li;
  assign N12 = cord_in_ac_li | N11;
  assign N13 = ~N12;
  assign N27 = N62;
  assign N37 = N65;
  assign N61 = ~cord_in_cc_li;
  assign N62 = cord_in_mc_li & N61;
  assign N63 = ~cord_in_mc_li;
  assign N64 = N61 & N63;
  assign N65 = cord_in_ac_li & N64;

endmodule