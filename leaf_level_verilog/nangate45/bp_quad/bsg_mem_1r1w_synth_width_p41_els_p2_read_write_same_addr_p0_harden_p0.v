module bsg_mem_1r1w_synth_width_p41_els_p2_read_write_same_addr_p0_harden_p0
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

  input [0:0] w_addr_i;
  input [40:0] w_data_i;
  input [0:0] r_addr_i;
  output [40:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [40:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  wire [81:0] mem;
  reg mem_81_sv2v_reg,mem_80_sv2v_reg,mem_79_sv2v_reg,mem_78_sv2v_reg,mem_77_sv2v_reg,
  mem_76_sv2v_reg,mem_75_sv2v_reg,mem_74_sv2v_reg,mem_73_sv2v_reg,mem_72_sv2v_reg,
  mem_71_sv2v_reg,mem_70_sv2v_reg,mem_69_sv2v_reg,mem_68_sv2v_reg,mem_67_sv2v_reg,
  mem_66_sv2v_reg,mem_65_sv2v_reg,mem_64_sv2v_reg,mem_63_sv2v_reg,mem_62_sv2v_reg,
  mem_61_sv2v_reg,mem_60_sv2v_reg,mem_59_sv2v_reg,mem_58_sv2v_reg,mem_57_sv2v_reg,
  mem_56_sv2v_reg,mem_55_sv2v_reg,mem_54_sv2v_reg,mem_53_sv2v_reg,mem_52_sv2v_reg,
  mem_51_sv2v_reg,mem_50_sv2v_reg,mem_49_sv2v_reg,mem_48_sv2v_reg,mem_47_sv2v_reg,
  mem_46_sv2v_reg,mem_45_sv2v_reg,mem_44_sv2v_reg,mem_43_sv2v_reg,mem_42_sv2v_reg,
  mem_41_sv2v_reg,mem_40_sv2v_reg,mem_39_sv2v_reg,mem_38_sv2v_reg,mem_37_sv2v_reg,
  mem_36_sv2v_reg,mem_35_sv2v_reg,mem_34_sv2v_reg,mem_33_sv2v_reg,mem_32_sv2v_reg,
  mem_31_sv2v_reg,mem_30_sv2v_reg,mem_29_sv2v_reg,mem_28_sv2v_reg,mem_27_sv2v_reg,
  mem_26_sv2v_reg,mem_25_sv2v_reg,mem_24_sv2v_reg,mem_23_sv2v_reg,mem_22_sv2v_reg,
  mem_21_sv2v_reg,mem_20_sv2v_reg,mem_19_sv2v_reg,mem_18_sv2v_reg,mem_17_sv2v_reg,
  mem_16_sv2v_reg,mem_15_sv2v_reg,mem_14_sv2v_reg,mem_13_sv2v_reg,mem_12_sv2v_reg,
  mem_11_sv2v_reg,mem_10_sv2v_reg,mem_9_sv2v_reg,mem_8_sv2v_reg,mem_7_sv2v_reg,
  mem_6_sv2v_reg,mem_5_sv2v_reg,mem_4_sv2v_reg,mem_3_sv2v_reg,mem_2_sv2v_reg,
  mem_1_sv2v_reg,mem_0_sv2v_reg;
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
  assign r_data_o[40] = (N3)? mem[40] : 
                        (N0)? mem[81] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[39] = (N3)? mem[39] : 
                        (N0)? mem[80] : 1'b0;
  assign r_data_o[38] = (N3)? mem[38] : 
                        (N0)? mem[79] : 1'b0;
  assign r_data_o[37] = (N3)? mem[37] : 
                        (N0)? mem[78] : 1'b0;
  assign r_data_o[36] = (N3)? mem[36] : 
                        (N0)? mem[77] : 1'b0;
  assign r_data_o[35] = (N3)? mem[35] : 
                        (N0)? mem[76] : 1'b0;
  assign r_data_o[34] = (N3)? mem[34] : 
                        (N0)? mem[75] : 1'b0;
  assign r_data_o[33] = (N3)? mem[33] : 
                        (N0)? mem[74] : 1'b0;
  assign r_data_o[32] = (N3)? mem[32] : 
                        (N0)? mem[73] : 1'b0;
  assign r_data_o[31] = (N3)? mem[31] : 
                        (N0)? mem[72] : 1'b0;
  assign r_data_o[30] = (N3)? mem[30] : 
                        (N0)? mem[71] : 1'b0;
  assign r_data_o[29] = (N3)? mem[29] : 
                        (N0)? mem[70] : 1'b0;
  assign r_data_o[28] = (N3)? mem[28] : 
                        (N0)? mem[69] : 1'b0;
  assign r_data_o[27] = (N3)? mem[27] : 
                        (N0)? mem[68] : 1'b0;
  assign r_data_o[26] = (N3)? mem[26] : 
                        (N0)? mem[67] : 1'b0;
  assign r_data_o[25] = (N3)? mem[25] : 
                        (N0)? mem[66] : 1'b0;
  assign r_data_o[24] = (N3)? mem[24] : 
                        (N0)? mem[65] : 1'b0;
  assign r_data_o[23] = (N3)? mem[23] : 
                        (N0)? mem[64] : 1'b0;
  assign r_data_o[22] = (N3)? mem[22] : 
                        (N0)? mem[63] : 1'b0;
  assign r_data_o[21] = (N3)? mem[21] : 
                        (N0)? mem[62] : 1'b0;
  assign r_data_o[20] = (N3)? mem[20] : 
                        (N0)? mem[61] : 1'b0;
  assign r_data_o[19] = (N3)? mem[19] : 
                        (N0)? mem[60] : 1'b0;
  assign r_data_o[18] = (N3)? mem[18] : 
                        (N0)? mem[59] : 1'b0;
  assign r_data_o[17] = (N3)? mem[17] : 
                        (N0)? mem[58] : 1'b0;
  assign r_data_o[16] = (N3)? mem[16] : 
                        (N0)? mem[57] : 1'b0;
  assign r_data_o[15] = (N3)? mem[15] : 
                        (N0)? mem[56] : 1'b0;
  assign r_data_o[14] = (N3)? mem[14] : 
                        (N0)? mem[55] : 1'b0;
  assign r_data_o[13] = (N3)? mem[13] : 
                        (N0)? mem[54] : 1'b0;
  assign r_data_o[12] = (N3)? mem[12] : 
                        (N0)? mem[53] : 1'b0;
  assign r_data_o[11] = (N3)? mem[11] : 
                        (N0)? mem[52] : 1'b0;
  assign r_data_o[10] = (N3)? mem[10] : 
                        (N0)? mem[51] : 1'b0;
  assign r_data_o[9] = (N3)? mem[9] : 
                       (N0)? mem[50] : 1'b0;
  assign r_data_o[8] = (N3)? mem[8] : 
                       (N0)? mem[49] : 1'b0;
  assign r_data_o[7] = (N3)? mem[7] : 
                       (N0)? mem[48] : 1'b0;
  assign r_data_o[6] = (N3)? mem[6] : 
                       (N0)? mem[47] : 1'b0;
  assign r_data_o[5] = (N3)? mem[5] : 
                       (N0)? mem[46] : 1'b0;
  assign r_data_o[4] = (N3)? mem[4] : 
                       (N0)? mem[45] : 1'b0;
  assign r_data_o[3] = (N3)? mem[3] : 
                       (N0)? mem[44] : 1'b0;
  assign r_data_o[2] = (N3)? mem[2] : 
                       (N0)? mem[43] : 1'b0;
  assign r_data_o[1] = (N3)? mem[1] : 
                       (N0)? mem[42] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[41] : 1'b0;

  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_81_sv2v_reg <= w_data_i[40];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_80_sv2v_reg <= w_data_i[39];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_79_sv2v_reg <= w_data_i[38];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_78_sv2v_reg <= w_data_i[37];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_77_sv2v_reg <= w_data_i[36];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_76_sv2v_reg <= w_data_i[35];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_75_sv2v_reg <= w_data_i[34];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_74_sv2v_reg <= w_data_i[33];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_73_sv2v_reg <= w_data_i[32];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_72_sv2v_reg <= w_data_i[31];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_71_sv2v_reg <= w_data_i[30];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_70_sv2v_reg <= w_data_i[29];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_69_sv2v_reg <= w_data_i[28];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_68_sv2v_reg <= w_data_i[27];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_67_sv2v_reg <= w_data_i[26];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_66_sv2v_reg <= w_data_i[25];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_65_sv2v_reg <= w_data_i[24];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_64_sv2v_reg <= w_data_i[23];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_63_sv2v_reg <= w_data_i[22];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_62_sv2v_reg <= w_data_i[21];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_61_sv2v_reg <= w_data_i[20];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_60_sv2v_reg <= w_data_i[19];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_59_sv2v_reg <= w_data_i[18];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_58_sv2v_reg <= w_data_i[17];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_57_sv2v_reg <= w_data_i[16];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_56_sv2v_reg <= w_data_i[15];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_55_sv2v_reg <= w_data_i[14];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_54_sv2v_reg <= w_data_i[13];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_53_sv2v_reg <= w_data_i[12];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_52_sv2v_reg <= w_data_i[11];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_51_sv2v_reg <= w_data_i[10];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_50_sv2v_reg <= w_data_i[9];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_49_sv2v_reg <= w_data_i[8];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_48_sv2v_reg <= w_data_i[7];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_47_sv2v_reg <= w_data_i[6];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_46_sv2v_reg <= w_data_i[5];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_45_sv2v_reg <= w_data_i[4];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_44_sv2v_reg <= w_data_i[3];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_43_sv2v_reg <= w_data_i[2];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_42_sv2v_reg <= w_data_i[1];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem_41_sv2v_reg <= w_data_i[0];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_40_sv2v_reg <= w_data_i[40];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_39_sv2v_reg <= w_data_i[39];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_38_sv2v_reg <= w_data_i[38];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_37_sv2v_reg <= w_data_i[37];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_36_sv2v_reg <= w_data_i[36];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_35_sv2v_reg <= w_data_i[35];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_34_sv2v_reg <= w_data_i[34];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_33_sv2v_reg <= w_data_i[33];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_32_sv2v_reg <= w_data_i[32];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_31_sv2v_reg <= w_data_i[31];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_30_sv2v_reg <= w_data_i[30];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_29_sv2v_reg <= w_data_i[29];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_28_sv2v_reg <= w_data_i[28];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_27_sv2v_reg <= w_data_i[27];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_26_sv2v_reg <= w_data_i[26];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_25_sv2v_reg <= w_data_i[25];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_24_sv2v_reg <= w_data_i[24];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_23_sv2v_reg <= w_data_i[23];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_22_sv2v_reg <= w_data_i[22];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_21_sv2v_reg <= w_data_i[21];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_20_sv2v_reg <= w_data_i[20];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_19_sv2v_reg <= w_data_i[19];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_18_sv2v_reg <= w_data_i[18];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_17_sv2v_reg <= w_data_i[17];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_16_sv2v_reg <= w_data_i[16];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_15_sv2v_reg <= w_data_i[15];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_14_sv2v_reg <= w_data_i[14];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_13_sv2v_reg <= w_data_i[13];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_12_sv2v_reg <= w_data_i[12];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_11_sv2v_reg <= w_data_i[11];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_10_sv2v_reg <= w_data_i[10];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_9_sv2v_reg <= w_data_i[9];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_8_sv2v_reg <= w_data_i[8];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_7_sv2v_reg <= w_data_i[7];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_6_sv2v_reg <= w_data_i[6];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_5_sv2v_reg <= w_data_i[5];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_4_sv2v_reg <= w_data_i[4];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_3_sv2v_reg <= w_data_i[3];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_2_sv2v_reg <= w_data_i[2];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_1_sv2v_reg <= w_data_i[1];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem_0_sv2v_reg <= w_data_i[0];
    end 
  end

  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

endmodule