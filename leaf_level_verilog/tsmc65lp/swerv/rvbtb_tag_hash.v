module rvbtb_tag_hash
(
  pc,
  hash
);

  input [31:1] pc;
  output [8:0] hash;
  wire [8:0] hash;
  assign hash[8] = pc[23] ^ pc[14];
  assign hash[7] = pc[22] ^ pc[13];
  assign hash[6] = pc[21] ^ pc[12];
  assign hash[5] = pc[20] ^ pc[11];
  assign hash[4] = pc[19] ^ pc[10];
  assign hash[3] = pc[18] ^ pc[9];
  assign hash[2] = pc[17] ^ pc[8];
  assign hash[1] = pc[16] ^ pc[7];
  assign hash[0] = pc[15] ^ pc[6];

endmodule