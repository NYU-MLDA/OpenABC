module bsg_mux_width_p1_els_p4_harden_p1_balanced_p1
(
  data_i,
  sel_i,
  data_o
);

  input [3:0] data_i;
  input [1:0] sel_i;
  output [0:0] data_o;
  wire [0:0] data_o;
  wire N0,N1,N2,N3,N4,N5;
  assign data_o[0] = (N2)? data_i[0] : 
                     (N4)? data_i[1] : 
                     (N3)? data_i[2] : 
                     (N5)? data_i[3] : 1'b0;
  assign N0 = ~sel_i[0];
  assign N1 = ~sel_i[1];
  assign N2 = N0 & N1;
  assign N3 = N0 & sel_i[1];
  assign N4 = sel_i[0] & N1;
  assign N5 = sel_i[0] & sel_i[1];

endmodule