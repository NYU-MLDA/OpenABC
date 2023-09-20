module bsg_mux_width_p8_els_p8
(
  data_i,
  sel_i,
  data_o
);

  input [63:0] data_i;
  input [2:0] sel_i;
  output [7:0] data_o;
  wire [7:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14;
  assign data_o[7] = (N7)? data_i[7] :
                     (N9)? data_i[15] :
                     (N11)? data_i[23] :
                     (N13)? data_i[31] :
                     (N8)? data_i[39] :
                     (N10)? data_i[47] :
                     (N12)? data_i[55] :
                     (N14)? data_i[63] : 1'b0;
  assign data_o[6] = (N7)? data_i[6] :
                     (N9)? data_i[14] :
                     (N11)? data_i[22] :
                     (N13)? data_i[30] :
                     (N8)? data_i[38] :
                     (N10)? data_i[46] :
                     (N12)? data_i[54] :
                     (N14)? data_i[62] : 1'b0;
  assign data_o[5] = (N7)? data_i[5] :
                     (N9)? data_i[13] :
                     (N11)? data_i[21] :
                     (N13)? data_i[29] :
                     (N8)? data_i[37] :
                     (N10)? data_i[45] :
                     (N12)? data_i[53] :
                     (N14)? data_i[61] : 1'b0;
  assign data_o[4] = (N7)? data_i[4] :
                     (N9)? data_i[12] :
                     (N11)? data_i[20] :
                     (N13)? data_i[28] :
                     (N8)? data_i[36] :
                     (N10)? data_i[44] :
                     (N12)? data_i[52] :
                     (N14)? data_i[60] : 1'b0;
  assign data_o[3] = (N7)? data_i[3] :
                     (N9)? data_i[11] :
                     (N11)? data_i[19] :
                     (N13)? data_i[27] :
                     (N8)? data_i[35] :
                     (N10)? data_i[43] :
                     (N12)? data_i[51] :
                     (N14)? data_i[59] : 1'b0;
  assign data_o[2] = (N7)? data_i[2] :
                     (N9)? data_i[10] :
                     (N11)? data_i[18] :
                     (N13)? data_i[26] :
                     (N8)? data_i[34] :
                     (N10)? data_i[42] :
                     (N12)? data_i[50] :
                     (N14)? data_i[58] : 1'b0;
  assign data_o[1] = (N7)? data_i[1] :
                     (N9)? data_i[9] :
                     (N11)? data_i[17] :
                     (N13)? data_i[25] :
                     (N8)? data_i[33] :
                     (N10)? data_i[41] :
                     (N12)? data_i[49] :
                     (N14)? data_i[57] : 1'b0;
  assign data_o[0] = (N7)? data_i[0] :
                     (N9)? data_i[8] :
                     (N11)? data_i[16] :
                     (N13)? data_i[24] :
                     (N8)? data_i[32] :
                     (N10)? data_i[40] :
                     (N12)? data_i[48] :
                     (N14)? data_i[56] : 1'b0;
  assign N0 = ~sel_i[0];
  assign N1 = ~sel_i[1];
  assign N2 = N0 & N1;
  assign N3 = N0 & sel_i[1];
  assign N4 = sel_i[0] & N1;
  assign N5 = sel_i[0] & sel_i[1];
  assign N6 = ~sel_i[2];
  assign N7 = N2 & N6;
  assign N8 = N2 & sel_i[2];
  assign N9 = N4 & N6;
  assign N10 = N4 & sel_i[2];
  assign N11 = N3 & N6;
  assign N12 = N3 & sel_i[2];
  assign N13 = N5 & N6;
  assign N14 = N5 & sel_i[2];

endmodule