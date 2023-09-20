module bsg_link_oddr_phy_width_p9
(
  reset_i,
  clk_i,
  data_i,
  ready_o,
  data_r_o,
  clk_r_o
);

  input [17:0] data_i;
  output [8:0] data_r_o;
  input reset_i;
  input clk_i;
  output ready_o;
  output clk_r_o;
  wire [8:0] data_r_o;
  wire ready_o,clk_r_o,N0,N1,N2,N3,N4,N5,odd_r,N6,N7,N8,reset_i_r,N9,N10,clk_r,N11,N12,
  N13,N14,N15,N16,N17,N18,N19,N20,N21;
  wire [17:0] data_i_r;
  reg data_i_r_17_sv2v_reg,data_i_r_16_sv2v_reg,data_i_r_15_sv2v_reg,
  data_i_r_14_sv2v_reg,data_i_r_13_sv2v_reg,data_i_r_12_sv2v_reg,data_i_r_11_sv2v_reg,
  data_i_r_10_sv2v_reg,data_i_r_9_sv2v_reg,data_i_r_8_sv2v_reg,data_i_r_7_sv2v_reg,
  data_i_r_6_sv2v_reg,data_i_r_5_sv2v_reg,data_i_r_4_sv2v_reg,data_i_r_3_sv2v_reg,
  data_i_r_2_sv2v_reg,data_i_r_1_sv2v_reg,data_i_r_0_sv2v_reg,odd_r_sv2v_reg,
  reset_i_r_sv2v_reg,clk_r_sv2v_reg,clk_r_o_sv2v_reg,data_r_o_8_sv2v_reg,data_r_o_7_sv2v_reg,
  data_r_o_6_sv2v_reg,data_r_o_5_sv2v_reg,data_r_o_4_sv2v_reg,data_r_o_3_sv2v_reg,
  data_r_o_2_sv2v_reg,data_r_o_1_sv2v_reg,data_r_o_0_sv2v_reg;
  assign data_i_r[17] = data_i_r_17_sv2v_reg;
  assign data_i_r[16] = data_i_r_16_sv2v_reg;
  assign data_i_r[15] = data_i_r_15_sv2v_reg;
  assign data_i_r[14] = data_i_r_14_sv2v_reg;
  assign data_i_r[13] = data_i_r_13_sv2v_reg;
  assign data_i_r[12] = data_i_r_12_sv2v_reg;
  assign data_i_r[11] = data_i_r_11_sv2v_reg;
  assign data_i_r[10] = data_i_r_10_sv2v_reg;
  assign data_i_r[9] = data_i_r_9_sv2v_reg;
  assign data_i_r[8] = data_i_r_8_sv2v_reg;
  assign data_i_r[7] = data_i_r_7_sv2v_reg;
  assign data_i_r[6] = data_i_r_6_sv2v_reg;
  assign data_i_r[5] = data_i_r_5_sv2v_reg;
  assign data_i_r[4] = data_i_r_4_sv2v_reg;
  assign data_i_r[3] = data_i_r_3_sv2v_reg;
  assign data_i_r[2] = data_i_r_2_sv2v_reg;
  assign data_i_r[1] = data_i_r_1_sv2v_reg;
  assign data_i_r[0] = data_i_r_0_sv2v_reg;
  assign odd_r = odd_r_sv2v_reg;
  assign reset_i_r = reset_i_r_sv2v_reg;
  assign clk_r = clk_r_sv2v_reg;
  assign clk_r_o = clk_r_o_sv2v_reg;
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
    if(N6) begin
      data_i_r_17_sv2v_reg <= data_i[17];
    end 
  end


  always @(posedge clk_i) begin
    if(N6) begin
      data_i_r_16_sv2v_reg <= data_i[16];
    end 
  end


  always @(posedge clk_i) begin
    if(N6) begin
      data_i_r_15_sv2v_reg <= data_i[15];
    end 
  end


  always @(posedge clk_i) begin
    if(N6) begin
      data_i_r_14_sv2v_reg <= data_i[14];
    end 
  end


  always @(posedge clk_i) begin
    if(N6) begin
      data_i_r_13_sv2v_reg <= data_i[13];
    end 
  end


  always @(posedge clk_i) begin
    if(N6) begin
      data_i_r_12_sv2v_reg <= data_i[12];
    end 
  end


  always @(posedge clk_i) begin
    if(N6) begin
      data_i_r_11_sv2v_reg <= data_i[11];
    end 
  end


  always @(posedge clk_i) begin
    if(N6) begin
      data_i_r_10_sv2v_reg <= data_i[10];
    end 
  end


  always @(posedge clk_i) begin
    if(N6) begin
      data_i_r_9_sv2v_reg <= data_i[9];
    end 
  end


  always @(posedge clk_i) begin
    if(N6) begin
      data_i_r_8_sv2v_reg <= data_i[8];
    end 
  end


  always @(posedge clk_i) begin
    if(N6) begin
      data_i_r_7_sv2v_reg <= data_i[7];
    end 
  end


  always @(posedge clk_i) begin
    if(N6) begin
      data_i_r_6_sv2v_reg <= data_i[6];
    end 
  end


  always @(posedge clk_i) begin
    if(N6) begin
      data_i_r_5_sv2v_reg <= data_i[5];
    end 
  end


  always @(posedge clk_i) begin
    if(N6) begin
      data_i_r_4_sv2v_reg <= data_i[4];
    end 
  end


  always @(posedge clk_i) begin
    if(N6) begin
      data_i_r_3_sv2v_reg <= data_i[3];
    end 
  end


  always @(posedge clk_i) begin
    if(N6) begin
      data_i_r_2_sv2v_reg <= data_i[2];
    end 
  end


  always @(posedge clk_i) begin
    if(N6) begin
      data_i_r_1_sv2v_reg <= data_i[1];
    end 
  end


  always @(posedge clk_i) begin
    if(N6) begin
      data_i_r_0_sv2v_reg <= data_i[0];
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      odd_r_sv2v_reg <= N8;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      reset_i_r_sv2v_reg <= reset_i;
    end 
  end


  always @(posedge N9) begin
    if(1'b1) begin
      clk_r_sv2v_reg <= N12;
    end 
  end


  always @(posedge N9) begin
    if(1'b1) begin
      clk_r_o_sv2v_reg <= clk_r;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_8_sv2v_reg <= N21;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_7_sv2v_reg <= N20;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_6_sv2v_reg <= N19;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_5_sv2v_reg <= N18;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_4_sv2v_reg <= N17;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_3_sv2v_reg <= N16;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_2_sv2v_reg <= N15;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_1_sv2v_reg <= N14;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_r_o_0_sv2v_reg <= N13;
    end 
  end

  assign N8 = (N0)? 1'b0 : 
              (N1)? N6 : 1'b0;
  assign N0 = reset_i;
  assign N1 = N7;
  assign N12 = (N2)? 1'b0 : 
               (N3)? N11 : 1'b0;
  assign N2 = reset_i_r;
  assign N3 = N10;
  assign { N21, N20, N19, N18, N17, N16, N15, N14, N13 } = (N4)? data_i_r[8:0] : 
                                                           (N5)? data_i_r[17:9] : 1'b0;
  assign N4 = odd_r;
  assign N5 = N6;
  assign ready_o = ~odd_r;
  assign N6 = ~odd_r;
  assign N7 = ~reset_i;
  assign N9 = ~clk_i;
  assign N10 = ~reset_i_r;
  assign N11 = ~clk_r;

endmodule