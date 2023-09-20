module bsg_mesh_router_dor_decoder_4_5_5_1
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
  input [19:0] x_dirs_i;
  input [24:0] y_dirs_i;
  input [3:0] my_x_i;
  input [4:0] my_y_i;
  output [24:0] req_o;
  input clk_i;
  wire [24:0] req_o;
  wire x_eq_4,x_gt_0,NS_req_4__weird_route,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,
  N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32;
  wire [2:0] x_eq,y_gt,y_lt;
  wire [4:0] y_eq;
  wire [4:3] x_gt;
  wire [0:0] x_lt;
  assign req_o[24] = 1'b0;
  assign req_o[18] = 1'b0;
  assign req_o[12] = 1'b0;
  assign req_o[6] = 1'b0;
  assign x_eq[0] = x_dirs_i[3:0] == my_x_i;
  assign y_eq[0] = y_dirs_i[4:0] == my_y_i;
  assign x_gt_0 = x_dirs_i[3:0] > my_x_i;
  assign y_gt[0] = y_dirs_i[4:0] > my_y_i;
  assign x_eq[1] = x_dirs_i[7:4] == my_x_i;
  assign y_eq[1] = y_dirs_i[9:5] == my_y_i;
  assign y_gt[1] = y_dirs_i[9:5] > my_y_i;
  assign x_eq[2] = x_dirs_i[11:8] == my_x_i;
  assign y_eq[2] = y_dirs_i[14:10] == my_y_i;
  assign y_gt[2] = y_dirs_i[14:10] > my_y_i;
  assign y_eq[3] = y_dirs_i[19:15] == my_y_i;
  assign x_gt[3] = x_dirs_i[15:12] > my_x_i;
  assign x_eq_4 = x_dirs_i[19:16] == my_x_i;
  assign y_eq[4] = y_dirs_i[24:20] == my_y_i;
  assign x_gt[4] = x_dirs_i[19:16] > my_x_i;
  assign x_lt[0] = N0 & N1;
  assign N0 = ~x_gt_0;
  assign N1 = ~x_eq[0];
  assign y_lt[0] = N2 & N3;
  assign N2 = ~y_gt[0];
  assign N3 = ~y_eq[0];
  assign y_lt[1] = N4 & N5;
  assign N4 = ~y_gt[1];
  assign N5 = ~y_eq[1];
  assign y_lt[2] = N6 & N7;
  assign N6 = ~y_gt[2];
  assign N7 = ~y_eq[2];
  assign req_o[7] = v_i[1] & N8;
  assign N8 = ~x_eq[1];
  assign req_o[5] = N9 & y_eq[1];
  assign N9 = v_i[1] & x_eq[1];
  assign req_o[9] = N10 & y_gt[1];
  assign N10 = v_i[1] & x_eq[1];
  assign req_o[8] = N11 & y_lt[1];
  assign N11 = v_i[1] & x_eq[1];
  assign req_o[11] = v_i[2] & N12;
  assign N12 = ~x_eq[2];
  assign req_o[10] = N13 & y_eq[2];
  assign N13 = v_i[2] & x_eq[2];
  assign req_o[14] = N14 & y_gt[2];
  assign N14 = v_i[2] & x_eq[2];
  assign req_o[13] = N15 & y_lt[2];
  assign N15 = v_i[2] & x_eq[2];
  assign req_o[19] = N17 & N18;
  assign N17 = v_i[3] & N16;
  assign N16 = ~y_eq[3];
  assign N18 = ~1'b0;
  assign req_o[15] = N19 & N18;
  assign N19 = v_i[3] & y_eq[3];
  assign req_o[16] = N20 & N21;
  assign N20 = v_i[3] & 1'b0;
  assign N21 = ~x_gt[3];
  assign req_o[17] = N22 & x_gt[3];
  assign N22 = v_i[3] & 1'b0;
  assign NS_req_4__weird_route = ~x_eq_4;
  assign req_o[23] = N24 & N25;
  assign N24 = v_i[4] & N23;
  assign N23 = ~y_eq[4];
  assign N25 = ~NS_req_4__weird_route;
  assign req_o[20] = N26 & N25;
  assign N26 = v_i[4] & y_eq[4];
  assign req_o[21] = N27 & N28;
  assign N27 = v_i[4] & NS_req_4__weird_route;
  assign N28 = ~x_gt[4];
  assign req_o[22] = N29 & x_gt[4];
  assign N29 = v_i[4] & NS_req_4__weird_route;
  assign req_o[2] = v_i[0] & x_gt_0;
  assign req_o[1] = v_i[0] & x_lt[0];
  assign req_o[4] = N30 & y_gt[0];
  assign N30 = v_i[0] & x_eq[0];
  assign req_o[3] = N31 & y_lt[0];
  assign N31 = v_i[0] & x_eq[0];
  assign req_o[0] = N32 & y_eq[0];
  assign N32 = v_i[0] & x_eq[0];

endmodule