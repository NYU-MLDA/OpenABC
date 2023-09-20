module bsg_manycore_pkt_encode_x_cord_width_p4_y_cord_width_p5_data_width_p32_addr_width_p20
(
  clk_i,
  v_i,
  addr_i,
  data_i,
  mask_i,
  we_i,
  my_x_i,
  my_y_i,
  v_o,
  data_o
);

  input [31:0] addr_i;
  input [31:0] data_i;
  input [3:0] mask_i;
  input [3:0] my_x_i;
  input [4:0] my_y_i;
  output [75:0] data_o;
  input clk_i;
  input v_i;
  input we_i;
  output v_o;
  wire [75:0] data_o;
  wire v_o,N0;
  assign data_o[75] = 1'b0;
  assign data_o[74] = addr_i[20];
  assign data_o[73] = addr_i[19];
  assign data_o[72] = addr_i[18];
  assign data_o[71] = addr_i[17];
  assign data_o[70] = addr_i[16];
  assign data_o[69] = addr_i[15];
  assign data_o[68] = addr_i[14];
  assign data_o[67] = addr_i[13];
  assign data_o[66] = addr_i[12];
  assign data_o[65] = addr_i[11];
  assign data_o[64] = addr_i[10];
  assign data_o[63] = addr_i[9];
  assign data_o[62] = addr_i[8];
  assign data_o[61] = addr_i[7];
  assign data_o[60] = addr_i[6];
  assign data_o[59] = addr_i[5];
  assign data_o[58] = addr_i[4];
  assign data_o[57] = addr_i[3];
  assign data_o[56] = addr_i[2];
  assign data_o[8] = addr_i[30];
  assign data_o[7] = addr_i[29];
  assign data_o[6] = addr_i[28];
  assign data_o[5] = addr_i[27];
  assign data_o[4] = addr_i[26];
  assign data_o[3] = addr_i[25];
  assign data_o[2] = addr_i[24];
  assign data_o[1] = addr_i[23];
  assign data_o[0] = addr_i[22];
  assign data_o[53] = mask_i[3];
  assign data_o[52] = mask_i[2];
  assign data_o[51] = mask_i[1];
  assign data_o[50] = mask_i[0];
  assign data_o[49] = data_i[31];
  assign data_o[48] = data_i[30];
  assign data_o[47] = data_i[29];
  assign data_o[46] = data_i[28];
  assign data_o[45] = data_i[27];
  assign data_o[44] = data_i[26];
  assign data_o[43] = data_i[25];
  assign data_o[42] = data_i[24];
  assign data_o[41] = data_i[23];
  assign data_o[40] = data_i[22];
  assign data_o[39] = data_i[21];
  assign data_o[38] = data_i[20];
  assign data_o[37] = data_i[19];
  assign data_o[36] = data_i[18];
  assign data_o[35] = data_i[17];
  assign data_o[34] = data_i[16];
  assign data_o[33] = data_i[15];
  assign data_o[32] = data_i[14];
  assign data_o[31] = data_i[13];
  assign data_o[30] = data_i[12];
  assign data_o[29] = data_i[11];
  assign data_o[28] = data_i[10];
  assign data_o[27] = data_i[9];
  assign data_o[26] = data_i[8];
  assign data_o[25] = data_i[7];
  assign data_o[24] = data_i[6];
  assign data_o[23] = data_i[5];
  assign data_o[22] = data_i[4];
  assign data_o[21] = data_i[3];
  assign data_o[20] = data_i[2];
  assign data_o[19] = data_i[1];
  assign data_o[18] = data_i[0];
  assign data_o[17] = my_y_i[4];
  assign data_o[16] = my_y_i[3];
  assign data_o[15] = my_y_i[2];
  assign data_o[14] = my_y_i[1];
  assign data_o[13] = my_y_i[0];
  assign data_o[12] = my_x_i[3];
  assign data_o[11] = my_x_i[2];
  assign data_o[10] = my_x_i[1];
  assign data_o[9] = my_x_i[0];
  assign data_o[54] = ~data_o[55];
  assign data_o[55] = addr_i[21];
  assign v_o = N0 & v_i;
  assign N0 = addr_i[31] & we_i;

endmodule