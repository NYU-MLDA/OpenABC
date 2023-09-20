module Queue_1
(
  clk,
  reset,
  io_enq_ready,
  io_enq_valid,
  io_enq_bits,
  io_deq_ready,
  io_deq_valid,
  io_deq_bits,
  io_count
);

  input [63:0] io_enq_bits;
  output [63:0] io_deq_bits;
  output [1:0] io_count;
  input clk;
  input reset;
  input io_enq_valid;
  input io_deq_ready;
  output io_enq_ready;
  output io_deq_valid;
  wire [63:0] io_deq_bits;
  wire [1:0] io_count;
  wire io_enq_ready,io_deq_valid,N0,N1,N2,N3,N4,do_deq,T3,do_enq,T6,ptr_match,T9,N5,
  empty,T13,full,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N21,N22,N23,N24,
  N25,N26;
  reg R1,N20,maybe_full;
  reg [127:0] ram;
  assign N0 = N20 ^ R1;
  assign ptr_match = ~N0;
  assign T9 = do_enq ^ do_deq;
  assign io_deq_bits[63] = (N5)? ram[63] : 
                           (N1)? ram[127] : 1'b0;
  assign N1 = R1;
  assign io_deq_bits[62] = (N5)? ram[62] : 
                           (N1)? ram[126] : 1'b0;
  assign io_deq_bits[61] = (N5)? ram[61] : 
                           (N1)? ram[125] : 1'b0;
  assign io_deq_bits[60] = (N5)? ram[60] : 
                           (N1)? ram[124] : 1'b0;
  assign io_deq_bits[59] = (N5)? ram[59] : 
                           (N1)? ram[123] : 1'b0;
  assign io_deq_bits[58] = (N5)? ram[58] : 
                           (N1)? ram[122] : 1'b0;
  assign io_deq_bits[57] = (N5)? ram[57] : 
                           (N1)? ram[121] : 1'b0;
  assign io_deq_bits[56] = (N5)? ram[56] : 
                           (N1)? ram[120] : 1'b0;
  assign io_deq_bits[55] = (N5)? ram[55] : 
                           (N1)? ram[119] : 1'b0;
  assign io_deq_bits[54] = (N5)? ram[54] : 
                           (N1)? ram[118] : 1'b0;
  assign io_deq_bits[53] = (N5)? ram[53] : 
                           (N1)? ram[117] : 1'b0;
  assign io_deq_bits[52] = (N5)? ram[52] : 
                           (N1)? ram[116] : 1'b0;
  assign io_deq_bits[51] = (N5)? ram[51] : 
                           (N1)? ram[115] : 1'b0;
  assign io_deq_bits[50] = (N5)? ram[50] : 
                           (N1)? ram[114] : 1'b0;
  assign io_deq_bits[49] = (N5)? ram[49] : 
                           (N1)? ram[113] : 1'b0;
  assign io_deq_bits[48] = (N5)? ram[48] : 
                           (N1)? ram[112] : 1'b0;
  assign io_deq_bits[47] = (N5)? ram[47] : 
                           (N1)? ram[111] : 1'b0;
  assign io_deq_bits[46] = (N5)? ram[46] : 
                           (N1)? ram[110] : 1'b0;
  assign io_deq_bits[45] = (N5)? ram[45] : 
                           (N1)? ram[109] : 1'b0;
  assign io_deq_bits[44] = (N5)? ram[44] : 
                           (N1)? ram[108] : 1'b0;
  assign io_deq_bits[43] = (N5)? ram[43] : 
                           (N1)? ram[107] : 1'b0;
  assign io_deq_bits[42] = (N5)? ram[42] : 
                           (N1)? ram[106] : 1'b0;
  assign io_deq_bits[41] = (N5)? ram[41] : 
                           (N1)? ram[105] : 1'b0;
  assign io_deq_bits[40] = (N5)? ram[40] : 
                           (N1)? ram[104] : 1'b0;
  assign io_deq_bits[39] = (N5)? ram[39] : 
                           (N1)? ram[103] : 1'b0;
  assign io_deq_bits[38] = (N5)? ram[38] : 
                           (N1)? ram[102] : 1'b0;
  assign io_deq_bits[37] = (N5)? ram[37] : 
                           (N1)? ram[101] : 1'b0;
  assign io_deq_bits[36] = (N5)? ram[36] : 
                           (N1)? ram[100] : 1'b0;
  assign io_deq_bits[35] = (N5)? ram[35] : 
                           (N1)? ram[99] : 1'b0;
  assign io_deq_bits[34] = (N5)? ram[34] : 
                           (N1)? ram[98] : 1'b0;
  assign io_deq_bits[33] = (N5)? ram[33] : 
                           (N1)? ram[97] : 1'b0;
  assign io_deq_bits[32] = (N5)? ram[32] : 
                           (N1)? ram[96] : 1'b0;
  assign io_deq_bits[31] = (N5)? ram[31] : 
                           (N1)? ram[95] : 1'b0;
  assign io_deq_bits[30] = (N5)? ram[30] : 
                           (N1)? ram[94] : 1'b0;
  assign io_deq_bits[29] = (N5)? ram[29] : 
                           (N1)? ram[93] : 1'b0;
  assign io_deq_bits[28] = (N5)? ram[28] : 
                           (N1)? ram[92] : 1'b0;
  assign io_deq_bits[27] = (N5)? ram[27] : 
                           (N1)? ram[91] : 1'b0;
  assign io_deq_bits[26] = (N5)? ram[26] : 
                           (N1)? ram[90] : 1'b0;
  assign io_deq_bits[25] = (N5)? ram[25] : 
                           (N1)? ram[89] : 1'b0;
  assign io_deq_bits[24] = (N5)? ram[24] : 
                           (N1)? ram[88] : 1'b0;
  assign io_deq_bits[23] = (N5)? ram[23] : 
                           (N1)? ram[87] : 1'b0;
  assign io_deq_bits[22] = (N5)? ram[22] : 
                           (N1)? ram[86] : 1'b0;
  assign io_deq_bits[21] = (N5)? ram[21] : 
                           (N1)? ram[85] : 1'b0;
  assign io_deq_bits[20] = (N5)? ram[20] : 
                           (N1)? ram[84] : 1'b0;
  assign io_deq_bits[19] = (N5)? ram[19] : 
                           (N1)? ram[83] : 1'b0;
  assign io_deq_bits[18] = (N5)? ram[18] : 
                           (N1)? ram[82] : 1'b0;
  assign io_deq_bits[17] = (N5)? ram[17] : 
                           (N1)? ram[81] : 1'b0;
  assign io_deq_bits[16] = (N5)? ram[16] : 
                           (N1)? ram[80] : 1'b0;
  assign io_deq_bits[15] = (N5)? ram[15] : 
                           (N1)? ram[79] : 1'b0;
  assign io_deq_bits[14] = (N5)? ram[14] : 
                           (N1)? ram[78] : 1'b0;
  assign io_deq_bits[13] = (N5)? ram[13] : 
                           (N1)? ram[77] : 1'b0;
  assign io_deq_bits[12] = (N5)? ram[12] : 
                           (N1)? ram[76] : 1'b0;
  assign io_deq_bits[11] = (N5)? ram[11] : 
                           (N1)? ram[75] : 1'b0;
  assign io_deq_bits[10] = (N5)? ram[10] : 
                           (N1)? ram[74] : 1'b0;
  assign io_deq_bits[9] = (N5)? ram[9] : 
                          (N1)? ram[73] : 1'b0;
  assign io_deq_bits[8] = (N5)? ram[8] : 
                          (N1)? ram[72] : 1'b0;
  assign io_deq_bits[7] = (N5)? ram[7] : 
                          (N1)? ram[71] : 1'b0;
  assign io_deq_bits[6] = (N5)? ram[6] : 
                          (N1)? ram[70] : 1'b0;
  assign io_deq_bits[5] = (N5)? ram[5] : 
                          (N1)? ram[69] : 1'b0;
  assign io_deq_bits[4] = (N5)? ram[4] : 
                          (N1)? ram[68] : 1'b0;
  assign io_deq_bits[3] = (N5)? ram[3] : 
                          (N1)? ram[67] : 1'b0;
  assign io_deq_bits[2] = (N5)? ram[2] : 
                          (N1)? ram[66] : 1'b0;
  assign io_deq_bits[1] = (N5)? ram[1] : 
                          (N1)? ram[65] : 1'b0;
  assign io_deq_bits[0] = (N5)? ram[0] : 
                          (N1)? ram[64] : 1'b0;

  always @(posedge clk) begin
    if(N8) begin
      R1 <= N9;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      N20 <= N13;
    end 
  end


  always @(posedge clk) begin
    if(N16) begin
      maybe_full <= N17;
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[127] <= io_enq_bits[63];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[126] <= io_enq_bits[62];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[125] <= io_enq_bits[61];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[124] <= io_enq_bits[60];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[123] <= io_enq_bits[59];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[122] <= io_enq_bits[58];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[121] <= io_enq_bits[57];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[120] <= io_enq_bits[56];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[119] <= io_enq_bits[55];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[118] <= io_enq_bits[54];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[117] <= io_enq_bits[53];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[116] <= io_enq_bits[52];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[115] <= io_enq_bits[51];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[114] <= io_enq_bits[50];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[113] <= io_enq_bits[49];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[112] <= io_enq_bits[48];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[111] <= io_enq_bits[47];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[110] <= io_enq_bits[46];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[109] <= io_enq_bits[45];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[108] <= io_enq_bits[44];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[107] <= io_enq_bits[43];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[106] <= io_enq_bits[42];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[105] <= io_enq_bits[41];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[104] <= io_enq_bits[40];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[103] <= io_enq_bits[39];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[102] <= io_enq_bits[38];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[101] <= io_enq_bits[37];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[100] <= io_enq_bits[36];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[99] <= io_enq_bits[35];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[98] <= io_enq_bits[34];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[97] <= io_enq_bits[33];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[96] <= io_enq_bits[32];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[95] <= io_enq_bits[31];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[94] <= io_enq_bits[30];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[93] <= io_enq_bits[29];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[92] <= io_enq_bits[28];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[91] <= io_enq_bits[27];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[90] <= io_enq_bits[26];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[89] <= io_enq_bits[25];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[88] <= io_enq_bits[24];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[87] <= io_enq_bits[23];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[86] <= io_enq_bits[22];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[85] <= io_enq_bits[21];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[84] <= io_enq_bits[20];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[83] <= io_enq_bits[19];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[82] <= io_enq_bits[18];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[81] <= io_enq_bits[17];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[80] <= io_enq_bits[16];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[79] <= io_enq_bits[15];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[78] <= io_enq_bits[14];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[77] <= io_enq_bits[13];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[76] <= io_enq_bits[12];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[75] <= io_enq_bits[11];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[74] <= io_enq_bits[10];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[73] <= io_enq_bits[9];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[72] <= io_enq_bits[8];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[71] <= io_enq_bits[7];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[70] <= io_enq_bits[6];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[69] <= io_enq_bits[5];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[68] <= io_enq_bits[4];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[67] <= io_enq_bits[3];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[66] <= io_enq_bits[2];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[65] <= io_enq_bits[1];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[64] <= io_enq_bits[0];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[63] <= io_enq_bits[63];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[62] <= io_enq_bits[62];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[61] <= io_enq_bits[61];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[60] <= io_enq_bits[60];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[59] <= io_enq_bits[59];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[58] <= io_enq_bits[58];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[57] <= io_enq_bits[57];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[56] <= io_enq_bits[56];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[55] <= io_enq_bits[55];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[54] <= io_enq_bits[54];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[53] <= io_enq_bits[53];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[52] <= io_enq_bits[52];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[51] <= io_enq_bits[51];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[50] <= io_enq_bits[50];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[49] <= io_enq_bits[49];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[48] <= io_enq_bits[48];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[47] <= io_enq_bits[47];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[46] <= io_enq_bits[46];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[45] <= io_enq_bits[45];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[44] <= io_enq_bits[44];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[43] <= io_enq_bits[43];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[42] <= io_enq_bits[42];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[41] <= io_enq_bits[41];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[40] <= io_enq_bits[40];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[39] <= io_enq_bits[39];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[38] <= io_enq_bits[38];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[37] <= io_enq_bits[37];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[36] <= io_enq_bits[36];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[35] <= io_enq_bits[35];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[34] <= io_enq_bits[34];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[33] <= io_enq_bits[33];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[32] <= io_enq_bits[32];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[31] <= io_enq_bits[31];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[30] <= io_enq_bits[30];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[29] <= io_enq_bits[29];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[28] <= io_enq_bits[28];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[27] <= io_enq_bits[27];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[26] <= io_enq_bits[26];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[25] <= io_enq_bits[25];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[24] <= io_enq_bits[24];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[23] <= io_enq_bits[23];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[22] <= io_enq_bits[22];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[21] <= io_enq_bits[21];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[20] <= io_enq_bits[20];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[19] <= io_enq_bits[19];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[18] <= io_enq_bits[18];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[17] <= io_enq_bits[17];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[16] <= io_enq_bits[16];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[15] <= io_enq_bits[15];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[14] <= io_enq_bits[14];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[13] <= io_enq_bits[13];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[12] <= io_enq_bits[12];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[11] <= io_enq_bits[11];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[10] <= io_enq_bits[10];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[9] <= io_enq_bits[9];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[8] <= io_enq_bits[8];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[7] <= io_enq_bits[7];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[6] <= io_enq_bits[6];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[5] <= io_enq_bits[5];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[4] <= io_enq_bits[4];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[3] <= io_enq_bits[3];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[2] <= io_enq_bits[2];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[1] <= io_enq_bits[1];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[0] <= io_enq_bits[0];
    end 
  end

  assign io_count[0] = N20 ^ R1;
  assign T3 = R1 ^ 1'b1;
  assign T6 = N20 ^ 1'b1;
  assign N19 = ~N20;
  assign N8 = (N2)? 1'b1 : 
              (N24)? 1'b1 : 
              (N7)? 1'b0 : 1'b0;
  assign N2 = reset;
  assign N9 = (N2)? 1'b0 : 
              (N24)? T3 : 1'b0;
  assign N12 = (N2)? 1'b1 : 
               (N25)? 1'b1 : 
               (N11)? 1'b0 : 1'b0;
  assign N13 = (N2)? 1'b0 : 
               (N25)? T6 : 1'b0;
  assign N16 = (N2)? 1'b1 : 
               (N26)? 1'b1 : 
               (N15)? 1'b0 : 1'b0;
  assign N17 = (N2)? 1'b0 : 
               (N26)? do_enq : 1'b0;
  assign { N22, N21 } = (N3)? { N20, N19 } : 
                        (N4)? { 1'b0, 1'b0 } : 1'b0;
  assign N3 = do_enq;
  assign N4 = N18;
  assign do_deq = io_deq_ready & io_deq_valid;
  assign do_enq = io_enq_ready & io_enq_valid;
  assign io_count[1] = maybe_full & ptr_match;
  assign N5 = ~R1;
  assign io_deq_valid = ~empty;
  assign empty = ptr_match & T13;
  assign T13 = ~maybe_full;
  assign io_enq_ready = ~full;
  assign full = ptr_match & maybe_full;
  assign N6 = do_deq | reset;
  assign N7 = ~N6;
  assign N10 = do_enq | reset;
  assign N11 = ~N10;
  assign N14 = T9 | reset;
  assign N15 = ~N14;
  assign N18 = ~do_enq;
  assign N23 = ~reset;
  assign N24 = do_deq & N23;
  assign N25 = do_enq & N23;
  assign N26 = T9 & N23;

endmodule