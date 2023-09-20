module bsg_round_robin_arb_inputs_p4
(
  clk_i,
  reset_i,
  grants_en_i,
  reqs_i,
  grants_o,
  sel_one_hot_o,
  v_o,
  tag_o,
  yumi_i
);

  input [3:0] reqs_i;
  output [3:0] grants_o;
  output [3:0] sel_one_hot_o;
  output [1:0] tag_o;
  input clk_i;
  input reset_i;
  input grants_en_i;
  input yumi_i;
  output v_o;
  wire [3:0] grants_o,sel_one_hot_o;
  wire [1:0] tag_o;
  wire v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,
  N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,
  N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,
  N101,N102,N103;
  reg [1:0] last_r;
  assign N79 = N0 & N1 & (N2 & N3);
  assign N0 = ~reqs_i[1];
  assign N1 = ~reqs_i[2];
  assign N2 = ~reqs_i[0];
  assign N3 = ~reqs_i[3];
  assign N80 = reqs_i[1] & N4 & N5;
  assign N4 = ~last_r[0];
  assign N5 = ~last_r[1];
  assign N81 = N6 & reqs_i[2] & (N7 & N8);
  assign N6 = ~reqs_i[1];
  assign N7 = ~last_r[0];
  assign N8 = ~last_r[1];
  assign N82 = N9 & N10 & (reqs_i[3] & N11) & N12;
  assign N9 = ~reqs_i[1];
  assign N10 = ~reqs_i[2];
  assign N11 = ~last_r[0];
  assign N12 = ~last_r[1];
  assign N13 = N17 & N18;
  assign N14 = N13 & reqs_i[0];
  assign N15 = N14 & N19;
  assign N16 = N15 & N20;
  assign N83 = N16 & N21;
  assign N17 = ~reqs_i[1];
  assign N18 = ~reqs_i[2];
  assign N19 = ~reqs_i[3];
  assign N20 = ~last_r[0];
  assign N21 = ~last_r[1];
  assign N84 = reqs_i[2] & last_r[0] & N22;
  assign N22 = ~last_r[1];
  assign N85 = N23 & reqs_i[3] & (last_r[0] & N24);
  assign N23 = ~reqs_i[2];
  assign N24 = ~last_r[1];
  assign N86 = N25 & reqs_i[0] & (N26 & last_r[0]) & N27;
  assign N25 = ~reqs_i[2];
  assign N26 = ~reqs_i[3];
  assign N27 = ~last_r[1];
  assign N28 = reqs_i[1] & N32;
  assign N29 = N28 & N33;
  assign N30 = N29 & N34;
  assign N31 = N30 & last_r[0];
  assign N87 = N31 & N35;
  assign N32 = ~reqs_i[2];
  assign N33 = ~reqs_i[0];
  assign N34 = ~reqs_i[3];
  assign N35 = ~last_r[1];
  assign N88 = reqs_i[3] & N36 & last_r[1];
  assign N36 = ~last_r[0];
  assign N89 = reqs_i[0] & N37 & (N38 & last_r[1]);
  assign N37 = ~reqs_i[3];
  assign N38 = ~last_r[0];
  assign N90 = reqs_i[1] & N39 & (N40 & N41) & last_r[1];
  assign N39 = ~reqs_i[0];
  assign N40 = ~reqs_i[3];
  assign N41 = ~last_r[0];
  assign N42 = N46 & reqs_i[2];
  assign N43 = N42 & N47;
  assign N44 = N43 & N48;
  assign N45 = N44 & N49;
  assign N91 = N45 & last_r[1];
  assign N46 = ~reqs_i[1];
  assign N47 = ~reqs_i[0];
  assign N48 = ~reqs_i[3];
  assign N49 = ~last_r[0];
  assign N92 = reqs_i[0] & last_r[0] & last_r[1];
  assign N93 = reqs_i[1] & N50 & (last_r[0] & last_r[1]);
  assign N50 = ~reqs_i[0];
  assign N94 = N51 & reqs_i[2] & (N52 & last_r[0]) & last_r[1];
  assign N51 = ~reqs_i[1];
  assign N52 = ~reqs_i[0];
  assign N53 = N57 & N58;
  assign N54 = N53 & N59;
  assign N55 = N54 & reqs_i[3];
  assign N56 = N55 & last_r[0];
  assign N95 = N56 & last_r[1];
  assign N57 = ~reqs_i[1];
  assign N58 = ~reqs_i[2];
  assign N59 = ~reqs_i[0];
  assign sel_one_hot_o = (N60)? { 1'b0, 1'b0, 1'b0, 1'b0 } :
                         (N61)? { 1'b0, 1'b0, 1'b1, 1'b0 } :
                         (N62)? { 1'b0, 1'b1, 1'b0, 1'b0 } :
                         (N63)? { 1'b1, 1'b0, 1'b0, 1'b0 } :
                         (N64)? { 1'b0, 1'b0, 1'b0, 1'b1 } :
                         (N65)? { 1'b0, 1'b1, 1'b0, 1'b0 } :
                         (N66)? { 1'b1, 1'b0, 1'b0, 1'b0 } :
                         (N67)? { 1'b0, 1'b0, 1'b0, 1'b1 } :
                         (N68)? { 1'b0, 1'b0, 1'b1, 1'b0 } :
                         (N69)? { 1'b1, 1'b0, 1'b0, 1'b0 } :
                         (N70)? { 1'b0, 1'b0, 1'b0, 1'b1 } :
                         (N71)? { 1'b0, 1'b0, 1'b1, 1'b0 } :
                         (N72)? { 1'b0, 1'b1, 1'b0, 1'b0 } :
                         (N73)? { 1'b0, 1'b0, 1'b0, 1'b1 } :
                         (N74)? { 1'b0, 1'b0, 1'b1, 1'b0 } :
                         (N75)? { 1'b0, 1'b1, 1'b0, 1'b0 } :
                         (N76)? { 1'b1, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N60 = N79;
  assign N61 = N80;
  assign N62 = N81;
  assign N63 = N82;
  assign N64 = N83;
  assign N65 = N84;
  assign N66 = N85;
  assign N67 = N86;
  assign N68 = N87;
  assign N69 = N88;
  assign N70 = N89;
  assign N71 = N90;
  assign N72 = N91;
  assign N73 = N92;
  assign N74 = N93;
  assign N75 = N94;
  assign N76 = N95;
  assign tag_o = (N60)? { 1'b0, 1'b0 } :
                 (N61)? { 1'b0, 1'b1 } :
                 (N62)? { 1'b1, 1'b0 } :
                 (N63)? { 1'b1, 1'b1 } :
                 (N64)? { 1'b0, 1'b0 } :
                 (N65)? { 1'b1, 1'b0 } :
                 (N66)? { 1'b1, 1'b1 } :
                 (N67)? { 1'b0, 1'b0 } :
                 (N68)? { 1'b0, 1'b1 } :
                 (N69)? { 1'b1, 1'b1 } :
                 (N70)? { 1'b0, 1'b0 } :
                 (N71)? { 1'b0, 1'b1 } :
                 (N72)? { 1'b1, 1'b0 } :
                 (N73)? { 1'b0, 1'b0 } :
                 (N74)? { 1'b0, 1'b1 } :
                 (N75)? { 1'b1, 1'b0 } :
                 (N76)? { 1'b1, 1'b1 } : 1'b0;
  assign { N99, N98 } = (N77)? { 1'b0, 1'b0 } :
                        (N78)? tag_o : 1'b0;
  assign N77 = reset_i;
  assign N78 = N97;
  assign grants_o[3] = sel_one_hot_o[3] & grants_en_i;
  assign grants_o[2] = sel_one_hot_o[2] & grants_en_i;
  assign grants_o[1] = sel_one_hot_o[1] & grants_en_i;
  assign grants_o[0] = sel_one_hot_o[0] & grants_en_i;
  assign v_o = N103 | reqs_i[0];
  assign N103 = N102 | reqs_i[1];
  assign N102 = reqs_i[3] | reqs_i[2];
  assign N96 = ~yumi_i;
  assign N97 = ~reset_i;
  assign N100 = N96 & N97;
  assign N101 = ~N100;

  always @(posedge clk_i) begin
    if(N101) begin
      { last_r[1:0] } <= { N99, N98 };
    end
  end


endmodule