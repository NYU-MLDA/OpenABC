module bsg_dff_width_p9_harden_p1
(
  clk_i,
  data_i,
  data_o
);

  input [8:0] data_i;
  output [8:0] data_o;
  input clk_i;
  wire [8:0] data_o;
  reg data_o_8_sv2v_reg,data_o_7_sv2v_reg,data_o_6_sv2v_reg,data_o_5_sv2v_reg,
  data_o_4_sv2v_reg,data_o_3_sv2v_reg,data_o_2_sv2v_reg,data_o_1_sv2v_reg,
  data_o_0_sv2v_reg;
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