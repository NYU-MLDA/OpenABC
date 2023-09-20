module bp_cce_pending_num_way_groups_p16
(
  clk_i,
  reset_i,
  w_v_i,
  w_way_group_i,
  pending_i,
  r_v_i,
  r_way_group_i,
  pending_o,
  pending_v_o
);

  input [3:0] w_way_group_i;
  input [3:0] r_way_group_i;
  input clk_i;
  input reset_i;
  input w_v_i;
  input pending_i;
  input r_v_i;
  output pending_o;
  output pending_v_o;
  wire pending_o,pending_v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,
  N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,
  N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,
  N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,
  N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,
  N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,
  N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,
  N129,N130,N131,N132,N133,N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,
  N145,N146,N147,N148,N149,N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,N160,
  N161,N162,N163,N164,N165,N166,N167,N168,N169,N170,N171,N172,N173,N174,N175,N176,
  N177,N178,N179,N180,N181,N182,N183,N184,N185,N186,N187,N188,N189,N190,N191,N192,
  N193,N194,N195,N196,N197,N198,N199,N200,N201,N202,N203,N204,N205,N206,N207,N208,
  N209,N210,N211,N212,N213,N214,N215,N216,N217,N218,N219,N220,N221,N222,N223,N224,
  N225,N226,N227,N228,N229,N230,N231,N232,N233,N234,N235,N236,N237,N238,N239,N240,
  N241,N242,N243,N244,N245,N246,N247,N248,N249,N250,N251,N252,N253,N254,N255;
  wire [31:0] pending_bits_r,pending_bits_n;
  reg pending_bits_r_31_sv2v_reg,pending_bits_r_30_sv2v_reg,
  pending_bits_r_29_sv2v_reg,pending_bits_r_28_sv2v_reg,pending_bits_r_27_sv2v_reg,
  pending_bits_r_26_sv2v_reg,pending_bits_r_25_sv2v_reg,pending_bits_r_24_sv2v_reg,
  pending_bits_r_23_sv2v_reg,pending_bits_r_22_sv2v_reg,pending_bits_r_21_sv2v_reg,
  pending_bits_r_20_sv2v_reg,pending_bits_r_19_sv2v_reg,pending_bits_r_18_sv2v_reg,
  pending_bits_r_17_sv2v_reg,pending_bits_r_16_sv2v_reg,pending_bits_r_15_sv2v_reg,
  pending_bits_r_14_sv2v_reg,pending_bits_r_13_sv2v_reg,pending_bits_r_12_sv2v_reg,
  pending_bits_r_11_sv2v_reg,pending_bits_r_10_sv2v_reg,pending_bits_r_9_sv2v_reg,
  pending_bits_r_8_sv2v_reg,pending_bits_r_7_sv2v_reg,pending_bits_r_6_sv2v_reg,
  pending_bits_r_5_sv2v_reg,pending_bits_r_4_sv2v_reg,pending_bits_r_3_sv2v_reg,
  pending_bits_r_2_sv2v_reg,pending_bits_r_1_sv2v_reg,pending_bits_r_0_sv2v_reg;
  assign pending_bits_r[31] = pending_bits_r_31_sv2v_reg;
  assign pending_bits_r[30] = pending_bits_r_30_sv2v_reg;
  assign pending_bits_r[29] = pending_bits_r_29_sv2v_reg;
  assign pending_bits_r[28] = pending_bits_r_28_sv2v_reg;
  assign pending_bits_r[27] = pending_bits_r_27_sv2v_reg;
  assign pending_bits_r[26] = pending_bits_r_26_sv2v_reg;
  assign pending_bits_r[25] = pending_bits_r_25_sv2v_reg;
  assign pending_bits_r[24] = pending_bits_r_24_sv2v_reg;
  assign pending_bits_r[23] = pending_bits_r_23_sv2v_reg;
  assign pending_bits_r[22] = pending_bits_r_22_sv2v_reg;
  assign pending_bits_r[21] = pending_bits_r_21_sv2v_reg;
  assign pending_bits_r[20] = pending_bits_r_20_sv2v_reg;
  assign pending_bits_r[19] = pending_bits_r_19_sv2v_reg;
  assign pending_bits_r[18] = pending_bits_r_18_sv2v_reg;
  assign pending_bits_r[17] = pending_bits_r_17_sv2v_reg;
  assign pending_bits_r[16] = pending_bits_r_16_sv2v_reg;
  assign pending_bits_r[15] = pending_bits_r_15_sv2v_reg;
  assign pending_bits_r[14] = pending_bits_r_14_sv2v_reg;
  assign pending_bits_r[13] = pending_bits_r_13_sv2v_reg;
  assign pending_bits_r[12] = pending_bits_r_12_sv2v_reg;
  assign pending_bits_r[11] = pending_bits_r_11_sv2v_reg;
  assign pending_bits_r[10] = pending_bits_r_10_sv2v_reg;
  assign pending_bits_r[9] = pending_bits_r_9_sv2v_reg;
  assign pending_bits_r[8] = pending_bits_r_8_sv2v_reg;
  assign pending_bits_r[7] = pending_bits_r_7_sv2v_reg;
  assign pending_bits_r[6] = pending_bits_r_6_sv2v_reg;
  assign pending_bits_r[5] = pending_bits_r_5_sv2v_reg;
  assign pending_bits_r[4] = pending_bits_r_4_sv2v_reg;
  assign pending_bits_r[3] = pending_bits_r_3_sv2v_reg;
  assign pending_bits_r[2] = pending_bits_r_2_sv2v_reg;
  assign pending_bits_r[1] = pending_bits_r_1_sv2v_reg;
  assign pending_bits_r[0] = pending_bits_r_0_sv2v_reg;
  assign pending_v_o = r_v_i;

  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_31_sv2v_reg <= N63;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_30_sv2v_reg <= N62;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_29_sv2v_reg <= N61;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_28_sv2v_reg <= N60;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_27_sv2v_reg <= N59;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_26_sv2v_reg <= N58;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_25_sv2v_reg <= N57;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_24_sv2v_reg <= N56;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_23_sv2v_reg <= N55;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_22_sv2v_reg <= N54;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_21_sv2v_reg <= N53;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_20_sv2v_reg <= N52;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_19_sv2v_reg <= N51;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_18_sv2v_reg <= N50;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_17_sv2v_reg <= N49;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_16_sv2v_reg <= N48;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_15_sv2v_reg <= N47;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_14_sv2v_reg <= N46;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_13_sv2v_reg <= N45;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_12_sv2v_reg <= N44;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_11_sv2v_reg <= N43;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_10_sv2v_reg <= N42;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_9_sv2v_reg <= N41;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_8_sv2v_reg <= N40;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_7_sv2v_reg <= N39;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_6_sv2v_reg <= N38;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_5_sv2v_reg <= N37;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_4_sv2v_reg <= N36;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_3_sv2v_reg <= N35;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_2_sv2v_reg <= N34;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_1_sv2v_reg <= N33;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      pending_bits_r_0_sv2v_reg <= N32;
    end 
  end

  assign N100 = (N84)? pending_bits_r[1] : 
                (N86)? pending_bits_r[3] : 
                (N88)? pending_bits_r[5] : 
                (N90)? pending_bits_r[7] : 
                (N92)? pending_bits_r[9] : 
                (N94)? pending_bits_r[11] : 
                (N96)? pending_bits_r[13] : 
                (N98)? pending_bits_r[15] : 
                (N85)? pending_bits_r[17] : 
                (N87)? pending_bits_r[19] : 
                (N89)? pending_bits_r[21] : 
                (N91)? pending_bits_r[23] : 
                (N93)? pending_bits_r[25] : 
                (N95)? pending_bits_r[27] : 
                (N97)? pending_bits_r[29] : 
                (N99)? pending_bits_r[31] : 1'b0;
  assign N101 = (N84)? pending_bits_r[0] : 
                (N86)? pending_bits_r[2] : 
                (N88)? pending_bits_r[4] : 
                (N90)? pending_bits_r[6] : 
                (N92)? pending_bits_r[8] : 
                (N94)? pending_bits_r[10] : 
                (N96)? pending_bits_r[12] : 
                (N98)? pending_bits_r[14] : 
                (N85)? pending_bits_r[16] : 
                (N87)? pending_bits_r[18] : 
                (N89)? pending_bits_r[20] : 
                (N91)? pending_bits_r[22] : 
                (N93)? pending_bits_r[24] : 
                (N95)? pending_bits_r[26] : 
                (N97)? pending_bits_r[28] : 
                (N99)? pending_bits_r[30] : 1'b0;
  assign N104 = (N84)? pending_bits_r[1] : 
                (N86)? pending_bits_r[3] : 
                (N88)? pending_bits_r[5] : 
                (N90)? pending_bits_r[7] : 
                (N92)? pending_bits_r[9] : 
                (N94)? pending_bits_r[11] : 
                (N96)? pending_bits_r[13] : 
                (N98)? pending_bits_r[15] : 
                (N85)? pending_bits_r[17] : 
                (N87)? pending_bits_r[19] : 
                (N89)? pending_bits_r[21] : 
                (N91)? pending_bits_r[23] : 
                (N93)? pending_bits_r[25] : 
                (N95)? pending_bits_r[27] : 
                (N97)? pending_bits_r[29] : 
                (N99)? pending_bits_r[31] : 1'b0;
  assign N105 = (N84)? pending_bits_r[0] : 
                (N86)? pending_bits_r[2] : 
                (N88)? pending_bits_r[4] : 
                (N90)? pending_bits_r[6] : 
                (N92)? pending_bits_r[8] : 
                (N94)? pending_bits_r[10] : 
                (N96)? pending_bits_r[12] : 
                (N98)? pending_bits_r[14] : 
                (N85)? pending_bits_r[16] : 
                (N87)? pending_bits_r[18] : 
                (N89)? pending_bits_r[20] : 
                (N91)? pending_bits_r[22] : 
                (N93)? pending_bits_r[24] : 
                (N95)? pending_bits_r[26] : 
                (N97)? pending_bits_r[28] : 
                (N99)? pending_bits_r[30] : 1'b0;
  assign N206 = w_way_group_i == r_way_group_i;
  assign N241 = (N225)? pending_bits_n[1] : 
                (N227)? pending_bits_n[3] : 
                (N229)? pending_bits_n[5] : 
                (N231)? pending_bits_n[7] : 
                (N233)? pending_bits_n[9] : 
                (N235)? pending_bits_n[11] : 
                (N237)? pending_bits_n[13] : 
                (N239)? pending_bits_n[15] : 
                (N226)? pending_bits_n[17] : 
                (N228)? pending_bits_n[19] : 
                (N230)? pending_bits_n[21] : 
                (N232)? pending_bits_n[23] : 
                (N234)? pending_bits_n[25] : 
                (N236)? pending_bits_n[27] : 
                (N238)? pending_bits_n[29] : 
                (N240)? pending_bits_n[31] : 1'b0;
  assign N242 = (N225)? pending_bits_n[0] : 
                (N227)? pending_bits_n[2] : 
                (N229)? pending_bits_n[4] : 
                (N231)? pending_bits_n[6] : 
                (N233)? pending_bits_n[8] : 
                (N235)? pending_bits_n[10] : 
                (N237)? pending_bits_n[12] : 
                (N239)? pending_bits_n[14] : 
                (N226)? pending_bits_n[16] : 
                (N228)? pending_bits_n[18] : 
                (N230)? pending_bits_n[20] : 
                (N232)? pending_bits_n[22] : 
                (N234)? pending_bits_n[24] : 
                (N236)? pending_bits_n[26] : 
                (N238)? pending_bits_n[28] : 
                (N240)? pending_bits_n[30] : 1'b0;
  assign N243 = (N225)? pending_bits_r[1] : 
                (N227)? pending_bits_r[3] : 
                (N229)? pending_bits_r[5] : 
                (N231)? pending_bits_r[7] : 
                (N233)? pending_bits_r[9] : 
                (N235)? pending_bits_r[11] : 
                (N237)? pending_bits_r[13] : 
                (N239)? pending_bits_r[15] : 
                (N226)? pending_bits_r[17] : 
                (N228)? pending_bits_r[19] : 
                (N230)? pending_bits_r[21] : 
                (N232)? pending_bits_r[23] : 
                (N234)? pending_bits_r[25] : 
                (N236)? pending_bits_r[27] : 
                (N238)? pending_bits_r[29] : 
                (N240)? pending_bits_r[31] : 1'b0;
  assign N244 = (N225)? pending_bits_r[0] : 
                (N227)? pending_bits_r[2] : 
                (N229)? pending_bits_r[4] : 
                (N231)? pending_bits_r[6] : 
                (N233)? pending_bits_r[8] : 
                (N235)? pending_bits_r[10] : 
                (N237)? pending_bits_r[12] : 
                (N239)? pending_bits_r[14] : 
                (N226)? pending_bits_r[16] : 
                (N228)? pending_bits_r[18] : 
                (N230)? pending_bits_r[20] : 
                (N232)? pending_bits_r[22] : 
                (N234)? pending_bits_r[24] : 
                (N236)? pending_bits_r[26] : 
                (N238)? pending_bits_r[28] : 
                (N240)? pending_bits_r[30] : 1'b0;
  assign N245 = N242 | N241;
  assign N246 = N244 | N243;
  assign { N103, N102 } = { N100, N101 } + 1'b1;
  assign { N107, N106 } = { N104, N105 } - 1'b1;
  assign N247 = w_way_group_i[2] & w_way_group_i[3];
  assign N248 = N0 & w_way_group_i[3];
  assign N0 = ~w_way_group_i[2];
  assign N249 = w_way_group_i[2] & N1;
  assign N1 = ~w_way_group_i[3];
  assign N250 = N2 & N3;
  assign N2 = ~w_way_group_i[2];
  assign N3 = ~w_way_group_i[3];
  assign N251 = w_way_group_i[0] & w_way_group_i[1];
  assign N252 = N4 & w_way_group_i[1];
  assign N4 = ~w_way_group_i[0];
  assign N253 = w_way_group_i[0] & N5;
  assign N5 = ~w_way_group_i[1];
  assign N254 = N6 & N7;
  assign N6 = ~w_way_group_i[0];
  assign N7 = ~w_way_group_i[1];
  assign N125 = N247 & N251;
  assign N124 = N247 & N252;
  assign N123 = N247 & N253;
  assign N122 = N247 & N254;
  assign N121 = N248 & N251;
  assign N120 = N248 & N252;
  assign N119 = N248 & N253;
  assign N118 = N248 & N254;
  assign N117 = N249 & N251;
  assign N116 = N249 & N252;
  assign N115 = N249 & N253;
  assign N114 = N249 & N254;
  assign N113 = N250 & N251;
  assign N112 = N250 & N252;
  assign N111 = N250 & N253;
  assign N110 = N250 & N254;
  assign { N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32 } = (N8)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                              (N9)? pending_bits_n : 1'b0;
  assign N8 = reset_i;
  assign N9 = N31;
  assign { N109, N108 } = (N10)? { N103, N102 } : 
                          (N11)? { N107, N106 } : 1'b0;
  assign N10 = pending_i;
  assign N11 = N67;
  assign { N128, N127 } = (N12)? { N108, N109 } : 
                          (N126)? { pending_bits_r[0:0], pending_bits_r[1:1] } : 1'b0;
  assign N12 = N110;
  assign { N131, N130 } = (N13)? { N108, N109 } : 
                          (N129)? { pending_bits_r[2:2], pending_bits_r[3:3] } : 1'b0;
  assign N13 = N111;
  assign { N134, N133 } = (N14)? { N108, N109 } : 
                          (N132)? { pending_bits_r[4:4], pending_bits_r[5:5] } : 1'b0;
  assign N14 = N112;
  assign { N137, N136 } = (N15)? { N108, N109 } : 
                          (N135)? { pending_bits_r[6:6], pending_bits_r[7:7] } : 1'b0;
  assign N15 = N113;
  assign { N140, N139 } = (N16)? { N108, N109 } : 
                          (N138)? { pending_bits_r[8:8], pending_bits_r[9:9] } : 1'b0;
  assign N16 = N114;
  assign { N143, N142 } = (N17)? { N108, N109 } : 
                          (N141)? { pending_bits_r[10:10], pending_bits_r[11:11] } : 1'b0;
  assign N17 = N115;
  assign { N146, N145 } = (N18)? { N108, N109 } : 
                          (N144)? { pending_bits_r[12:12], pending_bits_r[13:13] } : 1'b0;
  assign N18 = N116;
  assign { N149, N148 } = (N19)? { N108, N109 } : 
                          (N147)? { pending_bits_r[14:14], pending_bits_r[15:15] } : 1'b0;
  assign N19 = N117;
  assign { N152, N151 } = (N20)? { N108, N109 } : 
                          (N150)? { pending_bits_r[16:16], pending_bits_r[17:17] } : 1'b0;
  assign N20 = N118;
  assign { N155, N154 } = (N21)? { N108, N109 } : 
                          (N153)? { pending_bits_r[18:18], pending_bits_r[19:19] } : 1'b0;
  assign N21 = N119;
  assign { N158, N157 } = (N22)? { N108, N109 } : 
                          (N156)? { pending_bits_r[20:20], pending_bits_r[21:21] } : 1'b0;
  assign N22 = N120;
  assign { N161, N160 } = (N23)? { N108, N109 } : 
                          (N159)? { pending_bits_r[22:22], pending_bits_r[23:23] } : 1'b0;
  assign N23 = N121;
  assign { N164, N163 } = (N24)? { N108, N109 } : 
                          (N162)? { pending_bits_r[24:24], pending_bits_r[25:25] } : 1'b0;
  assign N24 = N122;
  assign { N167, N166 } = (N25)? { N108, N109 } : 
                          (N165)? { pending_bits_r[26:26], pending_bits_r[27:27] } : 1'b0;
  assign N25 = N123;
  assign { N170, N169 } = (N26)? { N108, N109 } : 
                          (N168)? { pending_bits_r[28:28], pending_bits_r[29:29] } : 1'b0;
  assign N26 = N124;
  assign { N173, N172 } = (N27)? { N108, N109 } : 
                          (N171)? { pending_bits_r[30:30], pending_bits_r[31:31] } : 1'b0;
  assign N27 = N125;
  assign { N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174 } = (N28)? { N172, N173, N169, N170, N166, N167, N163, N164, N160, N161, N157, N158, N154, N155, N151, N152, N148, N149, N145, N146, N142, N143, N139, N140, N136, N137, N133, N134, N130, N131, N127, N128 } : 
                                                                                                                                                                                                              (N29)? pending_bits_r : 1'b0;
  assign N28 = w_v_i;
  assign N29 = N65;
  assign pending_bits_n = (N8)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                          (N9)? { N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174 } : 1'b0;
  assign pending_o = (N30)? N245 : 
                     (N208)? N246 : 1'b0;
  assign N30 = N207;
  assign N31 = ~reset_i;
  assign N64 = N31;
  assign N65 = ~w_v_i;
  assign N66 = N64 & w_v_i;
  assign N67 = ~pending_i;
  assign N68 = ~w_way_group_i[0];
  assign N69 = ~w_way_group_i[1];
  assign N70 = N68 & N69;
  assign N71 = N68 & w_way_group_i[1];
  assign N72 = w_way_group_i[0] & N69;
  assign N73 = w_way_group_i[0] & w_way_group_i[1];
  assign N74 = ~w_way_group_i[2];
  assign N75 = N70 & N74;
  assign N76 = N70 & w_way_group_i[2];
  assign N77 = N72 & N74;
  assign N78 = N72 & w_way_group_i[2];
  assign N79 = N71 & N74;
  assign N80 = N71 & w_way_group_i[2];
  assign N81 = N73 & N74;
  assign N82 = N73 & w_way_group_i[2];
  assign N83 = ~w_way_group_i[3];
  assign N84 = N75 & N83;
  assign N85 = N75 & w_way_group_i[3];
  assign N86 = N77 & N83;
  assign N87 = N77 & w_way_group_i[3];
  assign N88 = N79 & N83;
  assign N89 = N79 & w_way_group_i[3];
  assign N90 = N81 & N83;
  assign N91 = N81 & w_way_group_i[3];
  assign N92 = N76 & N83;
  assign N93 = N76 & w_way_group_i[3];
  assign N94 = N78 & N83;
  assign N95 = N78 & w_way_group_i[3];
  assign N96 = N80 & N83;
  assign N97 = N80 & w_way_group_i[3];
  assign N98 = N82 & N83;
  assign N99 = N82 & w_way_group_i[3];
  assign N126 = ~N110;
  assign N129 = ~N111;
  assign N132 = ~N112;
  assign N135 = ~N113;
  assign N138 = ~N114;
  assign N141 = ~N115;
  assign N144 = ~N116;
  assign N147 = ~N117;
  assign N150 = ~N118;
  assign N153 = ~N119;
  assign N156 = ~N120;
  assign N159 = ~N121;
  assign N162 = ~N122;
  assign N165 = ~N123;
  assign N168 = ~N124;
  assign N171 = ~N125;
  assign N207 = N255 & N206;
  assign N255 = pending_v_o & w_v_i;
  assign N208 = ~N207;
  assign N209 = ~r_way_group_i[0];
  assign N210 = ~r_way_group_i[1];
  assign N211 = N209 & N210;
  assign N212 = N209 & r_way_group_i[1];
  assign N213 = r_way_group_i[0] & N210;
  assign N214 = r_way_group_i[0] & r_way_group_i[1];
  assign N215 = ~r_way_group_i[2];
  assign N216 = N211 & N215;
  assign N217 = N211 & r_way_group_i[2];
  assign N218 = N213 & N215;
  assign N219 = N213 & r_way_group_i[2];
  assign N220 = N212 & N215;
  assign N221 = N212 & r_way_group_i[2];
  assign N222 = N214 & N215;
  assign N223 = N214 & r_way_group_i[2];
  assign N224 = ~r_way_group_i[3];
  assign N225 = N216 & N224;
  assign N226 = N216 & r_way_group_i[3];
  assign N227 = N218 & N224;
  assign N228 = N218 & r_way_group_i[3];
  assign N229 = N220 & N224;
  assign N230 = N220 & r_way_group_i[3];
  assign N231 = N222 & N224;
  assign N232 = N222 & r_way_group_i[3];
  assign N233 = N217 & N224;
  assign N234 = N217 & r_way_group_i[3];
  assign N235 = N219 & N224;
  assign N236 = N219 & r_way_group_i[3];
  assign N237 = N221 & N224;
  assign N238 = N221 & r_way_group_i[3];
  assign N239 = N223 & N224;
  assign N240 = N223 & r_way_group_i[3];

endmodule