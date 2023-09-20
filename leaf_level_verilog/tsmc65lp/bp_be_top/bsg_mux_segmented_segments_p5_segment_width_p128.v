module bsg_mux_segmented_segments_p5_segment_width_p128
(
  data0_i,
  data1_i,
  sel_i,
  data_o
);

  input [639:0] data0_i;
  input [639:0] data1_i;
  input [4:0] sel_i;
  output [639:0] data_o;
  wire [639:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9;
  assign data_o[127:0] = (N0)? data1_i[127:0] : 
                         (N5)? data0_i[127:0] : 1'b0;
  assign N0 = sel_i[0];
  assign data_o[255:128] = (N1)? data1_i[255:128] : 
                           (N6)? data0_i[255:128] : 1'b0;
  assign N1 = sel_i[1];
  assign data_o[383:256] = (N2)? data1_i[383:256] : 
                           (N7)? data0_i[383:256] : 1'b0;
  assign N2 = sel_i[2];
  assign data_o[511:384] = (N3)? data1_i[511:384] : 
                           (N8)? data0_i[511:384] : 1'b0;
  assign N3 = sel_i[3];
  assign data_o[639:512] = (N4)? data1_i[639:512] : 
                           (N9)? data0_i[639:512] : 1'b0;
  assign N4 = sel_i[4];
  assign N5 = ~sel_i[0];
  assign N6 = ~sel_i[1];
  assign N7 = ~sel_i[2];
  assign N8 = ~sel_i[3];
  assign N9 = ~sel_i[4];

endmodule