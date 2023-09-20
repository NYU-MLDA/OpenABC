module bsg_idiv_iterative_controller
(
  clk_i,
  reset_i,
  v_i,
  ready_o,
  signed_div_r_i,
  adder_result_is_neg_i,
  opA_is_neg_i,
  opC_is_neg_i,
  opA_sel_o,
  opA_ld_o,
  opA_inv_o,
  opA_clr_l_o,
  opB_sel_o,
  opB_ld_o,
  opB_inv_o,
  opB_clr_l_o,
  opC_sel_o,
  opC_ld_o,
  latch_inputs_o,
  adder_cin_o,
  v_o,
  yumi_i
);

  output [2:0] opB_sel_o;
  output [2:0] opC_sel_o;
  input clk_i;
  input reset_i;
  input v_i;
  input signed_div_r_i;
  input adder_result_is_neg_i;
  input opA_is_neg_i;
  input opC_is_neg_i;
  input yumi_i;
  output ready_o;
  output opA_sel_o;
  output opA_ld_o;
  output opA_inv_o;
  output opA_clr_l_o;
  output opB_ld_o;
  output opB_inv_o;
  output opB_clr_l_o;
  output opC_ld_o;
  output latch_inputs_o;
  output adder_cin_o;
  output v_o;
  wire [2:0] opB_sel_o,opC_sel_o;
  wire ready_o,opA_sel_o,opA_ld_o,opA_inv_o,opA_clr_l_o,opB_ld_o,opB_inv_o,opB_clr_l_o,
  opC_ld_o,latch_inputs_o,adder_cin_o,v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,
  N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,
  N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,neg_ld,N42,N43,N44,N45,N46,N47,N48,N49,
  N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,
  N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,
  N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,
  N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,
  N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,N134,N135,N136,N137,N138,N139,
  N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,N150,N151,N152,N153,N154,N155,
  N156,N157,N158,N159,N160,N161,N162,N163,N164,N165,N166,N167,N168,N169,N170,N171,
  N172,N173,N174,N175,N176,N177,N178,N179,N180,N181,N182,N183,N184,N185,N186,N187,
  N188,N189,N190,N191,N192,N193,N194,N195,N196,N197,N198,N199,N200,N201,N202,N203,
  N204,N205,N206,N207,N208,N209,N210,N211,N212,N213,N214,N215,N216,N217,N218,N219,
  N220,N221,N222,N223,N224,N225,N226,N227,N228,N229,N230,N231,N232,N233,N234,N235,
  N236,N237,N238,N239,N240,N241,N242,N243,N244,N245,N246,N247,N248,N249,N250,N251,
  N252,N253,N254,N255,N256,N257,N258,N259,N260,N261,N262,N263,N264,N265,N266,N267,
  N268,N269,N270,N271,N272,N273,N274,N275,N276,N277,N278,N279,N280,N281,N282,N283,
  N284,N285,N286,N287,N288,N289,N290,N291,N292,N293,N294,N295,N296,N297,N298,N299,
  N300,N301,N302,N303,N304,N305,N306,N307,N308,N309,N310,N311,N312,N313,N314,N315,
  N316,N317,N318,N319,N320,N321,N322,N323,N324,N325,N326,N327,N328,N329,N330,N331,
  N332,N333,N334,N335,N336,N337,N338,N339,N340,N341,N342,N343,N344,N345,N346,N347,
  N349,N350,N351,N352,N353,N354,N355,N356,N358;
  wire [5:0] next_state;
  reg add_neg_last,r_neg,q_neg;
  reg [5:0] state;

  always @(posedge clk_i) begin
    if(1'b1) begin
      add_neg_last <= adder_result_is_neg_i;
    end 
  end


  always @(posedge clk_i) begin
    if(neg_ld) begin
      r_neg <= N299;
    end 
  end


  always @(posedge clk_i) begin
    if(neg_ld) begin
      q_neg <= N42;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      state[5] <= 1'b0;
    end else if(1'b1) begin
      state[5] <= next_state[5];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      state[4] <= 1'b0;
    end else if(1'b1) begin
      state[4] <= next_state[4];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      state[3] <= 1'b0;
    end else if(1'b1) begin
      state[3] <= next_state[3];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      state[2] <= 1'b0;
    end else if(1'b1) begin
      state[2] <= next_state[2];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      state[1] <= 1'b0;
    end else if(1'b1) begin
      state[1] <= next_state[1];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      state[0] <= 1'b0;
    end else if(1'b1) begin
      state[0] <= next_state[0];
    end 
  end

  assign N47 = N349 & N44;
  assign N48 = N350 & N45;
  assign N49 = N46 & N351;
  assign N50 = N47 & N48;
  assign N51 = N50 & N49;
  assign N52 = state[5] | state[4];
  assign N53 = state[3] | state[2];
  assign N54 = state[1] | N351;
  assign N55 = N52 | N53;
  assign N56 = N55 | N54;
  assign N58 = state[5] | state[4];
  assign N59 = state[3] | state[2];
  assign N60 = N46 | state[0];
  assign N61 = N58 | N59;
  assign N62 = N61 | N60;
  assign N64 = state[5] | state[4];
  assign N65 = state[3] | state[2];
  assign N66 = N46 | N351;
  assign N67 = N64 | N65;
  assign N68 = N67 | N66;
  assign N70 = state[5] | state[4];
  assign N71 = state[3] | N45;
  assign N72 = state[1] | state[0];
  assign N73 = N70 | N71;
  assign N74 = N73 | N72;
  assign N76 = state[5] | state[4];
  assign N77 = state[3] | N45;
  assign N78 = state[1] | N351;
  assign N79 = N76 | N77;
  assign N80 = N79 | N78;
  assign N82 = state[5] | state[4];
  assign N83 = state[3] | N45;
  assign N84 = N46 | state[0];
  assign N85 = N82 | N83;
  assign N86 = N85 | N84;
  assign N88 = state[5] | state[4];
  assign N89 = state[3] | N45;
  assign N90 = N46 | N351;
  assign N91 = N88 | N89;
  assign N92 = N91 | N90;
  assign N94 = state[5] | state[4];
  assign N95 = N350 | state[2];
  assign N96 = state[1] | state[0];
  assign N97 = N94 | N95;
  assign N98 = N97 | N96;
  assign N100 = state[5] | state[4];
  assign N101 = N350 | state[2];
  assign N102 = state[1] | N351;
  assign N103 = N100 | N101;
  assign N104 = N103 | N102;
  assign N106 = state[5] | state[4];
  assign N107 = N350 | state[2];
  assign N108 = N46 | state[0];
  assign N109 = N106 | N107;
  assign N110 = N109 | N108;
  assign N112 = state[5] | state[4];
  assign N113 = N350 | state[2];
  assign N114 = N46 | N351;
  assign N115 = N112 | N113;
  assign N116 = N115 | N114;
  assign N118 = state[5] | state[4];
  assign N119 = N350 | N45;
  assign N120 = state[1] | state[0];
  assign N121 = N118 | N119;
  assign N122 = N121 | N120;
  assign N124 = state[5] | state[4];
  assign N125 = N350 | N45;
  assign N126 = state[1] | N351;
  assign N127 = N124 | N125;
  assign N128 = N127 | N126;
  assign N130 = state[5] | state[4];
  assign N131 = N350 | N45;
  assign N132 = N46 | state[0];
  assign N133 = N130 | N131;
  assign N134 = N133 | N132;
  assign N136 = state[5] | state[4];
  assign N137 = N350 | N45;
  assign N138 = N46 | N351;
  assign N139 = N136 | N137;
  assign N140 = N139 | N138;
  assign N142 = state[5] | N44;
  assign N143 = state[3] | state[2];
  assign N144 = state[1] | state[0];
  assign N145 = N142 | N143;
  assign N146 = N145 | N144;
  assign N148 = state[5] | N44;
  assign N149 = state[3] | state[2];
  assign N150 = state[1] | N351;
  assign N151 = N148 | N149;
  assign N152 = N151 | N150;
  assign N154 = state[5] | N44;
  assign N155 = state[3] | state[2];
  assign N156 = N46 | state[0];
  assign N157 = N154 | N155;
  assign N158 = N157 | N156;
  assign N160 = state[5] | N44;
  assign N161 = state[3] | state[2];
  assign N162 = N46 | N351;
  assign N163 = N160 | N161;
  assign N164 = N163 | N162;
  assign N166 = state[5] | N44;
  assign N167 = state[3] | N45;
  assign N168 = state[1] | state[0];
  assign N169 = N166 | N167;
  assign N170 = N169 | N168;
  assign N172 = state[5] | N44;
  assign N173 = state[3] | N45;
  assign N174 = state[1] | N351;
  assign N175 = N172 | N173;
  assign N176 = N175 | N174;
  assign N178 = state[5] | N44;
  assign N179 = state[3] | N45;
  assign N180 = N46 | state[0];
  assign N181 = N178 | N179;
  assign N182 = N181 | N180;
  assign N184 = state[5] | N44;
  assign N185 = state[3] | N45;
  assign N186 = N46 | N351;
  assign N187 = N184 | N185;
  assign N188 = N187 | N186;
  assign N190 = state[5] | N44;
  assign N191 = N350 | state[2];
  assign N192 = state[1] | state[0];
  assign N193 = N190 | N191;
  assign N194 = N193 | N192;
  assign N196 = state[5] | N44;
  assign N197 = N350 | state[2];
  assign N198 = state[1] | N351;
  assign N199 = N196 | N197;
  assign N200 = N199 | N198;
  assign N202 = state[5] | N44;
  assign N203 = N350 | state[2];
  assign N204 = N46 | state[0];
  assign N205 = N202 | N203;
  assign N206 = N205 | N204;
  assign N208 = state[5] | N44;
  assign N209 = N350 | state[2];
  assign N210 = N46 | N351;
  assign N211 = N208 | N209;
  assign N212 = N211 | N210;
  assign N214 = state[5] | N44;
  assign N215 = N350 | N45;
  assign N216 = state[1] | state[0];
  assign N217 = N214 | N215;
  assign N218 = N217 | N216;
  assign N220 = state[5] | N44;
  assign N221 = N350 | N45;
  assign N222 = state[1] | N351;
  assign N223 = N220 | N221;
  assign N224 = N223 | N222;
  assign N226 = state[5] | N44;
  assign N227 = N350 | N45;
  assign N228 = N46 | state[0];
  assign N229 = N226 | N227;
  assign N230 = N229 | N228;
  assign N232 = state[5] | N44;
  assign N233 = N350 | N45;
  assign N234 = N46 | N351;
  assign N235 = N232 | N233;
  assign N236 = N235 | N234;
  assign N238 = N349 | state[4];
  assign N239 = state[3] | state[2];
  assign N240 = state[1] | state[0];
  assign N241 = N238 | N239;
  assign N242 = N241 | N240;
  assign N244 = N349 | state[4];
  assign N245 = state[3] | state[2];
  assign N246 = state[1] | N351;
  assign N247 = N244 | N245;
  assign N248 = N247 | N246;
  assign N250 = N349 | state[4];
  assign N251 = state[3] | state[2];
  assign N252 = N46 | state[0];
  assign N253 = N250 | N251;
  assign N254 = N253 | N252;
  assign N256 = N349 | state[4];
  assign N257 = state[3] | state[2];
  assign N258 = N46 | N351;
  assign N259 = N256 | N257;
  assign N260 = N259 | N258;
  assign N262 = N349 | state[4];
  assign N263 = state[3] | N45;
  assign N264 = state[1] | state[0];
  assign N265 = N262 | N263;
  assign N266 = N265 | N264;
  assign N268 = N349 | state[4];
  assign N269 = state[3] | N45;
  assign N270 = state[1] | N351;
  assign N271 = N268 | N269;
  assign N272 = N271 | N270;
  assign N274 = N349 | state[4];
  assign N275 = state[3] | N45;
  assign N276 = N46 | state[0];
  assign N277 = N274 | N275;
  assign N278 = N277 | N276;
  assign N280 = N349 | state[4];
  assign N281 = state[3] | N45;
  assign N282 = N46 | N351;
  assign N283 = N280 | N281;
  assign N284 = N283 | N282;
  assign N286 = N349 | state[4];
  assign N287 = N350 | state[2];
  assign N288 = state[1] | state[0];
  assign N289 = N286 | N287;
  assign N290 = N289 | N288;
  assign N292 = N349 | state[4];
  assign N293 = N350 | state[2];
  assign N294 = state[1] | N351;
  assign N295 = N292 | N293;
  assign N296 = N295 | N294;
  assign N343 = state[4] | state[5];
  assign N344 = state[3] | N343;
  assign N345 = state[2] | N344;
  assign N346 = state[1] | N345;
  assign N347 = state[0] | N346;
  assign ready_o = ~N347;
  assign N349 = ~state[5];
  assign N350 = ~state[3];
  assign N351 = ~state[0];
  assign N352 = state[4] | N349;
  assign N353 = N350 | N352;
  assign N354 = state[2] | N353;
  assign N355 = state[1] | N354;
  assign N356 = N351 | N355;
  assign v_o = ~N356;
  assign next_state = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, v_i } : 
                      (N1)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0 } : 
                      (N2)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1 } : 
                      (N3)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0 } : 
                      (N4)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1 } : 
                      (N5)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0 } : 
                      (N6)? { 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1 } : 
                      (N7)? { 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0 } : 
                      (N8)? { 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1 } : 
                      (N9)? { 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0 } : 
                      (N10)? { 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1 } : 
                      (N11)? { 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0 } : 
                      (N12)? { 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1 } : 
                      (N13)? { 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0 } : 
                      (N14)? { 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1 } : 
                      (N15)? { 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                      (N16)? { 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                      (N17)? { 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0 } : 
                      (N18)? { 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1 } : 
                      (N19)? { 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0 } : 
                      (N20)? { 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1 } : 
                      (N21)? { 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0 } : 
                      (N22)? { 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1 } : 
                      (N23)? { 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0 } : 
                      (N24)? { 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1 } : 
                      (N25)? { 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0 } : 
                      (N26)? { 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1 } : 
                      (N27)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0 } : 
                      (N28)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1 } : 
                      (N29)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0 } : 
                      (N30)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 } : 
                      (N31)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                      (N32)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                      (N33)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0 } : 
                      (N34)? { 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1 } : 
                      (N35)? { 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0 } : 
                      (N36)? { 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1 } : 
                      (N37)? { 1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0 } : 
                      (N38)? { 1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1 } : 
                      (N39)? { 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0 } : 
                      (N40)? { N300, 1'b0, N300, 1'b0, 1'b0, N300 } : 
                      (N41)? { N300, 1'b0, N300, 1'b0, 1'b0, N300 } : 
                      (N342)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N0 = N51;
  assign N1 = opC_sel_o[2];
  assign N2 = N63;
  assign N3 = N69;
  assign N4 = N75;
  assign N5 = N81;
  assign N6 = N87;
  assign N7 = N93;
  assign N8 = N99;
  assign N9 = N105;
  assign N10 = N111;
  assign N11 = N117;
  assign N12 = N123;
  assign N13 = N129;
  assign N14 = N135;
  assign N15 = N141;
  assign N16 = N147;
  assign N17 = N153;
  assign N18 = N159;
  assign N19 = N165;
  assign N20 = N171;
  assign N21 = N177;
  assign N22 = N183;
  assign N23 = N189;
  assign N24 = N195;
  assign N25 = N201;
  assign N26 = N207;
  assign N27 = N213;
  assign N28 = N219;
  assign N29 = N225;
  assign N30 = N231;
  assign N31 = N237;
  assign N32 = N243;
  assign N33 = N249;
  assign N34 = N255;
  assign N35 = N261;
  assign N36 = N267;
  assign N37 = N273;
  assign N38 = N279;
  assign N39 = N285;
  assign N40 = N291;
  assign N41 = N297;
  assign latch_inputs_o = (N0)? 1'b1 : 
                          (N1)? 1'b0 : 
                          (N2)? 1'b0 : 
                          (N3)? 1'b0 : 
                          (N4)? 1'b0 : 
                          (N5)? 1'b0 : 
                          (N6)? 1'b0 : 
                          (N7)? 1'b0 : 
                          (N8)? 1'b0 : 
                          (N9)? 1'b0 : 
                          (N10)? 1'b0 : 
                          (N11)? 1'b0 : 
                          (N12)? 1'b0 : 
                          (N13)? 1'b0 : 
                          (N14)? 1'b0 : 
                          (N15)? 1'b0 : 
                          (N16)? 1'b0 : 
                          (N17)? 1'b0 : 
                          (N18)? 1'b0 : 
                          (N19)? 1'b0 : 
                          (N20)? 1'b0 : 
                          (N21)? 1'b0 : 
                          (N22)? 1'b0 : 
                          (N23)? 1'b0 : 
                          (N24)? 1'b0 : 
                          (N25)? 1'b0 : 
                          (N26)? 1'b0 : 
                          (N27)? 1'b0 : 
                          (N28)? 1'b0 : 
                          (N29)? 1'b0 : 
                          (N30)? 1'b0 : 
                          (N31)? 1'b0 : 
                          (N32)? 1'b0 : 
                          (N33)? 1'b0 : 
                          (N34)? 1'b0 : 
                          (N35)? 1'b0 : 
                          (N36)? 1'b0 : 
                          (N37)? 1'b0 : 
                          (N38)? 1'b0 : 
                          (N39)? 1'b0 : 
                          (N40)? 1'b0 : 
                          (N41)? 1'b0 : 
                          (N342)? 1'b0 : 1'b0;
  assign opA_ld_o = (N0)? 1'b0 : 
                    (N1)? 1'b1 : 
                    (N2)? N298 : 
                    (N3)? 1'b0 : 
                    (N4)? 1'b0 : 
                    (N5)? 1'b0 : 
                    (N6)? 1'b0 : 
                    (N7)? 1'b0 : 
                    (N8)? 1'b0 : 
                    (N9)? 1'b0 : 
                    (N10)? 1'b0 : 
                    (N11)? 1'b0 : 
                    (N12)? 1'b0 : 
                    (N13)? 1'b0 : 
                    (N14)? 1'b0 : 
                    (N15)? 1'b0 : 
                    (N16)? 1'b0 : 
                    (N17)? 1'b0 : 
                    (N18)? 1'b0 : 
                    (N19)? 1'b0 : 
                    (N20)? 1'b0 : 
                    (N21)? 1'b0 : 
                    (N22)? 1'b0 : 
                    (N23)? 1'b0 : 
                    (N24)? 1'b0 : 
                    (N25)? 1'b0 : 
                    (N26)? 1'b0 : 
                    (N27)? 1'b0 : 
                    (N28)? 1'b0 : 
                    (N29)? 1'b0 : 
                    (N30)? 1'b0 : 
                    (N31)? 1'b0 : 
                    (N32)? 1'b0 : 
                    (N33)? 1'b0 : 
                    (N34)? 1'b0 : 
                    (N35)? 1'b0 : 
                    (N36)? 1'b0 : 
                    (N37)? 1'b0 : 
                    (N38)? 1'b0 : 
                    (N39)? 1'b1 : 
                    (N40)? 1'b0 : 
                    (N41)? 1'b0 : 
                    (N342)? 1'b0 : 1'b0;
  assign opC_ld_o = (N0)? 1'b1 : 
                    (N1)? 1'b1 : 
                    (N2)? 1'b0 : 
                    (N3)? N299 : 
                    (N4)? 1'b1 : 
                    (N5)? 1'b1 : 
                    (N6)? 1'b1 : 
                    (N7)? 1'b1 : 
                    (N8)? 1'b1 : 
                    (N9)? 1'b1 : 
                    (N10)? 1'b1 : 
                    (N11)? 1'b1 : 
                    (N12)? 1'b1 : 
                    (N13)? 1'b1 : 
                    (N14)? 1'b1 : 
                    (N15)? 1'b1 : 
                    (N16)? 1'b1 : 
                    (N17)? 1'b1 : 
                    (N18)? 1'b1 : 
                    (N19)? 1'b1 : 
                    (N20)? 1'b1 : 
                    (N21)? 1'b1 : 
                    (N22)? 1'b1 : 
                    (N23)? 1'b1 : 
                    (N24)? 1'b1 : 
                    (N25)? 1'b1 : 
                    (N26)? 1'b1 : 
                    (N27)? 1'b1 : 
                    (N28)? 1'b1 : 
                    (N29)? 1'b1 : 
                    (N30)? 1'b1 : 
                    (N31)? 1'b1 : 
                    (N32)? 1'b1 : 
                    (N33)? 1'b1 : 
                    (N34)? 1'b1 : 
                    (N35)? 1'b1 : 
                    (N36)? 1'b1 : 
                    (N37)? 1'b1 : 
                    (N38)? 1'b0 : 
                    (N39)? 1'b0 : 
                    (N40)? q_neg : 
                    (N41)? 1'b0 : 
                    (N342)? 1'b1 : 1'b0;
  assign opA_sel_o = (N0)? 1'b0 : 
                     (N1)? 1'b1 : 
                     (N2)? 1'b0 : 
                     (N3)? 1'b0 : 
                     (N4)? 1'b0 : 
                     (N5)? 1'b0 : 
                     (N6)? 1'b0 : 
                     (N7)? 1'b0 : 
                     (N8)? 1'b0 : 
                     (N9)? 1'b0 : 
                     (N10)? 1'b0 : 
                     (N11)? 1'b0 : 
                     (N12)? 1'b0 : 
                     (N13)? 1'b0 : 
                     (N14)? 1'b0 : 
                     (N15)? 1'b0 : 
                     (N16)? 1'b0 : 
                     (N17)? 1'b0 : 
                     (N18)? 1'b0 : 
                     (N19)? 1'b0 : 
                     (N20)? 1'b0 : 
                     (N21)? 1'b0 : 
                     (N22)? 1'b0 : 
                     (N23)? 1'b0 : 
                     (N24)? 1'b0 : 
                     (N25)? 1'b0 : 
                     (N26)? 1'b0 : 
                     (N27)? 1'b0 : 
                     (N28)? 1'b0 : 
                     (N29)? 1'b0 : 
                     (N30)? 1'b0 : 
                     (N31)? 1'b0 : 
                     (N32)? 1'b0 : 
                     (N33)? 1'b0 : 
                     (N34)? 1'b0 : 
                     (N35)? 1'b0 : 
                     (N36)? 1'b0 : 
                     (N37)? 1'b0 : 
                     (N38)? 1'b0 : 
                     (N39)? 1'b0 : 
                     (N40)? 1'b0 : 
                     (N41)? 1'b0 : 
                     (N342)? 1'b0 : 1'b0;
  assign opC_sel_o[1:0] = (N0)? { 1'b0, 1'b1 } : 
                          (N1)? { 1'b0, 1'b0 } : 
                          (N2)? { 1'b0, 1'b1 } : 
                          (N3)? { 1'b1, 1'b0 } : 
                          (N4)? { 1'b0, 1'b1 } : 
                          (N5)? { 1'b0, 1'b1 } : 
                          (N6)? { 1'b0, 1'b1 } : 
                          (N7)? { 1'b0, 1'b1 } : 
                          (N8)? { 1'b0, 1'b1 } : 
                          (N9)? { 1'b0, 1'b1 } : 
                          (N10)? { 1'b0, 1'b1 } : 
                          (N11)? { 1'b0, 1'b1 } : 
                          (N12)? { 1'b0, 1'b1 } : 
                          (N13)? { 1'b0, 1'b1 } : 
                          (N14)? { 1'b0, 1'b1 } : 
                          (N15)? { 1'b0, 1'b1 } : 
                          (N16)? { 1'b0, 1'b1 } : 
                          (N17)? { 1'b0, 1'b1 } : 
                          (N18)? { 1'b0, 1'b1 } : 
                          (N19)? { 1'b0, 1'b1 } : 
                          (N20)? { 1'b0, 1'b1 } : 
                          (N21)? { 1'b0, 1'b1 } : 
                          (N22)? { 1'b0, 1'b1 } : 
                          (N23)? { 1'b0, 1'b1 } : 
                          (N24)? { 1'b0, 1'b1 } : 
                          (N25)? { 1'b0, 1'b1 } : 
                          (N26)? { 1'b0, 1'b1 } : 
                          (N27)? { 1'b0, 1'b1 } : 
                          (N28)? { 1'b0, 1'b1 } : 
                          (N29)? { 1'b0, 1'b1 } : 
                          (N30)? { 1'b0, 1'b1 } : 
                          (N31)? { 1'b0, 1'b1 } : 
                          (N32)? { 1'b0, 1'b1 } : 
                          (N33)? { 1'b0, 1'b1 } : 
                          (N34)? { 1'b0, 1'b1 } : 
                          (N35)? { 1'b0, 1'b1 } : 
                          (N36)? { 1'b0, 1'b1 } : 
                          (N37)? { 1'b0, 1'b1 } : 
                          (N38)? { 1'b0, 1'b1 } : 
                          (N39)? { 1'b0, 1'b1 } : 
                          (N40)? { 1'b1, 1'b0 } : 
                          (N41)? { 1'b0, 1'b1 } : 
                          (N342)? { 1'b0, 1'b1 } : 1'b0;
  assign opB_ld_o = (N0)? 1'b1 : 
                    (N1)? 1'b0 : 
                    (N2)? 1'b1 : 
                    (N3)? 1'b0 : 
                    (N4)? 1'b1 : 
                    (N5)? 1'b1 : 
                    (N6)? 1'b1 : 
                    (N7)? 1'b1 : 
                    (N8)? 1'b1 : 
                    (N9)? 1'b1 : 
                    (N10)? 1'b1 : 
                    (N11)? 1'b1 : 
                    (N12)? 1'b1 : 
                    (N13)? 1'b1 : 
                    (N14)? 1'b1 : 
                    (N15)? 1'b1 : 
                    (N16)? 1'b1 : 
                    (N17)? 1'b1 : 
                    (N18)? 1'b1 : 
                    (N19)? 1'b1 : 
                    (N20)? 1'b1 : 
                    (N21)? 1'b1 : 
                    (N22)? 1'b1 : 
                    (N23)? 1'b1 : 
                    (N24)? 1'b1 : 
                    (N25)? 1'b1 : 
                    (N26)? 1'b1 : 
                    (N27)? 1'b1 : 
                    (N28)? 1'b1 : 
                    (N29)? 1'b1 : 
                    (N30)? 1'b1 : 
                    (N31)? 1'b1 : 
                    (N32)? 1'b1 : 
                    (N33)? 1'b1 : 
                    (N34)? 1'b1 : 
                    (N35)? 1'b1 : 
                    (N36)? 1'b1 : 
                    (N37)? 1'b1 : 
                    (N38)? add_neg_last : 
                    (N39)? 1'b1 : 
                    (N40)? 1'b0 : 
                    (N41)? 1'b0 : 
                    (N342)? 1'b1 : 1'b0;
  assign opA_inv_o = (N0)? N43 : 
                     (N1)? N43 : 
                     (N2)? 1'b1 : 
                     (N3)? N43 : 
                     (N4)? N43 : 
                     (N5)? N43 : 
                     (N6)? N43 : 
                     (N7)? N43 : 
                     (N8)? N43 : 
                     (N9)? N43 : 
                     (N10)? N43 : 
                     (N11)? N43 : 
                     (N12)? N43 : 
                     (N13)? N43 : 
                     (N14)? N43 : 
                     (N15)? N43 : 
                     (N16)? N43 : 
                     (N17)? N43 : 
                     (N18)? N43 : 
                     (N19)? N43 : 
                     (N20)? N43 : 
                     (N21)? N43 : 
                     (N22)? N43 : 
                     (N23)? N43 : 
                     (N24)? N43 : 
                     (N25)? N43 : 
                     (N26)? N43 : 
                     (N27)? N43 : 
                     (N28)? N43 : 
                     (N29)? N43 : 
                     (N30)? N43 : 
                     (N31)? N43 : 
                     (N32)? N43 : 
                     (N33)? N43 : 
                     (N34)? N43 : 
                     (N35)? N43 : 
                     (N36)? N43 : 
                     (N37)? N43 : 
                     (N38)? 1'b0 : 
                     (N39)? N43 : 
                     (N40)? N43 : 
                     (N41)? N43 : 
                     (N342)? N43 : 1'b0;
  assign opB_clr_l_o = (N0)? 1'b1 : 
                       (N1)? 1'b1 : 
                       (N2)? 1'b0 : 
                       (N3)? 1'b1 : 
                       (N4)? 1'b0 : 
                       (N5)? 1'b1 : 
                       (N6)? 1'b1 : 
                       (N7)? 1'b1 : 
                       (N8)? 1'b1 : 
                       (N9)? 1'b1 : 
                       (N10)? 1'b1 : 
                       (N11)? 1'b1 : 
                       (N12)? 1'b1 : 
                       (N13)? 1'b1 : 
                       (N14)? 1'b1 : 
                       (N15)? 1'b1 : 
                       (N16)? 1'b1 : 
                       (N17)? 1'b1 : 
                       (N18)? 1'b1 : 
                       (N19)? 1'b1 : 
                       (N20)? 1'b1 : 
                       (N21)? 1'b1 : 
                       (N22)? 1'b1 : 
                       (N23)? 1'b1 : 
                       (N24)? 1'b1 : 
                       (N25)? 1'b1 : 
                       (N26)? 1'b1 : 
                       (N27)? 1'b1 : 
                       (N28)? 1'b1 : 
                       (N29)? 1'b1 : 
                       (N30)? 1'b1 : 
                       (N31)? 1'b1 : 
                       (N32)? 1'b1 : 
                       (N33)? 1'b1 : 
                       (N34)? 1'b1 : 
                       (N35)? 1'b1 : 
                       (N36)? 1'b1 : 
                       (N37)? 1'b1 : 
                       (N38)? 1'b1 : 
                       (N39)? 1'b1 : 
                       (N40)? 1'b1 : 
                       (N41)? 1'b1 : 
                       (N342)? 1'b1 : 1'b0;
  assign opB_sel_o = (N0)? { 1'b0, 1'b0, 1'b1 } : 
                     (N1)? { 1'b0, 1'b0, 1'b1 } : 
                     (N2)? { 1'b1, 1'b0, 1'b0 } : 
                     (N3)? { 1'b0, 1'b0, 1'b1 } : 
                     (N4)? { 1'b0, 1'b0, 1'b1 } : 
                     (N5)? { 1'b0, 1'b0, 1'b1 } : 
                     (N6)? { 1'b0, 1'b0, 1'b1 } : 
                     (N7)? { 1'b0, 1'b0, 1'b1 } : 
                     (N8)? { 1'b0, 1'b0, 1'b1 } : 
                     (N9)? { 1'b0, 1'b0, 1'b1 } : 
                     (N10)? { 1'b0, 1'b0, 1'b1 } : 
                     (N11)? { 1'b0, 1'b0, 1'b1 } : 
                     (N12)? { 1'b0, 1'b0, 1'b1 } : 
                     (N13)? { 1'b0, 1'b0, 1'b1 } : 
                     (N14)? { 1'b0, 1'b0, 1'b1 } : 
                     (N15)? { 1'b0, 1'b0, 1'b1 } : 
                     (N16)? { 1'b0, 1'b0, 1'b1 } : 
                     (N17)? { 1'b0, 1'b0, 1'b1 } : 
                     (N18)? { 1'b0, 1'b0, 1'b1 } : 
                     (N19)? { 1'b0, 1'b0, 1'b1 } : 
                     (N20)? { 1'b0, 1'b0, 1'b1 } : 
                     (N21)? { 1'b0, 1'b0, 1'b1 } : 
                     (N22)? { 1'b0, 1'b0, 1'b1 } : 
                     (N23)? { 1'b0, 1'b0, 1'b1 } : 
                     (N24)? { 1'b0, 1'b0, 1'b1 } : 
                     (N25)? { 1'b0, 1'b0, 1'b1 } : 
                     (N26)? { 1'b0, 1'b0, 1'b1 } : 
                     (N27)? { 1'b0, 1'b0, 1'b1 } : 
                     (N28)? { 1'b0, 1'b0, 1'b1 } : 
                     (N29)? { 1'b0, 1'b0, 1'b1 } : 
                     (N30)? { 1'b0, 1'b0, 1'b1 } : 
                     (N31)? { 1'b0, 1'b0, 1'b1 } : 
                     (N32)? { 1'b0, 1'b0, 1'b1 } : 
                     (N33)? { 1'b0, 1'b0, 1'b1 } : 
                     (N34)? { 1'b0, 1'b0, 1'b1 } : 
                     (N35)? { 1'b0, 1'b0, 1'b1 } : 
                     (N36)? { 1'b0, 1'b0, 1'b1 } : 
                     (N37)? { 1'b0, 1'b1, 1'b0 } : 
                     (N38)? { 1'b0, 1'b1, 1'b0 } : 
                     (N39)? { 1'b1, 1'b0, 1'b0 } : 
                     (N40)? { 1'b0, 1'b0, 1'b1 } : 
                     (N41)? { 1'b0, 1'b0, 1'b1 } : 
                     (N342)? { 1'b0, 1'b0, 1'b1 } : 1'b0;
  assign neg_ld = (N0)? 1'b0 : 
                  (N1)? 1'b0 : 
                  (N2)? 1'b1 : 
                  (N3)? 1'b0 : 
                  (N4)? 1'b0 : 
                  (N5)? 1'b0 : 
                  (N6)? 1'b0 : 
                  (N7)? 1'b0 : 
                  (N8)? 1'b0 : 
                  (N9)? 1'b0 : 
                  (N10)? 1'b0 : 
                  (N11)? 1'b0 : 
                  (N12)? 1'b0 : 
                  (N13)? 1'b0 : 
                  (N14)? 1'b0 : 
                  (N15)? 1'b0 : 
                  (N16)? 1'b0 : 
                  (N17)? 1'b0 : 
                  (N18)? 1'b0 : 
                  (N19)? 1'b0 : 
                  (N20)? 1'b0 : 
                  (N21)? 1'b0 : 
                  (N22)? 1'b0 : 
                  (N23)? 1'b0 : 
                  (N24)? 1'b0 : 
                  (N25)? 1'b0 : 
                  (N26)? 1'b0 : 
                  (N27)? 1'b0 : 
                  (N28)? 1'b0 : 
                  (N29)? 1'b0 : 
                  (N30)? 1'b0 : 
                  (N31)? 1'b0 : 
                  (N32)? 1'b0 : 
                  (N33)? 1'b0 : 
                  (N34)? 1'b0 : 
                  (N35)? 1'b0 : 
                  (N36)? 1'b0 : 
                  (N37)? 1'b0 : 
                  (N38)? 1'b0 : 
                  (N39)? 1'b0 : 
                  (N40)? 1'b0 : 
                  (N41)? 1'b0 : 
                  (N342)? 1'b0 : 1'b0;
  assign adder_cin_o = (N0)? N43 : 
                       (N1)? N43 : 
                       (N2)? 1'b1 : 
                       (N3)? 1'b1 : 
                       (N4)? 1'b0 : 
                       (N5)? N43 : 
                       (N6)? N43 : 
                       (N7)? N43 : 
                       (N8)? N43 : 
                       (N9)? N43 : 
                       (N10)? N43 : 
                       (N11)? N43 : 
                       (N12)? N43 : 
                       (N13)? N43 : 
                       (N14)? N43 : 
                       (N15)? N43 : 
                       (N16)? N43 : 
                       (N17)? N43 : 
                       (N18)? N43 : 
                       (N19)? N43 : 
                       (N20)? N43 : 
                       (N21)? N43 : 
                       (N22)? N43 : 
                       (N23)? N43 : 
                       (N24)? N43 : 
                       (N25)? N43 : 
                       (N26)? N43 : 
                       (N27)? N43 : 
                       (N28)? N43 : 
                       (N29)? N43 : 
                       (N30)? N43 : 
                       (N31)? N43 : 
                       (N32)? N43 : 
                       (N33)? N43 : 
                       (N34)? N43 : 
                       (N35)? N43 : 
                       (N36)? N43 : 
                       (N37)? N43 : 
                       (N38)? 1'b0 : 
                       (N39)? r_neg : 
                       (N40)? 1'b1 : 
                       (N41)? N43 : 
                       (N342)? N43 : 1'b0;
  assign opA_clr_l_o = (N0)? 1'b1 : 
                       (N1)? 1'b1 : 
                       (N2)? 1'b1 : 
                       (N3)? 1'b0 : 
                       (N4)? 1'b0 : 
                       (N5)? 1'b1 : 
                       (N6)? 1'b1 : 
                       (N7)? 1'b1 : 
                       (N8)? 1'b1 : 
                       (N9)? 1'b1 : 
                       (N10)? 1'b1 : 
                       (N11)? 1'b1 : 
                       (N12)? 1'b1 : 
                       (N13)? 1'b1 : 
                       (N14)? 1'b1 : 
                       (N15)? 1'b1 : 
                       (N16)? 1'b1 : 
                       (N17)? 1'b1 : 
                       (N18)? 1'b1 : 
                       (N19)? 1'b1 : 
                       (N20)? 1'b1 : 
                       (N21)? 1'b1 : 
                       (N22)? 1'b1 : 
                       (N23)? 1'b1 : 
                       (N24)? 1'b1 : 
                       (N25)? 1'b1 : 
                       (N26)? 1'b1 : 
                       (N27)? 1'b1 : 
                       (N28)? 1'b1 : 
                       (N29)? 1'b1 : 
                       (N30)? 1'b1 : 
                       (N31)? 1'b1 : 
                       (N32)? 1'b1 : 
                       (N33)? 1'b1 : 
                       (N34)? 1'b1 : 
                       (N35)? 1'b1 : 
                       (N36)? 1'b1 : 
                       (N37)? 1'b1 : 
                       (N38)? 1'b1 : 
                       (N39)? 1'b0 : 
                       (N40)? 1'b0 : 
                       (N41)? 1'b1 : 
                       (N342)? 1'b1 : 1'b0;
  assign opB_inv_o = (N0)? 1'b0 : 
                     (N1)? 1'b0 : 
                     (N2)? 1'b0 : 
                     (N3)? 1'b1 : 
                     (N4)? 1'b0 : 
                     (N5)? 1'b0 : 
                     (N6)? 1'b0 : 
                     (N7)? 1'b0 : 
                     (N8)? 1'b0 : 
                     (N9)? 1'b0 : 
                     (N10)? 1'b0 : 
                     (N11)? 1'b0 : 
                     (N12)? 1'b0 : 
                     (N13)? 1'b0 : 
                     (N14)? 1'b0 : 
                     (N15)? 1'b0 : 
                     (N16)? 1'b0 : 
                     (N17)? 1'b0 : 
                     (N18)? 1'b0 : 
                     (N19)? 1'b0 : 
                     (N20)? 1'b0 : 
                     (N21)? 1'b0 : 
                     (N22)? 1'b0 : 
                     (N23)? 1'b0 : 
                     (N24)? 1'b0 : 
                     (N25)? 1'b0 : 
                     (N26)? 1'b0 : 
                     (N27)? 1'b0 : 
                     (N28)? 1'b0 : 
                     (N29)? 1'b0 : 
                     (N30)? 1'b0 : 
                     (N31)? 1'b0 : 
                     (N32)? 1'b0 : 
                     (N33)? 1'b0 : 
                     (N34)? 1'b0 : 
                     (N35)? 1'b0 : 
                     (N36)? 1'b0 : 
                     (N37)? 1'b0 : 
                     (N38)? 1'b0 : 
                     (N39)? r_neg : 
                     (N40)? 1'b1 : 
                     (N41)? 1'b0 : 
                     (N342)? 1'b0 : 1'b0;
  assign N42 = N358 & signed_div_r_i;
  assign N358 = opA_is_neg_i ^ opC_is_neg_i;
  assign N43 = ~add_neg_last;
  assign N44 = ~state[4];
  assign N45 = ~state[2];
  assign N46 = ~state[1];
  assign N57 = ~N56;
  assign N63 = ~N62;
  assign N69 = ~N68;
  assign N75 = ~N74;
  assign N81 = ~N80;
  assign N87 = ~N86;
  assign N93 = ~N92;
  assign N99 = ~N98;
  assign N105 = ~N104;
  assign N111 = ~N110;
  assign N117 = ~N116;
  assign N123 = ~N122;
  assign N129 = ~N128;
  assign N135 = ~N134;
  assign N141 = ~N140;
  assign N147 = ~N146;
  assign N153 = ~N152;
  assign N159 = ~N158;
  assign N165 = ~N164;
  assign N171 = ~N170;
  assign N177 = ~N176;
  assign N183 = ~N182;
  assign N189 = ~N188;
  assign N195 = ~N194;
  assign N201 = ~N200;
  assign N207 = ~N206;
  assign N213 = ~N212;
  assign N219 = ~N218;
  assign N225 = ~N224;
  assign N231 = ~N230;
  assign N237 = ~N236;
  assign N243 = ~N242;
  assign N249 = ~N248;
  assign N255 = ~N254;
  assign N261 = ~N260;
  assign N267 = ~N266;
  assign N273 = ~N272;
  assign N279 = ~N278;
  assign N285 = ~N284;
  assign N291 = ~N290;
  assign N297 = ~N296;
  assign opC_sel_o[2] = N57;
  assign N298 = opA_is_neg_i & signed_div_r_i;
  assign N299 = opC_is_neg_i & signed_div_r_i;
  assign N300 = ~yumi_i;
  assign N301 = opC_sel_o[2] | N51;
  assign N302 = N63 | N301;
  assign N303 = N69 | N302;
  assign N304 = N75 | N303;
  assign N305 = N81 | N304;
  assign N306 = N87 | N305;
  assign N307 = N93 | N306;
  assign N308 = N99 | N307;
  assign N309 = N105 | N308;
  assign N310 = N111 | N309;
  assign N311 = N117 | N310;
  assign N312 = N123 | N311;
  assign N313 = N129 | N312;
  assign N314 = N135 | N313;
  assign N315 = N141 | N314;
  assign N316 = N147 | N315;
  assign N317 = N153 | N316;
  assign N318 = N159 | N317;
  assign N319 = N165 | N318;
  assign N320 = N171 | N319;
  assign N321 = N177 | N320;
  assign N322 = N183 | N321;
  assign N323 = N189 | N322;
  assign N324 = N195 | N323;
  assign N325 = N201 | N324;
  assign N326 = N207 | N325;
  assign N327 = N213 | N326;
  assign N328 = N219 | N327;
  assign N329 = N225 | N328;
  assign N330 = N231 | N329;
  assign N331 = N237 | N330;
  assign N332 = N243 | N331;
  assign N333 = N249 | N332;
  assign N334 = N255 | N333;
  assign N335 = N261 | N334;
  assign N336 = N267 | N335;
  assign N337 = N273 | N336;
  assign N338 = N279 | N337;
  assign N339 = N285 | N338;
  assign N340 = N291 | N339;
  assign N341 = N297 | N340;
  assign N342 = ~N341;

endmodule