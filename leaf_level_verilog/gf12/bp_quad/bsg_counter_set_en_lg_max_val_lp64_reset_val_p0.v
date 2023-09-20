module bsg_counter_set_en_lg_max_val_lp64_reset_val_p0
(
  clk_i,
  reset_i,
  set_i,
  en_i,
  val_i,
  count_o
);

  input [63:0] val_i;
  output [63:0] count_o;
  input clk_i;
  input reset_i;
  input set_i;
  input en_i;
  wire [63:0] count_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,
  N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,
  N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,
  N134,N135,N136,N137,N138;
  reg count_o_63_sv2v_reg,count_o_62_sv2v_reg,count_o_61_sv2v_reg,count_o_60_sv2v_reg,
  count_o_59_sv2v_reg,count_o_58_sv2v_reg,count_o_57_sv2v_reg,count_o_56_sv2v_reg,
  count_o_55_sv2v_reg,count_o_54_sv2v_reg,count_o_53_sv2v_reg,count_o_52_sv2v_reg,
  count_o_51_sv2v_reg,count_o_50_sv2v_reg,count_o_49_sv2v_reg,count_o_48_sv2v_reg,
  count_o_47_sv2v_reg,count_o_46_sv2v_reg,count_o_45_sv2v_reg,count_o_44_sv2v_reg,
  count_o_43_sv2v_reg,count_o_42_sv2v_reg,count_o_41_sv2v_reg,count_o_40_sv2v_reg,
  count_o_39_sv2v_reg,count_o_38_sv2v_reg,count_o_37_sv2v_reg,count_o_36_sv2v_reg,
  count_o_35_sv2v_reg,count_o_34_sv2v_reg,count_o_33_sv2v_reg,count_o_32_sv2v_reg,
  count_o_31_sv2v_reg,count_o_30_sv2v_reg,count_o_29_sv2v_reg,count_o_28_sv2v_reg,
  count_o_27_sv2v_reg,count_o_26_sv2v_reg,count_o_25_sv2v_reg,count_o_24_sv2v_reg,
  count_o_23_sv2v_reg,count_o_22_sv2v_reg,count_o_21_sv2v_reg,count_o_20_sv2v_reg,
  count_o_19_sv2v_reg,count_o_18_sv2v_reg,count_o_17_sv2v_reg,count_o_16_sv2v_reg,
  count_o_15_sv2v_reg,count_o_14_sv2v_reg,count_o_13_sv2v_reg,count_o_12_sv2v_reg,
  count_o_11_sv2v_reg,count_o_10_sv2v_reg,count_o_9_sv2v_reg,count_o_8_sv2v_reg,
  count_o_7_sv2v_reg,count_o_6_sv2v_reg,count_o_5_sv2v_reg,count_o_4_sv2v_reg,
  count_o_3_sv2v_reg,count_o_2_sv2v_reg,count_o_1_sv2v_reg,count_o_0_sv2v_reg;
  assign count_o[63] = count_o_63_sv2v_reg;
  assign count_o[62] = count_o_62_sv2v_reg;
  assign count_o[61] = count_o_61_sv2v_reg;
  assign count_o[60] = count_o_60_sv2v_reg;
  assign count_o[59] = count_o_59_sv2v_reg;
  assign count_o[58] = count_o_58_sv2v_reg;
  assign count_o[57] = count_o_57_sv2v_reg;
  assign count_o[56] = count_o_56_sv2v_reg;
  assign count_o[55] = count_o_55_sv2v_reg;
  assign count_o[54] = count_o_54_sv2v_reg;
  assign count_o[53] = count_o_53_sv2v_reg;
  assign count_o[52] = count_o_52_sv2v_reg;
  assign count_o[51] = count_o_51_sv2v_reg;
  assign count_o[50] = count_o_50_sv2v_reg;
  assign count_o[49] = count_o_49_sv2v_reg;
  assign count_o[48] = count_o_48_sv2v_reg;
  assign count_o[47] = count_o_47_sv2v_reg;
  assign count_o[46] = count_o_46_sv2v_reg;
  assign count_o[45] = count_o_45_sv2v_reg;
  assign count_o[44] = count_o_44_sv2v_reg;
  assign count_o[43] = count_o_43_sv2v_reg;
  assign count_o[42] = count_o_42_sv2v_reg;
  assign count_o[41] = count_o_41_sv2v_reg;
  assign count_o[40] = count_o_40_sv2v_reg;
  assign count_o[39] = count_o_39_sv2v_reg;
  assign count_o[38] = count_o_38_sv2v_reg;
  assign count_o[37] = count_o_37_sv2v_reg;
  assign count_o[36] = count_o_36_sv2v_reg;
  assign count_o[35] = count_o_35_sv2v_reg;
  assign count_o[34] = count_o_34_sv2v_reg;
  assign count_o[33] = count_o_33_sv2v_reg;
  assign count_o[32] = count_o_32_sv2v_reg;
  assign count_o[31] = count_o_31_sv2v_reg;
  assign count_o[30] = count_o_30_sv2v_reg;
  assign count_o[29] = count_o_29_sv2v_reg;
  assign count_o[28] = count_o_28_sv2v_reg;
  assign count_o[27] = count_o_27_sv2v_reg;
  assign count_o[26] = count_o_26_sv2v_reg;
  assign count_o[25] = count_o_25_sv2v_reg;
  assign count_o[24] = count_o_24_sv2v_reg;
  assign count_o[23] = count_o_23_sv2v_reg;
  assign count_o[22] = count_o_22_sv2v_reg;
  assign count_o[21] = count_o_21_sv2v_reg;
  assign count_o[20] = count_o_20_sv2v_reg;
  assign count_o[19] = count_o_19_sv2v_reg;
  assign count_o[18] = count_o_18_sv2v_reg;
  assign count_o[17] = count_o_17_sv2v_reg;
  assign count_o[16] = count_o_16_sv2v_reg;
  assign count_o[15] = count_o_15_sv2v_reg;
  assign count_o[14] = count_o_14_sv2v_reg;
  assign count_o[13] = count_o_13_sv2v_reg;
  assign count_o[12] = count_o_12_sv2v_reg;
  assign count_o[11] = count_o_11_sv2v_reg;
  assign count_o[10] = count_o_10_sv2v_reg;
  assign count_o[9] = count_o_9_sv2v_reg;
  assign count_o[8] = count_o_8_sv2v_reg;
  assign count_o[7] = count_o_7_sv2v_reg;
  assign count_o[6] = count_o_6_sv2v_reg;
  assign count_o[5] = count_o_5_sv2v_reg;
  assign count_o[4] = count_o_4_sv2v_reg;
  assign count_o[3] = count_o_3_sv2v_reg;
  assign count_o[2] = count_o_2_sv2v_reg;
  assign count_o[1] = count_o_1_sv2v_reg;
  assign count_o[0] = count_o_0_sv2v_reg;

  always @(posedge clk_i) begin
    if(N69) begin
      count_o_63_sv2v_reg <= N133;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_62_sv2v_reg <= N132;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_61_sv2v_reg <= N131;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_60_sv2v_reg <= N130;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_59_sv2v_reg <= N129;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_58_sv2v_reg <= N128;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_57_sv2v_reg <= N127;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_56_sv2v_reg <= N126;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_55_sv2v_reg <= N125;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_54_sv2v_reg <= N124;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_53_sv2v_reg <= N123;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_52_sv2v_reg <= N122;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_51_sv2v_reg <= N121;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_50_sv2v_reg <= N120;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_49_sv2v_reg <= N119;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_48_sv2v_reg <= N118;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_47_sv2v_reg <= N117;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_46_sv2v_reg <= N116;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_45_sv2v_reg <= N115;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_44_sv2v_reg <= N114;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_43_sv2v_reg <= N113;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_42_sv2v_reg <= N112;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_41_sv2v_reg <= N111;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_40_sv2v_reg <= N110;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_39_sv2v_reg <= N109;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_38_sv2v_reg <= N108;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_37_sv2v_reg <= N107;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_36_sv2v_reg <= N106;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_35_sv2v_reg <= N105;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_34_sv2v_reg <= N104;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_33_sv2v_reg <= N103;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_32_sv2v_reg <= N102;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_31_sv2v_reg <= N101;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_30_sv2v_reg <= N100;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_29_sv2v_reg <= N99;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_28_sv2v_reg <= N98;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_27_sv2v_reg <= N97;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_26_sv2v_reg <= N96;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_25_sv2v_reg <= N95;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_24_sv2v_reg <= N94;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_23_sv2v_reg <= N93;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_22_sv2v_reg <= N92;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_21_sv2v_reg <= N91;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_20_sv2v_reg <= N90;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_19_sv2v_reg <= N89;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_18_sv2v_reg <= N88;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_17_sv2v_reg <= N87;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_16_sv2v_reg <= N86;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_15_sv2v_reg <= N85;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_14_sv2v_reg <= N84;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_13_sv2v_reg <= N83;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_12_sv2v_reg <= N82;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_11_sv2v_reg <= N81;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_10_sv2v_reg <= N80;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_9_sv2v_reg <= N79;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_8_sv2v_reg <= N78;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_7_sv2v_reg <= N77;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_6_sv2v_reg <= N76;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_5_sv2v_reg <= N75;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_4_sv2v_reg <= N74;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_3_sv2v_reg <= N73;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_2_sv2v_reg <= N72;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_1_sv2v_reg <= N71;
    end 
  end


  always @(posedge clk_i) begin
    if(N69) begin
      count_o_0_sv2v_reg <= N70;
    end 
  end

  assign { N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5 } = count_o + 1'b1;
  assign N69 = (N0)? 1'b1 : 
               (N135)? 1'b1 : 
               (N138)? 1'b1 : 
               (N3)? 1'b0 : 1'b0;
  assign N0 = reset_i;
  assign { N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                                                (N135)? val_i : 
                                                                                                                                                                                                                                                                                                                                                                                (N138)? { N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5 } : 1'b0;
  assign N1 = set_i | reset_i;
  assign N2 = en_i | N1;
  assign N3 = ~N2;
  assign N4 = N138;
  assign N134 = ~reset_i;
  assign N135 = set_i & N134;
  assign N136 = ~set_i;
  assign N137 = N134 & N136;
  assign N138 = en_i & N137;

endmodule