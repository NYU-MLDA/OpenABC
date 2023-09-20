module Queue_17
(
  clk,
  reset,
  io_enq_ready,
  io_enq_valid,
  io_enq_bits_header_src,
  io_enq_bits_header_dst,
  io_enq_bits_payload_addr_beat,
  io_enq_bits_payload_addr_block,
  io_enq_bits_payload_client_xact_id,
  io_enq_bits_payload_voluntary,
  io_enq_bits_payload_r_type,
  io_enq_bits_payload_data,
  io_deq_ready,
  io_deq_valid,
  io_deq_bits_header_src,
  io_deq_bits_header_dst,
  io_deq_bits_payload_addr_beat,
  io_deq_bits_payload_addr_block,
  io_deq_bits_payload_client_xact_id,
  io_deq_bits_payload_voluntary,
  io_deq_bits_payload_r_type,
  io_deq_bits_payload_data,
  io_count
);

  input [2:0] io_enq_bits_header_src;
  input [2:0] io_enq_bits_header_dst;
  input [1:0] io_enq_bits_payload_addr_beat;
  input [25:0] io_enq_bits_payload_addr_block;
  input [5:0] io_enq_bits_payload_client_xact_id;
  input [2:0] io_enq_bits_payload_r_type;
  input [127:0] io_enq_bits_payload_data;
  output [2:0] io_deq_bits_header_src;
  output [2:0] io_deq_bits_header_dst;
  output [1:0] io_deq_bits_payload_addr_beat;
  output [25:0] io_deq_bits_payload_addr_block;
  output [5:0] io_deq_bits_payload_client_xact_id;
  output [2:0] io_deq_bits_payload_r_type;
  output [127:0] io_deq_bits_payload_data;
  input clk;
  input reset;
  input io_enq_valid;
  input io_enq_bits_payload_voluntary;
  input io_deq_ready;
  output io_enq_ready;
  output io_deq_valid;
  output io_deq_bits_payload_voluntary;
  output io_count;
  wire io_enq_ready,io_deq_valid,io_count,N0,T2,do_enq,do_deq,empty,N1,N2,N3,N4,N5,N6;
  reg [1:1] T0;
  reg [2:0] io_deq_bits_header_src,io_deq_bits_header_dst,io_deq_bits_payload_r_type;
  reg [1:0] io_deq_bits_payload_addr_beat;
  reg [25:0] io_deq_bits_payload_addr_block;
  reg [5:0] io_deq_bits_payload_client_xact_id;
  reg io_deq_bits_payload_voluntary;
  reg [127:0] io_deq_bits_payload_data;
  assign io_count = 1'b0;
  assign T2 = do_enq ^ do_deq;

  always @(posedge clk) begin
    if(N3) begin
      T0[1] <= N4;
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_header_src[2] <= io_enq_bits_header_src[2];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_header_src[1] <= io_enq_bits_header_src[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_header_src[0] <= io_enq_bits_header_src[0];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_header_dst[2] <= io_enq_bits_header_dst[2];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_header_dst[1] <= io_enq_bits_header_dst[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_header_dst[0] <= io_enq_bits_header_dst[0];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_beat[1] <= io_enq_bits_payload_addr_beat[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_beat[0] <= io_enq_bits_payload_addr_beat[0];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_block[25] <= io_enq_bits_payload_addr_block[25];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_block[24] <= io_enq_bits_payload_addr_block[24];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_block[23] <= io_enq_bits_payload_addr_block[23];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_block[22] <= io_enq_bits_payload_addr_block[22];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_block[21] <= io_enq_bits_payload_addr_block[21];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_block[20] <= io_enq_bits_payload_addr_block[20];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_block[19] <= io_enq_bits_payload_addr_block[19];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_block[18] <= io_enq_bits_payload_addr_block[18];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_block[17] <= io_enq_bits_payload_addr_block[17];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_block[16] <= io_enq_bits_payload_addr_block[16];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_block[15] <= io_enq_bits_payload_addr_block[15];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_block[14] <= io_enq_bits_payload_addr_block[14];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_block[13] <= io_enq_bits_payload_addr_block[13];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_block[12] <= io_enq_bits_payload_addr_block[12];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_block[11] <= io_enq_bits_payload_addr_block[11];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_block[10] <= io_enq_bits_payload_addr_block[10];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_block[9] <= io_enq_bits_payload_addr_block[9];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_block[8] <= io_enq_bits_payload_addr_block[8];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_block[7] <= io_enq_bits_payload_addr_block[7];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_block[6] <= io_enq_bits_payload_addr_block[6];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_block[5] <= io_enq_bits_payload_addr_block[5];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_block[4] <= io_enq_bits_payload_addr_block[4];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_block[3] <= io_enq_bits_payload_addr_block[3];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_block[2] <= io_enq_bits_payload_addr_block[2];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_block[1] <= io_enq_bits_payload_addr_block[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_addr_block[0] <= io_enq_bits_payload_addr_block[0];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_client_xact_id[5] <= io_enq_bits_payload_client_xact_id[5];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_client_xact_id[4] <= io_enq_bits_payload_client_xact_id[4];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_client_xact_id[3] <= io_enq_bits_payload_client_xact_id[3];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_client_xact_id[2] <= io_enq_bits_payload_client_xact_id[2];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_client_xact_id[1] <= io_enq_bits_payload_client_xact_id[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_client_xact_id[0] <= io_enq_bits_payload_client_xact_id[0];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_voluntary <= io_enq_bits_payload_voluntary;
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_r_type[2] <= io_enq_bits_payload_r_type[2];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_r_type[1] <= io_enq_bits_payload_r_type[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_r_type[0] <= io_enq_bits_payload_r_type[0];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[127] <= io_enq_bits_payload_data[127];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[126] <= io_enq_bits_payload_data[126];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[125] <= io_enq_bits_payload_data[125];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[124] <= io_enq_bits_payload_data[124];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[123] <= io_enq_bits_payload_data[123];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[122] <= io_enq_bits_payload_data[122];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[121] <= io_enq_bits_payload_data[121];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[120] <= io_enq_bits_payload_data[120];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[119] <= io_enq_bits_payload_data[119];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[118] <= io_enq_bits_payload_data[118];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[117] <= io_enq_bits_payload_data[117];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[116] <= io_enq_bits_payload_data[116];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[115] <= io_enq_bits_payload_data[115];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[114] <= io_enq_bits_payload_data[114];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[113] <= io_enq_bits_payload_data[113];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[112] <= io_enq_bits_payload_data[112];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[111] <= io_enq_bits_payload_data[111];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[110] <= io_enq_bits_payload_data[110];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[109] <= io_enq_bits_payload_data[109];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[108] <= io_enq_bits_payload_data[108];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[107] <= io_enq_bits_payload_data[107];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[106] <= io_enq_bits_payload_data[106];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[105] <= io_enq_bits_payload_data[105];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[104] <= io_enq_bits_payload_data[104];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[103] <= io_enq_bits_payload_data[103];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[102] <= io_enq_bits_payload_data[102];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[101] <= io_enq_bits_payload_data[101];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[100] <= io_enq_bits_payload_data[100];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[99] <= io_enq_bits_payload_data[99];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[98] <= io_enq_bits_payload_data[98];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[97] <= io_enq_bits_payload_data[97];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[96] <= io_enq_bits_payload_data[96];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[95] <= io_enq_bits_payload_data[95];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[94] <= io_enq_bits_payload_data[94];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[93] <= io_enq_bits_payload_data[93];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[92] <= io_enq_bits_payload_data[92];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[91] <= io_enq_bits_payload_data[91];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[90] <= io_enq_bits_payload_data[90];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[89] <= io_enq_bits_payload_data[89];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[88] <= io_enq_bits_payload_data[88];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[87] <= io_enq_bits_payload_data[87];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[86] <= io_enq_bits_payload_data[86];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[85] <= io_enq_bits_payload_data[85];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[84] <= io_enq_bits_payload_data[84];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[83] <= io_enq_bits_payload_data[83];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[82] <= io_enq_bits_payload_data[82];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[81] <= io_enq_bits_payload_data[81];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[80] <= io_enq_bits_payload_data[80];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[79] <= io_enq_bits_payload_data[79];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[78] <= io_enq_bits_payload_data[78];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[77] <= io_enq_bits_payload_data[77];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[76] <= io_enq_bits_payload_data[76];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[75] <= io_enq_bits_payload_data[75];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[74] <= io_enq_bits_payload_data[74];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[73] <= io_enq_bits_payload_data[73];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[72] <= io_enq_bits_payload_data[72];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[71] <= io_enq_bits_payload_data[71];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[70] <= io_enq_bits_payload_data[70];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[69] <= io_enq_bits_payload_data[69];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[68] <= io_enq_bits_payload_data[68];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[67] <= io_enq_bits_payload_data[67];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[66] <= io_enq_bits_payload_data[66];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[65] <= io_enq_bits_payload_data[65];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[64] <= io_enq_bits_payload_data[64];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[63] <= io_enq_bits_payload_data[63];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[62] <= io_enq_bits_payload_data[62];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[61] <= io_enq_bits_payload_data[61];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[60] <= io_enq_bits_payload_data[60];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[59] <= io_enq_bits_payload_data[59];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[58] <= io_enq_bits_payload_data[58];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[57] <= io_enq_bits_payload_data[57];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[56] <= io_enq_bits_payload_data[56];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[55] <= io_enq_bits_payload_data[55];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[54] <= io_enq_bits_payload_data[54];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[53] <= io_enq_bits_payload_data[53];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[52] <= io_enq_bits_payload_data[52];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[51] <= io_enq_bits_payload_data[51];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[50] <= io_enq_bits_payload_data[50];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[49] <= io_enq_bits_payload_data[49];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[48] <= io_enq_bits_payload_data[48];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[47] <= io_enq_bits_payload_data[47];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[46] <= io_enq_bits_payload_data[46];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[45] <= io_enq_bits_payload_data[45];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[44] <= io_enq_bits_payload_data[44];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[43] <= io_enq_bits_payload_data[43];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[42] <= io_enq_bits_payload_data[42];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[41] <= io_enq_bits_payload_data[41];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[40] <= io_enq_bits_payload_data[40];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[39] <= io_enq_bits_payload_data[39];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[38] <= io_enq_bits_payload_data[38];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[37] <= io_enq_bits_payload_data[37];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[36] <= io_enq_bits_payload_data[36];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[35] <= io_enq_bits_payload_data[35];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[34] <= io_enq_bits_payload_data[34];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[33] <= io_enq_bits_payload_data[33];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[32] <= io_enq_bits_payload_data[32];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[31] <= io_enq_bits_payload_data[31];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[30] <= io_enq_bits_payload_data[30];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[29] <= io_enq_bits_payload_data[29];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[28] <= io_enq_bits_payload_data[28];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[27] <= io_enq_bits_payload_data[27];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[26] <= io_enq_bits_payload_data[26];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[25] <= io_enq_bits_payload_data[25];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[24] <= io_enq_bits_payload_data[24];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[23] <= io_enq_bits_payload_data[23];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[22] <= io_enq_bits_payload_data[22];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[21] <= io_enq_bits_payload_data[21];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[20] <= io_enq_bits_payload_data[20];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[19] <= io_enq_bits_payload_data[19];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[18] <= io_enq_bits_payload_data[18];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[17] <= io_enq_bits_payload_data[17];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[16] <= io_enq_bits_payload_data[16];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[15] <= io_enq_bits_payload_data[15];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[14] <= io_enq_bits_payload_data[14];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[13] <= io_enq_bits_payload_data[13];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[12] <= io_enq_bits_payload_data[12];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[11] <= io_enq_bits_payload_data[11];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[10] <= io_enq_bits_payload_data[10];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[9] <= io_enq_bits_payload_data[9];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[8] <= io_enq_bits_payload_data[8];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[7] <= io_enq_bits_payload_data[7];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[6] <= io_enq_bits_payload_data[6];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[5] <= io_enq_bits_payload_data[5];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[4] <= io_enq_bits_payload_data[4];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[3] <= io_enq_bits_payload_data[3];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[2] <= io_enq_bits_payload_data[2];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[1] <= io_enq_bits_payload_data[1];
    end 
  end


  always @(posedge clk) begin
    if(do_enq) begin
      io_deq_bits_payload_data[0] <= io_enq_bits_payload_data[0];
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
  assign io_enq_ready = ~T0[1];
  assign N1 = T2 | reset;
  assign N2 = ~N1;
  assign N5 = ~reset;
  assign N6 = T2 & N5;

endmodule