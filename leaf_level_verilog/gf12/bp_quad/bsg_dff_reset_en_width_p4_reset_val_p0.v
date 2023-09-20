module bsg_dff_reset_en_width_p4_reset_val_p0
(
  clk_i,
  reset_i,
  en_i,
  data_i,
  data_o
);

  input [3:0] data_i;
  output [3:0] data_o;
  input clk_i;
  input reset_i;
  input en_i;
  wire [3:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9;
  reg data_o_3_sv2v_reg,data_o_2_sv2v_reg,data_o_1_sv2v_reg,data_o_0_sv2v_reg;
  assign data_o[3] = data_o_3_sv2v_reg;
  assign data_o[2] = data_o_2_sv2v_reg;
  assign data_o[1] = data_o_1_sv2v_reg;
  assign data_o[0] = data_o_0_sv2v_reg;

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
              (N9)? 1'b1 : 
              (N2)? 1'b0 : 1'b0;
  assign N0 = reset_i;
  assign { N7, N6, N5, N4 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                              (N9)? data_i : 1'b0;
  assign N1 = en_i | reset_i;
  assign N2 = ~N1;
  assign N8 = ~reset_i;
  assign N9 = en_i & N8;

endmodule