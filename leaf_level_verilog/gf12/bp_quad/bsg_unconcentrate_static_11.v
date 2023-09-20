module bsg_unconcentrate_static_11
(
  i,
  o
);

  input [1:0] i;
  output [4:0] o;
  wire [4:0] o;
  wire o_4_,o_0_;
  assign o[3] = 1'b0;
  assign o[2] = 1'b0;
  assign o[1] = 1'b0;
  assign o_4_ = i[1];
  assign o[4] = o_4_;
  assign o_0_ = i[0];
  assign o[0] = o_0_;

endmodule