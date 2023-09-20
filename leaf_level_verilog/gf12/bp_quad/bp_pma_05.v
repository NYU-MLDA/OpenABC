module bp_pma_05
(
  ptag_v_i,
  ptag_i,
  uncached_o
);

  input [27:0] ptag_i;
  input ptag_v_i;
  output uncached_o;
  wire uncached_o,is_local_addr,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10;
  assign N0 = ptag_i[26] | ptag_i[27];
  assign N1 = ptag_i[25] | N0;
  assign is_local_addr = ~N9;
  assign N9 = N8 | ptag_i[19];
  assign N8 = N7 | ptag_i[20];
  assign N7 = N6 | ptag_i[21];
  assign N6 = N5 | ptag_i[22];
  assign N5 = N4 | ptag_i[23];
  assign N4 = N3 | ptag_i[24];
  assign N3 = N2 | ptag_i[25];
  assign N2 = ptag_i[27] | ptag_i[26];
  assign uncached_o = ptag_v_i & N10;
  assign N10 = is_local_addr | N1;

endmodule