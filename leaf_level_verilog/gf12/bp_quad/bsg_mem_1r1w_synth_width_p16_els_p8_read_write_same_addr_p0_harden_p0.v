module bsg_mem_1r1w_synth_width_p16_els_p8_read_write_same_addr_p0_harden_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [2:0] w_addr_i;
  input [15:0] w_data_i;
  input [2:0] r_addr_i;
  output [15:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [15:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45;
  wire [127:0] mem;
  reg mem_127_sv2v_reg,mem_126_sv2v_reg,mem_125_sv2v_reg,mem_124_sv2v_reg,
  mem_123_sv2v_reg,mem_122_sv2v_reg,mem_121_sv2v_reg,mem_120_sv2v_reg,mem_119_sv2v_reg,
  mem_118_sv2v_reg,mem_117_sv2v_reg,mem_116_sv2v_reg,mem_115_sv2v_reg,mem_114_sv2v_reg,
  mem_113_sv2v_reg,mem_112_sv2v_reg,mem_111_sv2v_reg,mem_110_sv2v_reg,
  mem_109_sv2v_reg,mem_108_sv2v_reg,mem_107_sv2v_reg,mem_106_sv2v_reg,mem_105_sv2v_reg,
  mem_104_sv2v_reg,mem_103_sv2v_reg,mem_102_sv2v_reg,mem_101_sv2v_reg,mem_100_sv2v_reg,
  mem_99_sv2v_reg,mem_98_sv2v_reg,mem_97_sv2v_reg,mem_96_sv2v_reg,mem_95_sv2v_reg,
  mem_94_sv2v_reg,mem_93_sv2v_reg,mem_92_sv2v_reg,mem_91_sv2v_reg,mem_90_sv2v_reg,
  mem_89_sv2v_reg,mem_88_sv2v_reg,mem_87_sv2v_reg,mem_86_sv2v_reg,mem_85_sv2v_reg,
  mem_84_sv2v_reg,mem_83_sv2v_reg,mem_82_sv2v_reg,mem_81_sv2v_reg,mem_80_sv2v_reg,
  mem_79_sv2v_reg,mem_78_sv2v_reg,mem_77_sv2v_reg,mem_76_sv2v_reg,mem_75_sv2v_reg,
  mem_74_sv2v_reg,mem_73_sv2v_reg,mem_72_sv2v_reg,mem_71_sv2v_reg,mem_70_sv2v_reg,
  mem_69_sv2v_reg,mem_68_sv2v_reg,mem_67_sv2v_reg,mem_66_sv2v_reg,mem_65_sv2v_reg,
  mem_64_sv2v_reg,mem_63_sv2v_reg,mem_62_sv2v_reg,mem_61_sv2v_reg,mem_60_sv2v_reg,
  mem_59_sv2v_reg,mem_58_sv2v_reg,mem_57_sv2v_reg,mem_56_sv2v_reg,mem_55_sv2v_reg,
  mem_54_sv2v_reg,mem_53_sv2v_reg,mem_52_sv2v_reg,mem_51_sv2v_reg,mem_50_sv2v_reg,
  mem_49_sv2v_reg,mem_48_sv2v_reg,mem_47_sv2v_reg,mem_46_sv2v_reg,mem_45_sv2v_reg,
  mem_44_sv2v_reg,mem_43_sv2v_reg,mem_42_sv2v_reg,mem_41_sv2v_reg,mem_40_sv2v_reg,
  mem_39_sv2v_reg,mem_38_sv2v_reg,mem_37_sv2v_reg,mem_36_sv2v_reg,mem_35_sv2v_reg,
  mem_34_sv2v_reg,mem_33_sv2v_reg,mem_32_sv2v_reg,mem_31_sv2v_reg,mem_30_sv2v_reg,
  mem_29_sv2v_reg,mem_28_sv2v_reg,mem_27_sv2v_reg,mem_26_sv2v_reg,mem_25_sv2v_reg,
  mem_24_sv2v_reg,mem_23_sv2v_reg,mem_22_sv2v_reg,mem_21_sv2v_reg,mem_20_sv2v_reg,
  mem_19_sv2v_reg,mem_18_sv2v_reg,mem_17_sv2v_reg,mem_16_sv2v_reg,mem_15_sv2v_reg,
  mem_14_sv2v_reg,mem_13_sv2v_reg,mem_12_sv2v_reg,mem_11_sv2v_reg,mem_10_sv2v_reg,
  mem_9_sv2v_reg,mem_8_sv2v_reg,mem_7_sv2v_reg,mem_6_sv2v_reg,mem_5_sv2v_reg,
  mem_4_sv2v_reg,mem_3_sv2v_reg,mem_2_sv2v_reg,mem_1_sv2v_reg,mem_0_sv2v_reg;
  assign mem[127] = mem_127_sv2v_reg;
  assign mem[126] = mem_126_sv2v_reg;
  assign mem[125] = mem_125_sv2v_reg;
  assign mem[124] = mem_124_sv2v_reg;
  assign mem[123] = mem_123_sv2v_reg;
  assign mem[122] = mem_122_sv2v_reg;
  assign mem[121] = mem_121_sv2v_reg;
  assign mem[120] = mem_120_sv2v_reg;
  assign mem[119] = mem_119_sv2v_reg;
  assign mem[118] = mem_118_sv2v_reg;
  assign mem[117] = mem_117_sv2v_reg;
  assign mem[116] = mem_116_sv2v_reg;
  assign mem[115] = mem_115_sv2v_reg;
  assign mem[114] = mem_114_sv2v_reg;
  assign mem[113] = mem_113_sv2v_reg;
  assign mem[112] = mem_112_sv2v_reg;
  assign mem[111] = mem_111_sv2v_reg;
  assign mem[110] = mem_110_sv2v_reg;
  assign mem[109] = mem_109_sv2v_reg;
  assign mem[108] = mem_108_sv2v_reg;
  assign mem[107] = mem_107_sv2v_reg;
  assign mem[106] = mem_106_sv2v_reg;
  assign mem[105] = mem_105_sv2v_reg;
  assign mem[104] = mem_104_sv2v_reg;
  assign mem[103] = mem_103_sv2v_reg;
  assign mem[102] = mem_102_sv2v_reg;
  assign mem[101] = mem_101_sv2v_reg;
  assign mem[100] = mem_100_sv2v_reg;
  assign mem[99] = mem_99_sv2v_reg;
  assign mem[98] = mem_98_sv2v_reg;
  assign mem[97] = mem_97_sv2v_reg;
  assign mem[96] = mem_96_sv2v_reg;
  assign mem[95] = mem_95_sv2v_reg;
  assign mem[94] = mem_94_sv2v_reg;
  assign mem[93] = mem_93_sv2v_reg;
  assign mem[92] = mem_92_sv2v_reg;
  assign mem[91] = mem_91_sv2v_reg;
  assign mem[90] = mem_90_sv2v_reg;
  assign mem[89] = mem_89_sv2v_reg;
  assign mem[88] = mem_88_sv2v_reg;
  assign mem[87] = mem_87_sv2v_reg;
  assign mem[86] = mem_86_sv2v_reg;
  assign mem[85] = mem_85_sv2v_reg;
  assign mem[84] = mem_84_sv2v_reg;
  assign mem[83] = mem_83_sv2v_reg;
  assign mem[82] = mem_82_sv2v_reg;
  assign mem[81] = mem_81_sv2v_reg;
  assign mem[80] = mem_80_sv2v_reg;
  assign mem[79] = mem_79_sv2v_reg;
  assign mem[78] = mem_78_sv2v_reg;
  assign mem[77] = mem_77_sv2v_reg;
  assign mem[76] = mem_76_sv2v_reg;
  assign mem[75] = mem_75_sv2v_reg;
  assign mem[74] = mem_74_sv2v_reg;
  assign mem[73] = mem_73_sv2v_reg;
  assign mem[72] = mem_72_sv2v_reg;
  assign mem[71] = mem_71_sv2v_reg;
  assign mem[70] = mem_70_sv2v_reg;
  assign mem[69] = mem_69_sv2v_reg;
  assign mem[68] = mem_68_sv2v_reg;
  assign mem[67] = mem_67_sv2v_reg;
  assign mem[66] = mem_66_sv2v_reg;
  assign mem[65] = mem_65_sv2v_reg;
  assign mem[64] = mem_64_sv2v_reg;
  assign mem[63] = mem_63_sv2v_reg;
  assign mem[62] = mem_62_sv2v_reg;
  assign mem[61] = mem_61_sv2v_reg;
  assign mem[60] = mem_60_sv2v_reg;
  assign mem[59] = mem_59_sv2v_reg;
  assign mem[58] = mem_58_sv2v_reg;
  assign mem[57] = mem_57_sv2v_reg;
  assign mem[56] = mem_56_sv2v_reg;
  assign mem[55] = mem_55_sv2v_reg;
  assign mem[54] = mem_54_sv2v_reg;
  assign mem[53] = mem_53_sv2v_reg;
  assign mem[52] = mem_52_sv2v_reg;
  assign mem[51] = mem_51_sv2v_reg;
  assign mem[50] = mem_50_sv2v_reg;
  assign mem[49] = mem_49_sv2v_reg;
  assign mem[48] = mem_48_sv2v_reg;
  assign mem[47] = mem_47_sv2v_reg;
  assign mem[46] = mem_46_sv2v_reg;
  assign mem[45] = mem_45_sv2v_reg;
  assign mem[44] = mem_44_sv2v_reg;
  assign mem[43] = mem_43_sv2v_reg;
  assign mem[42] = mem_42_sv2v_reg;
  assign mem[41] = mem_41_sv2v_reg;
  assign mem[40] = mem_40_sv2v_reg;
  assign mem[39] = mem_39_sv2v_reg;
  assign mem[38] = mem_38_sv2v_reg;
  assign mem[37] = mem_37_sv2v_reg;
  assign mem[36] = mem_36_sv2v_reg;
  assign mem[35] = mem_35_sv2v_reg;
  assign mem[34] = mem_34_sv2v_reg;
  assign mem[33] = mem_33_sv2v_reg;
  assign mem[32] = mem_32_sv2v_reg;
  assign mem[31] = mem_31_sv2v_reg;
  assign mem[30] = mem_30_sv2v_reg;
  assign mem[29] = mem_29_sv2v_reg;
  assign mem[28] = mem_28_sv2v_reg;
  assign mem[27] = mem_27_sv2v_reg;
  assign mem[26] = mem_26_sv2v_reg;
  assign mem[25] = mem_25_sv2v_reg;
  assign mem[24] = mem_24_sv2v_reg;
  assign mem[23] = mem_23_sv2v_reg;
  assign mem[22] = mem_22_sv2v_reg;
  assign mem[21] = mem_21_sv2v_reg;
  assign mem[20] = mem_20_sv2v_reg;
  assign mem[19] = mem_19_sv2v_reg;
  assign mem[18] = mem_18_sv2v_reg;
  assign mem[17] = mem_17_sv2v_reg;
  assign mem[16] = mem_16_sv2v_reg;
  assign mem[15] = mem_15_sv2v_reg;
  assign mem[14] = mem_14_sv2v_reg;
  assign mem[13] = mem_13_sv2v_reg;
  assign mem[12] = mem_12_sv2v_reg;
  assign mem[11] = mem_11_sv2v_reg;
  assign mem[10] = mem_10_sv2v_reg;
  assign mem[9] = mem_9_sv2v_reg;
  assign mem[8] = mem_8_sv2v_reg;
  assign mem[7] = mem_7_sv2v_reg;
  assign mem[6] = mem_6_sv2v_reg;
  assign mem[5] = mem_5_sv2v_reg;
  assign mem[4] = mem_4_sv2v_reg;
  assign mem[3] = mem_3_sv2v_reg;
  assign mem[2] = mem_2_sv2v_reg;
  assign mem[1] = mem_1_sv2v_reg;
  assign mem[0] = mem_0_sv2v_reg;
  assign r_data_o[15] = (N17)? mem[15] : 
                        (N19)? mem[31] : 
                        (N21)? mem[47] : 
                        (N23)? mem[63] : 
                        (N18)? mem[79] : 
                        (N20)? mem[95] : 
                        (N22)? mem[111] : 
                        (N24)? mem[127] : 1'b0;
  assign r_data_o[14] = (N17)? mem[14] : 
                        (N19)? mem[30] : 
                        (N21)? mem[46] : 
                        (N23)? mem[62] : 
                        (N18)? mem[78] : 
                        (N20)? mem[94] : 
                        (N22)? mem[110] : 
                        (N24)? mem[126] : 1'b0;
  assign r_data_o[13] = (N17)? mem[13] : 
                        (N19)? mem[29] : 
                        (N21)? mem[45] : 
                        (N23)? mem[61] : 
                        (N18)? mem[77] : 
                        (N20)? mem[93] : 
                        (N22)? mem[109] : 
                        (N24)? mem[125] : 1'b0;
  assign r_data_o[12] = (N17)? mem[12] : 
                        (N19)? mem[28] : 
                        (N21)? mem[44] : 
                        (N23)? mem[60] : 
                        (N18)? mem[76] : 
                        (N20)? mem[92] : 
                        (N22)? mem[108] : 
                        (N24)? mem[124] : 1'b0;
  assign r_data_o[11] = (N17)? mem[11] : 
                        (N19)? mem[27] : 
                        (N21)? mem[43] : 
                        (N23)? mem[59] : 
                        (N18)? mem[75] : 
                        (N20)? mem[91] : 
                        (N22)? mem[107] : 
                        (N24)? mem[123] : 1'b0;
  assign r_data_o[10] = (N17)? mem[10] : 
                        (N19)? mem[26] : 
                        (N21)? mem[42] : 
                        (N23)? mem[58] : 
                        (N18)? mem[74] : 
                        (N20)? mem[90] : 
                        (N22)? mem[106] : 
                        (N24)? mem[122] : 1'b0;
  assign r_data_o[9] = (N17)? mem[9] : 
                       (N19)? mem[25] : 
                       (N21)? mem[41] : 
                       (N23)? mem[57] : 
                       (N18)? mem[73] : 
                       (N20)? mem[89] : 
                       (N22)? mem[105] : 
                       (N24)? mem[121] : 1'b0;
  assign r_data_o[8] = (N17)? mem[8] : 
                       (N19)? mem[24] : 
                       (N21)? mem[40] : 
                       (N23)? mem[56] : 
                       (N18)? mem[72] : 
                       (N20)? mem[88] : 
                       (N22)? mem[104] : 
                       (N24)? mem[120] : 1'b0;
  assign r_data_o[7] = (N17)? mem[7] : 
                       (N19)? mem[23] : 
                       (N21)? mem[39] : 
                       (N23)? mem[55] : 
                       (N18)? mem[71] : 
                       (N20)? mem[87] : 
                       (N22)? mem[103] : 
                       (N24)? mem[119] : 1'b0;
  assign r_data_o[6] = (N17)? mem[6] : 
                       (N19)? mem[22] : 
                       (N21)? mem[38] : 
                       (N23)? mem[54] : 
                       (N18)? mem[70] : 
                       (N20)? mem[86] : 
                       (N22)? mem[102] : 
                       (N24)? mem[118] : 1'b0;
  assign r_data_o[5] = (N17)? mem[5] : 
                       (N19)? mem[21] : 
                       (N21)? mem[37] : 
                       (N23)? mem[53] : 
                       (N18)? mem[69] : 
                       (N20)? mem[85] : 
                       (N22)? mem[101] : 
                       (N24)? mem[117] : 1'b0;
  assign r_data_o[4] = (N17)? mem[4] : 
                       (N19)? mem[20] : 
                       (N21)? mem[36] : 
                       (N23)? mem[52] : 
                       (N18)? mem[68] : 
                       (N20)? mem[84] : 
                       (N22)? mem[100] : 
                       (N24)? mem[116] : 1'b0;
  assign r_data_o[3] = (N17)? mem[3] : 
                       (N19)? mem[19] : 
                       (N21)? mem[35] : 
                       (N23)? mem[51] : 
                       (N18)? mem[67] : 
                       (N20)? mem[83] : 
                       (N22)? mem[99] : 
                       (N24)? mem[115] : 1'b0;
  assign r_data_o[2] = (N17)? mem[2] : 
                       (N19)? mem[18] : 
                       (N21)? mem[34] : 
                       (N23)? mem[50] : 
                       (N18)? mem[66] : 
                       (N20)? mem[82] : 
                       (N22)? mem[98] : 
                       (N24)? mem[114] : 1'b0;
  assign r_data_o[1] = (N17)? mem[1] : 
                       (N19)? mem[17] : 
                       (N21)? mem[33] : 
                       (N23)? mem[49] : 
                       (N18)? mem[65] : 
                       (N20)? mem[81] : 
                       (N22)? mem[97] : 
                       (N24)? mem[113] : 1'b0;
  assign r_data_o[0] = (N17)? mem[0] : 
                       (N19)? mem[16] : 
                       (N21)? mem[32] : 
                       (N23)? mem[48] : 
                       (N18)? mem[64] : 
                       (N20)? mem[80] : 
                       (N22)? mem[96] : 
                       (N24)? mem[112] : 1'b0;

  always @(posedge w_clk_i) begin
    if(N41) begin
      mem_127_sv2v_reg <= w_data_i[15];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N41) begin
      mem_126_sv2v_reg <= w_data_i[14];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N41) begin
      mem_125_sv2v_reg <= w_data_i[13];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N41) begin
      mem_124_sv2v_reg <= w_data_i[12];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N41) begin
      mem_123_sv2v_reg <= w_data_i[11];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N41) begin
      mem_122_sv2v_reg <= w_data_i[10];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N41) begin
      mem_121_sv2v_reg <= w_data_i[9];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N41) begin
      mem_120_sv2v_reg <= w_data_i[8];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N41) begin
      mem_119_sv2v_reg <= w_data_i[7];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N41) begin
      mem_118_sv2v_reg <= w_data_i[6];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N41) begin
      mem_117_sv2v_reg <= w_data_i[5];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N41) begin
      mem_116_sv2v_reg <= w_data_i[4];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N41) begin
      mem_115_sv2v_reg <= w_data_i[3];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N41) begin
      mem_114_sv2v_reg <= w_data_i[2];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N41) begin
      mem_113_sv2v_reg <= w_data_i[1];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N41) begin
      mem_112_sv2v_reg <= w_data_i[0];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N40) begin
      mem_111_sv2v_reg <= w_data_i[15];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N40) begin
      mem_110_sv2v_reg <= w_data_i[14];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N40) begin
      mem_109_sv2v_reg <= w_data_i[13];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N40) begin
      mem_108_sv2v_reg <= w_data_i[12];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N40) begin
      mem_107_sv2v_reg <= w_data_i[11];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N40) begin
      mem_106_sv2v_reg <= w_data_i[10];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N40) begin
      mem_105_sv2v_reg <= w_data_i[9];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N40) begin
      mem_104_sv2v_reg <= w_data_i[8];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N40) begin
      mem_103_sv2v_reg <= w_data_i[7];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N40) begin
      mem_102_sv2v_reg <= w_data_i[6];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N40) begin
      mem_101_sv2v_reg <= w_data_i[5];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N40) begin
      mem_100_sv2v_reg <= w_data_i[4];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N40) begin
      mem_99_sv2v_reg <= w_data_i[3];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N40) begin
      mem_98_sv2v_reg <= w_data_i[2];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N40) begin
      mem_97_sv2v_reg <= w_data_i[1];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N40) begin
      mem_96_sv2v_reg <= w_data_i[0];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N39) begin
      mem_95_sv2v_reg <= w_data_i[15];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N39) begin
      mem_94_sv2v_reg <= w_data_i[14];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N39) begin
      mem_93_sv2v_reg <= w_data_i[13];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N39) begin
      mem_92_sv2v_reg <= w_data_i[12];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N39) begin
      mem_91_sv2v_reg <= w_data_i[11];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N39) begin
      mem_90_sv2v_reg <= w_data_i[10];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N39) begin
      mem_89_sv2v_reg <= w_data_i[9];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N39) begin
      mem_88_sv2v_reg <= w_data_i[8];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N39) begin
      mem_87_sv2v_reg <= w_data_i[7];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N39) begin
      mem_86_sv2v_reg <= w_data_i[6];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N39) begin
      mem_85_sv2v_reg <= w_data_i[5];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N39) begin
      mem_84_sv2v_reg <= w_data_i[4];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N39) begin
      mem_83_sv2v_reg <= w_data_i[3];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N39) begin
      mem_82_sv2v_reg <= w_data_i[2];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N39) begin
      mem_81_sv2v_reg <= w_data_i[1];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N39) begin
      mem_80_sv2v_reg <= w_data_i[0];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N38) begin
      mem_79_sv2v_reg <= w_data_i[15];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N38) begin
      mem_78_sv2v_reg <= w_data_i[14];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N38) begin
      mem_77_sv2v_reg <= w_data_i[13];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N38) begin
      mem_76_sv2v_reg <= w_data_i[12];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N38) begin
      mem_75_sv2v_reg <= w_data_i[11];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N38) begin
      mem_74_sv2v_reg <= w_data_i[10];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N38) begin
      mem_73_sv2v_reg <= w_data_i[9];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N38) begin
      mem_72_sv2v_reg <= w_data_i[8];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N38) begin
      mem_71_sv2v_reg <= w_data_i[7];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N38) begin
      mem_70_sv2v_reg <= w_data_i[6];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N38) begin
      mem_69_sv2v_reg <= w_data_i[5];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N38) begin
      mem_68_sv2v_reg <= w_data_i[4];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N38) begin
      mem_67_sv2v_reg <= w_data_i[3];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N38) begin
      mem_66_sv2v_reg <= w_data_i[2];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N38) begin
      mem_65_sv2v_reg <= w_data_i[1];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N38) begin
      mem_64_sv2v_reg <= w_data_i[0];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N37) begin
      mem_63_sv2v_reg <= w_data_i[15];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N37) begin
      mem_62_sv2v_reg <= w_data_i[14];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N37) begin
      mem_61_sv2v_reg <= w_data_i[13];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N37) begin
      mem_60_sv2v_reg <= w_data_i[12];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N37) begin
      mem_59_sv2v_reg <= w_data_i[11];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N37) begin
      mem_58_sv2v_reg <= w_data_i[10];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N37) begin
      mem_57_sv2v_reg <= w_data_i[9];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N37) begin
      mem_56_sv2v_reg <= w_data_i[8];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N37) begin
      mem_55_sv2v_reg <= w_data_i[7];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N37) begin
      mem_54_sv2v_reg <= w_data_i[6];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N37) begin
      mem_53_sv2v_reg <= w_data_i[5];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N37) begin
      mem_52_sv2v_reg <= w_data_i[4];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N37) begin
      mem_51_sv2v_reg <= w_data_i[3];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N37) begin
      mem_50_sv2v_reg <= w_data_i[2];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N37) begin
      mem_49_sv2v_reg <= w_data_i[1];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N37) begin
      mem_48_sv2v_reg <= w_data_i[0];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N36) begin
      mem_47_sv2v_reg <= w_data_i[15];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N36) begin
      mem_46_sv2v_reg <= w_data_i[14];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N36) begin
      mem_45_sv2v_reg <= w_data_i[13];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N36) begin
      mem_44_sv2v_reg <= w_data_i[12];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N36) begin
      mem_43_sv2v_reg <= w_data_i[11];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N36) begin
      mem_42_sv2v_reg <= w_data_i[10];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N36) begin
      mem_41_sv2v_reg <= w_data_i[9];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N36) begin
      mem_40_sv2v_reg <= w_data_i[8];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N36) begin
      mem_39_sv2v_reg <= w_data_i[7];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N36) begin
      mem_38_sv2v_reg <= w_data_i[6];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N36) begin
      mem_37_sv2v_reg <= w_data_i[5];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N36) begin
      mem_36_sv2v_reg <= w_data_i[4];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N36) begin
      mem_35_sv2v_reg <= w_data_i[3];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N36) begin
      mem_34_sv2v_reg <= w_data_i[2];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N36) begin
      mem_33_sv2v_reg <= w_data_i[1];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N36) begin
      mem_32_sv2v_reg <= w_data_i[0];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N35) begin
      mem_31_sv2v_reg <= w_data_i[15];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N35) begin
      mem_30_sv2v_reg <= w_data_i[14];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N35) begin
      mem_29_sv2v_reg <= w_data_i[13];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N35) begin
      mem_28_sv2v_reg <= w_data_i[12];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N35) begin
      mem_27_sv2v_reg <= w_data_i[11];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N35) begin
      mem_26_sv2v_reg <= w_data_i[10];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N35) begin
      mem_25_sv2v_reg <= w_data_i[9];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N35) begin
      mem_24_sv2v_reg <= w_data_i[8];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N35) begin
      mem_23_sv2v_reg <= w_data_i[7];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N35) begin
      mem_22_sv2v_reg <= w_data_i[6];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N35) begin
      mem_21_sv2v_reg <= w_data_i[5];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N35) begin
      mem_20_sv2v_reg <= w_data_i[4];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N35) begin
      mem_19_sv2v_reg <= w_data_i[3];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N35) begin
      mem_18_sv2v_reg <= w_data_i[2];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N35) begin
      mem_17_sv2v_reg <= w_data_i[1];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N35) begin
      mem_16_sv2v_reg <= w_data_i[0];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N34) begin
      mem_15_sv2v_reg <= w_data_i[15];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N34) begin
      mem_14_sv2v_reg <= w_data_i[14];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N34) begin
      mem_13_sv2v_reg <= w_data_i[13];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N34) begin
      mem_12_sv2v_reg <= w_data_i[12];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N34) begin
      mem_11_sv2v_reg <= w_data_i[11];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N34) begin
      mem_10_sv2v_reg <= w_data_i[10];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N34) begin
      mem_9_sv2v_reg <= w_data_i[9];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N34) begin
      mem_8_sv2v_reg <= w_data_i[8];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N34) begin
      mem_7_sv2v_reg <= w_data_i[7];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N34) begin
      mem_6_sv2v_reg <= w_data_i[6];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N34) begin
      mem_5_sv2v_reg <= w_data_i[5];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N34) begin
      mem_4_sv2v_reg <= w_data_i[4];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N34) begin
      mem_3_sv2v_reg <= w_data_i[3];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N34) begin
      mem_2_sv2v_reg <= w_data_i[2];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N34) begin
      mem_1_sv2v_reg <= w_data_i[1];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N34) begin
      mem_0_sv2v_reg <= w_data_i[0];
    end 
  end

  assign N42 = w_addr_i[0] & w_addr_i[1];
  assign N33 = N42 & w_addr_i[2];
  assign N43 = N0 & w_addr_i[1];
  assign N0 = ~w_addr_i[0];
  assign N32 = N43 & w_addr_i[2];
  assign N44 = w_addr_i[0] & N1;
  assign N1 = ~w_addr_i[1];
  assign N31 = N44 & w_addr_i[2];
  assign N45 = N2 & N3;
  assign N2 = ~w_addr_i[0];
  assign N3 = ~w_addr_i[1];
  assign N30 = N45 & w_addr_i[2];
  assign N29 = N42 & N4;
  assign N4 = ~w_addr_i[2];
  assign N28 = N43 & N5;
  assign N5 = ~w_addr_i[2];
  assign N27 = N44 & N6;
  assign N6 = ~w_addr_i[2];
  assign N26 = N45 & N7;
  assign N7 = ~w_addr_i[2];
  assign { N41, N40, N39, N38, N37, N36, N35, N34 } = (N8)? { N33, N32, N31, N30, N29, N28, N27, N26 } : 
                                                      (N9)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N8 = w_v_i;
  assign N9 = N25;
  assign N10 = ~r_addr_i[0];
  assign N11 = ~r_addr_i[1];
  assign N12 = N10 & N11;
  assign N13 = N10 & r_addr_i[1];
  assign N14 = r_addr_i[0] & N11;
  assign N15 = r_addr_i[0] & r_addr_i[1];
  assign N16 = ~r_addr_i[2];
  assign N17 = N12 & N16;
  assign N18 = N12 & r_addr_i[2];
  assign N19 = N14 & N16;
  assign N20 = N14 & r_addr_i[2];
  assign N21 = N13 & N16;
  assign N22 = N13 & r_addr_i[2];
  assign N23 = N15 & N16;
  assign N24 = N15 & r_addr_i[2];
  assign N25 = ~w_v_i;

endmodule