module bsg_round_robin_arb_05
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

  input [4:0] reqs_i;
  output [4:0] grants_o;
  output [4:0] sel_one_hot_o;
  output [2:0] tag_o;
  input clk_i;
  input reset_i;
  input grants_en_i;
  input yumi_i;
  output v_o;
  wire [4:0] grants_o,sel_one_hot_o;
  wire [2:0] tag_o,last_r;
  wire v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,
  N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,
  N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,
  N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,
  N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,
  N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,
  N133,N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,
  N149,N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,N160,N161,N162,N163,N164,
  N165,N166,N167,N168,N169,N170,N171,N172,N173,N174,N175,N176,N177,N178,N179,N180,
  N181,N182,N183,N184,N185,N186,N187,N188,N189,N190,N191,N192,N193,N194,N195;
  reg last_r_2_sv2v_reg,last_r_1_sv2v_reg,last_r_0_sv2v_reg;
  assign last_r[2] = last_r_2_sv2v_reg;
  assign last_r[1] = last_r_1_sv2v_reg;
  assign last_r[0] = last_r_0_sv2v_reg;
  assign N21 = N19 & N88;
  assign N22 = N21 & N37;
  assign N23 = N22 & N20;
  assign N27 = N24 & N25;
  assign N28 = N26 & reqs_i[1];
  assign N29 = N27 & N28;
  assign N31 = N24 & N25;
  assign N32 = N26 & reqs_i[2];
  assign N33 = N31 & N32;
  assign N34 = N33 & N30;
  assign N35 = N24 & N25;
  assign N36 = N26 & reqs_i[3];
  assign N37 = N56 & N30;
  assign N38 = N35 & N36;
  assign N39 = N38 & N37;
  assign N40 = last_r[2] | last_r[1];
  assign N41 = last_r[0] | N19;
  assign N42 = N40 | N41;
  assign N43 = N63 | reqs_i[1];
  assign N44 = N42 | N43;
  assign N46 = last_r[2] | last_r[1];
  assign N47 = last_r[0] | reqs_i[4];
  assign N48 = reqs_i[1] | N20;
  assign N49 = N46 | N47;
  assign N50 = N63 | N48;
  assign N51 = N49 | N50;
  assign N53 = N24 & N25;
  assign N54 = last_r[0] & reqs_i[2];
  assign N55 = N53 & N54;
  assign N57 = N24 & N25;
  assign N58 = last_r[0] & reqs_i[3];
  assign N59 = N57 & N58;
  assign N60 = N59 & N56;
  assign N61 = last_r[2] | last_r[1];
  assign N62 = N26 | N19;
  assign N63 = reqs_i[3] | reqs_i[2];
  assign N64 = N61 | N62;
  assign N65 = N64 | N63;
  assign N67 = N24 & N25;
  assign N68 = last_r[0] & N19;
  assign N69 = N88 & N56;
  assign N70 = N67 & N68;
  assign N71 = N69 & reqs_i[0];
  assign N72 = N70 & N71;
  assign N73 = last_r[2] | last_r[1];
  assign N74 = N26 | reqs_i[4];
  assign N75 = N30 | reqs_i[0];
  assign N76 = N73 | N74;
  assign N77 = N63 | N75;
  assign N78 = N76 | N77;
  assign N80 = N24 & last_r[1];
  assign N81 = N26 & reqs_i[3];
  assign N82 = N80 & N81;
  assign N83 = last_r[2] | N25;
  assign N84 = last_r[0] | N19;
  assign N85 = N83 | N84;
  assign N86 = N85 | reqs_i[3];
  assign N89 = N24 & last_r[1];
  assign N90 = N26 & N19;
  assign N91 = N88 & reqs_i[0];
  assign N92 = N89 & N90;
  assign N93 = N92 & N91;
  assign N94 = N24 & last_r[1];
  assign N95 = N26 & N19;
  assign N96 = N88 & reqs_i[1];
  assign N97 = N94 & N95;
  assign N98 = N96 & N20;
  assign N99 = N97 & N98;
  assign N100 = last_r[2] | N25;
  assign N101 = last_r[0] | reqs_i[4];
  assign N102 = reqs_i[3] | N56;
  assign N103 = reqs_i[1] | reqs_i[0];
  assign N104 = N100 | N101;
  assign N105 = N102 | N103;
  assign N106 = N104 | N105;
  assign N108 = last_r[2] | N25;
  assign N109 = N26 | N19;
  assign N110 = N108 | N109;
  assign N112 = N24 & last_r[1];
  assign N113 = last_r[0] & N19;
  assign N114 = N112 & N113;
  assign N115 = N114 & reqs_i[0];
  assign N116 = N24 & last_r[1];
  assign N117 = last_r[0] & N19;
  assign N118 = reqs_i[1] & N20;
  assign N119 = N116 & N117;
  assign N120 = N119 & N118;
  assign N121 = N24 & last_r[1];
  assign N122 = last_r[0] & N19;
  assign N123 = reqs_i[2] & N30;
  assign N124 = N121 & N122;
  assign N125 = N123 & N20;
  assign N126 = N124 & N125;
  assign N127 = last_r[2] | N25;
  assign N128 = N26 | reqs_i[4];
  assign N129 = N88 | reqs_i[2];
  assign N130 = N127 | N128;
  assign N131 = N129 | N103;
  assign N132 = N130 | N131;
  assign N134 = last_r[2] & N25;
  assign N135 = N26 & reqs_i[0];
  assign N136 = N134 & N135;
  assign N137 = last_r[2] & N25;
  assign N138 = N26 & reqs_i[1];
  assign N139 = N137 & N138;
  assign N140 = N139 & N20;
  assign N141 = last_r[2] & N25;
  assign N142 = N26 & reqs_i[2];
  assign N143 = N30 & N20;
  assign N144 = N141 & N142;
  assign N145 = N144 & N143;
  assign N146 = last_r[2] & N25;
  assign N147 = N26 & reqs_i[3];
  assign N148 = N146 & N147;
  assign N149 = N37 & N20;
  assign N150 = N148 & N149;
  assign N151 = N24 | last_r[1];
  assign N152 = last_r[0] | N19;
  assign N153 = N151 | N152;
  assign N154 = N63 | N103;
  assign N155 = N153 | N154;
  assign N157 = last_r[2] & last_r[0];
  assign N158 = N157 & reqs_i[2];
  assign N159 = last_r[2] & last_r[0];
  assign N160 = N159 & reqs_i[3];
  assign N161 = last_r[2] & last_r[0];
  assign N162 = N161 & reqs_i[4];
  assign N163 = last_r[2] & last_r[0];
  assign N164 = N163 & reqs_i[0];
  assign N165 = last_r[2] & last_r[0];
  assign N166 = N165 & reqs_i[1];
  assign N167 = last_r[2] & last_r[1];
  assign N168 = N167 & reqs_i[3];
  assign N169 = last_r[2] & last_r[1];
  assign N170 = N169 & reqs_i[4];
  assign N171 = last_r[2] & last_r[1];
  assign N172 = N171 & reqs_i[0];
  assign N173 = last_r[2] & last_r[1];
  assign N174 = N173 & reqs_i[1];
  assign N175 = last_r[2] & last_r[1];
  assign N176 = N175 & reqs_i[2];

  always @(posedge clk_i) begin
    if(N184) begin
      last_r_2_sv2v_reg <= N182;
    end 
  end


  always @(posedge clk_i) begin
    if(N184) begin
      last_r_1_sv2v_reg <= N181;
    end 
  end


  always @(posedge clk_i) begin
    if(N184) begin
      last_r_0_sv2v_reg <= N180;
    end 
  end

  assign sel_one_hot_o = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                         (N1)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b0 } : 
                         (N2)? { 1'b0, 1'b0, 1'b1, 1'b0, 1'b0 } : 
                         (N3)? { 1'b0, 1'b1, 1'b0, 1'b0, 1'b0 } : 
                         (N45)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                         (N52)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                         (N4)? { 1'b0, 1'b0, 1'b1, 1'b0, 1'b0 } : 
                         (N5)? { 1'b0, 1'b1, 1'b0, 1'b0, 1'b0 } : 
                         (N66)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                         (N6)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                         (N79)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b0 } : 
                         (N7)? { 1'b0, 1'b1, 1'b0, 1'b0, 1'b0 } : 
                         (N87)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                         (N8)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                         (N9)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b0 } : 
                         (N107)? { 1'b0, 1'b0, 1'b1, 1'b0, 1'b0 } : 
                         (N111)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                         (N10)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                         (N11)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b0 } : 
                         (N12)? { 1'b0, 1'b0, 1'b1, 1'b0, 1'b0 } : 
                         (N133)? { 1'b0, 1'b1, 1'b0, 1'b0, 1'b0 } : 
                         (N13)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                         (N14)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b0 } : 
                         (N15)? { 1'b0, 1'b0, 1'b1, 1'b0, 1'b0 } : 
                         (N16)? { 1'b0, 1'b1, 1'b0, 1'b0, 1'b0 } : 
                         (N156)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N0 = N23;
  assign N1 = N29;
  assign N2 = N34;
  assign N3 = N39;
  assign N4 = N55;
  assign N5 = N60;
  assign N6 = N72;
  assign N7 = N82;
  assign N8 = N93;
  assign N9 = N99;
  assign N10 = N115;
  assign N11 = N120;
  assign N12 = N126;
  assign N13 = N136;
  assign N14 = N140;
  assign N15 = N145;
  assign N16 = N150;
  assign tag_o = (N0)? { 1'b0, 1'b0, 1'b0 } : 
                 (N1)? { 1'b0, 1'b0, 1'b1 } : 
                 (N2)? { 1'b0, 1'b1, 1'b0 } : 
                 (N3)? { 1'b0, 1'b1, 1'b1 } : 
                 (N45)? { 1'b1, 1'b0, 1'b0 } : 
                 (N52)? { 1'b0, 1'b0, 1'b0 } : 
                 (N4)? { 1'b0, 1'b1, 1'b0 } : 
                 (N5)? { 1'b0, 1'b1, 1'b1 } : 
                 (N66)? { 1'b1, 1'b0, 1'b0 } : 
                 (N6)? { 1'b0, 1'b0, 1'b0 } : 
                 (N79)? { 1'b0, 1'b0, 1'b1 } : 
                 (N7)? { 1'b0, 1'b1, 1'b1 } : 
                 (N87)? { 1'b1, 1'b0, 1'b0 } : 
                 (N8)? { 1'b0, 1'b0, 1'b0 } : 
                 (N9)? { 1'b0, 1'b0, 1'b1 } : 
                 (N107)? { 1'b0, 1'b1, 1'b0 } : 
                 (N111)? { 1'b1, 1'b0, 1'b0 } : 
                 (N10)? { 1'b0, 1'b0, 1'b0 } : 
                 (N11)? { 1'b0, 1'b0, 1'b1 } : 
                 (N12)? { 1'b0, 1'b1, 1'b0 } : 
                 (N133)? { 1'b0, 1'b1, 1'b1 } : 
                 (N13)? { 1'b0, 1'b0, 1'b0 } : 
                 (N14)? { 1'b0, 1'b0, 1'b1 } : 
                 (N15)? { 1'b0, 1'b1, 1'b0 } : 
                 (N16)? { 1'b0, 1'b1, 1'b1 } : 
                 (N156)? { 1'b1, 1'b0, 1'b0 } : 
                 (N177)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign { N182, N181, N180 } = (N17)? { 1'b0, 1'b0, 1'b0 } : 
                                (N18)? tag_o : 1'b0;
  assign N17 = reset_i;
  assign N18 = N179;
  assign N19 = ~reqs_i[4];
  assign N20 = ~reqs_i[0];
  assign N24 = ~last_r[2];
  assign N25 = ~last_r[1];
  assign N26 = ~last_r[0];
  assign N30 = ~reqs_i[1];
  assign N45 = ~N44;
  assign N52 = ~N51;
  assign N56 = ~reqs_i[2];
  assign N66 = ~N65;
  assign N79 = ~N78;
  assign N87 = ~N86;
  assign N88 = ~reqs_i[3];
  assign N107 = ~N106;
  assign N111 = ~N110;
  assign N133 = ~N132;
  assign N156 = ~N155;
  assign N177 = N158 | N192;
  assign N192 = N160 | N191;
  assign N191 = N162 | N190;
  assign N190 = N164 | N189;
  assign N189 = N166 | N188;
  assign N188 = N168 | N187;
  assign N187 = N170 | N186;
  assign N186 = N172 | N185;
  assign N185 = N174 | N176;
  assign grants_o[4] = sel_one_hot_o[4] & grants_en_i;
  assign grants_o[3] = sel_one_hot_o[3] & grants_en_i;
  assign grants_o[2] = sel_one_hot_o[2] & grants_en_i;
  assign grants_o[1] = sel_one_hot_o[1] & grants_en_i;
  assign grants_o[0] = sel_one_hot_o[0] & grants_en_i;
  assign v_o = N195 | reqs_i[0];
  assign N195 = N194 | reqs_i[1];
  assign N194 = N193 | reqs_i[2];
  assign N193 = reqs_i[4] | reqs_i[3];
  assign N178 = ~yumi_i;
  assign N179 = ~reset_i;
  assign N183 = N178 & N179;
  assign N184 = ~N183;

endmodule