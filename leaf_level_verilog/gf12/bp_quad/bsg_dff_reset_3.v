module bsg_dff_reset_3
(
  clk_i,
  reset_i,
  data_i,
  data_o
);

  input [2:0] data_i;
  output [2:0] data_o;
  input clk_i;
  input reset_i;
  wire [2:0] data_o;
  wire N0,N1,N2,N3,N4,N5;
  reg data_o_2_sv2v_reg,data_o_1_sv2v_reg,data_o_0_sv2v_reg;
  assign data_o[2] = data_o_2_sv2v_reg;
  assign data_o[1] = data_o_1_sv2v_reg;
  assign data_o[0] = data_o_0_sv2v_reg;

  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_2_sv2v_reg <= N5;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_1_sv2v_reg <= N4;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_0_sv2v_reg <= N3;
    end 
  end

  assign { N5, N4, N3 } = (N0)? { 1'b0, 1'b0, 1'b0 } : 
                          (N1)? data_i : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign N2 = ~reset_i;

endmodule