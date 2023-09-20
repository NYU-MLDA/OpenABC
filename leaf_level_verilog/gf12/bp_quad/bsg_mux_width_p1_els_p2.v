module bsg_mux_width_p1_els_p2
(
  data_i,
  sel_i,
  data_o
);

  input [1:0] data_i;
  input [0:0] sel_i;
  output [0:0] data_o;
  wire [0:0] data_o;
  wire N0,N1;
  assign data_o[0] = (N1)? data_i[0] : 
                     (N0)? data_i[1] : 1'b0;
  assign N0 = sel_i[0];
  assign N1 = ~sel_i[0];

endmodule