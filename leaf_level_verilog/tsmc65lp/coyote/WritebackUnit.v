module WritebackUnit
(
  clk,
  reset,
  io_req_ready,
  io_req_valid,
  io_req_bits_addr_beat,
  io_req_bits_addr_block,
  io_req_bits_client_xact_id,
  io_req_bits_voluntary,
  io_req_bits_r_type,
  io_req_bits_data,
  io_req_bits_way_en,
  io_meta_read_ready,
  io_meta_read_valid,
  io_meta_read_bits_idx,
  io_meta_read_bits_tag,
  io_data_req_ready,
  io_data_req_valid,
  io_data_req_bits_way_en,
  io_data_req_bits_addr,
  io_data_resp,
  io_release_ready,
  io_release_valid,
  io_release_bits_addr_beat,
  io_release_bits_addr_block,
  io_release_bits_client_xact_id,
  io_release_bits_voluntary,
  io_release_bits_r_type,
  io_release_bits_data
);

  input [1:0] io_req_bits_addr_beat;
  input [25:0] io_req_bits_addr_block;
  input [5:0] io_req_bits_client_xact_id;
  input [2:0] io_req_bits_r_type;
  input [127:0] io_req_bits_data;
  input [3:0] io_req_bits_way_en;
  output [5:0] io_meta_read_bits_idx;
  output [19:0] io_meta_read_bits_tag;
  output [3:0] io_data_req_bits_way_en;
  output [11:0] io_data_req_bits_addr;
  input [127:0] io_data_resp;
  output [1:0] io_release_bits_addr_beat;
  output [25:0] io_release_bits_addr_block;
  output [5:0] io_release_bits_client_xact_id;
  output [2:0] io_release_bits_r_type;
  output [127:0] io_release_bits_data;
  input clk;
  input reset;
  input io_req_valid;
  input io_req_bits_voluntary;
  input io_meta_read_ready;
  input io_data_req_ready;
  input io_release_ready;
  output io_req_ready;
  output io_meta_read_valid;
  output io_data_req_valid;
  output io_release_valid;
  output io_release_bits_voluntary;
  wire [5:0] io_meta_read_bits_idx;
  wire [19:0] io_meta_read_bits_tag;
  wire [127:0] io_release_bits_data;
  wire io_req_ready,io_meta_read_valid,io_data_req_valid,io_release_valid,N0,
  io_data_req_valid,T1,T7,T18,T14,T15,T17,T16,T19,T31,T22,T24,T23,N1,T32,T37,N2,N3,N4,N5,N6,
  N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,
  N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,
  N47,N48,N49,N50,N51;
  wire [1:0] T6,T45;
  wire [2:0] T29,T28;
  reg [2:0] io_release_bits_r_type;
  reg io_release_bits_voluntary,r2_data_req_fired,r1_data_req_fired,active;
  reg [5:0] io_release_bits_client_xact_id;
  reg [25:0] io_release_bits_addr_block;
  reg [1:0] io_release_bits_addr_beat;
  reg [2:2] data_req_cnt;
  reg [11:0] io_data_req_bits_addr;
  reg [3:0] io_data_req_bits_way_en;
  assign io_data_req_bits_addr[0] = 1'b0;
  assign io_data_req_bits_addr[1] = 1'b0;
  assign io_data_req_bits_addr[2] = 1'b0;
  assign io_data_req_bits_addr[3] = 1'b0;
  assign io_meta_read_valid = io_data_req_valid;
  assign io_meta_read_bits_tag[19] = io_release_bits_addr_block[25];
  assign io_meta_read_bits_tag[18] = io_release_bits_addr_block[24];
  assign io_meta_read_bits_tag[17] = io_release_bits_addr_block[23];
  assign io_meta_read_bits_tag[16] = io_release_bits_addr_block[22];
  assign io_meta_read_bits_tag[15] = io_release_bits_addr_block[21];
  assign io_meta_read_bits_tag[14] = io_release_bits_addr_block[20];
  assign io_meta_read_bits_tag[13] = io_release_bits_addr_block[19];
  assign io_meta_read_bits_tag[12] = io_release_bits_addr_block[18];
  assign io_meta_read_bits_tag[11] = io_release_bits_addr_block[17];
  assign io_meta_read_bits_tag[10] = io_release_bits_addr_block[16];
  assign io_meta_read_bits_tag[9] = io_release_bits_addr_block[15];
  assign io_meta_read_bits_tag[8] = io_release_bits_addr_block[14];
  assign io_meta_read_bits_tag[7] = io_release_bits_addr_block[13];
  assign io_meta_read_bits_tag[6] = io_release_bits_addr_block[12];
  assign io_meta_read_bits_tag[5] = io_release_bits_addr_block[11];
  assign io_meta_read_bits_tag[4] = io_release_bits_addr_block[10];
  assign io_meta_read_bits_tag[3] = io_release_bits_addr_block[9];
  assign io_meta_read_bits_tag[2] = io_release_bits_addr_block[8];
  assign io_meta_read_bits_tag[1] = io_release_bits_addr_block[7];
  assign io_meta_read_bits_tag[0] = io_release_bits_addr_block[6];
  assign io_meta_read_bits_idx[5] = io_release_bits_addr_block[5];
  assign io_data_req_bits_addr[11] = io_release_bits_addr_block[5];
  assign io_meta_read_bits_idx[4] = io_release_bits_addr_block[4];
  assign io_data_req_bits_addr[10] = io_release_bits_addr_block[4];
  assign io_meta_read_bits_idx[3] = io_release_bits_addr_block[3];
  assign io_data_req_bits_addr[9] = io_release_bits_addr_block[3];
  assign io_meta_read_bits_idx[2] = io_release_bits_addr_block[2];
  assign io_data_req_bits_addr[8] = io_release_bits_addr_block[2];
  assign io_meta_read_bits_idx[1] = io_release_bits_addr_block[1];
  assign io_data_req_bits_addr[7] = io_release_bits_addr_block[1];
  assign io_meta_read_bits_idx[0] = io_release_bits_addr_block[0];
  assign io_data_req_bits_addr[6] = io_release_bits_addr_block[0];
  assign io_release_bits_data[127] = io_data_resp[127];
  assign io_release_bits_data[126] = io_data_resp[126];
  assign io_release_bits_data[125] = io_data_resp[125];
  assign io_release_bits_data[124] = io_data_resp[124];
  assign io_release_bits_data[123] = io_data_resp[123];
  assign io_release_bits_data[122] = io_data_resp[122];
  assign io_release_bits_data[121] = io_data_resp[121];
  assign io_release_bits_data[120] = io_data_resp[120];
  assign io_release_bits_data[119] = io_data_resp[119];
  assign io_release_bits_data[118] = io_data_resp[118];
  assign io_release_bits_data[117] = io_data_resp[117];
  assign io_release_bits_data[116] = io_data_resp[116];
  assign io_release_bits_data[115] = io_data_resp[115];
  assign io_release_bits_data[114] = io_data_resp[114];
  assign io_release_bits_data[113] = io_data_resp[113];
  assign io_release_bits_data[112] = io_data_resp[112];
  assign io_release_bits_data[111] = io_data_resp[111];
  assign io_release_bits_data[110] = io_data_resp[110];
  assign io_release_bits_data[109] = io_data_resp[109];
  assign io_release_bits_data[108] = io_data_resp[108];
  assign io_release_bits_data[107] = io_data_resp[107];
  assign io_release_bits_data[106] = io_data_resp[106];
  assign io_release_bits_data[105] = io_data_resp[105];
  assign io_release_bits_data[104] = io_data_resp[104];
  assign io_release_bits_data[103] = io_data_resp[103];
  assign io_release_bits_data[102] = io_data_resp[102];
  assign io_release_bits_data[101] = io_data_resp[101];
  assign io_release_bits_data[100] = io_data_resp[100];
  assign io_release_bits_data[99] = io_data_resp[99];
  assign io_release_bits_data[98] = io_data_resp[98];
  assign io_release_bits_data[97] = io_data_resp[97];
  assign io_release_bits_data[96] = io_data_resp[96];
  assign io_release_bits_data[95] = io_data_resp[95];
  assign io_release_bits_data[94] = io_data_resp[94];
  assign io_release_bits_data[93] = io_data_resp[93];
  assign io_release_bits_data[92] = io_data_resp[92];
  assign io_release_bits_data[91] = io_data_resp[91];
  assign io_release_bits_data[90] = io_data_resp[90];
  assign io_release_bits_data[89] = io_data_resp[89];
  assign io_release_bits_data[88] = io_data_resp[88];
  assign io_release_bits_data[87] = io_data_resp[87];
  assign io_release_bits_data[86] = io_data_resp[86];
  assign io_release_bits_data[85] = io_data_resp[85];
  assign io_release_bits_data[84] = io_data_resp[84];
  assign io_release_bits_data[83] = io_data_resp[83];
  assign io_release_bits_data[82] = io_data_resp[82];
  assign io_release_bits_data[81] = io_data_resp[81];
  assign io_release_bits_data[80] = io_data_resp[80];
  assign io_release_bits_data[79] = io_data_resp[79];
  assign io_release_bits_data[78] = io_data_resp[78];
  assign io_release_bits_data[77] = io_data_resp[77];
  assign io_release_bits_data[76] = io_data_resp[76];
  assign io_release_bits_data[75] = io_data_resp[75];
  assign io_release_bits_data[74] = io_data_resp[74];
  assign io_release_bits_data[73] = io_data_resp[73];
  assign io_release_bits_data[72] = io_data_resp[72];
  assign io_release_bits_data[71] = io_data_resp[71];
  assign io_release_bits_data[70] = io_data_resp[70];
  assign io_release_bits_data[69] = io_data_resp[69];
  assign io_release_bits_data[68] = io_data_resp[68];
  assign io_release_bits_data[67] = io_data_resp[67];
  assign io_release_bits_data[66] = io_data_resp[66];
  assign io_release_bits_data[65] = io_data_resp[65];
  assign io_release_bits_data[64] = io_data_resp[64];
  assign io_release_bits_data[63] = io_data_resp[63];
  assign io_release_bits_data[62] = io_data_resp[62];
  assign io_release_bits_data[61] = io_data_resp[61];
  assign io_release_bits_data[60] = io_data_resp[60];
  assign io_release_bits_data[59] = io_data_resp[59];
  assign io_release_bits_data[58] = io_data_resp[58];
  assign io_release_bits_data[57] = io_data_resp[57];
  assign io_release_bits_data[56] = io_data_resp[56];
  assign io_release_bits_data[55] = io_data_resp[55];
  assign io_release_bits_data[54] = io_data_resp[54];
  assign io_release_bits_data[53] = io_data_resp[53];
  assign io_release_bits_data[52] = io_data_resp[52];
  assign io_release_bits_data[51] = io_data_resp[51];
  assign io_release_bits_data[50] = io_data_resp[50];
  assign io_release_bits_data[49] = io_data_resp[49];
  assign io_release_bits_data[48] = io_data_resp[48];
  assign io_release_bits_data[47] = io_data_resp[47];
  assign io_release_bits_data[46] = io_data_resp[46];
  assign io_release_bits_data[45] = io_data_resp[45];
  assign io_release_bits_data[44] = io_data_resp[44];
  assign io_release_bits_data[43] = io_data_resp[43];
  assign io_release_bits_data[42] = io_data_resp[42];
  assign io_release_bits_data[41] = io_data_resp[41];
  assign io_release_bits_data[40] = io_data_resp[40];
  assign io_release_bits_data[39] = io_data_resp[39];
  assign io_release_bits_data[38] = io_data_resp[38];
  assign io_release_bits_data[37] = io_data_resp[37];
  assign io_release_bits_data[36] = io_data_resp[36];
  assign io_release_bits_data[35] = io_data_resp[35];
  assign io_release_bits_data[34] = io_data_resp[34];
  assign io_release_bits_data[33] = io_data_resp[33];
  assign io_release_bits_data[32] = io_data_resp[32];
  assign io_release_bits_data[31] = io_data_resp[31];
  assign io_release_bits_data[30] = io_data_resp[30];
  assign io_release_bits_data[29] = io_data_resp[29];
  assign io_release_bits_data[28] = io_data_resp[28];
  assign io_release_bits_data[27] = io_data_resp[27];
  assign io_release_bits_data[26] = io_data_resp[26];
  assign io_release_bits_data[25] = io_data_resp[25];
  assign io_release_bits_data[24] = io_data_resp[24];
  assign io_release_bits_data[23] = io_data_resp[23];
  assign io_release_bits_data[22] = io_data_resp[22];
  assign io_release_bits_data[21] = io_data_resp[21];
  assign io_release_bits_data[20] = io_data_resp[20];
  assign io_release_bits_data[19] = io_data_resp[19];
  assign io_release_bits_data[18] = io_data_resp[18];
  assign io_release_bits_data[17] = io_data_resp[17];
  assign io_release_bits_data[16] = io_data_resp[16];
  assign io_release_bits_data[15] = io_data_resp[15];
  assign io_release_bits_data[14] = io_data_resp[14];
  assign io_release_bits_data[13] = io_data_resp[13];
  assign io_release_bits_data[12] = io_data_resp[12];
  assign io_release_bits_data[11] = io_data_resp[11];
  assign io_release_bits_data[10] = io_data_resp[10];
  assign io_release_bits_data[9] = io_data_resp[9];
  assign io_release_bits_data[8] = io_data_resp[8];
  assign io_release_bits_data[7] = io_data_resp[7];
  assign io_release_bits_data[6] = io_data_resp[6];
  assign io_release_bits_data[5] = io_data_resp[5];
  assign io_release_bits_data[4] = io_data_resp[4];
  assign io_release_bits_data[3] = io_data_resp[3];
  assign io_release_bits_data[2] = io_data_resp[2];
  assign io_release_bits_data[1] = io_data_resp[1];
  assign io_release_bits_data[0] = io_data_resp[0];

  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_r_type[2] <= io_req_bits_r_type[2];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_r_type[1] <= io_req_bits_r_type[1];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_r_type[0] <= io_req_bits_r_type[0];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_voluntary <= io_req_bits_voluntary;
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_client_xact_id[5] <= io_req_bits_client_xact_id[5];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_client_xact_id[4] <= io_req_bits_client_xact_id[4];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_client_xact_id[3] <= io_req_bits_client_xact_id[3];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_client_xact_id[2] <= io_req_bits_client_xact_id[2];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_client_xact_id[1] <= io_req_bits_client_xact_id[1];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_client_xact_id[0] <= io_req_bits_client_xact_id[0];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_addr_block[25] <= io_req_bits_addr_block[25];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_addr_block[24] <= io_req_bits_addr_block[24];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_addr_block[23] <= io_req_bits_addr_block[23];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_addr_block[22] <= io_req_bits_addr_block[22];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_addr_block[21] <= io_req_bits_addr_block[21];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_addr_block[20] <= io_req_bits_addr_block[20];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_addr_block[19] <= io_req_bits_addr_block[19];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_addr_block[18] <= io_req_bits_addr_block[18];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_addr_block[17] <= io_req_bits_addr_block[17];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_addr_block[16] <= io_req_bits_addr_block[16];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_addr_block[15] <= io_req_bits_addr_block[15];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_addr_block[14] <= io_req_bits_addr_block[14];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_addr_block[13] <= io_req_bits_addr_block[13];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_addr_block[12] <= io_req_bits_addr_block[12];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_addr_block[11] <= io_req_bits_addr_block[11];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_addr_block[10] <= io_req_bits_addr_block[10];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_addr_block[9] <= io_req_bits_addr_block[9];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_addr_block[8] <= io_req_bits_addr_block[8];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_addr_block[7] <= io_req_bits_addr_block[7];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_addr_block[6] <= io_req_bits_addr_block[6];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_addr_block[5] <= io_req_bits_addr_block[5];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_addr_block[4] <= io_req_bits_addr_block[4];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_addr_block[3] <= io_req_bits_addr_block[3];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_addr_block[2] <= io_req_bits_addr_block[2];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_addr_block[1] <= io_req_bits_addr_block[1];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_release_bits_addr_block[0] <= io_req_bits_addr_block[0];
    end 
  end


  always @(posedge clk) begin
    if(N4) begin
      io_release_bits_addr_beat[1] <= N6;
    end 
  end


  always @(posedge clk) begin
    if(N4) begin
      io_release_bits_addr_beat[0] <= N5;
    end 
  end


  always @(posedge clk) begin
    if(N10) begin
      r2_data_req_fired <= N11;
    end 
  end


  always @(posedge clk) begin
    if(N16) begin
      r1_data_req_fired <= N17;
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      active <= N22;
    end 
  end


  always @(posedge clk) begin
    if(N27) begin
      data_req_cnt[2] <= N30;
    end 
  end


  always @(posedge clk) begin
    if(N27) begin
      io_data_req_bits_addr[5] <= N29;
    end 
  end


  always @(posedge clk) begin
    if(N27) begin
      io_data_req_bits_addr[4] <= N28;
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_data_req_bits_way_en[3] <= io_req_bits_way_en[3];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_data_req_bits_way_en[2] <= io_req_bits_way_en[2];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_data_req_bits_way_en[1] <= io_req_bits_way_en[1];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_data_req_bits_way_en[0] <= io_req_bits_way_en[0];
    end 
  end

  assign T6 = io_release_bits_addr_beat + 1'b1;
  assign T28 = { data_req_cnt[2:2], io_data_req_bits_addr[5:4] } + 1'b1;
  assign T29 = { data_req_cnt[2:2], io_data_req_bits_addr[5:4] } - T45;
  assign N4 = (N0)? 1'b1 : 
              (N32)? 1'b1 : 
              (N3)? 1'b0 : 1'b0;
  assign N0 = reset;
  assign { N6, N5 } = (N0)? { 1'b0, 1'b0 } : 
                      (N32)? T6 : 1'b0;
  assign N10 = (N0)? 1'b1 : 
               (N33)? 1'b1 : 
               (N36)? 1'b1 : 
               (N9)? 1'b0 : 1'b0;
  assign N11 = (N0)? 1'b0 : 
               (N33)? 1'b0 : 
               (N36)? r1_data_req_fired : 1'b0;
  assign N16 = (N0)? 1'b1 : 
               (N37)? 1'b1 : 
               (N39)? 1'b1 : 
               (N42)? 1'b1 : 
               (N15)? 1'b0 : 1'b0;
  assign N17 = (N0)? 1'b0 : 
               (N37)? 1'b0 : 
               (N39)? 1'b1 : 
               (N42)? 1'b0 : 1'b0;
  assign N21 = (N0)? 1'b1 : 
               (N43)? 1'b1 : 
               (N46)? 1'b1 : 
               (N20)? 1'b0 : 1'b0;
  assign N22 = (N0)? 1'b0 : 
               (N43)? 1'b1 : 
               (N46)? T22 : 1'b0;
  assign N27 = (N0)? 1'b1 : 
               (N47)? 1'b1 : 
               (N49)? 1'b1 : 
               (N51)? 1'b1 : 
               (N26)? 1'b0 : 1'b0;
  assign { N30, N29, N28 } = (N0)? { 1'b0, 1'b0, 1'b0 } : 
                             (N47)? { 1'b0, 1'b0, 1'b0 } : 
                             (N49)? T29 : 
                             (N51)? T28 : 1'b0;
  assign T1 = io_req_ready & io_req_valid;
  assign T7 = io_release_ready & io_release_valid;
  assign io_release_valid = active & r2_data_req_fired;
  assign T14 = active & T15;
  assign T15 = T17 & T16;
  assign T16 = io_meta_read_ready & io_data_req_valid;
  assign T17 = io_data_req_ready & io_data_req_valid;
  assign T18 = io_release_valid & T19;
  assign T19 = ~io_release_ready;
  assign T22 = T24 | T23;
  assign T23 = ~io_release_ready;
  assign T24 = ~data_req_cnt[2];
  assign N1 = ~r1_data_req_fired;
  assign T45[1] = r1_data_req_fired;
  assign T45[0] = N1;
  assign T31 = io_release_valid & T32;
  assign T32 = ~r1_data_req_fired;
  assign io_data_req_valid = active & T37;
  assign T37 = ~data_req_cnt[2];
  assign io_req_ready = ~active;
  assign N2 = T7 | reset;
  assign N3 = ~N2;
  assign N7 = T18 | reset;
  assign N8 = active | N7;
  assign N9 = ~N8;
  assign N12 = T18 | reset;
  assign N13 = T14 | N12;
  assign N14 = active | N13;
  assign N15 = ~N14;
  assign N18 = T1 | reset;
  assign N19 = T31 | N18;
  assign N20 = ~N19;
  assign N23 = T1 | reset;
  assign N24 = T18 | N23;
  assign N25 = T14 | N24;
  assign N26 = ~N25;
  assign N31 = ~reset;
  assign N32 = T7 & N31;
  assign N33 = T18 & N31;
  assign N34 = ~T18;
  assign N35 = N31 & N34;
  assign N36 = active & N35;
  assign N37 = T18 & N31;
  assign N38 = N31 & N34;
  assign N39 = T14 & N38;
  assign N40 = ~T14;
  assign N41 = N38 & N40;
  assign N42 = active & N41;
  assign N43 = T1 & N31;
  assign N44 = ~T1;
  assign N45 = N31 & N44;
  assign N46 = T31 & N45;
  assign N47 = T1 & N31;
  assign N48 = N31 & N44;
  assign N49 = T18 & N48;
  assign N50 = N48 & N34;
  assign N51 = T14 & N50;

endmodule