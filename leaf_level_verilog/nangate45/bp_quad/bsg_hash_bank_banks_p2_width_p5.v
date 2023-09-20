module bsg_hash_bank_banks_p2_width_p5
(
  i,
  bank_o,
  index_o
);

  input [4:0] i;
  output [0:0] bank_o;
  output [3:0] index_o;
  wire [0:0] bank_o;
  wire [3:0] index_o;
  wire index_o_3_,index_o_2_,index_o_1_,index_o_0_;
  assign bank_o[0] = i[4];
  assign index_o_3_ = i[3];
  assign index_o[3] = index_o_3_;
  assign index_o_2_ = i[2];
  assign index_o[2] = index_o_2_;
  assign index_o_1_ = i[1];
  assign index_o[1] = index_o_1_;
  assign index_o_0_ = i[0];
  assign index_o[0] = index_o_0_;

endmodule