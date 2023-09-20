module bsg_imul_iterative_width_p32
(
  reset_i,
  clk_i,
  v_i,
  ready_o,
  opA_i,
  signed_opA_i,
  opB_i,
  signed_opB_i,
  gets_high_part_i,
  v_o,
  result_o,
  yumi_i
);

  input [31:0] opA_i;
  input [31:0] opB_i;
  output [31:0] result_o;
  input reset_i;
  input clk_i;
  input v_i;
  input signed_opA_i;
  input signed_opB_i;
  input gets_high_part_i;
  input yumi_i;
  output ready_o;
  output v_o;
  wire ready_o,v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,
  N19,N20,N21,N22,N23,N24,N25,N26,shift_counter_full,N27,N28,N29,N30,N31,N32,N33,
  N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,
  N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,
  N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,
  N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,
  N111,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,
  N127,N128,N129,N130,N131,N132,N133,N134,N135,N136,N137,N138,N139,N140,N141,N142,
  N143,N144,N145,N146,N147,N148,N149,N150,N151,N152,N153,N154,N155,N156,N157,N158,
  N159,N160,N161,N162,N163,N164,N165,N166,adder_neg_op,N167,latch_input,signed_opA,
  signed_opB,N168,N169,N170,N171,N172,N173,N174,N175,N176,N177,N178,N179,N180,N181,
  N182,N183,N184,N185,N186,N187,N188,N189,N190,N191,N192,N193,N194,N195,N196,N197,
  N198,N199,N200,N201,N202,N203,N204,N205,N206,N207,N208,N209,N210,N211,N212,N213,
  N214,N215,N216,N217,N218,N219,N220,N221,N222,N223,N224,N225,N226,N227,N228,N229,
  N230,N231,N232,N233,N234,N235,N236,N237,N238,N239,N240,N241,N242,N243,N244,N245,
  N246,N247,N248,N249,N250,N251,N252,N253,N254,N255,N256,N257,N258,N259,N260,N261,
  N262,N263,N264,N265,N266,N267,N268,N269,N270,N271,N272,N273,N274,N275,N276,N277,
  N278,N279,N280,N281,N282,N283,N284,N285,N286,N287,N288,N289,N290,N291,N292,N293,
  N294,N295,N296,N297,N298,N299,N300,N301,N302,N303,N304,N305,N306,N307,N308,N309,
  shifted_lsb,N310,N311,N312,N313,N314,N315,N316,N317,N318,N319,N320,N321,N322,N323,
  N324,N325,N326,N327,N328,N329,N330,N331,N332,N333,N334,N335,N336,N337,N338,N339,
  N340,N341,N342,N343,N344,N345,N346,N347,N348,N349,N350,N351,N352,N353,N354,N355,
  N356,N357,N358,N359,N360,N361,N362,N363,N364,N365,N366,N367,N368,N369,N370,N371,
  N372,N373,N374,N375,N376,N377,N378,N379,N380,N381,N382,N383,N384,N385,N386,N387,
  N388,N389,N390,N391,N392,N393,N394,N395,N396,N397,N398,N399,N400,N401,N402,N403,
  N404,N405,N406,N407,N408,N409,N410,N411,N412,N413,N414,N415,N416,N417,N418,N419,
  N420,N421,N422,N423,N424,N425,N426,N427,N428,N429,N430,N431,N432,N433,N434,N435,
  N436,N437,N438,N439,N440,N441,N442,N443,N444,N445,N446,N447,N448,N449,N450,N451,
  N453,N454,N455,N456,N457,N458,N459,N460,N461,N462,N463,N464,N465,N466,N467,N468,
  N469,N470,N471,N472,N473,N474,N475,N476,N477,N478,N479,N480,N481,N482,N483,N484,
  N485,N486,N487,N488,N489,N490,N491,N492,N493,N494,N495,N496,N497,N498,N499,N500,
  N501,N502,N503,N504,N505,N506,N507,N509,N510,N511,N512,N513,N514,N515,N516,N517,
  N518,N519,N520,N521,N522,N523,N524,N525,N526,N527,N528,N529;
  wire [2:0] next_state;
  wire [31:0] adder_a,adder_b;
  wire [32:0] adder_result;
  reg [2:0] curr_state_r;
  reg [5:0] shift_counter_r;
  reg signed_opA_r,signed_opB_r,need_neg_result_r,gets_high_part_r,all_sh_lsb_zero_r;
  reg [31:0] opA_r,opB_r,result_o;

  always @(posedge clk_i) begin
    if(reset_i) begin
      curr_state_r[2] <= 1'b0;
    end else if(1'b1) begin
      curr_state_r[2] <= next_state[2];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      curr_state_r[1] <= 1'b0;
    end else if(1'b1) begin
      curr_state_r[1] <= next_state[1];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      curr_state_r[0] <= 1'b0;
    end else if(1'b1) begin
      curr_state_r[0] <= next_state[0];
    end 
  end

  assign N27 = N448 & N453;
  assign N28 = N27 & N449;
  assign N29 = curr_state_r[2] | curr_state_r[1];
  assign N30 = N29 | N449;
  assign N32 = curr_state_r[2] | N453;
  assign N33 = N32 | curr_state_r[0];
  assign N35 = curr_state_r[2] | N453;
  assign N36 = N35 | N449;
  assign N38 = N448 | curr_state_r[1];
  assign N39 = N38 | curr_state_r[0];
  assign N41 = N448 | curr_state_r[1];
  assign N42 = N41 | N449;
  assign N44 = curr_state_r[2] & curr_state_r[1];

  always @(posedge clk_i) begin
    if(reset_i) begin
      shift_counter_r[5] <= 1'b0;
    end else if(N59) begin
      shift_counter_r[5] <= N65;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      shift_counter_r[4] <= 1'b0;
    end else if(N59) begin
      shift_counter_r[4] <= N64;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      shift_counter_r[3] <= 1'b0;
    end else if(N59) begin
      shift_counter_r[3] <= N63;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      shift_counter_r[2] <= 1'b0;
    end else if(N59) begin
      shift_counter_r[2] <= N62;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      shift_counter_r[1] <= 1'b0;
    end else if(N59) begin
      shift_counter_r[1] <= N61;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      shift_counter_r[0] <= 1'b0;
    end else if(N59) begin
      shift_counter_r[0] <= N60;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      signed_opA_r <= 1'b0;
    end else if(latch_input) begin
      signed_opA_r <= signed_opA;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      signed_opB_r <= 1'b0;
    end else if(latch_input) begin
      signed_opB_r <= signed_opB;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      need_neg_result_r <= 1'b0;
    end else if(latch_input) begin
      need_neg_result_r <= N168;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      gets_high_part_r <= 1'b0;
    end else if(latch_input) begin
      gets_high_part_r <= gets_high_part_i;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[31] <= 1'b0;
    end else if(N207) begin
      opA_r[31] <= N239;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[30] <= 1'b0;
    end else if(N207) begin
      opA_r[30] <= N238;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[29] <= 1'b0;
    end else if(N207) begin
      opA_r[29] <= N237;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[28] <= 1'b0;
    end else if(N207) begin
      opA_r[28] <= N236;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[27] <= 1'b0;
    end else if(N207) begin
      opA_r[27] <= N235;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[26] <= 1'b0;
    end else if(N207) begin
      opA_r[26] <= N234;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[25] <= 1'b0;
    end else if(N207) begin
      opA_r[25] <= N233;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[24] <= 1'b0;
    end else if(N207) begin
      opA_r[24] <= N232;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[23] <= 1'b0;
    end else if(N207) begin
      opA_r[23] <= N231;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[22] <= 1'b0;
    end else if(N207) begin
      opA_r[22] <= N230;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[21] <= 1'b0;
    end else if(N207) begin
      opA_r[21] <= N229;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[20] <= 1'b0;
    end else if(N207) begin
      opA_r[20] <= N228;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[19] <= 1'b0;
    end else if(N207) begin
      opA_r[19] <= N227;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[18] <= 1'b0;
    end else if(N207) begin
      opA_r[18] <= N226;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[17] <= 1'b0;
    end else if(N207) begin
      opA_r[17] <= N225;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[16] <= 1'b0;
    end else if(N207) begin
      opA_r[16] <= N224;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[15] <= 1'b0;
    end else if(N207) begin
      opA_r[15] <= N223;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[14] <= 1'b0;
    end else if(N207) begin
      opA_r[14] <= N222;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[13] <= 1'b0;
    end else if(N207) begin
      opA_r[13] <= N221;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[12] <= 1'b0;
    end else if(N207) begin
      opA_r[12] <= N220;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[11] <= 1'b0;
    end else if(N207) begin
      opA_r[11] <= N219;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[10] <= 1'b0;
    end else if(N207) begin
      opA_r[10] <= N218;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[9] <= 1'b0;
    end else if(N207) begin
      opA_r[9] <= N217;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[8] <= 1'b0;
    end else if(N207) begin
      opA_r[8] <= N216;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[7] <= 1'b0;
    end else if(N207) begin
      opA_r[7] <= N215;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[6] <= 1'b0;
    end else if(N207) begin
      opA_r[6] <= N214;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[5] <= 1'b0;
    end else if(N207) begin
      opA_r[5] <= N213;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[4] <= 1'b0;
    end else if(N207) begin
      opA_r[4] <= N212;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[3] <= 1'b0;
    end else if(N207) begin
      opA_r[3] <= N211;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[2] <= 1'b0;
    end else if(N207) begin
      opA_r[2] <= N210;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[1] <= 1'b0;
    end else if(N207) begin
      opA_r[1] <= N209;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opA_r[0] <= 1'b0;
    end else if(N207) begin
      opA_r[0] <= N208;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[31] <= 1'b0;
    end else if(N276) begin
      opB_r[31] <= N308;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[30] <= 1'b0;
    end else if(N276) begin
      opB_r[30] <= N307;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[29] <= 1'b0;
    end else if(N276) begin
      opB_r[29] <= N306;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[28] <= 1'b0;
    end else if(N276) begin
      opB_r[28] <= N305;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[27] <= 1'b0;
    end else if(N276) begin
      opB_r[27] <= N304;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[26] <= 1'b0;
    end else if(N276) begin
      opB_r[26] <= N303;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[25] <= 1'b0;
    end else if(N276) begin
      opB_r[25] <= N302;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[24] <= 1'b0;
    end else if(N276) begin
      opB_r[24] <= N301;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[23] <= 1'b0;
    end else if(N276) begin
      opB_r[23] <= N300;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[22] <= 1'b0;
    end else if(N276) begin
      opB_r[22] <= N299;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[21] <= 1'b0;
    end else if(N276) begin
      opB_r[21] <= N298;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[20] <= 1'b0;
    end else if(N276) begin
      opB_r[20] <= N297;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[19] <= 1'b0;
    end else if(N276) begin
      opB_r[19] <= N296;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[18] <= 1'b0;
    end else if(N276) begin
      opB_r[18] <= N295;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[17] <= 1'b0;
    end else if(N276) begin
      opB_r[17] <= N294;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[16] <= 1'b0;
    end else if(N276) begin
      opB_r[16] <= N293;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[15] <= 1'b0;
    end else if(N276) begin
      opB_r[15] <= N292;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[14] <= 1'b0;
    end else if(N276) begin
      opB_r[14] <= N291;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[13] <= 1'b0;
    end else if(N276) begin
      opB_r[13] <= N290;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[12] <= 1'b0;
    end else if(N276) begin
      opB_r[12] <= N289;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[11] <= 1'b0;
    end else if(N276) begin
      opB_r[11] <= N288;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[10] <= 1'b0;
    end else if(N276) begin
      opB_r[10] <= N287;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[9] <= 1'b0;
    end else if(N276) begin
      opB_r[9] <= N286;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[8] <= 1'b0;
    end else if(N276) begin
      opB_r[8] <= N285;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[7] <= 1'b0;
    end else if(N276) begin
      opB_r[7] <= N284;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[6] <= 1'b0;
    end else if(N276) begin
      opB_r[6] <= N283;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[5] <= 1'b0;
    end else if(N276) begin
      opB_r[5] <= N282;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[4] <= 1'b0;
    end else if(N276) begin
      opB_r[4] <= N281;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[3] <= 1'b0;
    end else if(N276) begin
      opB_r[3] <= N280;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[2] <= 1'b0;
    end else if(N276) begin
      opB_r[2] <= N279;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[1] <= 1'b0;
    end else if(N276) begin
      opB_r[1] <= N278;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      opB_r[0] <= 1'b0;
    end else if(N276) begin
      opB_r[0] <= N277;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      all_sh_lsb_zero_r <= 1'b0;
    end else if(latch_input) begin
      all_sh_lsb_zero_r <= 1'b1;
    end else if(N456) begin
      all_sh_lsb_zero_r <= N310;
    end 
  end


  always @(posedge clk_i) begin
    if(N416) begin
      result_o[31] <= 1'b0;
    end else if(N383) begin
      result_o[31] <= N415;
    end 
  end


  always @(posedge clk_i) begin
    if(N447) begin
      result_o[30] <= 1'b0;
    end else if(N383) begin
      result_o[30] <= N414;
    end 
  end


  always @(posedge clk_i) begin
    if(N446) begin
      result_o[29] <= 1'b0;
    end else if(N383) begin
      result_o[29] <= N413;
    end 
  end


  always @(posedge clk_i) begin
    if(N445) begin
      result_o[28] <= 1'b0;
    end else if(N383) begin
      result_o[28] <= N412;
    end 
  end


  always @(posedge clk_i) begin
    if(N444) begin
      result_o[27] <= 1'b0;
    end else if(N383) begin
      result_o[27] <= N411;
    end 
  end


  always @(posedge clk_i) begin
    if(N443) begin
      result_o[26] <= 1'b0;
    end else if(N383) begin
      result_o[26] <= N410;
    end 
  end


  always @(posedge clk_i) begin
    if(N442) begin
      result_o[25] <= 1'b0;
    end else if(N383) begin
      result_o[25] <= N409;
    end 
  end


  always @(posedge clk_i) begin
    if(N441) begin
      result_o[24] <= 1'b0;
    end else if(N383) begin
      result_o[24] <= N408;
    end 
  end


  always @(posedge clk_i) begin
    if(N440) begin
      result_o[23] <= 1'b0;
    end else if(N383) begin
      result_o[23] <= N407;
    end 
  end


  always @(posedge clk_i) begin
    if(N439) begin
      result_o[22] <= 1'b0;
    end else if(N383) begin
      result_o[22] <= N406;
    end 
  end


  always @(posedge clk_i) begin
    if(N438) begin
      result_o[21] <= 1'b0;
    end else if(N383) begin
      result_o[21] <= N405;
    end 
  end


  always @(posedge clk_i) begin
    if(N437) begin
      result_o[20] <= 1'b0;
    end else if(N383) begin
      result_o[20] <= N404;
    end 
  end


  always @(posedge clk_i) begin
    if(N436) begin
      result_o[19] <= 1'b0;
    end else if(N383) begin
      result_o[19] <= N403;
    end 
  end


  always @(posedge clk_i) begin
    if(N435) begin
      result_o[18] <= 1'b0;
    end else if(N383) begin
      result_o[18] <= N402;
    end 
  end


  always @(posedge clk_i) begin
    if(N434) begin
      result_o[17] <= 1'b0;
    end else if(N383) begin
      result_o[17] <= N401;
    end 
  end


  always @(posedge clk_i) begin
    if(N433) begin
      result_o[16] <= 1'b0;
    end else if(N383) begin
      result_o[16] <= N400;
    end 
  end


  always @(posedge clk_i) begin
    if(N432) begin
      result_o[15] <= 1'b0;
    end else if(N383) begin
      result_o[15] <= N399;
    end 
  end


  always @(posedge clk_i) begin
    if(N431) begin
      result_o[14] <= 1'b0;
    end else if(N383) begin
      result_o[14] <= N398;
    end 
  end


  always @(posedge clk_i) begin
    if(N430) begin
      result_o[13] <= 1'b0;
    end else if(N383) begin
      result_o[13] <= N397;
    end 
  end


  always @(posedge clk_i) begin
    if(N429) begin
      result_o[12] <= 1'b0;
    end else if(N383) begin
      result_o[12] <= N396;
    end 
  end


  always @(posedge clk_i) begin
    if(N428) begin
      result_o[11] <= 1'b0;
    end else if(N383) begin
      result_o[11] <= N395;
    end 
  end


  always @(posedge clk_i) begin
    if(N427) begin
      result_o[10] <= 1'b0;
    end else if(N383) begin
      result_o[10] <= N394;
    end 
  end


  always @(posedge clk_i) begin
    if(N426) begin
      result_o[9] <= 1'b0;
    end else if(N383) begin
      result_o[9] <= N393;
    end 
  end


  always @(posedge clk_i) begin
    if(N425) begin
      result_o[8] <= 1'b0;
    end else if(N383) begin
      result_o[8] <= N392;
    end 
  end


  always @(posedge clk_i) begin
    if(N424) begin
      result_o[7] <= 1'b0;
    end else if(N383) begin
      result_o[7] <= N391;
    end 
  end


  always @(posedge clk_i) begin
    if(N423) begin
      result_o[6] <= 1'b0;
    end else if(N383) begin
      result_o[6] <= N390;
    end 
  end


  always @(posedge clk_i) begin
    if(N422) begin
      result_o[5] <= 1'b0;
    end else if(N383) begin
      result_o[5] <= N389;
    end 
  end


  always @(posedge clk_i) begin
    if(N421) begin
      result_o[4] <= 1'b0;
    end else if(N383) begin
      result_o[4] <= N388;
    end 
  end


  always @(posedge clk_i) begin
    if(N420) begin
      result_o[3] <= 1'b0;
    end else if(N383) begin
      result_o[3] <= N387;
    end 
  end


  always @(posedge clk_i) begin
    if(N419) begin
      result_o[2] <= 1'b0;
    end else if(N383) begin
      result_o[2] <= N386;
    end 
  end


  always @(posedge clk_i) begin
    if(N418) begin
      result_o[1] <= 1'b0;
    end else if(N383) begin
      result_o[1] <= N385;
    end 
  end


  always @(posedge clk_i) begin
    if(N417) begin
      result_o[0] <= 1'b0;
    end else if(N383) begin
      result_o[0] <= N384;
    end 
  end

  assign N416 = reset_i | latch_input;
  assign N417 = reset_i | latch_input;
  assign N418 = reset_i | latch_input;
  assign N419 = reset_i | latch_input;
  assign N420 = reset_i | latch_input;
  assign N421 = reset_i | latch_input;
  assign N422 = reset_i | latch_input;
  assign N423 = reset_i | latch_input;
  assign N424 = reset_i | latch_input;
  assign N425 = reset_i | latch_input;
  assign N426 = reset_i | latch_input;
  assign N427 = reset_i | latch_input;
  assign N428 = reset_i | latch_input;
  assign N429 = reset_i | latch_input;
  assign N430 = reset_i | latch_input;
  assign N431 = reset_i | latch_input;
  assign N432 = reset_i | latch_input;
  assign N433 = reset_i | latch_input;
  assign N434 = reset_i | latch_input;
  assign N435 = reset_i | latch_input;
  assign N436 = reset_i | latch_input;
  assign N437 = reset_i | latch_input;
  assign N438 = reset_i | latch_input;
  assign N439 = reset_i | latch_input;
  assign N440 = reset_i | latch_input;
  assign N441 = reset_i | latch_input;
  assign N442 = reset_i | latch_input;
  assign N443 = reset_i | latch_input;
  assign N444 = reset_i | latch_input;
  assign N445 = reset_i | latch_input;
  assign N446 = reset_i | latch_input;
  assign N447 = reset_i | latch_input;
  assign N448 = ~curr_state_r[2];
  assign N449 = ~curr_state_r[0];
  assign N450 = curr_state_r[1] | N448;
  assign N451 = N449 | N450;
  assign v_o = ~N451;
  assign N453 = ~curr_state_r[1];
  assign N454 = N453 | curr_state_r[2];
  assign N455 = N449 | N454;
  assign N456 = ~N455;
  assign N457 = N453 | curr_state_r[2];
  assign N458 = N449 | N457;
  assign N459 = ~N458;
  assign N460 = N453 | curr_state_r[2];
  assign N461 = N449 | N460;
  assign N462 = ~N461;
  assign N463 = N453 | curr_state_r[2];
  assign N464 = N449 | N463;
  assign N465 = ~N464;
  assign N466 = curr_state_r[1] | curr_state_r[2];
  assign N467 = N449 | N466;
  assign N468 = ~N467;
  assign N469 = N453 | curr_state_r[2];
  assign N470 = N449 | N469;
  assign N471 = ~N470;
  assign N472 = N453 | curr_state_r[2];
  assign N473 = curr_state_r[0] | N472;
  assign N474 = ~N473;
  assign N475 = N453 | curr_state_r[2];
  assign N476 = N449 | N475;
  assign N477 = ~N476;
  assign N478 = curr_state_r[1] | N448;
  assign N479 = curr_state_r[0] | N478;
  assign N480 = ~N479;
  assign N481 = N453 | curr_state_r[2];
  assign N482 = N449 | N481;
  assign N483 = ~next_state[1];
  assign N484 = ~next_state[0];
  assign N485 = N483 | next_state[2];
  assign N486 = N484 | N485;
  assign N487 = ~N486;
  assign N488 = curr_state_r[1] | N448;
  assign N489 = curr_state_r[0] | N488;
  assign N490 = ~N489;
  assign N491 = curr_state_r[1] | curr_state_r[2];
  assign N492 = N449 | N491;
  assign N493 = ~N492;
  assign N494 = N453 | curr_state_r[2];
  assign N495 = curr_state_r[0] | N494;
  assign N496 = ~N495;
  assign N497 = curr_state_r[1] | N448;
  assign N498 = curr_state_r[0] | N497;
  assign N499 = ~N498;
  assign N500 = N453 | curr_state_r[2];
  assign N501 = curr_state_r[0] | N500;
  assign N502 = ~N501;
  assign N503 = curr_state_r[1] | curr_state_r[2];
  assign N504 = N449 | N503;
  assign N505 = ~N504;
  assign N506 = curr_state_r[1] | curr_state_r[2];
  assign N507 = curr_state_r[0] | N506;
  assign ready_o = ~N507;
  assign N509 = ~shift_counter_r[4];
  assign N510 = ~shift_counter_r[3];
  assign N511 = ~shift_counter_r[2];
  assign N512 = ~shift_counter_r[1];
  assign N513 = ~shift_counter_r[0];
  assign N514 = N509 | shift_counter_r[5];
  assign N515 = N510 | N514;
  assign N516 = N511 | N515;
  assign N517 = N512 | N516;
  assign N518 = N513 | N517;
  assign N519 = ~N518;
  assign N520 = ~shift_counter_r[5];
  assign N521 = shift_counter_r[4] | N520;
  assign N522 = shift_counter_r[3] | N521;
  assign N523 = shift_counter_r[2] | N522;
  assign N524 = shift_counter_r[1] | N523;
  assign N525 = shift_counter_r[0] | N524;
  assign N526 = ~N525;
  assign adder_result = adder_a + adder_b;
  assign { N58, N57, N56, N55, N54, N53 } = shift_counter_r + 1'b1;
  assign shift_counter_full = (N0)? N519 : 
                              (N1)? N526 : 1'b0;
  assign N0 = gets_high_part_r;
  assign N1 = N26;
  assign next_state = (N2)? { 1'b0, 1'b0, v_i } : 
                      (N3)? { 1'b0, 1'b1, 1'b0 } : 
                      (N4)? { 1'b0, 1'b1, 1'b1 } : 
                      (N5)? { shift_counter_full, N45, N45 } : 
                      (N6)? { 1'b1, 1'b0, 1'b1 } : 
                      (N7)? { N46, 1'b0, N46 } : 
                      (N8)? { 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N2 = N28;
  assign N3 = N31;
  assign N4 = N34;
  assign N5 = N37;
  assign N6 = N40;
  assign N7 = N43;
  assign N8 = N44;
  assign N59 = (N9)? 1'b1 : 
               (N67)? 1'b1 : 
               (N51)? 1'b0 : 1'b0;
  assign N9 = N49;
  assign { N65, N64, N63, N62, N61, N60 } = (N9)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                            (N67)? { N58, N57, N56, N55, N54, N53 } : 1'b0;
  assign adder_a = (N10)? { N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102 } : 
                   (N11)? { N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114, N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, N131, N132, N133, N134 } : 
                   (N12)? { N135, N136, N137, N138, N139, N140, N141, N142, N143, N144, N145, N146, N147, N148, N149, N150, N151, N152, N153, N154, N155, N156, N157, N158, N159, N160, N161, N162, N163, N164, N165, N166 } : 
                   (N70)? result_o : 1'b0;
  assign N10 = N505;
  assign N11 = N502;
  assign N12 = N490;
  assign adder_b = (N13)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } : 
                   (N14)? opA_r : 1'b0;
  assign N13 = adder_neg_op;
  assign N14 = N167;
  assign N174 = (N15)? 1'b1 : 
                (N16)? 1'b1 : 
                (N173)? 1'b0 : 1'b0;
  assign N15 = N170;
  assign N16 = N171;
  assign { N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175 } = (N15)? { opA_r[30:0], 1'b0 } : 
                                                                                                                                                                                                              (N16)? adder_result[31:0] : 1'b0;
  assign N207 = (N17)? 1'b1 : 
                (N18)? N174 : 1'b0;
  assign N17 = latch_input;
  assign N18 = N169;
  assign { N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208 } = (N17)? opA_i : 
                                                                                                                                                                                                              (N18)? { N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175 } : 1'b0;
  assign N243 = (N19)? 1'b1 : 
                (N20)? 1'b1 : 
                (N242)? 1'b0 : 1'b0;
  assign N19 = N459;
  assign N20 = N240;
  assign { N275, N274, N273, N272, N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, N246, N245, N244 } = (N19)? { 1'b0, opB_r[31:1] } : 
                                                                                                                                                                                                              (N20)? adder_result[31:0] : 1'b0;
  assign N276 = (N17)? 1'b1 : 
                (N18)? N243 : 1'b0;
  assign { N308, N307, N306, N305, N304, N303, N302, N301, N300, N299, N298, N297, N296, N295, N294, N293, N292, N291, N290, N289, N288, N287, N286, N285, N284, N283, N282, N281, N280, N279, N278, N277 } = (N17)? opB_i : 
                                                                                                                                                                                                              (N18)? { N275, N274, N273, N272, N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, N246, N245, N244 } : 1'b0;
  assign shifted_lsb = (N21)? adder_result[0] : 
                       (N309)? result_o[0] : 1'b0;
  assign N21 = opB_r[0];
  assign { N350, N349, N348, N347, N346, N345, N344, N343, N342, N341, N340, N339, N338, N337, N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, N322, N321, N320, N319 } = (N22)? { N135, N136, N137, N138, N139, N140, N141, N142, N143, N144, N145, N146, N147, N148, N149, N150, N151, N152, N153, N154, N155, N156, N157, N158, N159, N160, N161, N162, N163, N164, N165, N166 } : 
                                                                                                                                                                                                              (N318)? adder_result[31:0] : 1'b0;
  assign N22 = N317;
  assign { N382, N381, N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, N369, N368, N367, N366, N365, N364, N363, N362, N361, N360, N359, N358, N357, N356, N355, N354, N353, N352, N351 } = (N0)? adder_result[32:1] : 
                                                                                                                                                                                                              (N1)? adder_result[31:0] : 1'b0;
  assign N383 = (N23)? 1'b1 : 
                (N24)? 1'b1 : 
                (N25)? gets_high_part_r : 
                (N316)? 1'b0 : 1'b0;
  assign N23 = N311;
  assign N24 = N312;
  assign N25 = N313;
  assign { N415, N414, N413, N412, N411, N410, N409, N408, N407, N406, N405, N404, N403, N402, N401, N400, N399, N398, N397, N396, N395, N394, N393, N392, N391, N390, N389, N388, N387, N386, N385, N384 } = (N23)? { N350, N349, N348, N347, N346, N345, N344, N343, N342, N341, N340, N339, N338, N337, N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, N322, N321, N320, N319 } : 
                                                                                                                                                                                                              (N24)? { N382, N381, N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, N369, N368, N367, N366, N365, N364, N363, N362, N361, N360, N359, N358, N357, N356, N355, N354, N353, N352, N351 } : 
                                                                                                                                                                                                              (N25)? { 1'b0, result_o[31:1] } : 1'b0;
  assign N26 = ~gets_high_part_r;
  assign N31 = ~N30;
  assign N34 = ~N33;
  assign N37 = ~N36;
  assign N40 = ~N39;
  assign N43 = ~N42;
  assign N45 = ~shift_counter_full;
  assign N46 = ~yumi_i;
  assign N47 = ~reset_i;
  assign N48 = N47;
  assign N49 = N482 & N487;
  assign N50 = N465 | N49;
  assign N51 = ~N50;
  assign N52 = N48 & N67;
  assign N66 = ~N49;
  assign N67 = N465 & N66;
  assign N68 = N502 | N505;
  assign N69 = N490 | N68;
  assign N70 = ~N69;
  assign N71 = ~opA_r[31];
  assign N72 = ~opA_r[30];
  assign N73 = ~opA_r[29];
  assign N74 = ~opA_r[28];
  assign N75 = ~opA_r[27];
  assign N76 = ~opA_r[26];
  assign N77 = ~opA_r[25];
  assign N78 = ~opA_r[24];
  assign N79 = ~opA_r[23];
  assign N80 = ~opA_r[22];
  assign N81 = ~opA_r[21];
  assign N82 = ~opA_r[20];
  assign N83 = ~opA_r[19];
  assign N84 = ~opA_r[18];
  assign N85 = ~opA_r[17];
  assign N86 = ~opA_r[16];
  assign N87 = ~opA_r[15];
  assign N88 = ~opA_r[14];
  assign N89 = ~opA_r[13];
  assign N90 = ~opA_r[12];
  assign N91 = ~opA_r[11];
  assign N92 = ~opA_r[10];
  assign N93 = ~opA_r[9];
  assign N94 = ~opA_r[8];
  assign N95 = ~opA_r[7];
  assign N96 = ~opA_r[6];
  assign N97 = ~opA_r[5];
  assign N98 = ~opA_r[4];
  assign N99 = ~opA_r[3];
  assign N100 = ~opA_r[2];
  assign N101 = ~opA_r[1];
  assign N102 = ~opA_r[0];
  assign N103 = ~opB_r[31];
  assign N104 = ~opB_r[30];
  assign N105 = ~opB_r[29];
  assign N106 = ~opB_r[28];
  assign N107 = ~opB_r[27];
  assign N108 = ~opB_r[26];
  assign N109 = ~opB_r[25];
  assign N110 = ~opB_r[24];
  assign N111 = ~opB_r[23];
  assign N112 = ~opB_r[22];
  assign N113 = ~opB_r[21];
  assign N114 = ~opB_r[20];
  assign N115 = ~opB_r[19];
  assign N116 = ~opB_r[18];
  assign N117 = ~opB_r[17];
  assign N118 = ~opB_r[16];
  assign N119 = ~opB_r[15];
  assign N120 = ~opB_r[14];
  assign N121 = ~opB_r[13];
  assign N122 = ~opB_r[12];
  assign N123 = ~opB_r[11];
  assign N124 = ~opB_r[10];
  assign N125 = ~opB_r[9];
  assign N126 = ~opB_r[8];
  assign N127 = ~opB_r[7];
  assign N128 = ~opB_r[6];
  assign N129 = ~opB_r[5];
  assign N130 = ~opB_r[4];
  assign N131 = ~opB_r[3];
  assign N132 = ~opB_r[2];
  assign N133 = ~opB_r[1];
  assign N134 = ~opB_r[0];
  assign N135 = ~result_o[31];
  assign N136 = ~result_o[30];
  assign N137 = ~result_o[29];
  assign N138 = ~result_o[28];
  assign N139 = ~result_o[27];
  assign N140 = ~result_o[26];
  assign N141 = ~result_o[25];
  assign N142 = ~result_o[24];
  assign N143 = ~result_o[23];
  assign N144 = ~result_o[22];
  assign N145 = ~result_o[21];
  assign N146 = ~result_o[20];
  assign N147 = ~result_o[19];
  assign N148 = ~result_o[18];
  assign N149 = ~result_o[17];
  assign N150 = ~result_o[16];
  assign N151 = ~result_o[15];
  assign N152 = ~result_o[14];
  assign N153 = ~result_o[13];
  assign N154 = ~result_o[12];
  assign N155 = ~result_o[11];
  assign N156 = ~result_o[10];
  assign N157 = ~result_o[9];
  assign N158 = ~result_o[8];
  assign N159 = ~result_o[7];
  assign N160 = ~result_o[6];
  assign N161 = ~result_o[5];
  assign N162 = ~result_o[4];
  assign N163 = ~result_o[3];
  assign N164 = ~result_o[2];
  assign N165 = ~result_o[1];
  assign N166 = ~result_o[0];
  assign adder_neg_op = N527 | N499;
  assign N527 = N493 | N496;
  assign N167 = ~adder_neg_op;
  assign latch_input = v_i & ready_o;
  assign signed_opA = signed_opA_i & opA_i[31];
  assign signed_opB = signed_opB_i & opB_i[31];
  assign N168 = signed_opA ^ signed_opB;
  assign N169 = ~latch_input;
  assign N170 = N471 & N26;
  assign N171 = N468 & signed_opA_r;
  assign N172 = N171 | N170;
  assign N173 = ~N172;
  assign N240 = N474 & signed_opB_r;
  assign N241 = N240 | N459;
  assign N242 = ~N241;
  assign N309 = ~opB_r[0];
  assign N310 = all_sh_lsb_zero_r & N528;
  assign N528 = ~shifted_lsb;
  assign N311 = N480 & need_neg_result_r;
  assign N312 = N477 & opB_r[0];
  assign N313 = N462 & N134;
  assign N314 = N312 | N311;
  assign N315 = N313 | N314;
  assign N316 = ~N315;
  assign N317 = gets_high_part_r & N529;
  assign N529 = ~all_sh_lsb_zero_r;
  assign N318 = ~N317;

endmodule