module rveven_paritygen_WIDTH16
(
  data_in,
  parity_out
);

  input [15:0] data_in;
  output parity_out;
  wire parity_out,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13;
  assign parity_out = N13 ^ data_in[0];
  assign N13 = N12 ^ data_in[1];
  assign N12 = N11 ^ data_in[2];
  assign N11 = N10 ^ data_in[3];
  assign N10 = N9 ^ data_in[4];
  assign N9 = N8 ^ data_in[5];
  assign N8 = N7 ^ data_in[6];
  assign N7 = N6 ^ data_in[7];
  assign N6 = N5 ^ data_in[8];
  assign N5 = N4 ^ data_in[9];
  assign N4 = N3 ^ data_in[10];
  assign N3 = N2 ^ data_in[11];
  assign N2 = N1 ^ data_in[12];
  assign N1 = N0 ^ data_in[13];
  assign N0 = data_in[15] ^ data_in[14];

endmodule