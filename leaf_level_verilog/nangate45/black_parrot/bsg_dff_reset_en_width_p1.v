module bsg_dff_reset_en_width_p1
(
  clk_i,
  reset_i,
  en_i,
  data_i,
  data_o
);

  input [0:0] data_i;
  output [0:0] data_o;
  input clk_i;
  input reset_i;
  input en_i;
  wire N0,N1,N2,N3,N4,N5,N6;
  reg [0:0] data_o;
  assign N3 = (N0)? 1'b1 :
              (N6)? 1'b1 :
              (N2)? 1'b0 : 1'b0;
  assign N0 = reset_i;
  assign N4 = (N0)? 1'b0 :
              (N6)? data_i[0] : 1'b0;
  assign N1 = en_i | reset_i;
  assign N2 = ~N1;
  assign N5 = ~reset_i;
  assign N6 = en_i & N5;

  always @(posedge clk_i) begin
    if(N3) begin
      { data_o[0:0] } <= { N4 };
    end
  end


endmodule