module bsg_link_iddr_phy_width_p9
(
  clk_i,
  data_i,
  data_r_o
);

  input [8:0] data_i;
  output [17:0] data_r_o;
  input clk_i;
  wire [17:0] data_r_o;
  wire N0;
  wire [8:0] data_p_r,data_n_r;
  reg data_p_r_8_sv2v_reg,data_p_r_7_sv2v_reg,data_p_r_6_sv2v_reg,data_p_r_5_sv2v_reg,
  data_p_r_4_sv2v_reg,data_p_r_3_sv2v_reg,data_p_r_2_sv2v_reg,data_p_r_1_sv2v_reg,
  data_p_r_0_sv2v_reg,data_n_r_8_sv2v_reg,data_n_r_7_sv2v_reg,data_n_r_6_sv2v_reg,
  data_n_r_5_sv2v_reg,data_n_r_4_sv2v_reg,data_n_r_3_sv2v_reg,data_n_r_2_sv2v_reg,
  data_n_r_1_sv2v_reg,data_n_r_0_sv2v_reg,data_r_o_17_sv2v_reg,
  data_r_o_16_sv2v_reg,data_r_o_15_sv2v_reg,data_r_o_14_sv2v_reg,data_r_o_13_sv2v_reg,
  data_r_o_12_sv2v_reg,data_r_o_11_sv2v_reg,data_r_o_10_sv2v_reg,data_r_o_9_sv2v_reg,
  data_r_o_8_sv2v_reg,data_r_o_7_sv2v_reg,data_r_o_6_sv2v_reg,data_r_o_5_sv2v_reg,
  data_r_o_4_sv2v_reg,data_r_o_3_sv2v_reg,data_r_o_2_sv2v_reg,data_r_o_1_sv2v_reg,
  data_r_o_0_sv2v_reg;
  assign data_p_r[8] = data_p_r_8_sv2v_reg;
  assign data_p_r[7] = data_p_r_7_sv2v_reg;
  assign data_p_r[6] = data_p_r_6_sv2v_reg;
  assign data_p_r[5] = data_p_r_5_sv2v_reg;
  assign data_p_r[4] = data_p_r_4_sv2v_reg;
  assign data_p_r[3] = data_p_r_3_sv2v_reg;
  assign data_p_r[2] = data_p_r_2_sv2v_reg;
  assign data_p_r[1] = data_p_r_1_sv2v_reg;
  assign data_p_r[0] = data_p_r_0_sv2v_reg;
  assign data_n_r[8] = data_n_r_8_sv2v_reg;
  assign data_n_r[7] = data_n_r_7_sv2v_reg;
  assign data_n_r[6] = data_n_r_6_sv2v_reg;
  assign data_n_r[5] = data_n_r_5_sv2v_reg;
  assign data_n_r[4] = data_n_r_4_sv2v_reg;
  assign data_n_r[3] = data_n_r_3_sv2v_reg;
  assign data_n_r[2] = data_n_r_2_sv2v_reg;
  assign data_n_r[1] = data_n_r_1_sv2v_reg;
  assign data_n_r[0] = data_n_r_0_sv2v_reg;
  assign data_r_o[17] = data_r_o_17_sv2v_reg;
  assign data_r_o[16] = data_r_o_16_sv2v_reg;
  assign data_r_o[15] = data_r_o_15_sv2v_reg;
  assign data_r_o[14] = data_r_o_14_sv2v_reg;
  assign data_r_o[13] = data_r_o_13_sv2v_reg;
  assign data_r_o[12] = data_r_o_12_sv2v_reg;
  assign data_r_o[11] = data_r_o_11_sv2v_reg;
  assign data_r_o[10] = data_r_o_10_sv2v_reg;
  assign data_r_o[9] = data_r_o_9_sv2v_reg;
  assign data_r_o[8] = data_r_o_8_sv2v_reg;
  assign data_r_o[7] = data_r_o_7_sv2v_reg;
  assign data_r_o[6] = data_r_o_6_sv2v_reg;
  assign data_r_o[5] = data_r_o_5_sv2v_reg;
  assign data_r_o[4] = data_r_o_4_sv2v_reg;
  assign data_r_o[3] = data_r_o_3_sv2v_reg;
  assign data_r_o[2] = data_r_o_2_sv2v_reg;
  assign data_r_o[1] = data_r_o_1_sv2v_reg;
  assign data_r_o[0] = data_r_o_0_sv2v_reg;

  always @(posedge clk_i) begin
    if(1'b1) begin
      data_p_r_8_sv2v_reg <= data_i[8];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_p_r_7_sv2v_reg <= data_i[7];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_p_r_6_sv2v_reg <= data_i[6];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_p_r_5_sv2v_reg <= data_i[5];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_p_r_4_sv2v_reg <= data_i[4];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_p_r_3_sv2v_reg <= data_i[3];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_p_r_2_sv2v_reg <= data_i[2];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_p_r_1_sv2v_reg <= data_i[1];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_p_r_0_sv2v_reg <= data_i[0];
    end 
  end


  always @(posedge N0) begin
    if(1'b1) begin
      data_n_r_8_sv2v_reg <= data_i[8];
    end 
  end


  always @(posedge N0) begin
    if(1'b1) begin
      data_n_r_7_sv2v_reg <= data_i[7];
    end 
  end


  always @(posedge N0) begin
    if(1'b1) begin
      data_n_r_6_sv2v_reg <= data_i[6];
    end 
  end


  always @(posedge N0) begin
    if(1'b1) begin
      data_n_r_5_sv2v_reg <= data_i[5];
    end 
  end


  always @(posedge N0) begin
    if(1'b1) begin
      data_n_r_4_sv2v_reg <= data_i[4];
    end 
  end


  always @(posedge N0) begin
    if(1'b1) begin
      data_n_r_3_sv2v_reg <= data_i[3];
    end 
  end


  always @(posedge N0) begin
    if(1'b1) begin
      data_n_r_2_sv2v_reg <= data_i[2];
    end 
  end


  always @(posedge N0) begin
    if(1'b1) begin
      data_n_r_1_sv2v_reg <= data_i[1];
    end 
  end


  always @(posedge N0) begin
    if(1'b1) begin
      data_n_r_0_sv2v_reg <= data_i[0];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_17_sv2v_reg <= data_n_r[8];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_16_sv2v_reg <= data_n_r[7];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_15_sv2v_reg <= data_n_r[6];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_14_sv2v_reg <= data_n_r[5];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_13_sv2v_reg <= data_n_r[4];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_12_sv2v_reg <= data_n_r[3];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_11_sv2v_reg <= data_n_r[2];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_10_sv2v_reg <= data_n_r[1];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_9_sv2v_reg <= data_n_r[0];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_8_sv2v_reg <= data_p_r[8];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_7_sv2v_reg <= data_p_r[7];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_6_sv2v_reg <= data_p_r[6];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_5_sv2v_reg <= data_p_r[5];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_4_sv2v_reg <= data_p_r[4];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_3_sv2v_reg <= data_p_r[3];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_2_sv2v_reg <= data_p_r[2];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_1_sv2v_reg <= data_p_r[1];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_0_sv2v_reg <= data_p_r[0];
    end 
  end

  assign N0 = ~clk_i;

endmodule