module bsg_round_robin_arb_inputs_p5
(
  clk_i,
  reset_i,
  grants_en_i,
  reqs_i,
  grants_o,
  v_o,
  tag_o,
  yumi_i
);

  input [4:0] reqs_i;
  output [4:0] grants_o;
  output [2:0] tag_o;
  input clk_i;
  input reset_i;
  input grants_en_i;
  input yumi_i;
  output v_o;
  wire [4:0] grants_o;
  wire [2:0] tag_o;
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
  N181,N182,N183,N184,N185,N186,N187,N188,N189,N190,N191,N192,N193,N194,N195,N196,
  N197,N198,N199,N200,N201,N202,N203,N204,N205,N206,N207,N208,N209,N210,N211,N212,
  N213,N214,N215,N216,N217,N218,N219,N220,N221,N222,N223,N224;
  reg [2:0] last_r;
  assign N23 = grants_en_i & N119;
  assign N24 = N20 & N64;
  assign N25 = N21 & N22;
  assign N26 = N23 & N24;
  assign N27 = N26 & N25;
  assign N31 = grants_en_i & N28;
  assign N32 = N29 & N30;
  assign N33 = N31 & N32;
  assign N34 = N33 & reqs_i[1];
  assign N35 = grants_en_i & N28;
  assign N36 = N29 & N30;
  assign N37 = reqs_i[2] & N21;
  assign N38 = N35 & N36;
  assign N39 = N38 & N37;
  assign N40 = grants_en_i & N28;
  assign N41 = N29 & N30;
  assign N42 = N40 & N41;
  assign N43 = N67 & N21;
  assign N44 = N42 & N43;
  assign N45 = N19 | last_r[2];
  assign N46 = last_r[1] | last_r[0];
  assign N47 = reqs_i[2] | reqs_i[1];
  assign N48 = N45 | N46;
  assign N49 = N97 | N47;
  assign N50 = N48 | N49;
  assign N52 = N19 | last_r[2];
  assign N53 = last_r[1] | last_r[0];
  assign N54 = reqs_i[4] | reqs_i[3];
  assign N55 = N52 | N53;
  assign N56 = N54 | N47;
  assign N57 = N55 | N56;
  assign N58 = N57 | N22;
  assign N60 = grants_en_i & N28;
  assign N61 = N29 & last_r[0];
  assign N62 = N60 & N61;
  assign N63 = N62 & reqs_i[2];
  assign N65 = grants_en_i & N28;
  assign N66 = N29 & last_r[0];
  assign N67 = reqs_i[3] & N64;
  assign N68 = N65 & N66;
  assign N69 = N68 & N67;
  assign N70 = N19 | last_r[2];
  assign N71 = last_r[1] | N30;
  assign N72 = N70 | N71;
  assign N73 = N97 | reqs_i[2];
  assign N74 = N72 | N73;
  assign N76 = grants_en_i & N28;
  assign N77 = N29 & last_r[0];
  assign N78 = N119 & N20;
  assign N79 = N64 & reqs_i[0];
  assign N80 = N76 & N77;
  assign N81 = N78 & N79;
  assign N82 = N80 & N81;
  assign N83 = N19 | last_r[2];
  assign N84 = last_r[1] | N30;
  assign N85 = reqs_i[2] | N21;
  assign N86 = N83 | N84;
  assign N87 = N54 | N85;
  assign N88 = N86 | N87;
  assign N89 = N88 | reqs_i[0];
  assign N91 = grants_en_i & N28;
  assign N92 = last_r[1] & N30;
  assign N93 = N91 & N92;
  assign N94 = N93 & reqs_i[3];
  assign N95 = N19 | last_r[2];
  assign N96 = N29 | last_r[0];
  assign N97 = N119 | reqs_i[3];
  assign N98 = N95 | N96;
  assign N99 = N98 | N97;
  assign N101 = grants_en_i & N28;
  assign N102 = last_r[1] & N30;
  assign N103 = N101 & N102;
  assign N104 = N78 & reqs_i[0];
  assign N105 = N103 & N104;
  assign N106 = grants_en_i & N28;
  assign N107 = last_r[1] & N30;
  assign N108 = N106 & N107;
  assign N109 = N78 & N156;
  assign N110 = N108 & N109;
  assign N111 = N19 | last_r[2];
  assign N112 = N29 | last_r[0];
  assign N113 = N64 | reqs_i[1];
  assign N114 = N111 | N112;
  assign N115 = N54 | N113;
  assign N116 = N114 | N115;
  assign N117 = N116 | reqs_i[0];
  assign N120 = N19 | last_r[2];
  assign N121 = N29 | N30;
  assign N122 = N120 | N121;
  assign N123 = N122 | N119;
  assign N125 = grants_en_i & N28;
  assign N126 = last_r[1] & last_r[0];
  assign N127 = N119 & reqs_i[0];
  assign N128 = N125 & N126;
  assign N129 = N128 & N127;
  assign N130 = grants_en_i & N28;
  assign N131 = last_r[1] & last_r[0];
  assign N132 = N119 & reqs_i[1];
  assign N133 = N130 & N131;
  assign N134 = N132 & N22;
  assign N135 = N133 & N134;
  assign N136 = grants_en_i & N28;
  assign N137 = last_r[1] & last_r[0];
  assign N138 = N119 & reqs_i[2];
  assign N139 = N136 & N137;
  assign N140 = N138 & N25;
  assign N141 = N139 & N140;
  assign N142 = N19 | last_r[2];
  assign N143 = N29 | N30;
  assign N144 = reqs_i[4] | N20;
  assign N145 = N142 | N143;
  assign N146 = N144 | N47;
  assign N147 = N145 | N146;
  assign N148 = N147 | reqs_i[0];
  assign N150 = grants_en_i & last_r[2];
  assign N151 = N29 & N30;
  assign N152 = N150 & N151;
  assign N153 = N152 & reqs_i[0];
  assign N154 = grants_en_i & last_r[2];
  assign N155 = N29 & N30;
  assign N156 = reqs_i[1] & N22;
  assign N157 = N154 & N155;
  assign N158 = N157 & N156;
  assign N159 = grants_en_i & last_r[2];
  assign N160 = N29 & N30;
  assign N161 = N159 & N160;
  assign N162 = N37 & N22;
  assign N163 = N161 & N162;
  assign N164 = grants_en_i & last_r[2];
  assign N165 = N29 & N30;
  assign N166 = N164 & N165;
  assign N167 = N67 & N25;
  assign N168 = N166 & N167;
  assign N169 = N19 | N28;
  assign N170 = last_r[1] | last_r[0];
  assign N171 = N169 | N170;
  assign N172 = N171 | N49;
  assign N173 = N172 | reqs_i[0];
  assign N175 = grants_en_i & last_r[2];
  assign N176 = last_r[0] & reqs_i[2];
  assign N177 = N175 & N176;
  assign N178 = grants_en_i & last_r[2];
  assign N179 = last_r[0] & reqs_i[3];
  assign N180 = N178 & N179;
  assign N181 = grants_en_i & last_r[2];
  assign N182 = last_r[0] & reqs_i[4];
  assign N183 = N181 & N182;
  assign N184 = grants_en_i & last_r[2];
  assign N185 = last_r[0] & reqs_i[0];
  assign N186 = N184 & N185;
  assign N187 = grants_en_i & last_r[2];
  assign N188 = last_r[0] & reqs_i[1];
  assign N189 = N187 & N188;
  assign N190 = grants_en_i & last_r[2];
  assign N191 = last_r[1] & reqs_i[3];
  assign N192 = N190 & N191;
  assign N193 = grants_en_i & last_r[2];
  assign N194 = last_r[1] & reqs_i[4];
  assign N195 = N193 & N194;
  assign N196 = grants_en_i & last_r[2];
  assign N197 = last_r[1] & reqs_i[0];
  assign N198 = N196 & N197;
  assign N199 = grants_en_i & last_r[2];
  assign N200 = last_r[1] & reqs_i[1];
  assign N201 = N199 & N200;
  assign N202 = grants_en_i & last_r[2];
  assign N203 = last_r[1] & reqs_i[2];
  assign N204 = N202 & N203;

  always @(posedge clk_i) begin
    if(N212) begin
      last_r[2] <= N210;
    end 
  end


  always @(posedge clk_i) begin
    if(N212) begin
      last_r[1] <= N209;
    end 
  end


  always @(posedge clk_i) begin
    if(N212) begin
      last_r[0] <= N208;
    end 
  end

  assign grants_o = (N19)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                    (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                    (N1)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b0 } : 
                    (N2)? { 1'b0, 1'b0, 1'b1, 1'b0, 1'b0 } : 
                    (N3)? { 1'b0, 1'b1, 1'b0, 1'b0, 1'b0 } : 
                    (N51)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                    (N59)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                    (N4)? { 1'b0, 1'b0, 1'b1, 1'b0, 1'b0 } : 
                    (N5)? { 1'b0, 1'b1, 1'b0, 1'b0, 1'b0 } : 
                    (N75)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                    (N6)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                    (N90)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b0 } : 
                    (N7)? { 1'b0, 1'b1, 1'b0, 1'b0, 1'b0 } : 
                    (N100)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                    (N8)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                    (N9)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b0 } : 
                    (N118)? { 1'b0, 1'b0, 1'b1, 1'b0, 1'b0 } : 
                    (N124)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                    (N10)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                    (N11)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b0 } : 
                    (N12)? { 1'b0, 1'b0, 1'b1, 1'b0, 1'b0 } : 
                    (N149)? { 1'b0, 1'b1, 1'b0, 1'b0, 1'b0 } : 
                    (N13)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                    (N14)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b0 } : 
                    (N15)? { 1'b0, 1'b0, 1'b1, 1'b0, 1'b0 } : 
                    (N16)? { 1'b0, 1'b1, 1'b0, 1'b0, 1'b0 } : 
                    (N174)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N0 = N27;
  assign N1 = N34;
  assign N2 = N39;
  assign N3 = N44;
  assign N4 = N63;
  assign N5 = N69;
  assign N6 = N82;
  assign N7 = N94;
  assign N8 = N105;
  assign N9 = N110;
  assign N10 = N129;
  assign N11 = N135;
  assign N12 = N141;
  assign N13 = N153;
  assign N14 = N158;
  assign N15 = N163;
  assign N16 = N168;
  assign tag_o = (N19)? { 1'b0, 1'b0, 1'b0 } : 
                 (N0)? { 1'b0, 1'b0, 1'b0 } : 
                 (N1)? { 1'b0, 1'b0, 1'b1 } : 
                 (N2)? { 1'b0, 1'b1, 1'b0 } : 
                 (N3)? { 1'b0, 1'b1, 1'b1 } : 
                 (N51)? { 1'b1, 1'b0, 1'b0 } : 
                 (N59)? { 1'b0, 1'b0, 1'b0 } : 
                 (N4)? { 1'b0, 1'b1, 1'b0 } : 
                 (N5)? { 1'b0, 1'b1, 1'b1 } : 
                 (N75)? { 1'b1, 1'b0, 1'b0 } : 
                 (N6)? { 1'b0, 1'b0, 1'b0 } : 
                 (N90)? { 1'b0, 1'b0, 1'b1 } : 
                 (N7)? { 1'b0, 1'b1, 1'b1 } : 
                 (N100)? { 1'b1, 1'b0, 1'b0 } : 
                 (N8)? { 1'b0, 1'b0, 1'b0 } : 
                 (N9)? { 1'b0, 1'b0, 1'b1 } : 
                 (N118)? { 1'b0, 1'b1, 1'b0 } : 
                 (N124)? { 1'b1, 1'b0, 1'b0 } : 
                 (N10)? { 1'b0, 1'b0, 1'b0 } : 
                 (N11)? { 1'b0, 1'b0, 1'b1 } : 
                 (N12)? { 1'b0, 1'b1, 1'b0 } : 
                 (N149)? { 1'b0, 1'b1, 1'b1 } : 
                 (N13)? { 1'b0, 1'b0, 1'b0 } : 
                 (N14)? { 1'b0, 1'b0, 1'b1 } : 
                 (N15)? { 1'b0, 1'b1, 1'b0 } : 
                 (N16)? { 1'b0, 1'b1, 1'b1 } : 
                 (N174)? { 1'b1, 1'b0, 1'b0 } : 
                 (N205)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign { N210, N209, N208 } = (N17)? { 1'b0, 1'b0, 1'b0 } : 
                                (N18)? tag_o : 1'b0;
  assign N17 = reset_i;
  assign N18 = N207;
  assign N19 = ~grants_en_i;
  assign N20 = ~reqs_i[3];
  assign N21 = ~reqs_i[1];
  assign N22 = ~reqs_i[0];
  assign N28 = ~last_r[2];
  assign N29 = ~last_r[1];
  assign N30 = ~last_r[0];
  assign N51 = ~N50;
  assign N59 = ~N58;
  assign N64 = ~reqs_i[2];
  assign N75 = ~N74;
  assign N90 = ~N89;
  assign N100 = ~N99;
  assign N118 = ~N117;
  assign N119 = ~reqs_i[4];
  assign N124 = ~N123;
  assign N149 = ~N148;
  assign N174 = ~N173;
  assign N205 = N177 | N220;
  assign N220 = N180 | N219;
  assign N219 = N183 | N218;
  assign N218 = N186 | N217;
  assign N217 = N189 | N216;
  assign N216 = N192 | N215;
  assign N215 = N195 | N214;
  assign N214 = N198 | N213;
  assign N213 = N201 | N204;
  assign v_o = N224 & grants_en_i;
  assign N224 = N223 | reqs_i[0];
  assign N223 = N222 | reqs_i[1];
  assign N222 = N221 | reqs_i[2];
  assign N221 = reqs_i[4] | reqs_i[3];
  assign N206 = ~yumi_i;
  assign N207 = ~reset_i;
  assign N211 = N206 & N207;
  assign N212 = ~N211;

endmodule