module IOMSHR
(
  clk,
  reset,
  io_req_ready,
  io_req_valid,
  io_req_bits_addr,
  io_req_bits_tag,
  io_req_bits_cmd,
  io_req_bits_typ,
  io_req_bits_kill,
  io_req_bits_phys,
  io_req_bits_data,
  io_acquire_ready,
  io_acquire_valid,
  io_acquire_bits_addr_block,
  io_acquire_bits_client_xact_id,
  io_acquire_bits_addr_beat,
  io_acquire_bits_is_builtin_type,
  io_acquire_bits_a_type,
  io_acquire_bits_union,
  io_acquire_bits_data,
  io_grant_valid,
  io_grant_bits_addr_beat,
  io_grant_bits_client_xact_id,
  io_grant_bits_manager_xact_id,
  io_grant_bits_is_builtin_type,
  io_grant_bits_g_type,
  io_grant_bits_data,
  io_resp_ready,
  io_resp_valid,
  io_resp_bits_addr,
  io_resp_bits_tag,
  io_resp_bits_cmd,
  io_resp_bits_typ,
  io_resp_bits_data,
  io_resp_bits_nack,
  io_resp_bits_replay,
  io_resp_bits_has_data,
  io_resp_bits_store_data
);

  input [39:0] io_req_bits_addr;
  input [9:0] io_req_bits_tag;
  input [4:0] io_req_bits_cmd;
  input [2:0] io_req_bits_typ;
  input [63:0] io_req_bits_data;
  output [25:0] io_acquire_bits_addr_block;
  output [5:0] io_acquire_bits_client_xact_id;
  output [1:0] io_acquire_bits_addr_beat;
  output [2:0] io_acquire_bits_a_type;
  output [16:0] io_acquire_bits_union;
  output [127:0] io_acquire_bits_data;
  input [1:0] io_grant_bits_addr_beat;
  input [5:0] io_grant_bits_client_xact_id;
  input [3:0] io_grant_bits_manager_xact_id;
  input [3:0] io_grant_bits_g_type;
  input [127:0] io_grant_bits_data;
  output [39:0] io_resp_bits_addr;
  output [9:0] io_resp_bits_tag;
  output [4:0] io_resp_bits_cmd;
  output [2:0] io_resp_bits_typ;
  output [63:0] io_resp_bits_data;
  output [63:0] io_resp_bits_store_data;
  input clk;
  input reset;
  input io_req_valid;
  input io_req_bits_kill;
  input io_req_bits_phys;
  input io_acquire_ready;
  input io_grant_valid;
  input io_grant_bits_is_builtin_type;
  input io_resp_ready;
  output io_req_ready;
  output io_acquire_valid;
  output io_acquire_bits_is_builtin_type;
  output io_resp_valid;
  output io_resp_bits_nack;
  output io_resp_bits_replay;
  output io_resp_bits_has_data;
  wire [25:0] io_acquire_bits_addr_block;
  wire [5:0] io_acquire_bits_client_xact_id;
  wire [1:0] io_acquire_bits_addr_beat,T124;
  wire [2:0] io_acquire_bits_a_type;
  wire [16:0] io_acquire_bits_union;
  wire [127:0] io_acquire_bits_data;
  wire [63:0] io_resp_bits_data,T13,T24;
  wire io_req_ready,io_acquire_valid,io_acquire_bits_is_builtin_type,io_resp_valid,
  io_resp_bits_nack,io_resp_bits_replay,io_resp_bits_has_data,N0,N1,N2,N3,N4,N5,N6,N7,
  N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,T1,T7,T3,T9,N23,N24,
  T29,T39,T30,T34,T31,T36,T49,T47,T46,T48,T54_0,T57,T66_0,T77,N25,T74_0,T98,N26,
  T102,T99,T104,T118,T129,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,
  N101,N102,N103,N104,N105,N106,N107,N108,N110,N111,N112,N113,N114,N115,N116,
  io_resp_bits_replay,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,
  N132,N133,N134,N135,N136,N137,N138,N139,N140,N141,SV2V_UNCONNECTED_1,
  SV2V_UNCONNECTED_2,SV2V_UNCONNECTED_3,SV2V_UNCONNECTED_4,
  SV2V_UNCONNECTED_5,SV2V_UNCONNECTED_6,SV2V_UNCONNECTED_7,SV2V_UNCONNECTED_8,
  SV2V_UNCONNECTED_9,SV2V_UNCONNECTED_10,SV2V_UNCONNECTED_11,
  SV2V_UNCONNECTED_12,SV2V_UNCONNECTED_13,SV2V_UNCONNECTED_14,SV2V_UNCONNECTED_15,
  SV2V_UNCONNECTED_16,SV2V_UNCONNECTED_17,SV2V_UNCONNECTED_18,
  SV2V_UNCONNECTED_19,SV2V_UNCONNECTED_20,SV2V_UNCONNECTED_21,
  SV2V_UNCONNECTED_22,SV2V_UNCONNECTED_23,SV2V_UNCONNECTED_24,SV2V_UNCONNECTED_25,
  SV2V_UNCONNECTED_26,SV2V_UNCONNECTED_27,SV2V_UNCONNECTED_28,
  SV2V_UNCONNECTED_29,SV2V_UNCONNECTED_30,SV2V_UNCONNECTED_31,
  SV2V_UNCONNECTED_32,SV2V_UNCONNECTED_33,SV2V_UNCONNECTED_34,SV2V_UNCONNECTED_35,
  SV2V_UNCONNECTED_36,SV2V_UNCONNECTED_37,SV2V_UNCONNECTED_38,
  SV2V_UNCONNECTED_39,SV2V_UNCONNECTED_40,SV2V_UNCONNECTED_41,
  SV2V_UNCONNECTED_42,SV2V_UNCONNECTED_43,SV2V_UNCONNECTED_44,SV2V_UNCONNECTED_45,
  SV2V_UNCONNECTED_46,SV2V_UNCONNECTED_47,SV2V_UNCONNECTED_48,
  SV2V_UNCONNECTED_49,SV2V_UNCONNECTED_50,SV2V_UNCONNECTED_51,
  SV2V_UNCONNECTED_52,SV2V_UNCONNECTED_53,SV2V_UNCONNECTED_54,SV2V_UNCONNECTED_55,
  SV2V_UNCONNECTED_56,SV2V_UNCONNECTED_57,SV2V_UNCONNECTED_58,
  SV2V_UNCONNECTED_59,SV2V_UNCONNECTED_60,SV2V_UNCONNECTED_61,
  SV2V_UNCONNECTED_62,SV2V_UNCONNECTED_63,SV2V_UNCONNECTED_64;
  wire [7:0] T15,T16,T110;
  wire [63:8] T17;
  wire [15:0] T19;
  wire [63:16] T20,T83;
  wire [31:31] T54;
  wire [0:0] T143,T144,T145;
  wire [47:47] T66;
  wire [55:55] T74;
  wire [127:72] put_acquire_data;
  wire [63:32] T84;
  wire [16:1] put_acquire_union;
  wire [3:0] T112,T130;
  wire [1:1] T114,T122;
  wire [3:3] T128;
  reg [63:0] io_resp_bits_store_data;
  reg [4:0] io_resp_bits_cmd;
  reg [31:0] T50,T22;
  reg [39:0] io_resp_bits_addr;
  reg [1:0] state;
  reg [2:0] io_resp_bits_typ;
  reg [9:0] io_resp_bits_tag;
  assign io_acquire_bits_client_xact_id[1] = 1'b1;
  assign io_acquire_bits_is_builtin_type = 1'b1;
  assign io_acquire_bits_client_xact_id[5] = 1'b0;
  assign io_acquire_bits_client_xact_id[4] = 1'b0;
  assign io_acquire_bits_client_xact_id[3] = 1'b0;
  assign io_acquire_bits_client_xact_id[2] = 1'b0;
  assign io_acquire_bits_client_xact_id[0] = 1'b0;
  assign io_acquire_bits_a_type[2] = 1'b0;
  assign io_acquire_bits_a_type[0] = 1'b0;
  assign io_acquire_bits_union[0] = 1'b0;
  assign io_resp_bits_nack = 1'b0;
  assign io_acquire_bits_addr_block[25] = io_resp_bits_addr[31];
  assign io_acquire_bits_addr_block[24] = io_resp_bits_addr[30];
  assign io_acquire_bits_addr_block[23] = io_resp_bits_addr[29];
  assign io_acquire_bits_addr_block[22] = io_resp_bits_addr[28];
  assign io_acquire_bits_addr_block[21] = io_resp_bits_addr[27];
  assign io_acquire_bits_addr_block[20] = io_resp_bits_addr[26];
  assign io_acquire_bits_addr_block[19] = io_resp_bits_addr[25];
  assign io_acquire_bits_addr_block[18] = io_resp_bits_addr[24];
  assign io_acquire_bits_addr_block[17] = io_resp_bits_addr[23];
  assign io_acquire_bits_addr_block[16] = io_resp_bits_addr[22];
  assign io_acquire_bits_addr_block[15] = io_resp_bits_addr[21];
  assign io_acquire_bits_addr_block[14] = io_resp_bits_addr[20];
  assign io_acquire_bits_addr_block[13] = io_resp_bits_addr[19];
  assign io_acquire_bits_addr_block[12] = io_resp_bits_addr[18];
  assign io_acquire_bits_addr_block[11] = io_resp_bits_addr[17];
  assign io_acquire_bits_addr_block[10] = io_resp_bits_addr[16];
  assign io_acquire_bits_addr_block[9] = io_resp_bits_addr[15];
  assign io_acquire_bits_addr_block[8] = io_resp_bits_addr[14];
  assign io_acquire_bits_addr_block[7] = io_resp_bits_addr[13];
  assign io_acquire_bits_addr_block[6] = io_resp_bits_addr[12];
  assign io_acquire_bits_addr_block[5] = io_resp_bits_addr[11];
  assign io_acquire_bits_addr_block[4] = io_resp_bits_addr[10];
  assign io_acquire_bits_addr_block[3] = io_resp_bits_addr[9];
  assign io_acquire_bits_addr_block[2] = io_resp_bits_addr[8];
  assign io_acquire_bits_addr_block[1] = io_resp_bits_addr[7];
  assign io_acquire_bits_addr_block[0] = io_resp_bits_addr[6];
  assign io_acquire_bits_addr_beat[1] = io_resp_bits_addr[5];
  assign io_acquire_bits_addr_beat[0] = io_resp_bits_addr[4];
  assign io_resp_valid = io_resp_bits_replay;
  assign { SV2V_UNCONNECTED_1, SV2V_UNCONNECTED_2, SV2V_UNCONNECTED_3, SV2V_UNCONNECTED_4, SV2V_UNCONNECTED_5, SV2V_UNCONNECTED_6, SV2V_UNCONNECTED_7, SV2V_UNCONNECTED_8, SV2V_UNCONNECTED_9, SV2V_UNCONNECTED_10, SV2V_UNCONNECTED_11, SV2V_UNCONNECTED_12, SV2V_UNCONNECTED_13, SV2V_UNCONNECTED_14, SV2V_UNCONNECTED_15, SV2V_UNCONNECTED_16, SV2V_UNCONNECTED_17, SV2V_UNCONNECTED_18, SV2V_UNCONNECTED_19, SV2V_UNCONNECTED_20, SV2V_UNCONNECTED_21, SV2V_UNCONNECTED_22, SV2V_UNCONNECTED_23, SV2V_UNCONNECTED_24, SV2V_UNCONNECTED_25, SV2V_UNCONNECTED_26, SV2V_UNCONNECTED_27, SV2V_UNCONNECTED_28, SV2V_UNCONNECTED_29, SV2V_UNCONNECTED_30, SV2V_UNCONNECTED_31, SV2V_UNCONNECTED_32, SV2V_UNCONNECTED_33, SV2V_UNCONNECTED_34, SV2V_UNCONNECTED_35, SV2V_UNCONNECTED_36, SV2V_UNCONNECTED_37, SV2V_UNCONNECTED_38, SV2V_UNCONNECTED_39, SV2V_UNCONNECTED_40, SV2V_UNCONNECTED_41, SV2V_UNCONNECTED_42, SV2V_UNCONNECTED_43, SV2V_UNCONNECTED_44, SV2V_UNCONNECTED_45, SV2V_UNCONNECTED_46, SV2V_UNCONNECTED_47, SV2V_UNCONNECTED_48, SV2V_UNCONNECTED_49, SV2V_UNCONNECTED_50, SV2V_UNCONNECTED_51, SV2V_UNCONNECTED_52, SV2V_UNCONNECTED_53, SV2V_UNCONNECTED_54, SV2V_UNCONNECTED_55, SV2V_UNCONNECTED_56, SV2V_UNCONNECTED_57, SV2V_UNCONNECTED_58, SV2V_UNCONNECTED_59, SV2V_UNCONNECTED_60, SV2V_UNCONNECTED_61, SV2V_UNCONNECTED_62, SV2V_UNCONNECTED_63, SV2V_UNCONNECTED_64, T24 } = io_grant_bits_data >> { io_resp_bits_addr[3:3], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 };
  assign T57 = $signed(1'b0) <= $signed(io_resp_bits_typ);
  assign T129 = { 1'b1, 1'b1 } <= io_resp_bits_typ[1:0];

  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[63] <= io_req_bits_data[63];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[62] <= io_req_bits_data[62];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[61] <= io_req_bits_data[61];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[60] <= io_req_bits_data[60];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[59] <= io_req_bits_data[59];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[58] <= io_req_bits_data[58];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[57] <= io_req_bits_data[57];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[56] <= io_req_bits_data[56];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[55] <= io_req_bits_data[55];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[54] <= io_req_bits_data[54];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[53] <= io_req_bits_data[53];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[52] <= io_req_bits_data[52];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[51] <= io_req_bits_data[51];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[50] <= io_req_bits_data[50];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[49] <= io_req_bits_data[49];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[48] <= io_req_bits_data[48];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[47] <= io_req_bits_data[47];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[46] <= io_req_bits_data[46];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[45] <= io_req_bits_data[45];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[44] <= io_req_bits_data[44];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[43] <= io_req_bits_data[43];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[42] <= io_req_bits_data[42];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[41] <= io_req_bits_data[41];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[40] <= io_req_bits_data[40];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[39] <= io_req_bits_data[39];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[38] <= io_req_bits_data[38];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[37] <= io_req_bits_data[37];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[36] <= io_req_bits_data[36];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[35] <= io_req_bits_data[35];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[34] <= io_req_bits_data[34];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[33] <= io_req_bits_data[33];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[32] <= io_req_bits_data[32];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[31] <= io_req_bits_data[31];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[30] <= io_req_bits_data[30];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[29] <= io_req_bits_data[29];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[28] <= io_req_bits_data[28];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[27] <= io_req_bits_data[27];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[26] <= io_req_bits_data[26];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[25] <= io_req_bits_data[25];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[24] <= io_req_bits_data[24];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[23] <= io_req_bits_data[23];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[22] <= io_req_bits_data[22];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[21] <= io_req_bits_data[21];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[20] <= io_req_bits_data[20];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[19] <= io_req_bits_data[19];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[18] <= io_req_bits_data[18];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[17] <= io_req_bits_data[17];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[16] <= io_req_bits_data[16];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[15] <= io_req_bits_data[15];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[14] <= io_req_bits_data[14];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[13] <= io_req_bits_data[13];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[12] <= io_req_bits_data[12];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[11] <= io_req_bits_data[11];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[10] <= io_req_bits_data[10];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[9] <= io_req_bits_data[9];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[8] <= io_req_bits_data[8];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[7] <= io_req_bits_data[7];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[6] <= io_req_bits_data[6];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[5] <= io_req_bits_data[5];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[4] <= io_req_bits_data[4];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[3] <= io_req_bits_data[3];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[2] <= io_req_bits_data[2];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[1] <= io_req_bits_data[1];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_store_data[0] <= io_req_bits_data[0];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_cmd[4] <= io_req_bits_cmd[4];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_cmd[3] <= io_req_bits_cmd[3];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_cmd[2] <= io_req_bits_cmd[2];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_cmd[1] <= io_req_bits_cmd[1];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_cmd[0] <= io_req_bits_cmd[0];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[31] <= T24[63];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[30] <= T24[62];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[29] <= T24[61];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[28] <= T24[60];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[27] <= T24[59];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[26] <= T24[58];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[25] <= T24[57];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[24] <= T24[56];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[23] <= T24[55];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[22] <= T24[54];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[21] <= T24[53];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[20] <= T24[52];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[19] <= T24[51];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[18] <= T24[50];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[17] <= T24[49];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[16] <= T24[48];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[15] <= T24[47];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[14] <= T24[46];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[13] <= T24[45];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[12] <= T24[44];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[11] <= T24[43];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[10] <= T24[42];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[9] <= T24[41];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[8] <= T24[40];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[7] <= T24[39];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[6] <= T24[38];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[5] <= T24[37];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[4] <= T24[36];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[3] <= T24[35];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[2] <= T24[34];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[1] <= T24[33];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T50[0] <= T24[32];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[31] <= T24[31];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[30] <= T24[30];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[29] <= T24[29];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[28] <= T24[28];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[27] <= T24[27];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[26] <= T24[26];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[25] <= T24[25];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[24] <= T24[24];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[23] <= T24[23];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[22] <= T24[22];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[21] <= T24[21];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[20] <= T24[20];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[19] <= T24[19];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[18] <= T24[18];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[17] <= T24[17];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[16] <= T24[16];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[15] <= T24[15];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[14] <= T24[14];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[13] <= T24[13];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[12] <= T24[12];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[11] <= T24[11];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[10] <= T24[10];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[9] <= T24[9];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[8] <= T24[8];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[7] <= T24[7];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[6] <= T24[6];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[5] <= T24[5];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[4] <= T24[4];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[3] <= T24[3];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[2] <= T24[2];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[1] <= T24[1];
    end 
  end


  always @(posedge clk) begin
    if(T29) begin
      T22[0] <= T24[0];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[39] <= io_req_bits_addr[39];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[38] <= io_req_bits_addr[38];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[37] <= io_req_bits_addr[37];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[36] <= io_req_bits_addr[36];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[35] <= io_req_bits_addr[35];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[34] <= io_req_bits_addr[34];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[33] <= io_req_bits_addr[33];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[32] <= io_req_bits_addr[32];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[31] <= io_req_bits_addr[31];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[30] <= io_req_bits_addr[30];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[29] <= io_req_bits_addr[29];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[28] <= io_req_bits_addr[28];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[27] <= io_req_bits_addr[27];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[26] <= io_req_bits_addr[26];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[25] <= io_req_bits_addr[25];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[24] <= io_req_bits_addr[24];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[23] <= io_req_bits_addr[23];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[22] <= io_req_bits_addr[22];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[21] <= io_req_bits_addr[21];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[20] <= io_req_bits_addr[20];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[19] <= io_req_bits_addr[19];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[18] <= io_req_bits_addr[18];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[17] <= io_req_bits_addr[17];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[16] <= io_req_bits_addr[16];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[15] <= io_req_bits_addr[15];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[14] <= io_req_bits_addr[14];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[13] <= io_req_bits_addr[13];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[12] <= io_req_bits_addr[12];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[11] <= io_req_bits_addr[11];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[10] <= io_req_bits_addr[10];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[9] <= io_req_bits_addr[9];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[8] <= io_req_bits_addr[8];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[7] <= io_req_bits_addr[7];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[6] <= io_req_bits_addr[6];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[5] <= io_req_bits_addr[5];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[4] <= io_req_bits_addr[4];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[3] <= io_req_bits_addr[3];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[2] <= io_req_bits_addr[2];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[1] <= io_req_bits_addr[1];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_addr[0] <= io_req_bits_addr[0];
    end 
  end


  always @(posedge clk) begin
    if(N33) begin
      state[1] <= N35;
    end 
  end


  always @(posedge clk) begin
    if(N33) begin
      state[0] <= N34;
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_typ[2] <= io_req_bits_typ[2];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_typ[1] <= io_req_bits_typ[1];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_typ[0] <= io_req_bits_typ[0];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_tag[9] <= io_req_bits_tag[9];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_tag[8] <= io_req_bits_tag[8];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_tag[7] <= io_req_bits_tag[7];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_tag[6] <= io_req_bits_tag[6];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_tag[5] <= io_req_bits_tag[5];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_tag[4] <= io_req_bits_tag[4];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_tag[3] <= io_req_bits_tag[3];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_tag[2] <= io_req_bits_tag[2];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_tag[1] <= io_req_bits_tag[1];
    end 
  end


  always @(posedge clk) begin
    if(T1) begin
      io_resp_bits_tag[0] <= io_req_bits_tag[0];
    end 
  end

  assign put_acquire_union = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, T110 } << { io_resp_bits_addr[3:3], 1'b0, 1'b0, 1'b0 };
  assign N50 = ~io_resp_bits_cmd[2];
  assign N51 = ~io_resp_bits_cmd[1];
  assign N52 = ~io_resp_bits_cmd[0];
  assign N53 = io_resp_bits_cmd[3] | io_resp_bits_cmd[4];
  assign N54 = N50 | N53;
  assign N55 = N51 | N54;
  assign N56 = N52 | N55;
  assign N57 = ~N56;
  assign N58 = io_resp_bits_cmd[3] | io_resp_bits_cmd[4];
  assign N59 = N50 | N58;
  assign N60 = io_resp_bits_cmd[1] | N59;
  assign N61 = io_resp_bits_cmd[0] | N60;
  assign N62 = ~N61;
  assign N63 = io_resp_bits_cmd[3] | io_resp_bits_cmd[4];
  assign N64 = io_resp_bits_cmd[2] | N63;
  assign N65 = io_resp_bits_cmd[1] | N64;
  assign N66 = io_resp_bits_cmd[0] | N65;
  assign N67 = ~N66;
  assign N68 = io_resp_bits_cmd[3] | io_resp_bits_cmd[4];
  assign N69 = N50 | N68;
  assign N70 = N51 | N69;
  assign N71 = io_resp_bits_cmd[0] | N70;
  assign N72 = ~N71;
  assign N73 = io_resp_bits_typ[0] | io_resp_bits_typ[1];
  assign N74 = ~N73;
  assign N75 = ~io_resp_bits_typ[0];
  assign N76 = N75 | io_resp_bits_typ[1];
  assign N77 = ~N76;
  assign N78 = io_resp_bits_cmd[3] | io_resp_bits_cmd[4];
  assign N79 = N50 | N78;
  assign N80 = N51 | N79;
  assign N81 = N52 | N80;
  assign N82 = ~N81;
  assign N83 = io_resp_bits_cmd[3] | io_resp_bits_cmd[4];
  assign N84 = N50 | N83;
  assign N85 = io_resp_bits_cmd[1] | N84;
  assign N86 = io_resp_bits_cmd[0] | N85;
  assign N87 = ~N86;
  assign N88 = N75 | io_resp_bits_typ[1];
  assign N89 = ~N88;
  assign N90 = io_resp_bits_typ[0] | io_resp_bits_typ[1];
  assign N91 = ~N90;
  assign N92 = ~io_resp_bits_addr[0];
  assign N93 = ~io_resp_bits_typ[1];
  assign N94 = io_resp_bits_typ[0] | N93;
  assign N95 = ~N94;
  assign N96 = io_resp_bits_cmd[3] | io_resp_bits_cmd[4];
  assign N97 = io_resp_bits_cmd[2] | N96;
  assign N98 = io_resp_bits_cmd[1] | N97;
  assign N99 = io_resp_bits_cmd[0] | N98;
  assign N100 = ~N99;
  assign N101 = io_resp_bits_cmd[3] | io_resp_bits_cmd[4];
  assign N102 = N50 | N101;
  assign N103 = N51 | N102;
  assign N104 = io_resp_bits_cmd[0] | N103;
  assign N105 = ~N104;
  assign N106 = io_resp_bits_typ[0] | N93;
  assign N107 = ~N106;
  assign N108 = state[0] | state[1];
  assign io_req_ready = ~N108;
  assign N110 = io_resp_bits_cmd[3] | io_resp_bits_cmd[4];
  assign N111 = N50 | N110;
  assign N112 = N51 | N111;
  assign N113 = N52 | N112;
  assign N114 = ~N113;
  assign N115 = ~state[0];
  assign N116 = N115 | state[1];
  assign io_acquire_valid = ~N116;
  assign io_resp_bits_replay = state[0] & state[1];
  assign N119 = ~state[1];
  assign N120 = state[0] | N119;
  assign N121 = ~N120;
  assign N122 = io_resp_bits_cmd[3] | io_resp_bits_cmd[4];
  assign N123 = N50 | N122;
  assign N124 = N51 | N123;
  assign N125 = N52 | N124;
  assign N126 = ~N125;
  assign N127 = io_resp_bits_cmd[3] | io_resp_bits_cmd[4];
  assign N128 = N50 | N127;
  assign N129 = io_resp_bits_cmd[1] | N128;
  assign N130 = io_resp_bits_cmd[0] | N129;
  assign N131 = ~N130;
  assign N132 = io_resp_bits_cmd[3] | io_resp_bits_cmd[4];
  assign N133 = io_resp_bits_cmd[2] | N132;
  assign N134 = io_resp_bits_cmd[1] | N133;
  assign N135 = io_resp_bits_cmd[0] | N134;
  assign N136 = ~N135;
  assign N137 = io_resp_bits_cmd[3] | io_resp_bits_cmd[4];
  assign N138 = N50 | N137;
  assign N139 = N51 | N138;
  assign N140 = io_resp_bits_cmd[0] | N139;
  assign N141 = ~N140;
  assign { T54[31:31], T54_0 } = 1'b0 - T143[0];
  assign { T66[47:47], T66_0 } = 1'b0 - T144[0];
  assign { T74[55:55], T74_0 } = 1'b0 - T145[0];
  assign T13[7:0] = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                    (N1)? T15 : 1'b0;
  assign N0 = N114;
  assign N1 = N113;
  assign T15 = (N2)? T17[15:8] : 
               (N3)? T16 : 1'b0;
  assign N2 = io_resp_bits_addr[0];
  assign N3 = N92;
  assign { T17[15:8], T16 } = (N4)? T20[31:16] : 
                              (N5)? T19 : 1'b0;
  assign N4 = io_resp_bits_addr[1];
  assign N5 = N23;
  assign { T20[31:16], T19 } = (N6)? T50 : 
                               (N7)? T22 : 1'b0;
  assign N6 = io_resp_bits_addr[2];
  assign N7 = N24;
  assign T20[63:32] = (N8)? { T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54[31:31], T54_0 } : 
                      (N9)? T50 : 1'b0;
  assign N8 = N107;
  assign N9 = N106;
  assign T17[63:16] = (N10)? { T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66[47:47], T66_0 } : 
                      (N11)? T20 : 1'b0;
  assign N10 = N89;
  assign N11 = N88;
  assign T13[63:8] = (N12)? { T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74[55:55], T74_0 } : 
                     (N13)? T17 : 1'b0;
  assign N12 = T77;
  assign N13 = N25;
  assign io_acquire_bits_data = (N14)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                (N15)? { put_acquire_data, io_resp_bits_store_data[7:0], put_acquire_data, io_resp_bits_store_data[7:0] } : 1'b0;
  assign N14 = T98;
  assign N15 = N26;
  assign put_acquire_data = (N16)? { io_resp_bits_store_data[7:0], io_resp_bits_store_data[7:0], io_resp_bits_store_data[7:0], io_resp_bits_store_data[7:0], io_resp_bits_store_data[7:0], io_resp_bits_store_data[7:0], io_resp_bits_store_data[7:0] } : 
                            (N17)? { T83, io_resp_bits_store_data[15:8] } : 1'b0;
  assign N16 = N74;
  assign N17 = N73;
  assign T83 = (N18)? { io_resp_bits_store_data[15:0], io_resp_bits_store_data[15:0], io_resp_bits_store_data[15:0] } : 
               (N19)? { T84, io_resp_bits_store_data[31:16] } : 1'b0;
  assign N18 = N77;
  assign N19 = N76;
  assign T84 = (N20)? io_resp_bits_store_data[31:0] : 
               (N21)? io_resp_bits_store_data[63:32] : 1'b0;
  assign N20 = N95;
  assign N21 = N94;
  assign io_acquire_bits_union[16:1] = (N14)? { 1'b0, 1'b0, 1'b0, 1'b0, io_resp_bits_addr[3:0], io_resp_bits_typ, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                       (N15)? put_acquire_union : 1'b0;
  assign T110[3:0] = (N6)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                     (N7)? T112 : 1'b0;
  assign T112[1:0] = (N4)? { 1'b0, 1'b0 } : 
                     (N5)? { T114[1:1], N92 } : 1'b0;
  assign T124 = (N4)? { T114[1:1], N92 } : 
                (N5)? { 1'b0, 1'b0 } : 1'b0;
  assign T130 = (N6)? T112 : 
                (N7)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N33 = (N22)? 1'b1 : 
               (N37)? 1'b1 : 
               (N40)? 1'b1 : 
               (N43)? 1'b1 : 
               (N46)? 1'b1 : 
               (N49)? 1'b1 : 
               (N32)? 1'b0 : 1'b0;
  assign N22 = reset;
  assign { N35, N34 } = (N22)? { 1'b0, 1'b0 } : 
                        (N37)? { 1'b0, 1'b0 } : 
                        (N40)? { 1'b0, 1'b0 } : 
                        (N43)? { 1'b1, 1'b1 } : 
                        (N46)? { 1'b1, 1'b0 } : 
                        (N49)? { 1'b0, 1'b1 } : 1'b0;
  assign T1 = io_req_ready & io_req_valid;
  assign io_resp_bits_has_data = T7 | T3;
  assign T3 = io_resp_bits_cmd[3] | N62;
  assign T7 = T9 | N57;
  assign T9 = N67 | N72;
  assign io_resp_bits_data[63] = T13[63] | 1'b0;
  assign io_resp_bits_data[62] = T13[62] | 1'b0;
  assign io_resp_bits_data[61] = T13[61] | 1'b0;
  assign io_resp_bits_data[60] = T13[60] | 1'b0;
  assign io_resp_bits_data[59] = T13[59] | 1'b0;
  assign io_resp_bits_data[58] = T13[58] | 1'b0;
  assign io_resp_bits_data[57] = T13[57] | 1'b0;
  assign io_resp_bits_data[56] = T13[56] | 1'b0;
  assign io_resp_bits_data[55] = T13[55] | 1'b0;
  assign io_resp_bits_data[54] = T13[54] | 1'b0;
  assign io_resp_bits_data[53] = T13[53] | 1'b0;
  assign io_resp_bits_data[52] = T13[52] | 1'b0;
  assign io_resp_bits_data[51] = T13[51] | 1'b0;
  assign io_resp_bits_data[50] = T13[50] | 1'b0;
  assign io_resp_bits_data[49] = T13[49] | 1'b0;
  assign io_resp_bits_data[48] = T13[48] | 1'b0;
  assign io_resp_bits_data[47] = T13[47] | 1'b0;
  assign io_resp_bits_data[46] = T13[46] | 1'b0;
  assign io_resp_bits_data[45] = T13[45] | 1'b0;
  assign io_resp_bits_data[44] = T13[44] | 1'b0;
  assign io_resp_bits_data[43] = T13[43] | 1'b0;
  assign io_resp_bits_data[42] = T13[42] | 1'b0;
  assign io_resp_bits_data[41] = T13[41] | 1'b0;
  assign io_resp_bits_data[40] = T13[40] | 1'b0;
  assign io_resp_bits_data[39] = T13[39] | 1'b0;
  assign io_resp_bits_data[38] = T13[38] | 1'b0;
  assign io_resp_bits_data[37] = T13[37] | 1'b0;
  assign io_resp_bits_data[36] = T13[36] | 1'b0;
  assign io_resp_bits_data[35] = T13[35] | 1'b0;
  assign io_resp_bits_data[34] = T13[34] | 1'b0;
  assign io_resp_bits_data[33] = T13[33] | 1'b0;
  assign io_resp_bits_data[32] = T13[32] | 1'b0;
  assign io_resp_bits_data[31] = T13[31] | 1'b0;
  assign io_resp_bits_data[30] = T13[30] | 1'b0;
  assign io_resp_bits_data[29] = T13[29] | 1'b0;
  assign io_resp_bits_data[28] = T13[28] | 1'b0;
  assign io_resp_bits_data[27] = T13[27] | 1'b0;
  assign io_resp_bits_data[26] = T13[26] | 1'b0;
  assign io_resp_bits_data[25] = T13[25] | 1'b0;
  assign io_resp_bits_data[24] = T13[24] | 1'b0;
  assign io_resp_bits_data[23] = T13[23] | 1'b0;
  assign io_resp_bits_data[22] = T13[22] | 1'b0;
  assign io_resp_bits_data[21] = T13[21] | 1'b0;
  assign io_resp_bits_data[20] = T13[20] | 1'b0;
  assign io_resp_bits_data[19] = T13[19] | 1'b0;
  assign io_resp_bits_data[18] = T13[18] | 1'b0;
  assign io_resp_bits_data[17] = T13[17] | 1'b0;
  assign io_resp_bits_data[16] = T13[16] | 1'b0;
  assign io_resp_bits_data[15] = T13[15] | 1'b0;
  assign io_resp_bits_data[14] = T13[14] | 1'b0;
  assign io_resp_bits_data[13] = T13[13] | 1'b0;
  assign io_resp_bits_data[12] = T13[12] | 1'b0;
  assign io_resp_bits_data[11] = T13[11] | 1'b0;
  assign io_resp_bits_data[10] = T13[10] | 1'b0;
  assign io_resp_bits_data[9] = T13[9] | 1'b0;
  assign io_resp_bits_data[8] = T13[8] | 1'b0;
  assign io_resp_bits_data[7] = T13[7] | 1'b0;
  assign io_resp_bits_data[6] = T13[6] | 1'b0;
  assign io_resp_bits_data[5] = T13[5] | 1'b0;
  assign io_resp_bits_data[4] = T13[4] | 1'b0;
  assign io_resp_bits_data[3] = T13[3] | 1'b0;
  assign io_resp_bits_data[2] = T13[2] | 1'b0;
  assign io_resp_bits_data[1] = T13[1] | 1'b0;
  assign io_resp_bits_data[0] = T13[0] | N114;
  assign N23 = ~io_resp_bits_addr[1];
  assign N24 = ~io_resp_bits_addr[2];
  assign T29 = T39 & T30;
  assign T30 = T34 | T31;
  assign T31 = io_resp_bits_cmd[3] | N131;
  assign T34 = T36 | N126;
  assign T36 = N136 | N141;
  assign T39 = N121 & io_grant_valid;
  assign T46 = io_acquire_ready & io_acquire_valid;
  assign T47 = T39 & T48;
  assign T48 = ~T30;
  assign T49 = io_resp_ready & io_resp_bits_replay;
  assign T143[0] = T57 & T20[31];
  assign T144[0] = T57 & T17[15];
  assign N25 = ~T77;
  assign T145[0] = T57 & T13[7];
  assign T77 = N91 | N114;
  assign N26 = ~T98;
  assign T98 = T102 | T99;
  assign T99 = io_resp_bits_cmd[3] | N87;
  assign T102 = T104 | N82;
  assign T104 = N100 | N105;
  assign T114[1] = io_resp_bits_addr[0] | T118;
  assign T118 = io_resp_bits_typ[1] | io_resp_bits_typ[0];
  assign T112[3] = T124[1] | T122[1];
  assign T112[2] = T124[0] | T122[1];
  assign T122[1] = io_resp_bits_typ[1];
  assign T110[7] = T130[3] | T128[3];
  assign T110[6] = T130[2] | T128[3];
  assign T110[5] = T130[1] | T128[3];
  assign T110[4] = T130[0] | T128[3];
  assign T128[3] = T129;
  assign io_acquire_bits_a_type[1] = N26;
  assign N27 = T49 | reset;
  assign N28 = T47 | N27;
  assign N29 = T29 | N28;
  assign N30 = T46 | N29;
  assign N31 = T1 | N30;
  assign N32 = ~N31;
  assign N36 = ~reset;
  assign N37 = T49 & N36;
  assign N38 = ~T49;
  assign N39 = N36 & N38;
  assign N40 = T47 & N39;
  assign N41 = ~T47;
  assign N42 = N39 & N41;
  assign N43 = T29 & N42;
  assign N44 = ~T29;
  assign N45 = N42 & N44;
  assign N46 = T46 & N45;
  assign N47 = ~T46;
  assign N48 = N45 & N47;
  assign N49 = T1 & N48;

endmodule