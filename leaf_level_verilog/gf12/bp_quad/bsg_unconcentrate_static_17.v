module bsg_unconcentrate_static_17
(
  i,
  o
);

  input [3:0] i;
  output [4:0] o;
  wire [4:0] o;
  wire o_4_,o_2_,o_1_,o_0_;
  assign o[3] = 1'b0;
  assign o_4_ = i[3];
  assign o[4] = o_4_;
  assign o_2_ = i[2];
  assign o[2] = o_2_;
  assign o_1_ = i[1];
  assign o[1] = o_1_;
  assign o_0_ = i[0];
  assign o[0] = o_0_;

endmodule