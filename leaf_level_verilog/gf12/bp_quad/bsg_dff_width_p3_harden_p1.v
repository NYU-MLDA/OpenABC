module bsg_dff_width_p3_harden_p1
(
  clk_i,
  data_i,
  data_o
);

  input [2:0] data_i;
  output [2:0] data_o;
  input clk_i;
  wire [2:0] data_o;
  reg data_o_2_sv2v_reg,data_o_1_sv2v_reg,data_o_0_sv2v_reg;
  assign data_o[2] = data_o_2_sv2v_reg;
  assign data_o[1] = data_o_1_sv2v_reg;
  assign data_o[0] = data_o_0_sv2v_reg;

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