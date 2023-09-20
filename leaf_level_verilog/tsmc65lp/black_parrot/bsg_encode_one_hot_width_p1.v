module bsg_encode_one_hot_width_p1
(
  i,
  addr_o,
  v_o
);

  input [0:0] i;
  output [0:0] addr_o;
  output v_o;
  wire [0:0] addr_o;
  wire v_o;
  assign v_o = i[0];
  assign addr_o[0] = 1'b0;

endmodule