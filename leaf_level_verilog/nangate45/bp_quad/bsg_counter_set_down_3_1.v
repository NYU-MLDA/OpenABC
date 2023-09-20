module bsg_counter_set_down_3_1
(
  clk_i,
  reset_i,
  set_i,
  val_i,
  down_i,
  count_r_o
);

  input [2:0] val_i;
  output [2:0] count_r_o;
  input clk_i;
  input reset_i;
  input set_i;
  input down_i;
  wire [2:0] count_r_o,ctr_n;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16;
  reg count_r_o_2_sv2v_reg,count_r_o_1_sv2v_reg,count_r_o_0_sv2v_reg;
  assign count_r_o[2] = count_r_o_2_sv2v_reg;
  assign count_r_o[1] = count_r_o_1_sv2v_reg;
  assign count_r_o[0] = count_r_o_0_sv2v_reg;

  always @(posedge clk_i) begin
    if(N16) begin
      count_r_o_2_sv2v_reg <= N6;
    end 
  end


  always @(posedge clk_i) begin
    if(N16) begin
      count_r_o_1_sv2v_reg <= N5;
    end 
  end


  always @(posedge clk_i) begin
    if(N16) begin
      count_r_o_0_sv2v_reg <= N4;
    end 
  end

  assign { N12, N11, N10 } = count_r_o - 1'b1;
  assign { N6, N5, N4 } = (N0)? { 1'b0, 1'b0, 1'b0 } : 
                          (N1)? ctr_n : 1'b0;
  assign N0 = reset_i;
  assign N1 = N3;
  assign ctr_n = (N2)? val_i : 
                 (N14)? { N12, N11, N10 } : 1'b0;
  assign N2 = set_i;
  assign N3 = ~reset_i;
  assign N7 = down_i | set_i;
  assign N8 = ~N7;
  assign N9 = N14;
  assign N13 = ~set_i;
  assign N14 = down_i & N13;
  assign N15 = N8 & N3;
  assign N16 = ~N15;

endmodule