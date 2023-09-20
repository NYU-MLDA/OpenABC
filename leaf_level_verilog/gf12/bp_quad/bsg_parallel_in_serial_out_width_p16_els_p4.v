module bsg_parallel_in_serial_out_width_p16_els_p4
(
  clk_i,
  reset_i,
  valid_i,
  data_i,
  ready_o,
  valid_o,
  data_o,
  yumi_i
);

  input [63:0] data_i;
  output [15:0] data_o;
  input clk_i;
  input reset_i;
  input valid_i;
  input yumi_i;
  output ready_o;
  output valid_o;
  wire [15:0] data_o;
  wire ready_o,valid_o,N0,N1,piso_done_tx_n,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,
  N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27;
  wire [1:0] piso_shift_ctr_r;
  wire [0:0] piso_state_n;
  wire [63:0] piso_data_r;
  reg valid_o_sv2v_reg,piso_data_r_63_sv2v_reg,piso_data_r_62_sv2v_reg,
  piso_data_r_61_sv2v_reg,piso_data_r_60_sv2v_reg,piso_data_r_59_sv2v_reg,
  piso_data_r_58_sv2v_reg,piso_data_r_57_sv2v_reg,piso_data_r_56_sv2v_reg,piso_data_r_55_sv2v_reg,
  piso_data_r_54_sv2v_reg,piso_data_r_53_sv2v_reg,piso_data_r_52_sv2v_reg,
  piso_data_r_51_sv2v_reg,piso_data_r_50_sv2v_reg,piso_data_r_49_sv2v_reg,
  piso_data_r_48_sv2v_reg,piso_data_r_47_sv2v_reg,piso_data_r_46_sv2v_reg,piso_data_r_45_sv2v_reg,
  piso_data_r_44_sv2v_reg,piso_data_r_43_sv2v_reg,piso_data_r_42_sv2v_reg,
  piso_data_r_41_sv2v_reg,piso_data_r_40_sv2v_reg,piso_data_r_39_sv2v_reg,
  piso_data_r_38_sv2v_reg,piso_data_r_37_sv2v_reg,piso_data_r_36_sv2v_reg,piso_data_r_35_sv2v_reg,
  piso_data_r_34_sv2v_reg,piso_data_r_33_sv2v_reg,piso_data_r_32_sv2v_reg,
  piso_data_r_31_sv2v_reg,piso_data_r_30_sv2v_reg,piso_data_r_29_sv2v_reg,
  piso_data_r_28_sv2v_reg,piso_data_r_27_sv2v_reg,piso_data_r_26_sv2v_reg,piso_data_r_25_sv2v_reg,
  piso_data_r_24_sv2v_reg,piso_data_r_23_sv2v_reg,piso_data_r_22_sv2v_reg,
  piso_data_r_21_sv2v_reg,piso_data_r_20_sv2v_reg,piso_data_r_19_sv2v_reg,
  piso_data_r_18_sv2v_reg,piso_data_r_17_sv2v_reg,piso_data_r_16_sv2v_reg,piso_data_r_15_sv2v_reg,
  piso_data_r_14_sv2v_reg,piso_data_r_13_sv2v_reg,piso_data_r_12_sv2v_reg,
  piso_data_r_11_sv2v_reg,piso_data_r_10_sv2v_reg,piso_data_r_9_sv2v_reg,piso_data_r_8_sv2v_reg,
  piso_data_r_7_sv2v_reg,piso_data_r_6_sv2v_reg,piso_data_r_5_sv2v_reg,
  piso_data_r_4_sv2v_reg,piso_data_r_3_sv2v_reg,piso_data_r_2_sv2v_reg,piso_data_r_1_sv2v_reg,
  piso_data_r_0_sv2v_reg,piso_shift_ctr_r_1_sv2v_reg,piso_shift_ctr_r_0_sv2v_reg;
  assign valid_o = valid_o_sv2v_reg;
  assign piso_data_r[63] = piso_data_r_63_sv2v_reg;
  assign piso_data_r[62] = piso_data_r_62_sv2v_reg;
  assign piso_data_r[61] = piso_data_r_61_sv2v_reg;
  assign piso_data_r[60] = piso_data_r_60_sv2v_reg;
  assign piso_data_r[59] = piso_data_r_59_sv2v_reg;
  assign piso_data_r[58] = piso_data_r_58_sv2v_reg;
  assign piso_data_r[57] = piso_data_r_57_sv2v_reg;
  assign piso_data_r[56] = piso_data_r_56_sv2v_reg;
  assign piso_data_r[55] = piso_data_r_55_sv2v_reg;
  assign piso_data_r[54] = piso_data_r_54_sv2v_reg;
  assign piso_data_r[53] = piso_data_r_53_sv2v_reg;
  assign piso_data_r[52] = piso_data_r_52_sv2v_reg;
  assign piso_data_r[51] = piso_data_r_51_sv2v_reg;
  assign piso_data_r[50] = piso_data_r_50_sv2v_reg;
  assign piso_data_r[49] = piso_data_r_49_sv2v_reg;
  assign piso_data_r[48] = piso_data_r_48_sv2v_reg;
  assign piso_data_r[47] = piso_data_r_47_sv2v_reg;
  assign piso_data_r[46] = piso_data_r_46_sv2v_reg;
  assign piso_data_r[45] = piso_data_r_45_sv2v_reg;
  assign piso_data_r[44] = piso_data_r_44_sv2v_reg;
  assign piso_data_r[43] = piso_data_r_43_sv2v_reg;
  assign piso_data_r[42] = piso_data_r_42_sv2v_reg;
  assign piso_data_r[41] = piso_data_r_41_sv2v_reg;
  assign piso_data_r[40] = piso_data_r_40_sv2v_reg;
  assign piso_data_r[39] = piso_data_r_39_sv2v_reg;
  assign piso_data_r[38] = piso_data_r_38_sv2v_reg;
  assign piso_data_r[37] = piso_data_r_37_sv2v_reg;
  assign piso_data_r[36] = piso_data_r_36_sv2v_reg;
  assign piso_data_r[35] = piso_data_r_35_sv2v_reg;
  assign piso_data_r[34] = piso_data_r_34_sv2v_reg;
  assign piso_data_r[33] = piso_data_r_33_sv2v_reg;
  assign piso_data_r[32] = piso_data_r_32_sv2v_reg;
  assign piso_data_r[31] = piso_data_r_31_sv2v_reg;
  assign piso_data_r[30] = piso_data_r_30_sv2v_reg;
  assign piso_data_r[29] = piso_data_r_29_sv2v_reg;
  assign piso_data_r[28] = piso_data_r_28_sv2v_reg;
  assign piso_data_r[27] = piso_data_r_27_sv2v_reg;
  assign piso_data_r[26] = piso_data_r_26_sv2v_reg;
  assign piso_data_r[25] = piso_data_r_25_sv2v_reg;
  assign piso_data_r[24] = piso_data_r_24_sv2v_reg;
  assign piso_data_r[23] = piso_data_r_23_sv2v_reg;
  assign piso_data_r[22] = piso_data_r_22_sv2v_reg;
  assign piso_data_r[21] = piso_data_r_21_sv2v_reg;
  assign piso_data_r[20] = piso_data_r_20_sv2v_reg;
  assign piso_data_r[19] = piso_data_r_19_sv2v_reg;
  assign piso_data_r[18] = piso_data_r_18_sv2v_reg;
  assign piso_data_r[17] = piso_data_r_17_sv2v_reg;
  assign piso_data_r[16] = piso_data_r_16_sv2v_reg;
  assign piso_data_r[15] = piso_data_r_15_sv2v_reg;
  assign piso_data_r[14] = piso_data_r_14_sv2v_reg;
  assign piso_data_r[13] = piso_data_r_13_sv2v_reg;
  assign piso_data_r[12] = piso_data_r_12_sv2v_reg;
  assign piso_data_r[11] = piso_data_r_11_sv2v_reg;
  assign piso_data_r[10] = piso_data_r_10_sv2v_reg;
  assign piso_data_r[9] = piso_data_r_9_sv2v_reg;
  assign piso_data_r[8] = piso_data_r_8_sv2v_reg;
  assign piso_data_r[7] = piso_data_r_7_sv2v_reg;
  assign piso_data_r[6] = piso_data_r_6_sv2v_reg;
  assign piso_data_r[5] = piso_data_r_5_sv2v_reg;
  assign piso_data_r[4] = piso_data_r_4_sv2v_reg;
  assign piso_data_r[3] = piso_data_r_3_sv2v_reg;
  assign piso_data_r[2] = piso_data_r_2_sv2v_reg;
  assign piso_data_r[1] = piso_data_r_1_sv2v_reg;
  assign piso_data_r[0] = piso_data_r_0_sv2v_reg;
  assign piso_shift_ctr_r[1] = piso_shift_ctr_r_1_sv2v_reg;
  assign piso_shift_ctr_r[0] = piso_shift_ctr_r_0_sv2v_reg;

  always @(posedge clk_i) begin
    if(reset_i) begin
      valid_o_sv2v_reg <= 1'b0;
    end else if(N3) begin
      valid_o_sv2v_reg <= piso_state_n[0];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_63_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_63_sv2v_reg <= data_i[63];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_62_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_62_sv2v_reg <= data_i[62];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_61_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_61_sv2v_reg <= data_i[61];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_60_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_60_sv2v_reg <= data_i[60];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_59_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_59_sv2v_reg <= data_i[59];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_58_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_58_sv2v_reg <= data_i[58];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_57_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_57_sv2v_reg <= data_i[57];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_56_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_56_sv2v_reg <= data_i[56];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_55_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_55_sv2v_reg <= data_i[55];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_54_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_54_sv2v_reg <= data_i[54];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_53_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_53_sv2v_reg <= data_i[53];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_52_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_52_sv2v_reg <= data_i[52];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_51_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_51_sv2v_reg <= data_i[51];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_50_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_50_sv2v_reg <= data_i[50];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_49_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_49_sv2v_reg <= data_i[49];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_48_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_48_sv2v_reg <= data_i[48];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_47_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_47_sv2v_reg <= data_i[47];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_46_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_46_sv2v_reg <= data_i[46];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_45_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_45_sv2v_reg <= data_i[45];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_44_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_44_sv2v_reg <= data_i[44];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_43_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_43_sv2v_reg <= data_i[43];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_42_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_42_sv2v_reg <= data_i[42];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_41_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_41_sv2v_reg <= data_i[41];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_40_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_40_sv2v_reg <= data_i[40];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_39_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_39_sv2v_reg <= data_i[39];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_38_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_38_sv2v_reg <= data_i[38];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_37_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_37_sv2v_reg <= data_i[37];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_36_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_36_sv2v_reg <= data_i[36];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_35_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_35_sv2v_reg <= data_i[35];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_34_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_34_sv2v_reg <= data_i[34];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_33_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_33_sv2v_reg <= data_i[33];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_32_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_32_sv2v_reg <= data_i[32];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_31_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_31_sv2v_reg <= data_i[31];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_30_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_30_sv2v_reg <= data_i[30];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_29_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_29_sv2v_reg <= data_i[29];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_28_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_28_sv2v_reg <= data_i[28];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_27_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_27_sv2v_reg <= data_i[27];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_26_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_26_sv2v_reg <= data_i[26];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_25_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_25_sv2v_reg <= data_i[25];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_24_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_24_sv2v_reg <= data_i[24];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_23_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_23_sv2v_reg <= data_i[23];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_22_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_22_sv2v_reg <= data_i[22];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_21_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_21_sv2v_reg <= data_i[21];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_20_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_20_sv2v_reg <= data_i[20];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_19_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_19_sv2v_reg <= data_i[19];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_18_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_18_sv2v_reg <= data_i[18];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_17_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_17_sv2v_reg <= data_i[17];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_16_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_16_sv2v_reg <= data_i[16];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_15_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_15_sv2v_reg <= data_i[15];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_14_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_14_sv2v_reg <= data_i[14];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_13_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_13_sv2v_reg <= data_i[13];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_12_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_12_sv2v_reg <= data_i[12];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_11_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_11_sv2v_reg <= data_i[11];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_10_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_10_sv2v_reg <= data_i[10];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_9_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_9_sv2v_reg <= data_i[9];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_8_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_8_sv2v_reg <= data_i[8];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_7_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_7_sv2v_reg <= data_i[7];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_6_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_6_sv2v_reg <= data_i[6];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_5_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_5_sv2v_reg <= data_i[5];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_4_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_4_sv2v_reg <= data_i[4];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_3_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_3_sv2v_reg <= data_i[3];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_2_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_2_sv2v_reg <= data_i[2];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_1_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_1_sv2v_reg <= data_i[1];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_data_r_0_sv2v_reg <= 1'b0;
    end else if(N6) begin
      piso_data_r_0_sv2v_reg <= data_i[0];
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_shift_ctr_r_1_sv2v_reg <= 1'b0;
    end else if(N22) begin
      piso_shift_ctr_r_1_sv2v_reg <= N10;
    end 
  end


  always @(posedge clk_i) begin
    if(reset_i) begin
      piso_shift_ctr_r_0_sv2v_reg <= 1'b0;
    end else if(N22) begin
      piso_shift_ctr_r_0_sv2v_reg <= N9;
    end 
  end

  assign data_o[15] = (N17)? piso_data_r[15] : 
                      (N19)? piso_data_r[31] : 
                      (N18)? piso_data_r[47] : 
                      (N20)? piso_data_r[63] : 1'b0;
  assign data_o[14] = (N17)? piso_data_r[14] : 
                      (N19)? piso_data_r[30] : 
                      (N18)? piso_data_r[46] : 
                      (N20)? piso_data_r[62] : 1'b0;
  assign data_o[13] = (N17)? piso_data_r[13] : 
                      (N19)? piso_data_r[29] : 
                      (N18)? piso_data_r[45] : 
                      (N20)? piso_data_r[61] : 1'b0;
  assign data_o[12] = (N17)? piso_data_r[12] : 
                      (N19)? piso_data_r[28] : 
                      (N18)? piso_data_r[44] : 
                      (N20)? piso_data_r[60] : 1'b0;
  assign data_o[11] = (N17)? piso_data_r[11] : 
                      (N19)? piso_data_r[27] : 
                      (N18)? piso_data_r[43] : 
                      (N20)? piso_data_r[59] : 1'b0;
  assign data_o[10] = (N17)? piso_data_r[10] : 
                      (N19)? piso_data_r[26] : 
                      (N18)? piso_data_r[42] : 
                      (N20)? piso_data_r[58] : 1'b0;
  assign data_o[9] = (N17)? piso_data_r[9] : 
                     (N19)? piso_data_r[25] : 
                     (N18)? piso_data_r[41] : 
                     (N20)? piso_data_r[57] : 1'b0;
  assign data_o[8] = (N17)? piso_data_r[8] : 
                     (N19)? piso_data_r[24] : 
                     (N18)? piso_data_r[40] : 
                     (N20)? piso_data_r[56] : 1'b0;
  assign data_o[7] = (N17)? piso_data_r[7] : 
                     (N19)? piso_data_r[23] : 
                     (N18)? piso_data_r[39] : 
                     (N20)? piso_data_r[55] : 1'b0;
  assign data_o[6] = (N17)? piso_data_r[6] : 
                     (N19)? piso_data_r[22] : 
                     (N18)? piso_data_r[38] : 
                     (N20)? piso_data_r[54] : 1'b0;
  assign data_o[5] = (N17)? piso_data_r[5] : 
                     (N19)? piso_data_r[21] : 
                     (N18)? piso_data_r[37] : 
                     (N20)? piso_data_r[53] : 1'b0;
  assign data_o[4] = (N17)? piso_data_r[4] : 
                     (N19)? piso_data_r[20] : 
                     (N18)? piso_data_r[36] : 
                     (N20)? piso_data_r[52] : 1'b0;
  assign data_o[3] = (N17)? piso_data_r[3] : 
                     (N19)? piso_data_r[19] : 
                     (N18)? piso_data_r[35] : 
                     (N20)? piso_data_r[51] : 1'b0;
  assign data_o[2] = (N17)? piso_data_r[2] : 
                     (N19)? piso_data_r[18] : 
                     (N18)? piso_data_r[34] : 
                     (N20)? piso_data_r[50] : 1'b0;
  assign data_o[1] = (N17)? piso_data_r[1] : 
                     (N19)? piso_data_r[17] : 
                     (N18)? piso_data_r[33] : 
                     (N20)? piso_data_r[49] : 1'b0;
  assign data_o[0] = (N17)? piso_data_r[0] : 
                     (N19)? piso_data_r[16] : 
                     (N18)? piso_data_r[32] : 
                     (N20)? piso_data_r[48] : 1'b0;
  assign N23 = ~valid_o;
  assign N24 = piso_shift_ctr_r[0] & piso_shift_ctr_r[1];
  assign { N14, N13 } = piso_shift_ctr_r + 1'b1;
  assign piso_state_n[0] = (N0)? 1'b1 : 
                           (N5)? 1'b0 : 1'b0;
  assign N0 = N2;
  assign { N10, N9 } = (N1)? { 1'b0, 1'b0 } : 
                       (N8)? { N14, N13 } : 1'b0;
  assign N1 = N7;
  assign piso_done_tx_n = N25 & yumi_i;
  assign N25 = valid_o & N24;
  assign ready_o = N23 | piso_done_tx_n;
  assign N2 = ready_o & valid_i;
  assign N3 = piso_done_tx_n | N2;
  assign N4 = ~N2;
  assign N5 = piso_done_tx_n & N4;
  assign N6 = ready_o & valid_i;
  assign N7 = ready_o & valid_i;
  assign N8 = ~N7;
  assign N11 = N26 & N27;
  assign N26 = valid_o & yumi_i;
  assign N27 = ~piso_done_tx_n;
  assign N12 = ~N11;
  assign N15 = ~piso_shift_ctr_r[0];
  assign N16 = ~piso_shift_ctr_r[1];
  assign N17 = N15 & N16;
  assign N18 = N15 & piso_shift_ctr_r[1];
  assign N19 = piso_shift_ctr_r[0] & N16;
  assign N20 = piso_shift_ctr_r[0] & piso_shift_ctr_r[1];
  assign N21 = N12 & N8;
  assign N22 = ~N21;

endmodule