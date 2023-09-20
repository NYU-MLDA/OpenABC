module bsg_mesh_router_dor_decoder_x_cord_width_p1_y_cord_width_p1_dirs_lp5_XY_order_p0
(
  clk_i,
  v_i,
  x_dirs_i,
  y_dirs_i,
  my_x_i,
  my_y_i,
  req_o
);

  input [4:0] v_i;
  input [4:0] x_dirs_i;
  input [4:0] y_dirs_i;
  input [0:0] my_x_i;
  input [0:0] my_y_i;
  output [24:0] req_o;
  input clk_i;
  wire [24:0] req_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,y_gt_0,x_lt_0,
  y_lt_0,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,
  N37,N38,N39,N40,N41,N42;
  wire [4:0] x_eq,y_eq,x_gt;
  wire [4:3] y_gt;
  wire [4:2] x_lt;
  wire [4:4] y_lt;
  assign req_o[12] = 1'b0;
  assign req_o[6] = 1'b0;
  assign req_o[24] = 1'b0;
  assign req_o[18] = 1'b0;
  assign req_o[14] = 1'b0;
  assign req_o[13] = 1'b0;
  assign req_o[9] = 1'b0;
  assign req_o[8] = 1'b0;
  assign N0 = x_dirs_i[0] ^ my_x_i[0];
  assign x_eq[0] = ~N0;
  assign N1 = y_dirs_i[0] ^ my_y_i[0];
  assign y_eq[0] = ~N1;
  assign x_gt[0] = x_dirs_i[0] & N2;
  assign N2 = ~my_x_i[0];
  assign y_gt_0 = y_dirs_i[0] & N3;
  assign N3 = ~my_y_i[0];
  assign N4 = x_dirs_i[1] ^ my_x_i[0];
  assign x_eq[1] = ~N4;
  assign N5 = y_dirs_i[1] ^ my_y_i[0];
  assign y_eq[1] = ~N5;
  assign x_gt[1] = x_dirs_i[1] & N6;
  assign N6 = ~my_x_i[0];
  assign N7 = x_dirs_i[2] ^ my_x_i[0];
  assign x_eq[2] = ~N7;
  assign N8 = y_dirs_i[2] ^ my_y_i[0];
  assign y_eq[2] = ~N8;
  assign x_gt[2] = x_dirs_i[2] & N9;
  assign N9 = ~my_x_i[0];
  assign N10 = x_dirs_i[3] ^ my_x_i[0];
  assign x_eq[3] = ~N10;
  assign N11 = y_dirs_i[3] ^ my_y_i[0];
  assign y_eq[3] = ~N11;
  assign x_gt[3] = x_dirs_i[3] & N12;
  assign N12 = ~my_x_i[0];
  assign y_gt[3] = y_dirs_i[3] & N13;
  assign N13 = ~my_y_i[0];
  assign N14 = x_dirs_i[4] ^ my_x_i[0];
  assign x_eq[4] = ~N14;
  assign N15 = y_dirs_i[4] ^ my_y_i[0];
  assign y_eq[4] = ~N15;
  assign x_gt[4] = x_dirs_i[4] & N16;
  assign N16 = ~my_x_i[0];
  assign y_gt[4] = y_dirs_i[4] & N17;
  assign N17 = ~my_y_i[0];
  assign x_lt_0 = N18 & N19;
  assign N18 = ~x_gt[0];
  assign N19 = ~x_eq[0];
  assign y_lt_0 = N20 & N21;
  assign N20 = ~y_gt_0;
  assign N21 = ~y_eq[0];
  assign x_lt[2] = N22 & N23;
  assign N22 = ~x_gt[2];
  assign N23 = ~x_eq[2];
  assign x_lt[3] = N24 & N25;
  assign N24 = ~x_gt[3];
  assign N25 = ~x_eq[3];
  assign x_lt[4] = N26 & N27;
  assign N26 = ~x_gt[4];
  assign N27 = ~x_eq[4];
  assign y_lt[4] = N28 & N29;
  assign N28 = ~y_gt[4];
  assign N29 = ~y_eq[4];
  assign req_o[16] = N30 & x_lt[3];
  assign N30 = v_i[3] & y_eq[3];
  assign req_o[17] = N31 & x_gt[3];
  assign N31 = v_i[3] & y_eq[3];
  assign req_o[21] = N32 & x_lt[4];
  assign N32 = v_i[4] & y_eq[4];
  assign req_o[22] = N33 & x_gt[4];
  assign N33 = v_i[4] & y_eq[4];
  assign req_o[19] = v_i[3] & y_gt[3];
  assign req_o[23] = v_i[4] & y_lt[4];
  assign req_o[7] = N34 & x_gt[1];
  assign N34 = v_i[1] & y_eq[1];
  assign req_o[11] = N35 & x_lt[2];
  assign N35 = v_i[2] & y_eq[2];
  assign req_o[4] = v_i[0] & y_gt_0;
  assign req_o[3] = v_i[0] & y_lt_0;
  assign req_o[0] = N36 & y_eq[0];
  assign N36 = v_i[0] & x_eq[0];
  assign req_o[2] = N37 & x_gt[0];
  assign N37 = v_i[0] & y_eq[0];
  assign req_o[1] = N38 & x_lt_0;
  assign N38 = v_i[0] & y_eq[0];
  assign req_o[5] = N39 & y_eq[1];
  assign N39 = v_i[1] & x_eq[1];
  assign req_o[10] = N40 & y_eq[2];
  assign N40 = v_i[2] & x_eq[2];
  assign req_o[15] = N41 & y_eq[3];
  assign N41 = v_i[3] & x_eq[3];
  assign req_o[20] = N42 & y_eq[4];
  assign N42 = v_i[4] & x_eq[4];

endmodule