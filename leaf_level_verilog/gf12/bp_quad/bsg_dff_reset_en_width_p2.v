module bsg_dff_reset_en_width_p2
(
  clk_i,
  reset_i,
  en_i,
  data_i,
  data_o
);

  input [1:0] data_i;
  output [1:0] data_o;
  input clk_i;
  input reset_i;
  input en_i;
  wire [1:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7;
  reg data_o_1_sv2v_reg,data_o_0_sv2v_reg;
  assign data_o[1] = data_o_1_sv2v_reg;
  assign data_o[0] = data_o_0_sv2v_reg;

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
              (N7)? 1'b1 : 
              (N2)? 1'b0 : 1'b0;
  assign N0 = reset_i;
  assign { N5, N4 } = (N0)? { 1'b0, 1'b0 } : 
                      (N7)? data_i : 1'b0;
  assign N1 = en_i | reset_i;
  assign N2 = ~N1;
  assign N6 = ~reset_i;
  assign N7 = en_i & N6;

endmodule