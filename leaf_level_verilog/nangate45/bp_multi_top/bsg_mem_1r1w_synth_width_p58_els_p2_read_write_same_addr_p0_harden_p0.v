module bsg_mem_1r1w_synth_width_p58_els_p2_read_write_same_addr_p0_harden_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [0:0] w_addr_i;
  input [57:0] w_data_i;
  input [0:0] r_addr_i;
  output [57:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [57:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  reg [115:0] mem;
  assign r_data_o[57] = (N3)? mem[57] :
                        (N0)? mem[115] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[56] = (N3)? mem[56] :
                        (N0)? mem[114] : 1'b0;
  assign r_data_o[55] = (N3)? mem[55] :
                        (N0)? mem[113] : 1'b0;
  assign r_data_o[54] = (N3)? mem[54] :
                        (N0)? mem[112] : 1'b0;
  assign r_data_o[53] = (N3)? mem[53] :
                        (N0)? mem[111] : 1'b0;
  assign r_data_o[52] = (N3)? mem[52] :
                        (N0)? mem[110] : 1'b0;
  assign r_data_o[51] = (N3)? mem[51] :
                        (N0)? mem[109] : 1'b0;
  assign r_data_o[50] = (N3)? mem[50] :
                        (N0)? mem[108] : 1'b0;
  assign r_data_o[49] = (N3)? mem[49] :
                        (N0)? mem[107] : 1'b0;
  assign r_data_o[48] = (N3)? mem[48] :
                        (N0)? mem[106] : 1'b0;
  assign r_data_o[47] = (N3)? mem[47] :
                        (N0)? mem[105] : 1'b0;
  assign r_data_o[46] = (N3)? mem[46] :
                        (N0)? mem[104] : 1'b0;
  assign r_data_o[45] = (N3)? mem[45] :
                        (N0)? mem[103] : 1'b0;
  assign r_data_o[44] = (N3)? mem[44] :
                        (N0)? mem[102] : 1'b0;
  assign r_data_o[43] = (N3)? mem[43] :
                        (N0)? mem[101] : 1'b0;
  assign r_data_o[42] = (N3)? mem[42] :
                        (N0)? mem[100] : 1'b0;
  assign r_data_o[41] = (N3)? mem[41] :
                        (N0)? mem[99] : 1'b0;
  assign r_data_o[40] = (N3)? mem[40] :
                        (N0)? mem[98] : 1'b0;
  assign r_data_o[39] = (N3)? mem[39] :
                        (N0)? mem[97] : 1'b0;
  assign r_data_o[38] = (N3)? mem[38] :
                        (N0)? mem[96] : 1'b0;
  assign r_data_o[37] = (N3)? mem[37] :
                        (N0)? mem[95] : 1'b0;
  assign r_data_o[36] = (N3)? mem[36] :
                        (N0)? mem[94] : 1'b0;
  assign r_data_o[35] = (N3)? mem[35] :
                        (N0)? mem[93] : 1'b0;
  assign r_data_o[34] = (N3)? mem[34] :
                        (N0)? mem[92] : 1'b0;
  assign r_data_o[33] = (N3)? mem[33] :
                        (N0)? mem[91] : 1'b0;
  assign r_data_o[32] = (N3)? mem[32] :
                        (N0)? mem[90] : 1'b0;
  assign r_data_o[31] = (N3)? mem[31] :
                        (N0)? mem[89] : 1'b0;
  assign r_data_o[30] = (N3)? mem[30] :
                        (N0)? mem[88] : 1'b0;
  assign r_data_o[29] = (N3)? mem[29] :
                        (N0)? mem[87] : 1'b0;
  assign r_data_o[28] = (N3)? mem[28] :
                        (N0)? mem[86] : 1'b0;
  assign r_data_o[27] = (N3)? mem[27] :
                        (N0)? mem[85] : 1'b0;
  assign r_data_o[26] = (N3)? mem[26] :
                        (N0)? mem[84] : 1'b0;
  assign r_data_o[25] = (N3)? mem[25] :
                        (N0)? mem[83] : 1'b0;
  assign r_data_o[24] = (N3)? mem[24] :
                        (N0)? mem[82] : 1'b0;
  assign r_data_o[23] = (N3)? mem[23] :
                        (N0)? mem[81] : 1'b0;
  assign r_data_o[22] = (N3)? mem[22] :
                        (N0)? mem[80] : 1'b0;
  assign r_data_o[21] = (N3)? mem[21] :
                        (N0)? mem[79] : 1'b0;
  assign r_data_o[20] = (N3)? mem[20] :
                        (N0)? mem[78] : 1'b0;
  assign r_data_o[19] = (N3)? mem[19] :
                        (N0)? mem[77] : 1'b0;
  assign r_data_o[18] = (N3)? mem[18] :
                        (N0)? mem[76] : 1'b0;
  assign r_data_o[17] = (N3)? mem[17] :
                        (N0)? mem[75] : 1'b0;
  assign r_data_o[16] = (N3)? mem[16] :
                        (N0)? mem[74] : 1'b0;
  assign r_data_o[15] = (N3)? mem[15] :
                        (N0)? mem[73] : 1'b0;
  assign r_data_o[14] = (N3)? mem[14] :
                        (N0)? mem[72] : 1'b0;
  assign r_data_o[13] = (N3)? mem[13] :
                        (N0)? mem[71] : 1'b0;
  assign r_data_o[12] = (N3)? mem[12] :
                        (N0)? mem[70] : 1'b0;
  assign r_data_o[11] = (N3)? mem[11] :
                        (N0)? mem[69] : 1'b0;
  assign r_data_o[10] = (N3)? mem[10] :
                        (N0)? mem[68] : 1'b0;
  assign r_data_o[9] = (N3)? mem[9] :
                       (N0)? mem[67] : 1'b0;
  assign r_data_o[8] = (N3)? mem[8] :
                       (N0)? mem[66] : 1'b0;
  assign r_data_o[7] = (N3)? mem[7] :
                       (N0)? mem[65] : 1'b0;
  assign r_data_o[6] = (N3)? mem[6] :
                       (N0)? mem[64] : 1'b0;
  assign r_data_o[5] = (N3)? mem[5] :
                       (N0)? mem[63] : 1'b0;
  assign r_data_o[4] = (N3)? mem[4] :
                       (N0)? mem[62] : 1'b0;
  assign r_data_o[3] = (N3)? mem[3] :
                       (N0)? mem[61] : 1'b0;
  assign r_data_o[2] = (N3)? mem[2] :
                       (N0)? mem[60] : 1'b0;
  assign r_data_o[1] = (N3)? mem[1] :
                       (N0)? mem[59] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] :
                       (N0)? mem[58] : 1'b0;
  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } :
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N8) begin
      { mem[115:58] } <= { w_data_i[57:0] };
    end
    if(N7) begin
      { mem[57:0] } <= { w_data_i[57:0] };
    end
  end


endmodule