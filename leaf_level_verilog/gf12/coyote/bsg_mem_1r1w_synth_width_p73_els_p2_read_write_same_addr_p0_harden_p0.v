module bsg_mem_1r1w_synth_width_p73_els_p2_read_write_same_addr_p0_harden_p0
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
  input [72:0] w_data_i;
  input [0:0] r_addr_i;
  output [72:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [72:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N7,N8;
  reg [145:0] mem;
  assign r_data_o[72] = (N3)? mem[72] : 
                        (N0)? mem[145] : 1'b0;
  assign N0 = r_addr_i[0];
  assign r_data_o[71] = (N3)? mem[71] : 
                        (N0)? mem[144] : 1'b0;
  assign r_data_o[70] = (N3)? mem[70] : 
                        (N0)? mem[143] : 1'b0;
  assign r_data_o[69] = (N3)? mem[69] : 
                        (N0)? mem[142] : 1'b0;
  assign r_data_o[68] = (N3)? mem[68] : 
                        (N0)? mem[141] : 1'b0;
  assign r_data_o[67] = (N3)? mem[67] : 
                        (N0)? mem[140] : 1'b0;
  assign r_data_o[66] = (N3)? mem[66] : 
                        (N0)? mem[139] : 1'b0;
  assign r_data_o[65] = (N3)? mem[65] : 
                        (N0)? mem[138] : 1'b0;
  assign r_data_o[64] = (N3)? mem[64] : 
                        (N0)? mem[137] : 1'b0;
  assign r_data_o[63] = (N3)? mem[63] : 
                        (N0)? mem[136] : 1'b0;
  assign r_data_o[62] = (N3)? mem[62] : 
                        (N0)? mem[135] : 1'b0;
  assign r_data_o[61] = (N3)? mem[61] : 
                        (N0)? mem[134] : 1'b0;
  assign r_data_o[60] = (N3)? mem[60] : 
                        (N0)? mem[133] : 1'b0;
  assign r_data_o[59] = (N3)? mem[59] : 
                        (N0)? mem[132] : 1'b0;
  assign r_data_o[58] = (N3)? mem[58] : 
                        (N0)? mem[131] : 1'b0;
  assign r_data_o[57] = (N3)? mem[57] : 
                        (N0)? mem[130] : 1'b0;
  assign r_data_o[56] = (N3)? mem[56] : 
                        (N0)? mem[129] : 1'b0;
  assign r_data_o[55] = (N3)? mem[55] : 
                        (N0)? mem[128] : 1'b0;
  assign r_data_o[54] = (N3)? mem[54] : 
                        (N0)? mem[127] : 1'b0;
  assign r_data_o[53] = (N3)? mem[53] : 
                        (N0)? mem[126] : 1'b0;
  assign r_data_o[52] = (N3)? mem[52] : 
                        (N0)? mem[125] : 1'b0;
  assign r_data_o[51] = (N3)? mem[51] : 
                        (N0)? mem[124] : 1'b0;
  assign r_data_o[50] = (N3)? mem[50] : 
                        (N0)? mem[123] : 1'b0;
  assign r_data_o[49] = (N3)? mem[49] : 
                        (N0)? mem[122] : 1'b0;
  assign r_data_o[48] = (N3)? mem[48] : 
                        (N0)? mem[121] : 1'b0;
  assign r_data_o[47] = (N3)? mem[47] : 
                        (N0)? mem[120] : 1'b0;
  assign r_data_o[46] = (N3)? mem[46] : 
                        (N0)? mem[119] : 1'b0;
  assign r_data_o[45] = (N3)? mem[45] : 
                        (N0)? mem[118] : 1'b0;
  assign r_data_o[44] = (N3)? mem[44] : 
                        (N0)? mem[117] : 1'b0;
  assign r_data_o[43] = (N3)? mem[43] : 
                        (N0)? mem[116] : 1'b0;
  assign r_data_o[42] = (N3)? mem[42] : 
                        (N0)? mem[115] : 1'b0;
  assign r_data_o[41] = (N3)? mem[41] : 
                        (N0)? mem[114] : 1'b0;
  assign r_data_o[40] = (N3)? mem[40] : 
                        (N0)? mem[113] : 1'b0;
  assign r_data_o[39] = (N3)? mem[39] : 
                        (N0)? mem[112] : 1'b0;
  assign r_data_o[38] = (N3)? mem[38] : 
                        (N0)? mem[111] : 1'b0;
  assign r_data_o[37] = (N3)? mem[37] : 
                        (N0)? mem[110] : 1'b0;
  assign r_data_o[36] = (N3)? mem[36] : 
                        (N0)? mem[109] : 1'b0;
  assign r_data_o[35] = (N3)? mem[35] : 
                        (N0)? mem[108] : 1'b0;
  assign r_data_o[34] = (N3)? mem[34] : 
                        (N0)? mem[107] : 1'b0;
  assign r_data_o[33] = (N3)? mem[33] : 
                        (N0)? mem[106] : 1'b0;
  assign r_data_o[32] = (N3)? mem[32] : 
                        (N0)? mem[105] : 1'b0;
  assign r_data_o[31] = (N3)? mem[31] : 
                        (N0)? mem[104] : 1'b0;
  assign r_data_o[30] = (N3)? mem[30] : 
                        (N0)? mem[103] : 1'b0;
  assign r_data_o[29] = (N3)? mem[29] : 
                        (N0)? mem[102] : 1'b0;
  assign r_data_o[28] = (N3)? mem[28] : 
                        (N0)? mem[101] : 1'b0;
  assign r_data_o[27] = (N3)? mem[27] : 
                        (N0)? mem[100] : 1'b0;
  assign r_data_o[26] = (N3)? mem[26] : 
                        (N0)? mem[99] : 1'b0;
  assign r_data_o[25] = (N3)? mem[25] : 
                        (N0)? mem[98] : 1'b0;
  assign r_data_o[24] = (N3)? mem[24] : 
                        (N0)? mem[97] : 1'b0;
  assign r_data_o[23] = (N3)? mem[23] : 
                        (N0)? mem[96] : 1'b0;
  assign r_data_o[22] = (N3)? mem[22] : 
                        (N0)? mem[95] : 1'b0;
  assign r_data_o[21] = (N3)? mem[21] : 
                        (N0)? mem[94] : 1'b0;
  assign r_data_o[20] = (N3)? mem[20] : 
                        (N0)? mem[93] : 1'b0;
  assign r_data_o[19] = (N3)? mem[19] : 
                        (N0)? mem[92] : 1'b0;
  assign r_data_o[18] = (N3)? mem[18] : 
                        (N0)? mem[91] : 1'b0;
  assign r_data_o[17] = (N3)? mem[17] : 
                        (N0)? mem[90] : 1'b0;
  assign r_data_o[16] = (N3)? mem[16] : 
                        (N0)? mem[89] : 1'b0;
  assign r_data_o[15] = (N3)? mem[15] : 
                        (N0)? mem[88] : 1'b0;
  assign r_data_o[14] = (N3)? mem[14] : 
                        (N0)? mem[87] : 1'b0;
  assign r_data_o[13] = (N3)? mem[13] : 
                        (N0)? mem[86] : 1'b0;
  assign r_data_o[12] = (N3)? mem[12] : 
                        (N0)? mem[85] : 1'b0;
  assign r_data_o[11] = (N3)? mem[11] : 
                        (N0)? mem[84] : 1'b0;
  assign r_data_o[10] = (N3)? mem[10] : 
                        (N0)? mem[83] : 1'b0;
  assign r_data_o[9] = (N3)? mem[9] : 
                       (N0)? mem[82] : 1'b0;
  assign r_data_o[8] = (N3)? mem[8] : 
                       (N0)? mem[81] : 1'b0;
  assign r_data_o[7] = (N3)? mem[7] : 
                       (N0)? mem[80] : 1'b0;
  assign r_data_o[6] = (N3)? mem[6] : 
                       (N0)? mem[79] : 1'b0;
  assign r_data_o[5] = (N3)? mem[5] : 
                       (N0)? mem[78] : 1'b0;
  assign r_data_o[4] = (N3)? mem[4] : 
                       (N0)? mem[77] : 1'b0;
  assign r_data_o[3] = (N3)? mem[3] : 
                       (N0)? mem[76] : 1'b0;
  assign r_data_o[2] = (N3)? mem[2] : 
                       (N0)? mem[75] : 1'b0;
  assign r_data_o[1] = (N3)? mem[1] : 
                       (N0)? mem[74] : 1'b0;
  assign r_data_o[0] = (N3)? mem[0] : 
                       (N0)? mem[73] : 1'b0;

  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[145] <= w_data_i[72];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[144] <= w_data_i[71];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[143] <= w_data_i[70];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[142] <= w_data_i[69];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[141] <= w_data_i[68];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[140] <= w_data_i[67];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[139] <= w_data_i[66];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[138] <= w_data_i[65];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[137] <= w_data_i[64];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[136] <= w_data_i[63];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[135] <= w_data_i[62];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[134] <= w_data_i[61];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[133] <= w_data_i[60];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[132] <= w_data_i[59];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[131] <= w_data_i[58];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[130] <= w_data_i[57];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[129] <= w_data_i[56];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[128] <= w_data_i[55];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[127] <= w_data_i[54];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[126] <= w_data_i[53];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[125] <= w_data_i[52];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[124] <= w_data_i[51];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[123] <= w_data_i[50];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[122] <= w_data_i[49];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[121] <= w_data_i[48];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[120] <= w_data_i[47];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[119] <= w_data_i[46];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[118] <= w_data_i[45];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[117] <= w_data_i[44];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[116] <= w_data_i[43];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[115] <= w_data_i[42];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[114] <= w_data_i[41];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[113] <= w_data_i[40];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[112] <= w_data_i[39];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[111] <= w_data_i[38];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[110] <= w_data_i[37];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[109] <= w_data_i[36];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[108] <= w_data_i[35];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[107] <= w_data_i[34];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[106] <= w_data_i[33];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[105] <= w_data_i[32];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[104] <= w_data_i[31];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[103] <= w_data_i[30];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[102] <= w_data_i[29];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[101] <= w_data_i[28];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[100] <= w_data_i[27];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[99] <= w_data_i[26];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[98] <= w_data_i[25];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[97] <= w_data_i[24];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[96] <= w_data_i[23];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[95] <= w_data_i[22];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[94] <= w_data_i[21];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[93] <= w_data_i[20];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[92] <= w_data_i[19];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[91] <= w_data_i[18];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[90] <= w_data_i[17];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[89] <= w_data_i[16];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[88] <= w_data_i[15];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[87] <= w_data_i[14];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[86] <= w_data_i[13];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[85] <= w_data_i[12];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[84] <= w_data_i[11];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[83] <= w_data_i[10];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[82] <= w_data_i[9];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[81] <= w_data_i[8];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[80] <= w_data_i[7];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[79] <= w_data_i[6];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[78] <= w_data_i[5];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[77] <= w_data_i[4];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[76] <= w_data_i[3];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[75] <= w_data_i[2];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[74] <= w_data_i[1];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N8) begin
      mem[73] <= w_data_i[0];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[72] <= w_data_i[72];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[71] <= w_data_i[71];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[70] <= w_data_i[70];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[69] <= w_data_i[69];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[68] <= w_data_i[68];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[67] <= w_data_i[67];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[66] <= w_data_i[66];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[65] <= w_data_i[65];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[64] <= w_data_i[64];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[63] <= w_data_i[63];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[62] <= w_data_i[62];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[61] <= w_data_i[61];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[60] <= w_data_i[60];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[59] <= w_data_i[59];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[58] <= w_data_i[58];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[57] <= w_data_i[57];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[56] <= w_data_i[56];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[55] <= w_data_i[55];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[54] <= w_data_i[54];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[53] <= w_data_i[53];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[52] <= w_data_i[52];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[51] <= w_data_i[51];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[50] <= w_data_i[50];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[49] <= w_data_i[49];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[48] <= w_data_i[48];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[47] <= w_data_i[47];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[46] <= w_data_i[46];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[45] <= w_data_i[45];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[44] <= w_data_i[44];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[43] <= w_data_i[43];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[42] <= w_data_i[42];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[41] <= w_data_i[41];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[40] <= w_data_i[40];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[39] <= w_data_i[39];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[38] <= w_data_i[38];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[37] <= w_data_i[37];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[36] <= w_data_i[36];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[35] <= w_data_i[35];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[34] <= w_data_i[34];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[33] <= w_data_i[33];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[32] <= w_data_i[32];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[31] <= w_data_i[31];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[30] <= w_data_i[30];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[29] <= w_data_i[29];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[28] <= w_data_i[28];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[27] <= w_data_i[27];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[26] <= w_data_i[26];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[25] <= w_data_i[25];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[24] <= w_data_i[24];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[23] <= w_data_i[23];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[22] <= w_data_i[22];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[21] <= w_data_i[21];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[20] <= w_data_i[20];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[19] <= w_data_i[19];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[18] <= w_data_i[18];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[17] <= w_data_i[17];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[16] <= w_data_i[16];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[15] <= w_data_i[15];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[14] <= w_data_i[14];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[13] <= w_data_i[13];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[12] <= w_data_i[12];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[11] <= w_data_i[11];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[10] <= w_data_i[10];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[9] <= w_data_i[9];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[8] <= w_data_i[8];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[7] <= w_data_i[7];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[6] <= w_data_i[6];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[5] <= w_data_i[5];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[4] <= w_data_i[4];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[3] <= w_data_i[3];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[2] <= w_data_i[2];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[1] <= w_data_i[1];
    end 
  end


  always @(posedge w_clk_i) begin
    if(N7) begin
      mem[0] <= w_data_i[0];
    end 
  end

  assign N5 = ~w_addr_i[0];
  assign { N8, N7 } = (N1)? { w_addr_i[0:0], N5 } : 
                      (N2)? { 1'b0, 1'b0 } : 1'b0;
  assign N1 = w_v_i;
  assign N2 = N4;
  assign N3 = ~r_addr_i[0];
  assign N4 = ~w_v_i;

endmodule