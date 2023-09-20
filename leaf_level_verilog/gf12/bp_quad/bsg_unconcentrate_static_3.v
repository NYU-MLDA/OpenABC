module bsg_unconcentrate_static_3
(
  i,
  o
);

  input [1:0] i;
  output [2:0] o;
  wire [2:0] o;
  wire o_1_,o_0_;
  assign o[2] = 1'b0;
  assign o_1_ = i[1];
  assign o[1] = o_1_;
  assign o_0_ = i[0];
  assign o[0] = o_0_;

endmodule