module bsg_dff_reset_en_width_p28
(
  clk_i,
  reset_i,
  en_i,
  data_i,
  data_o
);

  input [27:0] data_i;
  output [27:0] data_o;
  input clk_i;
  input reset_i;
  input en_i;
  wire [27:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33;
  reg data_o_27_sv2v_reg,data_o_26_sv2v_reg,data_o_25_sv2v_reg,data_o_24_sv2v_reg,
  data_o_23_sv2v_reg,data_o_22_sv2v_reg,data_o_21_sv2v_reg,data_o_20_sv2v_reg,
  data_o_19_sv2v_reg,data_o_18_sv2v_reg,data_o_17_sv2v_reg,data_o_16_sv2v_reg,
  data_o_15_sv2v_reg,data_o_14_sv2v_reg,data_o_13_sv2v_reg,data_o_12_sv2v_reg,
  data_o_11_sv2v_reg,data_o_10_sv2v_reg,data_o_9_sv2v_reg,data_o_8_sv2v_reg,data_o_7_sv2v_reg,
  data_o_6_sv2v_reg,data_o_5_sv2v_reg,data_o_4_sv2v_reg,data_o_3_sv2v_reg,
  data_o_2_sv2v_reg,data_o_1_sv2v_reg,data_o_0_sv2v_reg;
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
    if(N3) begin
      data_o_27_sv2v_reg <= N31;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_26_sv2v_reg <= N30;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_25_sv2v_reg <= N29;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_24_sv2v_reg <= N28;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_23_sv2v_reg <= N27;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_22_sv2v_reg <= N26;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_21_sv2v_reg <= N25;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_20_sv2v_reg <= N24;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_19_sv2v_reg <= N23;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_18_sv2v_reg <= N22;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_17_sv2v_reg <= N21;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_16_sv2v_reg <= N20;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_15_sv2v_reg <= N19;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_14_sv2v_reg <= N18;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_13_sv2v_reg <= N17;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_12_sv2v_reg <= N16;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_11_sv2v_reg <= N15;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_10_sv2v_reg <= N14;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_9_sv2v_reg <= N13;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_8_sv2v_reg <= N12;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_7_sv2v_reg <= N11;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_6_sv2v_reg <= N10;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_5_sv2v_reg <= N9;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_4_sv2v_reg <= N8;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_3_sv2v_reg <= N7;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_2_sv2v_reg <= N6;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_1_sv2v_reg <= N5;
    end 
  end


  always @(posedge clk_i) begin
    if(N3) begin
      data_o_0_sv2v_reg <= N4;
    end 
  end

  assign N3 = (N0)? 1'b1 : 
              (N33)? 1'b1 : 
              (N2)? 1'b0 : 1'b0;
  assign N0 = reset_i;
  assign { N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                    (N33)? data_i : 1'b0;
  assign N1 = en_i | reset_i;
  assign N2 = ~N1;
  assign N32 = ~reset_i;
  assign N33 = en_i & N32;

endmodule