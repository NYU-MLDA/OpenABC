module bsg_expand_bitmask_in_width_p4_expand_p2
(
  i,
  o
);

  input [3:0] i;
  output [7:0] o;
  wire [7:0] o;
  wire o_7_,o_5_,o_3_,o_1_;
  assign o_7_ = i[3];
  assign o[6] = o_7_;
  assign o[7] = o_7_;
  assign o_5_ = i[2];
  assign o[4] = o_5_;
  assign o[5] = o_5_;
  assign o_3_ = i[1];
  assign o[2] = o_3_;
  assign o[3] = o_3_;
  assign o_1_ = i[0];
  assign o[0] = o_1_;
  assign o[1] = o_1_;

endmodule