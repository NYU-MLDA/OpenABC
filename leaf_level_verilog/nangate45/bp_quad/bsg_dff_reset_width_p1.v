module bsg_dff_reset_width_p1
(
  clk_i,
  reset_i,
  data_i,
  data_o
);

  input [0:0] data_i;
  output [0:0] data_o;
  input clk_i;
  input reset_i;
  wire [0:0] data_o;
  wire N0,N1,N2,N3;
  reg data_o_0_sv2v_reg;
  assign data_o[0] = data_o_0_sv2v_reg;

  always @(posedge clk_i) begin
    if(1'b1) begin
      data_o_0_sv2v_reg <= N3;
    end 
  end

  assign N3 = (N0)? 1'b0 : 
              (N1)? data_i[0] : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign N2 = ~reset_i;

endmodule