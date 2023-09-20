module bsg_dff_width_p39
(
  clk_i,
  data_i,
  data_o
);

  input [38:0] data_i;
  output [38:0] data_o;
  input clk_i;
  wire [38:0] data_o;
  reg data_o_38_sv2v_reg,data_o_37_sv2v_reg,data_o_36_sv2v_reg,data_o_35_sv2v_reg,
  data_o_34_sv2v_reg,data_o_33_sv2v_reg,data_o_32_sv2v_reg,data_o_31_sv2v_reg,
  data_o_30_sv2v_reg,data_o_29_sv2v_reg,data_o_28_sv2v_reg,data_o_27_sv2v_reg,
  data_o_26_sv2v_reg,data_o_25_sv2v_reg,data_o_24_sv2v_reg,data_o_23_sv2v_reg,
  data_o_22_sv2v_reg,data_o_21_sv2v_reg,data_o_20_sv2v_reg,data_o_19_sv2v_reg,data_o_18_sv2v_reg,
  data_o_17_sv2v_reg,data_o_16_sv2v_reg,data_o_15_sv2v_reg,data_o_14_sv2v_reg,
  data_o_13_sv2v_reg,data_o_12_sv2v_reg,data_o_11_sv2v_reg,data_o_10_sv2v_reg,
  data_o_9_sv2v_reg,data_o_8_sv2v_reg,data_o_7_sv2v_reg,data_o_6_sv2v_reg,
  data_o_5_sv2v_reg,data_o_4_sv2v_reg,data_o_3_sv2v_reg,data_o_2_sv2v_reg,data_o_1_sv2v_reg,
  data_o_0_sv2v_reg;
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
      data_o_38_sv2v_reg <= data_i[38];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_37_sv2v_reg <= data_i[37];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_36_sv2v_reg <= data_i[36];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_35_sv2v_reg <= data_i[35];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_34_sv2v_reg <= data_i[34];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_33_sv2v_reg <= data_i[33];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_32_sv2v_reg <= data_i[32];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_31_sv2v_reg <= data_i[31];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_30_sv2v_reg <= data_i[30];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_29_sv2v_reg <= data_i[29];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_28_sv2v_reg <= data_i[28];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_27_sv2v_reg <= data_i[27];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_26_sv2v_reg <= data_i[26];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_25_sv2v_reg <= data_i[25];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_24_sv2v_reg <= data_i[24];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_23_sv2v_reg <= data_i[23];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_22_sv2v_reg <= data_i[22];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_21_sv2v_reg <= data_i[21];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_20_sv2v_reg <= data_i[20];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_19_sv2v_reg <= data_i[19];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_18_sv2v_reg <= data_i[18];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_17_sv2v_reg <= data_i[17];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_16_sv2v_reg <= data_i[16];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_15_sv2v_reg <= data_i[15];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_14_sv2v_reg <= data_i[14];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_13_sv2v_reg <= data_i[13];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_12_sv2v_reg <= data_i[12];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_11_sv2v_reg <= data_i[11];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_10_sv2v_reg <= data_i[10];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_9_sv2v_reg <= data_i[9];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_8_sv2v_reg <= data_i[8];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_7_sv2v_reg <= data_i[7];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_6_sv2v_reg <= data_i[6];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_5_sv2v_reg <= data_i[5];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_4_sv2v_reg <= data_i[4];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_3_sv2v_reg <= data_i[3];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_2_sv2v_reg <= data_i[2];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_1_sv2v_reg <= data_i[1];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_0_sv2v_reg <= data_i[0];
    end 
  end


endmodule