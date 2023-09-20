module bsg_wormhole_router_decoder_dor_2_2_1
(
  target_cord_i,
  my_cord_i,
  req_o
);

  input [4:0] target_cord_i;
  input [4:0] my_cord_i;
  output [4:0] req_o;
  wire [4:0] req_o;
  wire N0,N1,N2,N3;
  wire [1:0] eq;
  wire [0:0] lt,gt;
  assign eq[0] = target_cord_i[1:0] == my_cord_i[1:0];
  assign lt[0] = target_cord_i[1:0] < my_cord_i[1:0];
  assign eq[1] = target_cord_i[4:2] == my_cord_i[4:2];
  assign req_o[3] = target_cord_i[4:2] < my_cord_i[4:2];
  assign gt[0] = N0 & N1;
  assign N0 = ~eq[0];
  assign N1 = ~lt[0];
  assign req_o[4] = N2 & N3;
  assign N2 = ~eq[1];
  assign N3 = ~req_o[3];
  assign req_o[0] = eq[1] & eq[0];
  assign req_o[1] = eq[1] & lt[0];
  assign req_o[2] = eq[1] & gt[0];

endmodule