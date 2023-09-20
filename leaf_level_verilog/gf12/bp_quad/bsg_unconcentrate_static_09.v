module bsg_unconcentrate_static_09
(
  i,
  o
);

  input [1:0] i;
  output [4:0] o;
  wire [4:0] o;
  wire o_3_,o_0_;
  assign o[4] = 1'b0;
  assign o[2] = 1'b0;
  assign o[1] = 1'b0;
  assign o_3_ = i[1];
  assign o[3] = o_3_;
  assign o_0_ = i[0];
  assign o[0] = o_0_;

endmodule