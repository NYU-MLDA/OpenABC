module bsg_mux_width_p16_els_p4
(
  data_i,
  sel_i,
  data_o
);

  input [63:0] data_i;
  input [1:0] sel_i;
  output [15:0] data_o;
  wire [15:0] data_o;
  wire N0,N1,N2,N3,N4,N5;
  assign data_o[15] = (N2)? data_i[15] : 
                      (N4)? data_i[31] : 
                      (N3)? data_i[47] : 
                      (N5)? data_i[63] : 1'b0;
  assign data_o[14] = (N2)? data_i[14] : 
                      (N4)? data_i[30] : 
                      (N3)? data_i[46] : 
                      (N5)? data_i[62] : 1'b0;
  assign data_o[13] = (N2)? data_i[13] : 
                      (N4)? data_i[29] : 
                      (N3)? data_i[45] : 
                      (N5)? data_i[61] : 1'b0;
  assign data_o[12] = (N2)? data_i[12] : 
                      (N4)? data_i[28] : 
                      (N3)? data_i[44] : 
                      (N5)? data_i[60] : 1'b0;
  assign data_o[11] = (N2)? data_i[11] : 
                      (N4)? data_i[27] : 
                      (N3)? data_i[43] : 
                      (N5)? data_i[59] : 1'b0;
  assign data_o[10] = (N2)? data_i[10] : 
                      (N4)? data_i[26] : 
                      (N3)? data_i[42] : 
                      (N5)? data_i[58] : 1'b0;
  assign data_o[9] = (N2)? data_i[9] : 
                     (N4)? data_i[25] : 
                     (N3)? data_i[41] : 
                     (N5)? data_i[57] : 1'b0;
  assign data_o[8] = (N2)? data_i[8] : 
                     (N4)? data_i[24] : 
                     (N3)? data_i[40] : 
                     (N5)? data_i[56] : 1'b0;
  assign data_o[7] = (N2)? data_i[7] : 
                     (N4)? data_i[23] : 
                     (N3)? data_i[39] : 
                     (N5)? data_i[55] : 1'b0;
  assign data_o[6] = (N2)? data_i[6] : 
                     (N4)? data_i[22] : 
                     (N3)? data_i[38] : 
                     (N5)? data_i[54] : 1'b0;
  assign data_o[5] = (N2)? data_i[5] : 
                     (N4)? data_i[21] : 
                     (N3)? data_i[37] : 
                     (N5)? data_i[53] : 1'b0;
  assign data_o[4] = (N2)? data_i[4] : 
                     (N4)? data_i[20] : 
                     (N3)? data_i[36] : 
                     (N5)? data_i[52] : 1'b0;
  assign data_o[3] = (N2)? data_i[3] : 
                     (N4)? data_i[19] : 
                     (N3)? data_i[35] : 
                     (N5)? data_i[51] : 1'b0;
  assign data_o[2] = (N2)? data_i[2] : 
                     (N4)? data_i[18] : 
                     (N3)? data_i[34] : 
                     (N5)? data_i[50] : 1'b0;
  assign data_o[1] = (N2)? data_i[1] : 
                     (N4)? data_i[17] : 
                     (N3)? data_i[33] : 
                     (N5)? data_i[49] : 1'b0;
  assign data_o[0] = (N2)? data_i[0] : 
                     (N4)? data_i[16] : 
                     (N3)? data_i[32] : 
                     (N5)? data_i[48] : 1'b0;
  assign N0 = ~sel_i[0];
  assign N1 = ~sel_i[1];
  assign N2 = N0 & N1;
  assign N3 = N0 & sel_i[1];
  assign N4 = sel_i[0] & N1;
  assign N5 = sel_i[0] & sel_i[1];

endmodule