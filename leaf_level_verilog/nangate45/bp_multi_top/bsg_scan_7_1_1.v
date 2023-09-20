module bsg_scan_7_1_1
(
  i,
  o
);

  input [6:0] i;
  output [6:0] o;
  wire [6:0] o;
  wire t_2__6_,t_2__5_,t_2__4_,t_2__3_,t_2__2_,t_2__1_,t_2__0_,t_1__6_,t_1__5_,t_1__4_,
  t_1__3_,t_1__2_,t_1__1_,t_1__0_;
  assign t_1__6_ = i[0] | 1'b0;
  assign t_1__5_ = i[1] | i[0];
  assign t_1__4_ = i[2] | i[1];
  assign t_1__3_ = i[3] | i[2];
  assign t_1__2_ = i[4] | i[3];
  assign t_1__1_ = i[5] | i[4];
  assign t_1__0_ = i[6] | i[5];
  assign t_2__6_ = t_1__6_ | 1'b0;
  assign t_2__5_ = t_1__5_ | 1'b0;
  assign t_2__4_ = t_1__4_ | t_1__6_;
  assign t_2__3_ = t_1__3_ | t_1__5_;
  assign t_2__2_ = t_1__2_ | t_1__4_;
  assign t_2__1_ = t_1__1_ | t_1__3_;
  assign t_2__0_ = t_1__0_ | t_1__2_;
  assign o[0] = t_2__6_ | 1'b0;
  assign o[1] = t_2__5_ | 1'b0;
  assign o[2] = t_2__4_ | 1'b0;
  assign o[3] = t_2__3_ | 1'b0;
  assign o[4] = t_2__2_ | t_2__6_;
  assign o[5] = t_2__1_ | t_2__5_;
  assign o[6] = t_2__0_ | t_2__4_;

endmodule