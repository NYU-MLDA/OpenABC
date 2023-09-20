module bsg_mux_segmented_segments_p5_segment_width_p64
(
  data0_i,
  data1_i,
  sel_i,
  data_o
);

  input [319:0] data0_i;
  input [319:0] data1_i;
  input [4:0] sel_i;
  output [319:0] data_o;
  wire [319:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9;
  assign data_o[63:0] = (N0)? data1_i[63:0] :
                        (N5)? data0_i[63:0] : 1'b0;
  assign N0 = sel_i[0];
  assign data_o[127:64] = (N1)? data1_i[127:64] :
                          (N6)? data0_i[127:64] : 1'b0;
  assign N1 = sel_i[1];
  assign data_o[191:128] = (N2)? data1_i[191:128] :
                           (N7)? data0_i[191:128] : 1'b0;
  assign N2 = sel_i[2];
  assign data_o[255:192] = (N3)? data1_i[255:192] :
                           (N8)? data0_i[255:192] : 1'b0;
  assign N3 = sel_i[3];
  assign data_o[319:256] = (N4)? data1_i[319:256] :
                           (N9)? data0_i[319:256] : 1'b0;
  assign N4 = sel_i[4];
  assign N5 = ~sel_i[0];
  assign N6 = ~sel_i[1];
  assign N7 = ~sel_i[2];
  assign N8 = ~sel_i[3];
  assign N9 = ~sel_i[4];

endmodule