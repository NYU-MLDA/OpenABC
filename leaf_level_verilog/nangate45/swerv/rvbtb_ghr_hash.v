module rvbtb_ghr_hash
(
  hashin,
  ghr,
  hash
);

  input [5:4] hashin;
  input [4:0] ghr;
  output [7:4] hash;
  wire [7:4] hash;
  assign hash[6] = ghr[2];
  assign hash[7] = ghr[3] ^ ghr[4];
  assign hash[5] = hashin[5] ^ ghr[1];
  assign hash[4] = hashin[4] ^ ghr[0];

endmodule