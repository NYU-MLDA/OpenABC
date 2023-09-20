module bsg_mux_width_p8_els_p4
(
  data_i,
  sel_i,
  data_o
);

  input [31:0] data_i;
  input [1:0] sel_i;
  output [7:0] data_o;
  wire [7:0] data_o;
  wire N0,N1,N2,N3,N4,N5;
  assign data_o[7] = (N2)? data_i[7] : 
                     (N4)? data_i[15] : 
                     (N3)? data_i[23] : 
                     (N5)? data_i[31] : 1'b0;
  assign data_o[6] = (N2)? data_i[6] : 
                     (N4)? data_i[14] : 
                     (N3)? data_i[22] : 
                     (N5)? data_i[30] : 1'b0;
  assign data_o[5] = (N2)? data_i[5] : 
                     (N4)? data_i[13] : 
                     (N3)? data_i[21] : 
                     (N5)? data_i[29] : 1'b0;
  assign data_o[4] = (N2)? data_i[4] : 
                     (N4)? data_i[12] : 
                     (N3)? data_i[20] : 
                     (N5)? data_i[28] : 1'b0;
  assign data_o[3] = (N2)? data_i[3] : 
                     (N4)? data_i[11] : 
                     (N3)? data_i[19] : 
                     (N5)? data_i[27] : 1'b0;
  assign data_o[2] = (N2)? data_i[2] : 
                     (N4)? data_i[10] : 
                     (N3)? data_i[18] : 
                     (N5)? data_i[26] : 1'b0;
  assign data_o[1] = (N2)? data_i[1] : 
                     (N4)? data_i[9] : 
                     (N3)? data_i[17] : 
                     (N5)? data_i[25] : 1'b0;
  assign data_o[0] = (N2)? data_i[0] : 
                     (N4)? data_i[8] : 
                     (N3)? data_i[16] : 
                     (N5)? data_i[24] : 1'b0;
  assign N0 = ~sel_i[0];
  assign N1 = ~sel_i[1];
  assign N2 = N0 & N1;
  assign N3 = N0 & sel_i[1];
  assign N4 = sel_i[0] & N1;
  assign N5 = sel_i[0] & sel_i[1];

endmodule