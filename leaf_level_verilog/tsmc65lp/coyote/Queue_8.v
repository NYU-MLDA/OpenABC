module Queue_8
(
  clk,
  reset,
  io_enq_ready,
  io_enq_valid,
  io_enq_bits_data,
  io_enq_bits_datablock,
  io_deq_ready,
  io_deq_valid,
  io_deq_bits_data,
  io_deq_bits_datablock,
  io_count
);

  input [31:0] io_enq_bits_data;
  input [127:0] io_enq_bits_datablock;
  output [31:0] io_deq_bits_data;
  output [127:0] io_deq_bits_datablock;
  input clk;
  input reset;
  input io_enq_valid;
  input io_deq_ready;
  output io_enq_ready;
  output io_deq_valid;
  output io_count;
  wire io_enq_ready,io_deq_valid,io_count,N0,T2,do_enq,do_deq,empty,T11,N1,N2,N3,N4,N5,
  N6;
  reg [1:1] T0;
  reg [31:0] io_deq_bits_data;
  reg [127:0] io_deq_bits_datablock;
  assign io_count = 1'b0;
  assign T2 = do_enq ^ do_deq;

  always @(posedge clk) begin
    if(N3) begin
      T0[1] <= N4;
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[31] <= io_enq_bits_data[31];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[30] <= io_enq_bits_data[30];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[29] <= io_enq_bits_data[29];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[28] <= io_enq_bits_data[28];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[27] <= io_enq_bits_data[27];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[26] <= io_enq_bits_data[26];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[25] <= io_enq_bits_data[25];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[24] <= io_enq_bits_data[24];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[23] <= io_enq_bits_data[23];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[22] <= io_enq_bits_data[22];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[21] <= io_enq_bits_data[21];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[20] <= io_enq_bits_data[20];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[19] <= io_enq_bits_data[19];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[18] <= io_enq_bits_data[18];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[17] <= io_enq_bits_data[17];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[16] <= io_enq_bits_data[16];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[15] <= io_enq_bits_data[15];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[14] <= io_enq_bits_data[14];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[13] <= io_enq_bits_data[13];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[12] <= io_enq_bits_data[12];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[11] <= io_enq_bits_data[11];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[10] <= io_enq_bits_data[10];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[9] <= io_enq_bits_data[9];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[8] <= io_enq_bits_data[8];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[7] <= io_enq_bits_data[7];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[6] <= io_enq_bits_data[6];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[5] <= io_enq_bits_data[5];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[4] <= io_enq_bits_data[4];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[3] <= io_enq_bits_data[3];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[2] <= io_enq_bits_data[2];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[1] <= io_enq_bits_data[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_data[0] <= io_enq_bits_data[0];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[127] <= io_enq_bits_datablock[127];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[126] <= io_enq_bits_datablock[126];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[125] <= io_enq_bits_datablock[125];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[124] <= io_enq_bits_datablock[124];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[123] <= io_enq_bits_datablock[123];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[122] <= io_enq_bits_datablock[122];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[121] <= io_enq_bits_datablock[121];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[120] <= io_enq_bits_datablock[120];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[119] <= io_enq_bits_datablock[119];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[118] <= io_enq_bits_datablock[118];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[117] <= io_enq_bits_datablock[117];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[116] <= io_enq_bits_datablock[116];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[115] <= io_enq_bits_datablock[115];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[114] <= io_enq_bits_datablock[114];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[113] <= io_enq_bits_datablock[113];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[112] <= io_enq_bits_datablock[112];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[111] <= io_enq_bits_datablock[111];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[110] <= io_enq_bits_datablock[110];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[109] <= io_enq_bits_datablock[109];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[108] <= io_enq_bits_datablock[108];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[107] <= io_enq_bits_datablock[107];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[106] <= io_enq_bits_datablock[106];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[105] <= io_enq_bits_datablock[105];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[104] <= io_enq_bits_datablock[104];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[103] <= io_enq_bits_datablock[103];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[102] <= io_enq_bits_datablock[102];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[101] <= io_enq_bits_datablock[101];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[100] <= io_enq_bits_datablock[100];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[99] <= io_enq_bits_datablock[99];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[98] <= io_enq_bits_datablock[98];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[97] <= io_enq_bits_datablock[97];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[96] <= io_enq_bits_datablock[96];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[95] <= io_enq_bits_datablock[95];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[94] <= io_enq_bits_datablock[94];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[93] <= io_enq_bits_datablock[93];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[92] <= io_enq_bits_datablock[92];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[91] <= io_enq_bits_datablock[91];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[90] <= io_enq_bits_datablock[90];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[89] <= io_enq_bits_datablock[89];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[88] <= io_enq_bits_datablock[88];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[87] <= io_enq_bits_datablock[87];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[86] <= io_enq_bits_datablock[86];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[85] <= io_enq_bits_datablock[85];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[84] <= io_enq_bits_datablock[84];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[83] <= io_enq_bits_datablock[83];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[82] <= io_enq_bits_datablock[82];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[81] <= io_enq_bits_datablock[81];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[80] <= io_enq_bits_datablock[80];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[79] <= io_enq_bits_datablock[79];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[78] <= io_enq_bits_datablock[78];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[77] <= io_enq_bits_datablock[77];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[76] <= io_enq_bits_datablock[76];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[75] <= io_enq_bits_datablock[75];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[74] <= io_enq_bits_datablock[74];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[73] <= io_enq_bits_datablock[73];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[72] <= io_enq_bits_datablock[72];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[71] <= io_enq_bits_datablock[71];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[70] <= io_enq_bits_datablock[70];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[69] <= io_enq_bits_datablock[69];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[68] <= io_enq_bits_datablock[68];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[67] <= io_enq_bits_datablock[67];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[66] <= io_enq_bits_datablock[66];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[65] <= io_enq_bits_datablock[65];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[64] <= io_enq_bits_datablock[64];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[63] <= io_enq_bits_datablock[63];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[62] <= io_enq_bits_datablock[62];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[61] <= io_enq_bits_datablock[61];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[60] <= io_enq_bits_datablock[60];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[59] <= io_enq_bits_datablock[59];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[58] <= io_enq_bits_datablock[58];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[57] <= io_enq_bits_datablock[57];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[56] <= io_enq_bits_datablock[56];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[55] <= io_enq_bits_datablock[55];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[54] <= io_enq_bits_datablock[54];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[53] <= io_enq_bits_datablock[53];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[52] <= io_enq_bits_datablock[52];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[51] <= io_enq_bits_datablock[51];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[50] <= io_enq_bits_datablock[50];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[49] <= io_enq_bits_datablock[49];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[48] <= io_enq_bits_datablock[48];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[47] <= io_enq_bits_datablock[47];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[46] <= io_enq_bits_datablock[46];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[45] <= io_enq_bits_datablock[45];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[44] <= io_enq_bits_datablock[44];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[43] <= io_enq_bits_datablock[43];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[42] <= io_enq_bits_datablock[42];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[41] <= io_enq_bits_datablock[41];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[40] <= io_enq_bits_datablock[40];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[39] <= io_enq_bits_datablock[39];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[38] <= io_enq_bits_datablock[38];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[37] <= io_enq_bits_datablock[37];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[36] <= io_enq_bits_datablock[36];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[35] <= io_enq_bits_datablock[35];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[34] <= io_enq_bits_datablock[34];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[33] <= io_enq_bits_datablock[33];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[32] <= io_enq_bits_datablock[32];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[31] <= io_enq_bits_datablock[31];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[30] <= io_enq_bits_datablock[30];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[29] <= io_enq_bits_datablock[29];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[28] <= io_enq_bits_datablock[28];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[27] <= io_enq_bits_datablock[27];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[26] <= io_enq_bits_datablock[26];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[25] <= io_enq_bits_datablock[25];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[24] <= io_enq_bits_datablock[24];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[23] <= io_enq_bits_datablock[23];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[22] <= io_enq_bits_datablock[22];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[21] <= io_enq_bits_datablock[21];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[20] <= io_enq_bits_datablock[20];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[19] <= io_enq_bits_datablock[19];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[18] <= io_enq_bits_datablock[18];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[17] <= io_enq_bits_datablock[17];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[16] <= io_enq_bits_datablock[16];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[15] <= io_enq_bits_datablock[15];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[14] <= io_enq_bits_datablock[14];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[13] <= io_enq_bits_datablock[13];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[12] <= io_enq_bits_datablock[12];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[11] <= io_enq_bits_datablock[11];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[10] <= io_enq_bits_datablock[10];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[9] <= io_enq_bits_datablock[9];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[8] <= io_enq_bits_datablock[8];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[7] <= io_enq_bits_datablock[7];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[6] <= io_enq_bits_datablock[6];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[5] <= io_enq_bits_datablock[5];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[4] <= io_enq_bits_datablock[4];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[3] <= io_enq_bits_datablock[3];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[2] <= io_enq_bits_datablock[2];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[1] <= io_enq_bits_datablock[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_datablock[0] <= io_enq_bits_datablock[0];
    end 
  end

  assign N3 = (N0)? 1'b1 : 
              (N6)? 1'b1 : 
              (N2)? 1'b0 : 1'b0;
  assign N0 = reset;
  assign N4 = (N0)? 1'b0 : 
              (N6)? do_enq : 1'b0;
  assign do_enq = io_enq_ready & io_enq_valid;
  assign do_deq = io_deq_ready & io_deq_valid;
  assign io_deq_valid = ~empty;
  assign empty = ~T0[1];
  assign io_enq_ready = T11 | io_deq_ready;
  assign T11 = ~T0[1];
  assign N1 = T2 | reset;
  assign N2 = ~N1;
  assign N5 = ~reset;
  assign N6 = T2 & N5;

endmodule