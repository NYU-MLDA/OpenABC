module bsg_counter_up_down_32_0_1
(
  clk_i,
  reset_i,
  up_i,
  down_i,
  count_o
);

  input [0:0] up_i;
  input [0:0] down_i;
  output [5:0] count_o;
  input clk_i;
  input reset_i;
  wire [5:0] count_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20;
  reg count_o_5_sv2v_reg,count_o_4_sv2v_reg,count_o_3_sv2v_reg,count_o_2_sv2v_reg,
  count_o_1_sv2v_reg,count_o_0_sv2v_reg;
  assign count_o[5] = count_o_5_sv2v_reg;
  assign count_o[4] = count_o_4_sv2v_reg;
  assign count_o[3] = count_o_3_sv2v_reg;
  assign count_o[2] = count_o_2_sv2v_reg;
  assign count_o[1] = count_o_1_sv2v_reg;
  assign count_o[0] = count_o_0_sv2v_reg;

  always @(posedge clk_i) begin
    if(1'b1) begin
      count_o_5_sv2v_reg <= N20;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      count_o_4_sv2v_reg <= N19;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      count_o_3_sv2v_reg <= N18;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      count_o_2_sv2v_reg <= N17;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      count_o_1_sv2v_reg <= N16;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      count_o_0_sv2v_reg <= N15;
    end 
  end

  assign { N8, N7, N6, N5, N4, N3 } = count_o - down_i[0];
  assign { N14, N13, N12, N11, N10, N9 } = { N8, N7, N6, N5, N4, N3 } + up_i[0];
  assign { N20, N19, N18, N17, N16, N15 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                            (N1)? { N14, N13, N12, N11, N10, N9 } : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign N2 = ~reset_i;

endmodule