module bsg_mux_segmented_segments_p8_segment_width_p8
(
  data0_i,
  data1_i,
  sel_i,
  data_o
);

  input [63:0] data0_i;
  input [63:0] data1_i;
  input [7:0] sel_i;
  output [63:0] data_o;
  wire [63:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15;
  assign data_o[7:0] = (N0)? data1_i[7:0] :
                       (N8)? data0_i[7:0] : 1'b0;
  assign N0 = sel_i[0];
  assign data_o[15:8] = (N1)? data1_i[15:8] :
                        (N9)? data0_i[15:8] : 1'b0;
  assign N1 = sel_i[1];
  assign data_o[23:16] = (N2)? data1_i[23:16] :
                         (N10)? data0_i[23:16] : 1'b0;
  assign N2 = sel_i[2];
  assign data_o[31:24] = (N3)? data1_i[31:24] :
                         (N11)? data0_i[31:24] : 1'b0;
  assign N3 = sel_i[3];
  assign data_o[39:32] = (N4)? data1_i[39:32] :
                         (N12)? data0_i[39:32] : 1'b0;
  assign N4 = sel_i[4];
  assign data_o[47:40] = (N5)? data1_i[47:40] :
                         (N13)? data0_i[47:40] : 1'b0;
  assign N5 = sel_i[5];
  assign data_o[55:48] = (N6)? data1_i[55:48] :
                         (N14)? data0_i[55:48] : 1'b0;
  assign N6 = sel_i[6];
  assign data_o[63:56] = (N7)? data1_i[63:56] :
                         (N15)? data0_i[63:56] : 1'b0;
  assign N7 = sel_i[7];
  assign N8 = ~sel_i[0];
  assign N9 = ~sel_i[1];
  assign N10 = ~sel_i[2];
  assign N11 = ~sel_i[3];
  assign N12 = ~sel_i[4];
  assign N13 = ~sel_i[5];
  assign N14 = ~sel_i[6];
  assign N15 = ~sel_i[7];

endmodule