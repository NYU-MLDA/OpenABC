module bsg_wormhole_router_decoder_dor_1_2_1
(
  target_cord_i,
  my_cord_i,
  req_o
);

  input [2:0] target_cord_i;
  input [2:0] my_cord_i;
  output [2:0] req_o;
  wire [2:0] req_o;
  wire N0,N1;
  assign req_o[0] = target_cord_i == my_cord_i;
  assign req_o[1] = target_cord_i < my_cord_i;
  assign req_o[2] = N0 & N1;
  assign N0 = ~req_o[0];
  assign N1 = ~req_o[1];

endmodule