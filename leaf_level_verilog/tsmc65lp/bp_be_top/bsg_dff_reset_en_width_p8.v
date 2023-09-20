module bsg_dff_reset_en_width_p8
(
  clk_i,
  reset_i,
  en_i,
  data_i,
  data_o
);

  input [7:0] data_i;
  output [7:0] data_o;
  input clk_i;
  input reset_i;
  input en_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13;
  reg [7:0] data_o;
  assign N3 = (N0)? 1'b1 : 
              (N13)? 1'b1 : 
              (N2)? 1'b0 : 1'b0;
  assign N0 = reset_i;
  assign { N11, N10, N9, N8, N7, N6, N5, N4 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                (N13)? data_i : 1'b0;
  assign N1 = en_i | reset_i;
  assign N2 = ~N1;
  assign N12 = ~reset_i;
  assign N13 = en_i & N12;

  always @(posedge clk_i) begin
    if(N3) begin
      { data_o[7:0] } <= { N11, N10, N9, N8, N7, N6, N5, N4 };
    end 
  end


endmodule