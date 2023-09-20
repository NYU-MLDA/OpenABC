module rvbtb_addr_hash
(
  pc,
  hash
);

  input [31:1] pc;
  output [5:4] hash;
  wire [5:4] hash;
  wire N0,N1;
  assign hash[5] = N0 ^ pc[9];
  assign N0 = pc[5] ^ pc[7];
  assign hash[4] = N1 ^ pc[8];
  assign N1 = pc[4] ^ pc[6];

endmodule