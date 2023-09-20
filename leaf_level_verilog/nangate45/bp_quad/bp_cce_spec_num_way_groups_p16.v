module bp_cce_spec_num_way_groups_p16
(
  clk_i,
  reset_i,
  w_v_i,
  w_way_group_i,
  spec_v_i,
  spec_i,
  squash_v_i,
  squash_i,
  fwd_mod_v_i,
  fwd_mod_i,
  state_v_i,
  state_i,
  r_v_i,
  r_way_group_i,
  data_o,
  v_o
);

  input [3:0] w_way_group_i;
  input [2:0] state_i;
  input [3:0] r_way_group_i;
  output [5:0] data_o;
  input clk_i;
  input reset_i;
  input w_v_i;
  input spec_v_i;
  input spec_i;
  input squash_v_i;
  input squash_i;
  input fwd_mod_v_i;
  input fwd_mod_i;
  input state_v_i;
  input r_v_i;
  output v_o;
  wire [5:0] data_o;
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
  N213,N214,N215,N216,N217,N218,N219,N220,N221,N222,N223,N224,N225,N226,N227,N228,
  N229,N230,N231,N232,N233,N234,N235,N236,N237,N238,N239,N240,N241,N242,N243,N244,
  N245,N246,N247,N248,N249,N250,N251,N252,N253,N254,N255,N256,N257,N258,N259,N260,
  N261,N262,N263,N264,N265,N266,N267,N268,N269,N270,N271,N272,N273,N274,N275,N276,
  N277,N278,N279,N280,N281,N282,N283,N284,N285,N286,N287,N288,N289,N290,N291,N292,
  N293,N294,N295,N296,N297,N298,N299,N300,N301,N302,N303,N304,N305,N306,N307,N308,
  N309,N310,N311,N312,N313,N314,N315,N316,N317,N318,N319,N320,N321,N322,N323,N324,
  N325,N326,N327,N328,N329,N330,N331,N332,N333,N334,N335,N336,N337,N338,N339,N340,
  N341,N342,N343,N344,N345,N346,N347,N348,N349,N350,N351,N352,N353,N354,N355,N356,
  N357,N358,N359,N360,N361,N362,N363,N364,N365,N366,N367,N368,N369,N370,N371,N372,
  N373,N374,N375,N376,N377,N378,N379,N380,N381,N382,N383,N384,N385,N386,N387,N388,
  N389,N390,N391,N392,N393,N394,N395,N396,N397,N398,N399,N400,N401,N402,N403,N404,
  N405,N406,N407,N408,N409,N410,N411,N412,N413,N414,N415,N416,N417,N418,N419,N420,
  N421,N422,N423,N424,N425,N426,N427,N428,N429,N430,N431,N432,N433,N434,N435,N436,
  N437,N438,N439,N440,N441,N442,N443,N444,N445,N446,N447,N448,N449,N450,N451,N452,
  N453,N454,N455,N456,N457,N458,N459,N460,N461,N462,N463,N464,N465,N466,N467,N468,
  N469,N470,N471,N472,N473,N474,N475,N476,N477,N478,N479,N480,N481,N482,N483,N484,
  N485,N486,N487,N488,N489,N490,N491,N492,N493,N494,N495,N496,N497,N498,N499,N500,
  N501,N502,N503,N504,N505,N506,N507,N508,N509,N510,N511,N512,N513,N514;
  wire [95:0] data_r,data_n;
  reg data_r_95_sv2v_reg,data_r_94_sv2v_reg,data_r_93_sv2v_reg,data_r_92_sv2v_reg,
  data_r_91_sv2v_reg,data_r_90_sv2v_reg,data_r_89_sv2v_reg,data_r_88_sv2v_reg,
  data_r_87_sv2v_reg,data_r_86_sv2v_reg,data_r_85_sv2v_reg,data_r_84_sv2v_reg,
  data_r_83_sv2v_reg,data_r_82_sv2v_reg,data_r_81_sv2v_reg,data_r_80_sv2v_reg,
  data_r_79_sv2v_reg,data_r_78_sv2v_reg,data_r_77_sv2v_reg,data_r_76_sv2v_reg,data_r_75_sv2v_reg,
  data_r_74_sv2v_reg,data_r_73_sv2v_reg,data_r_72_sv2v_reg,data_r_71_sv2v_reg,
  data_r_70_sv2v_reg,data_r_69_sv2v_reg,data_r_68_sv2v_reg,data_r_67_sv2v_reg,
  data_r_66_sv2v_reg,data_r_65_sv2v_reg,data_r_64_sv2v_reg,data_r_63_sv2v_reg,
  data_r_62_sv2v_reg,data_r_61_sv2v_reg,data_r_60_sv2v_reg,data_r_59_sv2v_reg,
  data_r_58_sv2v_reg,data_r_57_sv2v_reg,data_r_56_sv2v_reg,data_r_55_sv2v_reg,data_r_54_sv2v_reg,
  data_r_53_sv2v_reg,data_r_52_sv2v_reg,data_r_51_sv2v_reg,data_r_50_sv2v_reg,
  data_r_49_sv2v_reg,data_r_48_sv2v_reg,data_r_47_sv2v_reg,data_r_46_sv2v_reg,
  data_r_45_sv2v_reg,data_r_44_sv2v_reg,data_r_43_sv2v_reg,data_r_42_sv2v_reg,
  data_r_41_sv2v_reg,data_r_40_sv2v_reg,data_r_39_sv2v_reg,data_r_38_sv2v_reg,
  data_r_37_sv2v_reg,data_r_36_sv2v_reg,data_r_35_sv2v_reg,data_r_34_sv2v_reg,data_r_33_sv2v_reg,
  data_r_32_sv2v_reg,data_r_31_sv2v_reg,data_r_30_sv2v_reg,data_r_29_sv2v_reg,
  data_r_28_sv2v_reg,data_r_27_sv2v_reg,data_r_26_sv2v_reg,data_r_25_sv2v_reg,
  data_r_24_sv2v_reg,data_r_23_sv2v_reg,data_r_22_sv2v_reg,data_r_21_sv2v_reg,
  data_r_20_sv2v_reg,data_r_19_sv2v_reg,data_r_18_sv2v_reg,data_r_17_sv2v_reg,data_r_16_sv2v_reg,
  data_r_15_sv2v_reg,data_r_14_sv2v_reg,data_r_13_sv2v_reg,data_r_12_sv2v_reg,
  data_r_11_sv2v_reg,data_r_10_sv2v_reg,data_r_9_sv2v_reg,data_r_8_sv2v_reg,
  data_r_7_sv2v_reg,data_r_6_sv2v_reg,data_r_5_sv2v_reg,data_r_4_sv2v_reg,data_r_3_sv2v_reg,
  data_r_2_sv2v_reg,data_r_1_sv2v_reg,data_r_0_sv2v_reg;
  assign data_r[95] = data_r_95_sv2v_reg;
  assign data_r[94] = data_r_94_sv2v_reg;
  assign data_r[93] = data_r_93_sv2v_reg;
  assign data_r[92] = data_r_92_sv2v_reg;
  assign data_r[91] = data_r_91_sv2v_reg;
  assign data_r[90] = data_r_90_sv2v_reg;
  assign data_r[89] = data_r_89_sv2v_reg;
  assign data_r[88] = data_r_88_sv2v_reg;
  assign data_r[87] = data_r_87_sv2v_reg;
  assign data_r[86] = data_r_86_sv2v_reg;
  assign data_r[85] = data_r_85_sv2v_reg;
  assign data_r[84] = data_r_84_sv2v_reg;
  assign data_r[83] = data_r_83_sv2v_reg;
  assign data_r[82] = data_r_82_sv2v_reg;
  assign data_r[81] = data_r_81_sv2v_reg;
  assign data_r[80] = data_r_80_sv2v_reg;
  assign data_r[79] = data_r_79_sv2v_reg;
  assign data_r[78] = data_r_78_sv2v_reg;
  assign data_r[77] = data_r_77_sv2v_reg;
  assign data_r[76] = data_r_76_sv2v_reg;
  assign data_r[75] = data_r_75_sv2v_reg;
  assign data_r[74] = data_r_74_sv2v_reg;
  assign data_r[73] = data_r_73_sv2v_reg;
  assign data_r[72] = data_r_72_sv2v_reg;
  assign data_r[71] = data_r_71_sv2v_reg;
  assign data_r[70] = data_r_70_sv2v_reg;
  assign data_r[69] = data_r_69_sv2v_reg;
  assign data_r[68] = data_r_68_sv2v_reg;
  assign data_r[67] = data_r_67_sv2v_reg;
  assign data_r[66] = data_r_66_sv2v_reg;
  assign data_r[65] = data_r_65_sv2v_reg;
  assign data_r[64] = data_r_64_sv2v_reg;
  assign data_r[63] = data_r_63_sv2v_reg;
  assign data_r[62] = data_r_62_sv2v_reg;
  assign data_r[61] = data_r_61_sv2v_reg;
  assign data_r[60] = data_r_60_sv2v_reg;
  assign data_r[59] = data_r_59_sv2v_reg;
  assign data_r[58] = data_r_58_sv2v_reg;
  assign data_r[57] = data_r_57_sv2v_reg;
  assign data_r[56] = data_r_56_sv2v_reg;
  assign data_r[55] = data_r_55_sv2v_reg;
  assign data_r[54] = data_r_54_sv2v_reg;
  assign data_r[53] = data_r_53_sv2v_reg;
  assign data_r[52] = data_r_52_sv2v_reg;
  assign data_r[51] = data_r_51_sv2v_reg;
  assign data_r[50] = data_r_50_sv2v_reg;
  assign data_r[49] = data_r_49_sv2v_reg;
  assign data_r[48] = data_r_48_sv2v_reg;
  assign data_r[47] = data_r_47_sv2v_reg;
  assign data_r[46] = data_r_46_sv2v_reg;
  assign data_r[45] = data_r_45_sv2v_reg;
  assign data_r[44] = data_r_44_sv2v_reg;
  assign data_r[43] = data_r_43_sv2v_reg;
  assign data_r[42] = data_r_42_sv2v_reg;
  assign data_r[41] = data_r_41_sv2v_reg;
  assign data_r[40] = data_r_40_sv2v_reg;
  assign data_r[39] = data_r_39_sv2v_reg;
  assign data_r[38] = data_r_38_sv2v_reg;
  assign data_r[37] = data_r_37_sv2v_reg;
  assign data_r[36] = data_r_36_sv2v_reg;
  assign data_r[35] = data_r_35_sv2v_reg;
  assign data_r[34] = data_r_34_sv2v_reg;
  assign data_r[33] = data_r_33_sv2v_reg;
  assign data_r[32] = data_r_32_sv2v_reg;
  assign data_r[31] = data_r_31_sv2v_reg;
  assign data_r[30] = data_r_30_sv2v_reg;
  assign data_r[29] = data_r_29_sv2v_reg;
  assign data_r[28] = data_r_28_sv2v_reg;
  assign data_r[27] = data_r_27_sv2v_reg;
  assign data_r[26] = data_r_26_sv2v_reg;
  assign data_r[25] = data_r_25_sv2v_reg;
  assign data_r[24] = data_r_24_sv2v_reg;
  assign data_r[23] = data_r_23_sv2v_reg;
  assign data_r[22] = data_r_22_sv2v_reg;
  assign data_r[21] = data_r_21_sv2v_reg;
  assign data_r[20] = data_r_20_sv2v_reg;
  assign data_r[19] = data_r_19_sv2v_reg;
  assign data_r[18] = data_r_18_sv2v_reg;
  assign data_r[17] = data_r_17_sv2v_reg;
  assign data_r[16] = data_r_16_sv2v_reg;
  assign data_r[15] = data_r_15_sv2v_reg;
  assign data_r[14] = data_r_14_sv2v_reg;
  assign data_r[13] = data_r_13_sv2v_reg;
  assign data_r[12] = data_r_12_sv2v_reg;
  assign data_r[11] = data_r_11_sv2v_reg;
  assign data_r[10] = data_r_10_sv2v_reg;
  assign data_r[9] = data_r_9_sv2v_reg;
  assign data_r[8] = data_r_8_sv2v_reg;
  assign data_r[7] = data_r_7_sv2v_reg;
  assign data_r[6] = data_r_6_sv2v_reg;
  assign data_r[5] = data_r_5_sv2v_reg;
  assign data_r[4] = data_r_4_sv2v_reg;
  assign data_r[3] = data_r_3_sv2v_reg;
  assign data_r[2] = data_r_2_sv2v_reg;
  assign data_r[1] = data_r_1_sv2v_reg;
  assign data_r[0] = data_r_0_sv2v_reg;
  assign v_o = r_v_i;

  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_95_sv2v_reg <= N133;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_94_sv2v_reg <= N132;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_93_sv2v_reg <= N131;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_92_sv2v_reg <= N130;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_91_sv2v_reg <= N129;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_90_sv2v_reg <= N128;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_89_sv2v_reg <= N127;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_88_sv2v_reg <= N126;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_87_sv2v_reg <= N125;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_86_sv2v_reg <= N124;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_85_sv2v_reg <= N123;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_84_sv2v_reg <= N122;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_83_sv2v_reg <= N121;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_82_sv2v_reg <= N120;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_81_sv2v_reg <= N119;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_80_sv2v_reg <= N118;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_79_sv2v_reg <= N117;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_78_sv2v_reg <= N116;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_77_sv2v_reg <= N115;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_76_sv2v_reg <= N114;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_75_sv2v_reg <= N113;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_74_sv2v_reg <= N112;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_73_sv2v_reg <= N111;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_72_sv2v_reg <= N110;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_71_sv2v_reg <= N109;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_70_sv2v_reg <= N108;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_69_sv2v_reg <= N107;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_68_sv2v_reg <= N106;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_67_sv2v_reg <= N105;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_66_sv2v_reg <= N104;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_65_sv2v_reg <= N103;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_64_sv2v_reg <= N102;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_63_sv2v_reg <= N101;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_62_sv2v_reg <= N100;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_61_sv2v_reg <= N99;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_60_sv2v_reg <= N98;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_59_sv2v_reg <= N97;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_58_sv2v_reg <= N96;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_57_sv2v_reg <= N95;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_56_sv2v_reg <= N94;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_55_sv2v_reg <= N93;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_54_sv2v_reg <= N92;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_53_sv2v_reg <= N91;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_52_sv2v_reg <= N90;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_51_sv2v_reg <= N89;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_50_sv2v_reg <= N88;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_49_sv2v_reg <= N87;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_48_sv2v_reg <= N86;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_47_sv2v_reg <= N85;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_46_sv2v_reg <= N84;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_45_sv2v_reg <= N83;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_44_sv2v_reg <= N82;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_43_sv2v_reg <= N81;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_42_sv2v_reg <= N80;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_41_sv2v_reg <= N79;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_40_sv2v_reg <= N78;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_39_sv2v_reg <= N77;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_38_sv2v_reg <= N76;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_37_sv2v_reg <= N75;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_36_sv2v_reg <= N74;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_35_sv2v_reg <= N73;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_34_sv2v_reg <= N72;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_33_sv2v_reg <= N71;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_32_sv2v_reg <= N70;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_31_sv2v_reg <= N69;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_30_sv2v_reg <= N68;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_29_sv2v_reg <= N67;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_28_sv2v_reg <= N66;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_27_sv2v_reg <= N65;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_26_sv2v_reg <= N64;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_25_sv2v_reg <= N63;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_24_sv2v_reg <= N62;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_23_sv2v_reg <= N61;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_22_sv2v_reg <= N60;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_21_sv2v_reg <= N59;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_20_sv2v_reg <= N58;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_19_sv2v_reg <= N57;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_18_sv2v_reg <= N56;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_17_sv2v_reg <= N55;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_16_sv2v_reg <= N54;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_15_sv2v_reg <= N53;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_14_sv2v_reg <= N52;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_13_sv2v_reg <= N51;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_12_sv2v_reg <= N50;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_11_sv2v_reg <= N49;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_10_sv2v_reg <= N48;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_9_sv2v_reg <= N47;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_8_sv2v_reg <= N46;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_7_sv2v_reg <= N45;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_6_sv2v_reg <= N44;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_5_sv2v_reg <= N43;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_4_sv2v_reg <= N42;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_3_sv2v_reg <= N41;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_2_sv2v_reg <= N40;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_1_sv2v_reg <= N39;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_0_sv2v_reg <= N38;
    end 
  end

  assign N459 = w_way_group_i == r_way_group_i;
  assign N494 = (N478)? data_n[5] : 
                (N480)? data_n[11] : 
                (N482)? data_n[17] : 
                (N484)? data_n[23] : 
                (N486)? data_n[29] : 
                (N488)? data_n[35] : 
                (N490)? data_n[41] : 
                (N492)? data_n[47] : 
                (N479)? data_n[53] : 
                (N481)? data_n[59] : 
                (N483)? data_n[65] : 
                (N485)? data_n[71] : 
                (N487)? data_n[77] : 
                (N489)? data_n[83] : 
                (N491)? data_n[89] : 
                (N493)? data_n[95] : 1'b0;
  assign N495 = (N478)? data_n[4] : 
                (N480)? data_n[10] : 
                (N482)? data_n[16] : 
                (N484)? data_n[22] : 
                (N486)? data_n[28] : 
                (N488)? data_n[34] : 
                (N490)? data_n[40] : 
                (N492)? data_n[46] : 
                (N479)? data_n[52] : 
                (N481)? data_n[58] : 
                (N483)? data_n[64] : 
                (N485)? data_n[70] : 
                (N487)? data_n[76] : 
                (N489)? data_n[82] : 
                (N491)? data_n[88] : 
                (N493)? data_n[94] : 1'b0;
  assign N496 = (N478)? data_n[3] : 
                (N480)? data_n[9] : 
                (N482)? data_n[15] : 
                (N484)? data_n[21] : 
                (N486)? data_n[27] : 
                (N488)? data_n[33] : 
                (N490)? data_n[39] : 
                (N492)? data_n[45] : 
                (N479)? data_n[51] : 
                (N481)? data_n[57] : 
                (N483)? data_n[63] : 
                (N485)? data_n[69] : 
                (N487)? data_n[75] : 
                (N489)? data_n[81] : 
                (N491)? data_n[87] : 
                (N493)? data_n[93] : 1'b0;
  assign N497 = (N478)? data_n[2] : 
                (N480)? data_n[8] : 
                (N482)? data_n[14] : 
                (N484)? data_n[20] : 
                (N486)? data_n[26] : 
                (N488)? data_n[32] : 
                (N490)? data_n[38] : 
                (N492)? data_n[44] : 
                (N479)? data_n[50] : 
                (N481)? data_n[56] : 
                (N483)? data_n[62] : 
                (N485)? data_n[68] : 
                (N487)? data_n[74] : 
                (N489)? data_n[80] : 
                (N491)? data_n[86] : 
                (N493)? data_n[92] : 1'b0;
  assign N498 = (N478)? data_n[1] : 
                (N480)? data_n[7] : 
                (N482)? data_n[13] : 
                (N484)? data_n[19] : 
                (N486)? data_n[25] : 
                (N488)? data_n[31] : 
                (N490)? data_n[37] : 
                (N492)? data_n[43] : 
                (N479)? data_n[49] : 
                (N481)? data_n[55] : 
                (N483)? data_n[61] : 
                (N485)? data_n[67] : 
                (N487)? data_n[73] : 
                (N489)? data_n[79] : 
                (N491)? data_n[85] : 
                (N493)? data_n[91] : 1'b0;
  assign N499 = (N478)? data_n[0] : 
                (N480)? data_n[6] : 
                (N482)? data_n[12] : 
                (N484)? data_n[18] : 
                (N486)? data_n[24] : 
                (N488)? data_n[30] : 
                (N490)? data_n[36] : 
                (N492)? data_n[42] : 
                (N479)? data_n[48] : 
                (N481)? data_n[54] : 
                (N483)? data_n[60] : 
                (N485)? data_n[66] : 
                (N487)? data_n[72] : 
                (N489)? data_n[78] : 
                (N491)? data_n[84] : 
                (N493)? data_n[90] : 1'b0;
  assign N500 = (N478)? data_r[5] : 
                (N480)? data_r[11] : 
                (N482)? data_r[17] : 
                (N484)? data_r[23] : 
                (N486)? data_r[29] : 
                (N488)? data_r[35] : 
                (N490)? data_r[41] : 
                (N492)? data_r[47] : 
                (N479)? data_r[53] : 
                (N481)? data_r[59] : 
                (N483)? data_r[65] : 
                (N485)? data_r[71] : 
                (N487)? data_r[77] : 
                (N489)? data_r[83] : 
                (N491)? data_r[89] : 
                (N493)? data_r[95] : 1'b0;
  assign N501 = (N478)? data_r[4] : 
                (N480)? data_r[10] : 
                (N482)? data_r[16] : 
                (N484)? data_r[22] : 
                (N486)? data_r[28] : 
                (N488)? data_r[34] : 
                (N490)? data_r[40] : 
                (N492)? data_r[46] : 
                (N479)? data_r[52] : 
                (N481)? data_r[58] : 
                (N483)? data_r[64] : 
                (N485)? data_r[70] : 
                (N487)? data_r[76] : 
                (N489)? data_r[82] : 
                (N491)? data_r[88] : 
                (N493)? data_r[94] : 1'b0;
  assign N502 = (N478)? data_r[3] : 
                (N480)? data_r[9] : 
                (N482)? data_r[15] : 
                (N484)? data_r[21] : 
                (N486)? data_r[27] : 
                (N488)? data_r[33] : 
                (N490)? data_r[39] : 
                (N492)? data_r[45] : 
                (N479)? data_r[51] : 
                (N481)? data_r[57] : 
                (N483)? data_r[63] : 
                (N485)? data_r[69] : 
                (N487)? data_r[75] : 
                (N489)? data_r[81] : 
                (N491)? data_r[87] : 
                (N493)? data_r[93] : 1'b0;
  assign N503 = (N478)? data_r[2] : 
                (N480)? data_r[8] : 
                (N482)? data_r[14] : 
                (N484)? data_r[20] : 
                (N486)? data_r[26] : 
                (N488)? data_r[32] : 
                (N490)? data_r[38] : 
                (N492)? data_r[44] : 
                (N479)? data_r[50] : 
                (N481)? data_r[56] : 
                (N483)? data_r[62] : 
                (N485)? data_r[68] : 
                (N487)? data_r[74] : 
                (N489)? data_r[80] : 
                (N491)? data_r[86] : 
                (N493)? data_r[92] : 1'b0;
  assign N504 = (N478)? data_r[1] : 
                (N480)? data_r[7] : 
                (N482)? data_r[13] : 
                (N484)? data_r[19] : 
                (N486)? data_r[25] : 
                (N488)? data_r[31] : 
                (N490)? data_r[37] : 
                (N492)? data_r[43] : 
                (N479)? data_r[49] : 
                (N481)? data_r[55] : 
                (N483)? data_r[61] : 
                (N485)? data_r[67] : 
                (N487)? data_r[73] : 
                (N489)? data_r[79] : 
                (N491)? data_r[85] : 
                (N493)? data_r[91] : 1'b0;
  assign N505 = (N478)? data_r[0] : 
                (N480)? data_r[6] : 
                (N482)? data_r[12] : 
                (N484)? data_r[18] : 
                (N486)? data_r[24] : 
                (N488)? data_r[30] : 
                (N490)? data_r[36] : 
                (N492)? data_r[42] : 
                (N479)? data_r[48] : 
                (N481)? data_r[54] : 
                (N483)? data_r[60] : 
                (N485)? data_r[66] : 
                (N487)? data_r[72] : 
                (N489)? data_r[78] : 
                (N491)? data_r[84] : 
                (N493)? data_r[90] : 1'b0;
  assign N506 = w_way_group_i[2] & w_way_group_i[3];
  assign N507 = N0 & w_way_group_i[3];
  assign N0 = ~w_way_group_i[2];
  assign N508 = w_way_group_i[2] & N1;
  assign N1 = ~w_way_group_i[3];
  assign N509 = N2 & N3;
  assign N2 = ~w_way_group_i[2];
  assign N3 = ~w_way_group_i[3];
  assign N510 = w_way_group_i[0] & w_way_group_i[1];
  assign N511 = N4 & w_way_group_i[1];
  assign N4 = ~w_way_group_i[0];
  assign N512 = w_way_group_i[0] & N5;
  assign N5 = ~w_way_group_i[1];
  assign N513 = N6 & N7;
  assign N6 = ~w_way_group_i[0];
  assign N7 = ~w_way_group_i[1];
  assign N151 = N506 & N510;
  assign N150 = N506 & N511;
  assign N149 = N506 & N512;
  assign N148 = N506 & N513;
  assign N147 = N507 & N510;
  assign N146 = N507 & N511;
  assign N145 = N507 & N512;
  assign N144 = N507 & N513;
  assign N143 = N508 & N510;
  assign N142 = N508 & N511;
  assign N141 = N508 & N512;
  assign N140 = N508 & N513;
  assign N139 = N509 & N510;
  assign N138 = N509 & N511;
  assign N137 = N509 & N512;
  assign N136 = N509 & N513;
  assign { N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38 } = (N8)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                (N9)? data_n : 1'b0;
  assign N8 = reset_i;
  assign N9 = N37;
  assign N153 = (N10)? spec_i : 
                (N152)? data_r[5] : 1'b0;
  assign N10 = N136;
  assign N155 = (N11)? spec_i : 
                (N154)? data_r[11] : 1'b0;
  assign N11 = N137;
  assign N157 = (N12)? spec_i : 
                (N156)? data_r[17] : 1'b0;
  assign N12 = N138;
  assign N159 = (N13)? spec_i : 
                (N158)? data_r[23] : 1'b0;
  assign N13 = N139;
  assign N161 = (N14)? spec_i : 
                (N160)? data_r[29] : 1'b0;
  assign N14 = N140;
  assign N163 = (N15)? spec_i : 
                (N162)? data_r[35] : 1'b0;
  assign N15 = N141;
  assign N165 = (N16)? spec_i : 
                (N164)? data_r[41] : 1'b0;
  assign N16 = N142;
  assign N167 = (N17)? spec_i : 
                (N166)? data_r[47] : 1'b0;
  assign N17 = N143;
  assign N169 = (N18)? spec_i : 
                (N168)? data_r[53] : 1'b0;
  assign N18 = N144;
  assign N171 = (N19)? spec_i : 
                (N170)? data_r[59] : 1'b0;
  assign N19 = N145;
  assign N173 = (N20)? spec_i : 
                (N172)? data_r[65] : 1'b0;
  assign N20 = N146;
  assign N175 = (N21)? spec_i : 
                (N174)? data_r[71] : 1'b0;
  assign N21 = N147;
  assign N177 = (N22)? spec_i : 
                (N176)? data_r[77] : 1'b0;
  assign N22 = N148;
  assign N179 = (N23)? spec_i : 
                (N178)? data_r[83] : 1'b0;
  assign N23 = N149;
  assign N181 = (N24)? spec_i : 
                (N180)? data_r[89] : 1'b0;
  assign N24 = N150;
  assign N183 = (N25)? spec_i : 
                (N182)? data_r[95] : 1'b0;
  assign N25 = N151;
  assign { N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184 } = (N26)? { N183, N181, N179, N177, N175, N173, N171, N169, N167, N165, N163, N161, N159, N157, N155, N153 } : 
                                                                                                              (N27)? { data_r[95:95], data_r[89:89], data_r[83:83], data_r[77:77], data_r[71:71], data_r[65:65], data_r[59:59], data_r[53:53], data_r[47:47], data_r[41:41], data_r[35:35], data_r[29:29], data_r[23:23], data_r[17:17], data_r[11:11], data_r[5:5] } : 1'b0;
  assign N26 = spec_v_i;
  assign N27 = N135;
  assign N201 = (N10)? squash_i : 
                (N152)? data_r[4] : 1'b0;
  assign N202 = (N11)? squash_i : 
                (N154)? data_r[10] : 1'b0;
  assign N203 = (N12)? squash_i : 
                (N156)? data_r[16] : 1'b0;
  assign N204 = (N13)? squash_i : 
                (N158)? data_r[22] : 1'b0;
  assign N205 = (N14)? squash_i : 
                (N160)? data_r[28] : 1'b0;
  assign N206 = (N15)? squash_i : 
                (N162)? data_r[34] : 1'b0;
  assign N207 = (N16)? squash_i : 
                (N164)? data_r[40] : 1'b0;
  assign N208 = (N17)? squash_i : 
                (N166)? data_r[46] : 1'b0;
  assign N209 = (N18)? squash_i : 
                (N168)? data_r[52] : 1'b0;
  assign N210 = (N19)? squash_i : 
                (N170)? data_r[58] : 1'b0;
  assign N211 = (N20)? squash_i : 
                (N172)? data_r[64] : 1'b0;
  assign N212 = (N21)? squash_i : 
                (N174)? data_r[70] : 1'b0;
  assign N213 = (N22)? squash_i : 
                (N176)? data_r[76] : 1'b0;
  assign N214 = (N23)? squash_i : 
                (N178)? data_r[82] : 1'b0;
  assign N215 = (N24)? squash_i : 
                (N180)? data_r[88] : 1'b0;
  assign N216 = (N25)? squash_i : 
                (N182)? data_r[94] : 1'b0;
  assign { N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217 } = (N28)? { N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201 } : 
                                                                                                              (N29)? { data_r[94:94], data_r[88:88], data_r[82:82], data_r[76:76], data_r[70:70], data_r[64:64], data_r[58:58], data_r[52:52], data_r[46:46], data_r[40:40], data_r[34:34], data_r[28:28], data_r[22:22], data_r[16:16], data_r[10:10], data_r[4:4] } : 1'b0;
  assign N28 = squash_v_i;
  assign N29 = N200;
  assign N234 = (N10)? fwd_mod_i : 
                (N152)? data_r[3] : 1'b0;
  assign N235 = (N11)? fwd_mod_i : 
                (N154)? data_r[9] : 1'b0;
  assign N236 = (N12)? fwd_mod_i : 
                (N156)? data_r[15] : 1'b0;
  assign N237 = (N13)? fwd_mod_i : 
                (N158)? data_r[21] : 1'b0;
  assign N238 = (N14)? fwd_mod_i : 
                (N160)? data_r[27] : 1'b0;
  assign N239 = (N15)? fwd_mod_i : 
                (N162)? data_r[33] : 1'b0;
  assign N240 = (N16)? fwd_mod_i : 
                (N164)? data_r[39] : 1'b0;
  assign N241 = (N17)? fwd_mod_i : 
                (N166)? data_r[45] : 1'b0;
  assign N242 = (N18)? fwd_mod_i : 
                (N168)? data_r[51] : 1'b0;
  assign N243 = (N19)? fwd_mod_i : 
                (N170)? data_r[57] : 1'b0;
  assign N244 = (N20)? fwd_mod_i : 
                (N172)? data_r[63] : 1'b0;
  assign N245 = (N21)? fwd_mod_i : 
                (N174)? data_r[69] : 1'b0;
  assign N246 = (N22)? fwd_mod_i : 
                (N176)? data_r[75] : 1'b0;
  assign N247 = (N23)? fwd_mod_i : 
                (N178)? data_r[81] : 1'b0;
  assign N248 = (N24)? fwd_mod_i : 
                (N180)? data_r[87] : 1'b0;
  assign N249 = (N25)? fwd_mod_i : 
                (N182)? data_r[93] : 1'b0;
  assign { N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250 } = (N30)? { N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234 } : 
                                                                                                              (N31)? { data_r[93:93], data_r[87:87], data_r[81:81], data_r[75:75], data_r[69:69], data_r[63:63], data_r[57:57], data_r[51:51], data_r[45:45], data_r[39:39], data_r[33:33], data_r[27:27], data_r[21:21], data_r[15:15], data_r[9:9], data_r[3:3] } : 1'b0;
  assign N30 = fwd_mod_v_i;
  assign N31 = N233;
  assign { N269, N268, N267 } = (N10)? { state_i[0:0], state_i[1:1], state_i[2:2] } : 
                                (N152)? { data_r[0:0], data_r[1:1], data_r[2:2] } : 1'b0;
  assign { N272, N271, N270 } = (N11)? { state_i[0:0], state_i[1:1], state_i[2:2] } : 
                                (N154)? { data_r[6:6], data_r[7:7], data_r[8:8] } : 1'b0;
  assign { N275, N274, N273 } = (N12)? { state_i[0:0], state_i[1:1], state_i[2:2] } : 
                                (N156)? { data_r[12:12], data_r[13:13], data_r[14:14] } : 1'b0;
  assign { N278, N277, N276 } = (N13)? { state_i[0:0], state_i[1:1], state_i[2:2] } : 
                                (N158)? { data_r[18:18], data_r[19:19], data_r[20:20] } : 1'b0;
  assign { N281, N280, N279 } = (N14)? { state_i[0:0], state_i[1:1], state_i[2:2] } : 
                                (N160)? { data_r[24:24], data_r[25:25], data_r[26:26] } : 1'b0;
  assign { N284, N283, N282 } = (N15)? { state_i[0:0], state_i[1:1], state_i[2:2] } : 
                                (N162)? { data_r[30:30], data_r[31:31], data_r[32:32] } : 1'b0;
  assign { N287, N286, N285 } = (N16)? { state_i[0:0], state_i[1:1], state_i[2:2] } : 
                                (N164)? { data_r[36:36], data_r[37:37], data_r[38:38] } : 1'b0;
  assign { N290, N289, N288 } = (N17)? { state_i[0:0], state_i[1:1], state_i[2:2] } : 
                                (N166)? { data_r[42:42], data_r[43:43], data_r[44:44] } : 1'b0;
  assign { N293, N292, N291 } = (N18)? { state_i[0:0], state_i[1:1], state_i[2:2] } : 
                                (N168)? { data_r[48:48], data_r[49:49], data_r[50:50] } : 1'b0;
  assign { N296, N295, N294 } = (N19)? { state_i[0:0], state_i[1:1], state_i[2:2] } : 
                                (N170)? { data_r[54:54], data_r[55:55], data_r[56:56] } : 1'b0;
  assign { N299, N298, N297 } = (N20)? { state_i[0:0], state_i[1:1], state_i[2:2] } : 
                                (N172)? { data_r[60:60], data_r[61:61], data_r[62:62] } : 1'b0;
  assign { N302, N301, N300 } = (N21)? { state_i[0:0], state_i[1:1], state_i[2:2] } : 
                                (N174)? { data_r[66:66], data_r[67:67], data_r[68:68] } : 1'b0;
  assign { N305, N304, N303 } = (N22)? { state_i[0:0], state_i[1:1], state_i[2:2] } : 
                                (N176)? { data_r[72:72], data_r[73:73], data_r[74:74] } : 1'b0;
  assign { N308, N307, N306 } = (N23)? { state_i[0:0], state_i[1:1], state_i[2:2] } : 
                                (N178)? { data_r[78:78], data_r[79:79], data_r[80:80] } : 1'b0;
  assign { N311, N310, N309 } = (N24)? { state_i[0:0], state_i[1:1], state_i[2:2] } : 
                                (N180)? { data_r[84:84], data_r[85:85], data_r[86:86] } : 1'b0;
  assign { N314, N313, N312 } = (N25)? { state_i[0:0], state_i[1:1], state_i[2:2] } : 
                                (N182)? { data_r[90:90], data_r[91:91], data_r[92:92] } : 1'b0;
  assign { N362, N361, N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, N350, N349, N348, N347, N346, N345, N344, N343, N342, N341, N340, N339, N338, N337, N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315 } = (N32)? { N312, N313, N314, N309, N310, N311, N306, N307, N308, N303, N304, N305, N300, N301, N302, N297, N298, N299, N294, N295, N296, N291, N292, N293, N288, N289, N290, N285, N286, N287, N282, N283, N284, N279, N280, N281, N276, N277, N278, N273, N274, N275, N270, N271, N272, N267, N268, N269 } : 
                                                                                                                                                                                                                                                                                                              (N33)? { data_r[92:90], data_r[86:84], data_r[80:78], data_r[74:72], data_r[68:66], data_r[62:60], data_r[56:54], data_r[50:48], data_r[44:42], data_r[38:36], data_r[32:30], data_r[26:24], data_r[20:18], data_r[14:12], data_r[8:6], data_r[2:0] } : 1'b0;
  assign N32 = state_v_i;
  assign N33 = N266;
  assign { N458, N457, N456, N455, N454, N453, N452, N451, N450, N449, N448, N447, N446, N445, N444, N443, N442, N441, N440, N439, N438, N437, N436, N435, N434, N433, N432, N431, N430, N429, N428, N427, N426, N425, N424, N423, N422, N421, N420, N419, N418, N417, N416, N415, N414, N413, N412, N411, N410, N409, N408, N407, N406, N405, N404, N403, N402, N401, N400, N399, N398, N397, N396, N395, N394, N393, N392, N391, N390, N389, N388, N387, N386, N385, N384, N383, N382, N381, N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, N369, N368, N367, N366, N365, N364, N363 } = (N34)? { N199, N232, N265, N362, N361, N360, N198, N231, N264, N359, N358, N357, N197, N230, N263, N356, N355, N354, N196, N229, N262, N353, N352, N351, N195, N228, N261, N350, N349, N348, N194, N227, N260, N347, N346, N345, N193, N226, N259, N344, N343, N342, N192, N225, N258, N341, N340, N339, N191, N224, N257, N338, N337, N336, N190, N223, N256, N335, N334, N333, N189, N222, N255, N332, N331, N330, N188, N221, N254, N329, N328, N327, N187, N220, N253, N326, N325, N324, N186, N219, N252, N323, N322, N321, N185, N218, N251, N320, N319, N318, N184, N217, N250, N317, N316, N315 } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              (N35)? data_r : 1'b0;
  assign N34 = w_v_i;
  assign N35 = N134;
  assign data_n = (N8)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                  (N9)? { N458, N457, N456, N455, N454, N453, N452, N451, N450, N449, N448, N447, N446, N445, N444, N443, N442, N441, N440, N439, N438, N437, N436, N435, N434, N433, N432, N431, N430, N429, N428, N427, N426, N425, N424, N423, N422, N421, N420, N419, N418, N417, N416, N415, N414, N413, N412, N411, N410, N409, N408, N407, N406, N405, N404, N403, N402, N401, N400, N399, N398, N397, N396, N395, N394, N393, N392, N391, N390, N389, N388, N387, N386, N385, N384, N383, N382, N381, N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, N369, N368, N367, N366, N365, N364, N363 } : 1'b0;
  assign data_o = (N36)? { N494, N495, N496, N497, N498, N499 } : 
                  (N461)? { N500, N501, N502, N503, N504, N505 } : 1'b0;
  assign N36 = N460;
  assign N37 = ~reset_i;
  assign N134 = ~w_v_i;
  assign N135 = ~spec_v_i;
  assign N152 = ~N136;
  assign N154 = ~N137;
  assign N156 = ~N138;
  assign N158 = ~N139;
  assign N160 = ~N140;
  assign N162 = ~N141;
  assign N164 = ~N142;
  assign N166 = ~N143;
  assign N168 = ~N144;
  assign N170 = ~N145;
  assign N172 = ~N146;
  assign N174 = ~N147;
  assign N176 = ~N148;
  assign N178 = ~N149;
  assign N180 = ~N150;
  assign N182 = ~N151;
  assign N200 = ~squash_v_i;
  assign N233 = ~fwd_mod_v_i;
  assign N266 = ~state_v_i;
  assign N460 = N514 & N459;
  assign N514 = v_o & w_v_i;
  assign N461 = ~N460;
  assign N462 = ~r_way_group_i[0];
  assign N463 = ~r_way_group_i[1];
  assign N464 = N462 & N463;
  assign N465 = N462 & r_way_group_i[1];
  assign N466 = r_way_group_i[0] & N463;
  assign N467 = r_way_group_i[0] & r_way_group_i[1];
  assign N468 = ~r_way_group_i[2];
  assign N469 = N464 & N468;
  assign N470 = N464 & r_way_group_i[2];
  assign N471 = N466 & N468;
  assign N472 = N466 & r_way_group_i[2];
  assign N473 = N465 & N468;
  assign N474 = N465 & r_way_group_i[2];
  assign N475 = N467 & N468;
  assign N476 = N467 & r_way_group_i[2];
  assign N477 = ~r_way_group_i[3];
  assign N478 = N469 & N477;
  assign N479 = N469 & r_way_group_i[3];
  assign N480 = N471 & N477;
  assign N481 = N471 & r_way_group_i[3];
  assign N482 = N473 & N477;
  assign N483 = N473 & r_way_group_i[3];
  assign N484 = N475 & N477;
  assign N485 = N475 & r_way_group_i[3];
  assign N486 = N470 & N477;
  assign N487 = N470 & r_way_group_i[3];
  assign N488 = N472 & N477;
  assign N489 = N472 & r_way_group_i[3];
  assign N490 = N474 & N477;
  assign N491 = N474 & r_way_group_i[3];
  assign N492 = N476 & N477;
  assign N493 = N476 & r_way_group_i[3];

endmodule