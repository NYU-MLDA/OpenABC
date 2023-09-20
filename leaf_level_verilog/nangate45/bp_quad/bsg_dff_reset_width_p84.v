module bsg_dff_reset_width_p84
(
  clk_i,
  reset_i,
  data_i,
  data_o
);

  input [83:0] data_i;
  output [83:0] data_o;
  input clk_i;
  input reset_i;
  wire [83:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86;
  reg data_o_83_sv2v_reg,data_o_82_sv2v_reg,data_o_81_sv2v_reg,data_o_80_sv2v_reg,
  data_o_79_sv2v_reg,data_o_78_sv2v_reg,data_o_77_sv2v_reg,data_o_76_sv2v_reg,
  data_o_75_sv2v_reg,data_o_74_sv2v_reg,data_o_73_sv2v_reg,data_o_72_sv2v_reg,
  data_o_71_sv2v_reg,data_o_70_sv2v_reg,data_o_69_sv2v_reg,data_o_68_sv2v_reg,
  data_o_67_sv2v_reg,data_o_66_sv2v_reg,data_o_65_sv2v_reg,data_o_64_sv2v_reg,data_o_63_sv2v_reg,
  data_o_62_sv2v_reg,data_o_61_sv2v_reg,data_o_60_sv2v_reg,data_o_59_sv2v_reg,
  data_o_58_sv2v_reg,data_o_57_sv2v_reg,data_o_56_sv2v_reg,data_o_55_sv2v_reg,
  data_o_54_sv2v_reg,data_o_53_sv2v_reg,data_o_52_sv2v_reg,data_o_51_sv2v_reg,
  data_o_50_sv2v_reg,data_o_49_sv2v_reg,data_o_48_sv2v_reg,data_o_47_sv2v_reg,
  data_o_46_sv2v_reg,data_o_45_sv2v_reg,data_o_44_sv2v_reg,data_o_43_sv2v_reg,data_o_42_sv2v_reg,
  data_o_41_sv2v_reg,data_o_40_sv2v_reg,data_o_39_sv2v_reg,data_o_38_sv2v_reg,
  data_o_37_sv2v_reg,data_o_36_sv2v_reg,data_o_35_sv2v_reg,data_o_34_sv2v_reg,
  data_o_33_sv2v_reg,data_o_32_sv2v_reg,data_o_31_sv2v_reg,data_o_30_sv2v_reg,
  data_o_29_sv2v_reg,data_o_28_sv2v_reg,data_o_27_sv2v_reg,data_o_26_sv2v_reg,
  data_o_25_sv2v_reg,data_o_24_sv2v_reg,data_o_23_sv2v_reg,data_o_22_sv2v_reg,data_o_21_sv2v_reg,
  data_o_20_sv2v_reg,data_o_19_sv2v_reg,data_o_18_sv2v_reg,data_o_17_sv2v_reg,
  data_o_16_sv2v_reg,data_o_15_sv2v_reg,data_o_14_sv2v_reg,data_o_13_sv2v_reg,
  data_o_12_sv2v_reg,data_o_11_sv2v_reg,data_o_10_sv2v_reg,data_o_9_sv2v_reg,
  data_o_8_sv2v_reg,data_o_7_sv2v_reg,data_o_6_sv2v_reg,data_o_5_sv2v_reg,data_o_4_sv2v_reg,
  data_o_3_sv2v_reg,data_o_2_sv2v_reg,data_o_1_sv2v_reg,data_o_0_sv2v_reg;
  assign data_o[83] = data_o_83_sv2v_reg;
  assign data_o[82] = data_o_82_sv2v_reg;
  assign data_o[81] = data_o_81_sv2v_reg;
  assign data_o[80] = data_o_80_sv2v_reg;
  assign data_o[79] = data_o_79_sv2v_reg;
  assign data_o[78] = data_o_78_sv2v_reg;
  assign data_o[77] = data_o_77_sv2v_reg;
  assign data_o[76] = data_o_76_sv2v_reg;
  assign data_o[75] = data_o_75_sv2v_reg;
  assign data_o[74] = data_o_74_sv2v_reg;
  assign data_o[73] = data_o_73_sv2v_reg;
  assign data_o[72] = data_o_72_sv2v_reg;
  assign data_o[71] = data_o_71_sv2v_reg;
  assign data_o[70] = data_o_70_sv2v_reg;
  assign data_o[69] = data_o_69_sv2v_reg;
  assign data_o[68] = data_o_68_sv2v_reg;
  assign data_o[67] = data_o_67_sv2v_reg;
  assign data_o[66] = data_o_66_sv2v_reg;
  assign data_o[65] = data_o_65_sv2v_reg;
  assign data_o[64] = data_o_64_sv2v_reg;
  assign data_o[63] = data_o_63_sv2v_reg;
  assign data_o[62] = data_o_62_sv2v_reg;
  assign data_o[61] = data_o_61_sv2v_reg;
  assign data_o[60] = data_o_60_sv2v_reg;
  assign data_o[59] = data_o_59_sv2v_reg;
  assign data_o[58] = data_o_58_sv2v_reg;
  assign data_o[57] = data_o_57_sv2v_reg;
  assign data_o[56] = data_o_56_sv2v_reg;
  assign data_o[55] = data_o_55_sv2v_reg;
  assign data_o[54] = data_o_54_sv2v_reg;
  assign data_o[53] = data_o_53_sv2v_reg;
  assign data_o[52] = data_o_52_sv2v_reg;
  assign data_o[51] = data_o_51_sv2v_reg;
  assign data_o[50] = data_o_50_sv2v_reg;
  assign data_o[49] = data_o_49_sv2v_reg;
  assign data_o[48] = data_o_48_sv2v_reg;
  assign data_o[47] = data_o_47_sv2v_reg;
  assign data_o[46] = data_o_46_sv2v_reg;
  assign data_o[45] = data_o_45_sv2v_reg;
  assign data_o[44] = data_o_44_sv2v_reg;
  assign data_o[43] = data_o_43_sv2v_reg;
  assign data_o[42] = data_o_42_sv2v_reg;
  assign data_o[41] = data_o_41_sv2v_reg;
  assign data_o[40] = data_o_40_sv2v_reg;
  assign data_o[39] = data_o_39_sv2v_reg;
  assign data_o[38] = data_o_38_sv2v_reg;
  assign data_o[37] = data_o_37_sv2v_reg;
  assign data_o[36] = data_o_36_sv2v_reg;
  assign data_o[35] = data_o_35_sv2v_reg;
  assign data_o[34] = data_o_34_sv2v_reg;
  assign data_o[33] = data_o_33_sv2v_reg;
  assign data_o[32] = data_o_32_sv2v_reg;
  assign data_o[31] = data_o_31_sv2v_reg;
  assign data_o[30] = data_o_30_sv2v_reg;
  assign data_o[29] = data_o_29_sv2v_reg;
  assign data_o[28] = data_o_28_sv2v_reg;
  assign data_o[27] = data_o_27_sv2v_reg;
  assign data_o[26] = data_o_26_sv2v_reg;
  assign data_o[25] = data_o_25_sv2v_reg;
  assign data_o[24] = data_o_24_sv2v_reg;
  assign data_o[23] = data_o_23_sv2v_reg;
  assign data_o[22] = data_o_22_sv2v_reg;
  assign data_o[21] = data_o_21_sv2v_reg;
  assign data_o[20] = data_o_20_sv2v_reg;
  assign data_o[19] = data_o_19_sv2v_reg;
  assign data_o[18] = data_o_18_sv2v_reg;
  assign data_o[17] = data_o_17_sv2v_reg;
  assign data_o[16] = data_o_16_sv2v_reg;
  assign data_o[15] = data_o_15_sv2v_reg;
  assign data_o[14] = data_o_14_sv2v_reg;
  assign data_o[13] = data_o_13_sv2v_reg;
  assign data_o[12] = data_o_12_sv2v_reg;
  assign data_o[11] = data_o_11_sv2v_reg;
  assign data_o[10] = data_o_10_sv2v_reg;
  assign data_o[9] = data_o_9_sv2v_reg;
  assign data_o[8] = data_o_8_sv2v_reg;
  assign data_o[7] = data_o_7_sv2v_reg;
  assign data_o[6] = data_o_6_sv2v_reg;
  assign data_o[5] = data_o_5_sv2v_reg;
  assign data_o[4] = data_o_4_sv2v_reg;
  assign data_o[3] = data_o_3_sv2v_reg;
  assign data_o[2] = data_o_2_sv2v_reg;
  assign data_o[1] = data_o_1_sv2v_reg;
  assign data_o[0] = data_o_0_sv2v_reg;

  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_83_sv2v_reg <= N86;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_82_sv2v_reg <= N85;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_81_sv2v_reg <= N84;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_80_sv2v_reg <= N83;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_79_sv2v_reg <= N82;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_78_sv2v_reg <= N81;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_77_sv2v_reg <= N80;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_76_sv2v_reg <= N79;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_75_sv2v_reg <= N78;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_74_sv2v_reg <= N77;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_73_sv2v_reg <= N76;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_72_sv2v_reg <= N75;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_71_sv2v_reg <= N74;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_70_sv2v_reg <= N73;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_69_sv2v_reg <= N72;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_68_sv2v_reg <= N71;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_67_sv2v_reg <= N70;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_66_sv2v_reg <= N69;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_65_sv2v_reg <= N68;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_64_sv2v_reg <= N67;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_63_sv2v_reg <= N66;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_62_sv2v_reg <= N65;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_61_sv2v_reg <= N64;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_60_sv2v_reg <= N63;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_59_sv2v_reg <= N62;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_58_sv2v_reg <= N61;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_57_sv2v_reg <= N60;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_56_sv2v_reg <= N59;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_55_sv2v_reg <= N58;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_54_sv2v_reg <= N57;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_53_sv2v_reg <= N56;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_52_sv2v_reg <= N55;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_51_sv2v_reg <= N54;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_50_sv2v_reg <= N53;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_49_sv2v_reg <= N52;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_48_sv2v_reg <= N51;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_47_sv2v_reg <= N50;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_46_sv2v_reg <= N49;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_45_sv2v_reg <= N48;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_44_sv2v_reg <= N47;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_43_sv2v_reg <= N46;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_42_sv2v_reg <= N45;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_41_sv2v_reg <= N44;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_40_sv2v_reg <= N43;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_39_sv2v_reg <= N42;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_38_sv2v_reg <= N41;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_37_sv2v_reg <= N40;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_36_sv2v_reg <= N39;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_35_sv2v_reg <= N38;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_34_sv2v_reg <= N37;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_33_sv2v_reg <= N36;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_32_sv2v_reg <= N35;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_31_sv2v_reg <= N34;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_30_sv2v_reg <= N33;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_29_sv2v_reg <= N32;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_28_sv2v_reg <= N31;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_27_sv2v_reg <= N30;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_26_sv2v_reg <= N29;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_25_sv2v_reg <= N28;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_24_sv2v_reg <= N27;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_23_sv2v_reg <= N26;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_22_sv2v_reg <= N25;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_21_sv2v_reg <= N24;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_20_sv2v_reg <= N23;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_19_sv2v_reg <= N22;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_18_sv2v_reg <= N21;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_17_sv2v_reg <= N20;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_16_sv2v_reg <= N19;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_15_sv2v_reg <= N18;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_14_sv2v_reg <= N17;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_13_sv2v_reg <= N16;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_12_sv2v_reg <= N15;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_11_sv2v_reg <= N14;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_10_sv2v_reg <= N13;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_9_sv2v_reg <= N12;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_8_sv2v_reg <= N11;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_7_sv2v_reg <= N10;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_6_sv2v_reg <= N9;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_5_sv2v_reg <= N8;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_4_sv2v_reg <= N7;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_3_sv2v_reg <= N6;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_2_sv2v_reg <= N5;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_1_sv2v_reg <= N4;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_0_sv2v_reg <= N3;
    end 
  end

  assign { N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                                                                                                                                                                                                                                                                           (N1)? data_i : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign N2 = ~reset_i;

endmodule