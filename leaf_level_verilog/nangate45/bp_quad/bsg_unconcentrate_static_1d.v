module bsg_unconcentrate_static_1d
(
  i,
  o
);

  input [3:0] i;
  output [4:0] o;
  wire [4:0] o;
  wire o_4_,o_3_,o_2_,o_0_;
  assign o[1] = 1'b0;
  assign o_4_ = i[3];
  assign o[4] = o_4_;
  assign o_3_ = i[2];
  assign o[3] = o_3_;
  assign o_2_ = i[1];
  assign o[2] = o_2_;
  assign o_0_ = i[0];
  assign o[0] = o_0_;

endmodule