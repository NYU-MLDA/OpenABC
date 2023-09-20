module NastiArbiter
(
  io_master_0_aw_ready,
  io_master_0_aw_valid,
  io_master_0_aw_bits_addr,
  io_master_0_aw_bits_len,
  io_master_0_aw_bits_size,
  io_master_0_aw_bits_burst,
  io_master_0_aw_bits_lock,
  io_master_0_aw_bits_cache,
  io_master_0_aw_bits_prot,
  io_master_0_aw_bits_qos,
  io_master_0_aw_bits_region,
  io_master_0_aw_bits_id,
  io_master_0_aw_bits_user,
  io_master_0_w_ready,
  io_master_0_w_valid,
  io_master_0_w_bits_data,
  io_master_0_w_bits_last,
  io_master_0_w_bits_strb,
  io_master_0_w_bits_user,
  io_master_0_b_ready,
  io_master_0_b_valid,
  io_master_0_b_bits_resp,
  io_master_0_b_bits_id,
  io_master_0_b_bits_user,
  io_master_0_ar_ready,
  io_master_0_ar_valid,
  io_master_0_ar_bits_addr,
  io_master_0_ar_bits_len,
  io_master_0_ar_bits_size,
  io_master_0_ar_bits_burst,
  io_master_0_ar_bits_lock,
  io_master_0_ar_bits_cache,
  io_master_0_ar_bits_prot,
  io_master_0_ar_bits_qos,
  io_master_0_ar_bits_region,
  io_master_0_ar_bits_id,
  io_master_0_ar_bits_user,
  io_master_0_r_ready,
  io_master_0_r_valid,
  io_master_0_r_bits_resp,
  io_master_0_r_bits_data,
  io_master_0_r_bits_last,
  io_master_0_r_bits_id,
  io_master_0_r_bits_user,
  io_slave_aw_ready,
  io_slave_aw_valid,
  io_slave_aw_bits_addr,
  io_slave_aw_bits_len,
  io_slave_aw_bits_size,
  io_slave_aw_bits_burst,
  io_slave_aw_bits_lock,
  io_slave_aw_bits_cache,
  io_slave_aw_bits_prot,
  io_slave_aw_bits_qos,
  io_slave_aw_bits_region,
  io_slave_aw_bits_id,
  io_slave_aw_bits_user,
  io_slave_w_ready,
  io_slave_w_valid,
  io_slave_w_bits_data,
  io_slave_w_bits_last,
  io_slave_w_bits_strb,
  io_slave_w_bits_user,
  io_slave_b_ready,
  io_slave_b_valid,
  io_slave_b_bits_resp,
  io_slave_b_bits_id,
  io_slave_b_bits_user,
  io_slave_ar_ready,
  io_slave_ar_valid,
  io_slave_ar_bits_addr,
  io_slave_ar_bits_len,
  io_slave_ar_bits_size,
  io_slave_ar_bits_burst,
  io_slave_ar_bits_lock,
  io_slave_ar_bits_cache,
  io_slave_ar_bits_prot,
  io_slave_ar_bits_qos,
  io_slave_ar_bits_region,
  io_slave_ar_bits_id,
  io_slave_ar_bits_user,
  io_slave_r_ready,
  io_slave_r_valid,
  io_slave_r_bits_resp,
  io_slave_r_bits_data,
  io_slave_r_bits_last,
  io_slave_r_bits_id,
  io_slave_r_bits_user
);

  input [31:0] io_master_0_aw_bits_addr;
  input [7:0] io_master_0_aw_bits_len;
  input [2:0] io_master_0_aw_bits_size;
  input [1:0] io_master_0_aw_bits_burst;
  input [3:0] io_master_0_aw_bits_cache;
  input [2:0] io_master_0_aw_bits_prot;
  input [3:0] io_master_0_aw_bits_qos;
  input [3:0] io_master_0_aw_bits_region;
  input [5:0] io_master_0_aw_bits_id;
  input [63:0] io_master_0_w_bits_data;
  input [7:0] io_master_0_w_bits_strb;
  output [1:0] io_master_0_b_bits_resp;
  output [5:0] io_master_0_b_bits_id;
  input [31:0] io_master_0_ar_bits_addr;
  input [7:0] io_master_0_ar_bits_len;
  input [2:0] io_master_0_ar_bits_size;
  input [1:0] io_master_0_ar_bits_burst;
  input [3:0] io_master_0_ar_bits_cache;
  input [2:0] io_master_0_ar_bits_prot;
  input [3:0] io_master_0_ar_bits_qos;
  input [3:0] io_master_0_ar_bits_region;
  input [5:0] io_master_0_ar_bits_id;
  output [1:0] io_master_0_r_bits_resp;
  output [63:0] io_master_0_r_bits_data;
  output [5:0] io_master_0_r_bits_id;
  output [31:0] io_slave_aw_bits_addr;
  output [7:0] io_slave_aw_bits_len;
  output [2:0] io_slave_aw_bits_size;
  output [1:0] io_slave_aw_bits_burst;
  output [3:0] io_slave_aw_bits_cache;
  output [2:0] io_slave_aw_bits_prot;
  output [3:0] io_slave_aw_bits_qos;
  output [3:0] io_slave_aw_bits_region;
  output [5:0] io_slave_aw_bits_id;
  output [63:0] io_slave_w_bits_data;
  output [7:0] io_slave_w_bits_strb;
  input [1:0] io_slave_b_bits_resp;
  input [5:0] io_slave_b_bits_id;
  output [31:0] io_slave_ar_bits_addr;
  output [7:0] io_slave_ar_bits_len;
  output [2:0] io_slave_ar_bits_size;
  output [1:0] io_slave_ar_bits_burst;
  output [3:0] io_slave_ar_bits_cache;
  output [2:0] io_slave_ar_bits_prot;
  output [3:0] io_slave_ar_bits_qos;
  output [3:0] io_slave_ar_bits_region;
  output [5:0] io_slave_ar_bits_id;
  input [1:0] io_slave_r_bits_resp;
  input [63:0] io_slave_r_bits_data;
  input [5:0] io_slave_r_bits_id;
  input io_master_0_aw_valid;
  input io_master_0_aw_bits_lock;
  input io_master_0_aw_bits_user;
  input io_master_0_w_valid;
  input io_master_0_w_bits_last;
  input io_master_0_w_bits_user;
  input io_master_0_b_ready;
  input io_master_0_ar_valid;
  input io_master_0_ar_bits_lock;
  input io_master_0_ar_bits_user;
  input io_master_0_r_ready;
  input io_slave_aw_ready;
  input io_slave_w_ready;
  input io_slave_b_valid;
  input io_slave_b_bits_user;
  input io_slave_ar_ready;
  input io_slave_r_valid;
  input io_slave_r_bits_last;
  input io_slave_r_bits_user;
  output io_master_0_aw_ready;
  output io_master_0_w_ready;
  output io_master_0_b_valid;
  output io_master_0_b_bits_user;
  output io_master_0_ar_ready;
  output io_master_0_r_valid;
  output io_master_0_r_bits_last;
  output io_master_0_r_bits_user;
  output io_slave_aw_valid;
  output io_slave_aw_bits_lock;
  output io_slave_aw_bits_user;
  output io_slave_w_valid;
  output io_slave_w_bits_last;
  output io_slave_w_bits_user;
  output io_slave_b_ready;
  output io_slave_ar_valid;
  output io_slave_ar_bits_lock;
  output io_slave_ar_bits_user;
  output io_slave_r_ready;
  wire [1:0] io_master_0_b_bits_resp,io_master_0_r_bits_resp,io_slave_aw_bits_burst,
  io_slave_ar_bits_burst;
  wire [5:0] io_master_0_b_bits_id,io_master_0_r_bits_id,io_slave_aw_bits_id,
  io_slave_ar_bits_id;
  wire [63:0] io_master_0_r_bits_data,io_slave_w_bits_data;
  wire [31:0] io_slave_aw_bits_addr,io_slave_ar_bits_addr;
  wire [7:0] io_slave_aw_bits_len,io_slave_w_bits_strb,io_slave_ar_bits_len;
  wire [2:0] io_slave_aw_bits_size,io_slave_aw_bits_prot,io_slave_ar_bits_size,
  io_slave_ar_bits_prot;
  wire [3:0] io_slave_aw_bits_cache,io_slave_aw_bits_qos,io_slave_aw_bits_region,
  io_slave_ar_bits_cache,io_slave_ar_bits_qos,io_slave_ar_bits_region;
  wire io_master_0_aw_ready,io_master_0_w_ready,io_master_0_b_valid,
  io_master_0_b_bits_user,io_master_0_ar_ready,io_master_0_r_valid,io_master_0_r_bits_last,
  io_master_0_r_bits_user,io_slave_aw_valid,io_slave_aw_bits_lock,io_slave_aw_bits_user,
  io_slave_w_valid,io_slave_w_bits_last,io_slave_w_bits_user,io_slave_b_ready,
  io_slave_ar_valid,io_slave_ar_bits_lock,io_slave_ar_bits_user,io_slave_r_ready,
  io_slave_aw_ready,io_slave_w_ready,io_slave_b_valid,io_slave_b_bits_user,
  io_slave_ar_ready,io_slave_r_valid,io_slave_r_bits_last,io_slave_r_bits_user,
  io_master_0_aw_valid,io_master_0_aw_bits_lock,io_master_0_aw_bits_user,io_master_0_w_valid,
  io_master_0_w_bits_last,io_master_0_w_bits_user,io_master_0_b_ready,
  io_master_0_ar_valid,io_master_0_ar_bits_lock,io_master_0_ar_bits_user,io_master_0_r_ready;
  assign io_master_0_aw_ready = io_slave_aw_ready;
  assign io_master_0_w_ready = io_slave_w_ready;
  assign io_master_0_b_valid = io_slave_b_valid;
  assign io_master_0_b_bits_resp[1] = io_slave_b_bits_resp[1];
  assign io_master_0_b_bits_resp[0] = io_slave_b_bits_resp[0];
  assign io_master_0_b_bits_id[5] = io_slave_b_bits_id[5];
  assign io_master_0_b_bits_id[4] = io_slave_b_bits_id[4];
  assign io_master_0_b_bits_id[3] = io_slave_b_bits_id[3];
  assign io_master_0_b_bits_id[2] = io_slave_b_bits_id[2];
  assign io_master_0_b_bits_id[1] = io_slave_b_bits_id[1];
  assign io_master_0_b_bits_id[0] = io_slave_b_bits_id[0];
  assign io_master_0_b_bits_user = io_slave_b_bits_user;
  assign io_master_0_ar_ready = io_slave_ar_ready;
  assign io_master_0_r_valid = io_slave_r_valid;
  assign io_master_0_r_bits_resp[1] = io_slave_r_bits_resp[1];
  assign io_master_0_r_bits_resp[0] = io_slave_r_bits_resp[0];
  assign io_master_0_r_bits_data[63] = io_slave_r_bits_data[63];
  assign io_master_0_r_bits_data[62] = io_slave_r_bits_data[62];
  assign io_master_0_r_bits_data[61] = io_slave_r_bits_data[61];
  assign io_master_0_r_bits_data[60] = io_slave_r_bits_data[60];
  assign io_master_0_r_bits_data[59] = io_slave_r_bits_data[59];
  assign io_master_0_r_bits_data[58] = io_slave_r_bits_data[58];
  assign io_master_0_r_bits_data[57] = io_slave_r_bits_data[57];
  assign io_master_0_r_bits_data[56] = io_slave_r_bits_data[56];
  assign io_master_0_r_bits_data[55] = io_slave_r_bits_data[55];
  assign io_master_0_r_bits_data[54] = io_slave_r_bits_data[54];
  assign io_master_0_r_bits_data[53] = io_slave_r_bits_data[53];
  assign io_master_0_r_bits_data[52] = io_slave_r_bits_data[52];
  assign io_master_0_r_bits_data[51] = io_slave_r_bits_data[51];
  assign io_master_0_r_bits_data[50] = io_slave_r_bits_data[50];
  assign io_master_0_r_bits_data[49] = io_slave_r_bits_data[49];
  assign io_master_0_r_bits_data[48] = io_slave_r_bits_data[48];
  assign io_master_0_r_bits_data[47] = io_slave_r_bits_data[47];
  assign io_master_0_r_bits_data[46] = io_slave_r_bits_data[46];
  assign io_master_0_r_bits_data[45] = io_slave_r_bits_data[45];
  assign io_master_0_r_bits_data[44] = io_slave_r_bits_data[44];
  assign io_master_0_r_bits_data[43] = io_slave_r_bits_data[43];
  assign io_master_0_r_bits_data[42] = io_slave_r_bits_data[42];
  assign io_master_0_r_bits_data[41] = io_slave_r_bits_data[41];
  assign io_master_0_r_bits_data[40] = io_slave_r_bits_data[40];
  assign io_master_0_r_bits_data[39] = io_slave_r_bits_data[39];
  assign io_master_0_r_bits_data[38] = io_slave_r_bits_data[38];
  assign io_master_0_r_bits_data[37] = io_slave_r_bits_data[37];
  assign io_master_0_r_bits_data[36] = io_slave_r_bits_data[36];
  assign io_master_0_r_bits_data[35] = io_slave_r_bits_data[35];
  assign io_master_0_r_bits_data[34] = io_slave_r_bits_data[34];
  assign io_master_0_r_bits_data[33] = io_slave_r_bits_data[33];
  assign io_master_0_r_bits_data[32] = io_slave_r_bits_data[32];
  assign io_master_0_r_bits_data[31] = io_slave_r_bits_data[31];
  assign io_master_0_r_bits_data[30] = io_slave_r_bits_data[30];
  assign io_master_0_r_bits_data[29] = io_slave_r_bits_data[29];
  assign io_master_0_r_bits_data[28] = io_slave_r_bits_data[28];
  assign io_master_0_r_bits_data[27] = io_slave_r_bits_data[27];
  assign io_master_0_r_bits_data[26] = io_slave_r_bits_data[26];
  assign io_master_0_r_bits_data[25] = io_slave_r_bits_data[25];
  assign io_master_0_r_bits_data[24] = io_slave_r_bits_data[24];
  assign io_master_0_r_bits_data[23] = io_slave_r_bits_data[23];
  assign io_master_0_r_bits_data[22] = io_slave_r_bits_data[22];
  assign io_master_0_r_bits_data[21] = io_slave_r_bits_data[21];
  assign io_master_0_r_bits_data[20] = io_slave_r_bits_data[20];
  assign io_master_0_r_bits_data[19] = io_slave_r_bits_data[19];
  assign io_master_0_r_bits_data[18] = io_slave_r_bits_data[18];
  assign io_master_0_r_bits_data[17] = io_slave_r_bits_data[17];
  assign io_master_0_r_bits_data[16] = io_slave_r_bits_data[16];
  assign io_master_0_r_bits_data[15] = io_slave_r_bits_data[15];
  assign io_master_0_r_bits_data[14] = io_slave_r_bits_data[14];
  assign io_master_0_r_bits_data[13] = io_slave_r_bits_data[13];
  assign io_master_0_r_bits_data[12] = io_slave_r_bits_data[12];
  assign io_master_0_r_bits_data[11] = io_slave_r_bits_data[11];
  assign io_master_0_r_bits_data[10] = io_slave_r_bits_data[10];
  assign io_master_0_r_bits_data[9] = io_slave_r_bits_data[9];
  assign io_master_0_r_bits_data[8] = io_slave_r_bits_data[8];
  assign io_master_0_r_bits_data[7] = io_slave_r_bits_data[7];
  assign io_master_0_r_bits_data[6] = io_slave_r_bits_data[6];
  assign io_master_0_r_bits_data[5] = io_slave_r_bits_data[5];
  assign io_master_0_r_bits_data[4] = io_slave_r_bits_data[4];
  assign io_master_0_r_bits_data[3] = io_slave_r_bits_data[3];
  assign io_master_0_r_bits_data[2] = io_slave_r_bits_data[2];
  assign io_master_0_r_bits_data[1] = io_slave_r_bits_data[1];
  assign io_master_0_r_bits_data[0] = io_slave_r_bits_data[0];
  assign io_master_0_r_bits_last = io_slave_r_bits_last;
  assign io_master_0_r_bits_id[5] = io_slave_r_bits_id[5];
  assign io_master_0_r_bits_id[4] = io_slave_r_bits_id[4];
  assign io_master_0_r_bits_id[3] = io_slave_r_bits_id[3];
  assign io_master_0_r_bits_id[2] = io_slave_r_bits_id[2];
  assign io_master_0_r_bits_id[1] = io_slave_r_bits_id[1];
  assign io_master_0_r_bits_id[0] = io_slave_r_bits_id[0];
  assign io_master_0_r_bits_user = io_slave_r_bits_user;
  assign io_slave_aw_valid = io_master_0_aw_valid;
  assign io_slave_aw_bits_addr[31] = io_master_0_aw_bits_addr[31];
  assign io_slave_aw_bits_addr[30] = io_master_0_aw_bits_addr[30];
  assign io_slave_aw_bits_addr[29] = io_master_0_aw_bits_addr[29];
  assign io_slave_aw_bits_addr[28] = io_master_0_aw_bits_addr[28];
  assign io_slave_aw_bits_addr[27] = io_master_0_aw_bits_addr[27];
  assign io_slave_aw_bits_addr[26] = io_master_0_aw_bits_addr[26];
  assign io_slave_aw_bits_addr[25] = io_master_0_aw_bits_addr[25];
  assign io_slave_aw_bits_addr[24] = io_master_0_aw_bits_addr[24];
  assign io_slave_aw_bits_addr[23] = io_master_0_aw_bits_addr[23];
  assign io_slave_aw_bits_addr[22] = io_master_0_aw_bits_addr[22];
  assign io_slave_aw_bits_addr[21] = io_master_0_aw_bits_addr[21];
  assign io_slave_aw_bits_addr[20] = io_master_0_aw_bits_addr[20];
  assign io_slave_aw_bits_addr[19] = io_master_0_aw_bits_addr[19];
  assign io_slave_aw_bits_addr[18] = io_master_0_aw_bits_addr[18];
  assign io_slave_aw_bits_addr[17] = io_master_0_aw_bits_addr[17];
  assign io_slave_aw_bits_addr[16] = io_master_0_aw_bits_addr[16];
  assign io_slave_aw_bits_addr[15] = io_master_0_aw_bits_addr[15];
  assign io_slave_aw_bits_addr[14] = io_master_0_aw_bits_addr[14];
  assign io_slave_aw_bits_addr[13] = io_master_0_aw_bits_addr[13];
  assign io_slave_aw_bits_addr[12] = io_master_0_aw_bits_addr[12];
  assign io_slave_aw_bits_addr[11] = io_master_0_aw_bits_addr[11];
  assign io_slave_aw_bits_addr[10] = io_master_0_aw_bits_addr[10];
  assign io_slave_aw_bits_addr[9] = io_master_0_aw_bits_addr[9];
  assign io_slave_aw_bits_addr[8] = io_master_0_aw_bits_addr[8];
  assign io_slave_aw_bits_addr[7] = io_master_0_aw_bits_addr[7];
  assign io_slave_aw_bits_addr[6] = io_master_0_aw_bits_addr[6];
  assign io_slave_aw_bits_addr[5] = io_master_0_aw_bits_addr[5];
  assign io_slave_aw_bits_addr[4] = io_master_0_aw_bits_addr[4];
  assign io_slave_aw_bits_addr[3] = io_master_0_aw_bits_addr[3];
  assign io_slave_aw_bits_addr[2] = io_master_0_aw_bits_addr[2];
  assign io_slave_aw_bits_addr[1] = io_master_0_aw_bits_addr[1];
  assign io_slave_aw_bits_addr[0] = io_master_0_aw_bits_addr[0];
  assign io_slave_aw_bits_len[7] = io_master_0_aw_bits_len[7];
  assign io_slave_aw_bits_len[6] = io_master_0_aw_bits_len[6];
  assign io_slave_aw_bits_len[5] = io_master_0_aw_bits_len[5];
  assign io_slave_aw_bits_len[4] = io_master_0_aw_bits_len[4];
  assign io_slave_aw_bits_len[3] = io_master_0_aw_bits_len[3];
  assign io_slave_aw_bits_len[2] = io_master_0_aw_bits_len[2];
  assign io_slave_aw_bits_len[1] = io_master_0_aw_bits_len[1];
  assign io_slave_aw_bits_len[0] = io_master_0_aw_bits_len[0];
  assign io_slave_aw_bits_size[2] = io_master_0_aw_bits_size[2];
  assign io_slave_aw_bits_size[1] = io_master_0_aw_bits_size[1];
  assign io_slave_aw_bits_size[0] = io_master_0_aw_bits_size[0];
  assign io_slave_aw_bits_burst[1] = io_master_0_aw_bits_burst[1];
  assign io_slave_aw_bits_burst[0] = io_master_0_aw_bits_burst[0];
  assign io_slave_aw_bits_lock = io_master_0_aw_bits_lock;
  assign io_slave_aw_bits_cache[3] = io_master_0_aw_bits_cache[3];
  assign io_slave_aw_bits_cache[2] = io_master_0_aw_bits_cache[2];
  assign io_slave_aw_bits_cache[1] = io_master_0_aw_bits_cache[1];
  assign io_slave_aw_bits_cache[0] = io_master_0_aw_bits_cache[0];
  assign io_slave_aw_bits_prot[2] = io_master_0_aw_bits_prot[2];
  assign io_slave_aw_bits_prot[1] = io_master_0_aw_bits_prot[1];
  assign io_slave_aw_bits_prot[0] = io_master_0_aw_bits_prot[0];
  assign io_slave_aw_bits_qos[3] = io_master_0_aw_bits_qos[3];
  assign io_slave_aw_bits_qos[2] = io_master_0_aw_bits_qos[2];
  assign io_slave_aw_bits_qos[1] = io_master_0_aw_bits_qos[1];
  assign io_slave_aw_bits_qos[0] = io_master_0_aw_bits_qos[0];
  assign io_slave_aw_bits_region[3] = io_master_0_aw_bits_region[3];
  assign io_slave_aw_bits_region[2] = io_master_0_aw_bits_region[2];
  assign io_slave_aw_bits_region[1] = io_master_0_aw_bits_region[1];
  assign io_slave_aw_bits_region[0] = io_master_0_aw_bits_region[0];
  assign io_slave_aw_bits_id[5] = io_master_0_aw_bits_id[5];
  assign io_slave_aw_bits_id[4] = io_master_0_aw_bits_id[4];
  assign io_slave_aw_bits_id[3] = io_master_0_aw_bits_id[3];
  assign io_slave_aw_bits_id[2] = io_master_0_aw_bits_id[2];
  assign io_slave_aw_bits_id[1] = io_master_0_aw_bits_id[1];
  assign io_slave_aw_bits_id[0] = io_master_0_aw_bits_id[0];
  assign io_slave_aw_bits_user = io_master_0_aw_bits_user;
  assign io_slave_w_valid = io_master_0_w_valid;
  assign io_slave_w_bits_data[63] = io_master_0_w_bits_data[63];
  assign io_slave_w_bits_data[62] = io_master_0_w_bits_data[62];
  assign io_slave_w_bits_data[61] = io_master_0_w_bits_data[61];
  assign io_slave_w_bits_data[60] = io_master_0_w_bits_data[60];
  assign io_slave_w_bits_data[59] = io_master_0_w_bits_data[59];
  assign io_slave_w_bits_data[58] = io_master_0_w_bits_data[58];
  assign io_slave_w_bits_data[57] = io_master_0_w_bits_data[57];
  assign io_slave_w_bits_data[56] = io_master_0_w_bits_data[56];
  assign io_slave_w_bits_data[55] = io_master_0_w_bits_data[55];
  assign io_slave_w_bits_data[54] = io_master_0_w_bits_data[54];
  assign io_slave_w_bits_data[53] = io_master_0_w_bits_data[53];
  assign io_slave_w_bits_data[52] = io_master_0_w_bits_data[52];
  assign io_slave_w_bits_data[51] = io_master_0_w_bits_data[51];
  assign io_slave_w_bits_data[50] = io_master_0_w_bits_data[50];
  assign io_slave_w_bits_data[49] = io_master_0_w_bits_data[49];
  assign io_slave_w_bits_data[48] = io_master_0_w_bits_data[48];
  assign io_slave_w_bits_data[47] = io_master_0_w_bits_data[47];
  assign io_slave_w_bits_data[46] = io_master_0_w_bits_data[46];
  assign io_slave_w_bits_data[45] = io_master_0_w_bits_data[45];
  assign io_slave_w_bits_data[44] = io_master_0_w_bits_data[44];
  assign io_slave_w_bits_data[43] = io_master_0_w_bits_data[43];
  assign io_slave_w_bits_data[42] = io_master_0_w_bits_data[42];
  assign io_slave_w_bits_data[41] = io_master_0_w_bits_data[41];
  assign io_slave_w_bits_data[40] = io_master_0_w_bits_data[40];
  assign io_slave_w_bits_data[39] = io_master_0_w_bits_data[39];
  assign io_slave_w_bits_data[38] = io_master_0_w_bits_data[38];
  assign io_slave_w_bits_data[37] = io_master_0_w_bits_data[37];
  assign io_slave_w_bits_data[36] = io_master_0_w_bits_data[36];
  assign io_slave_w_bits_data[35] = io_master_0_w_bits_data[35];
  assign io_slave_w_bits_data[34] = io_master_0_w_bits_data[34];
  assign io_slave_w_bits_data[33] = io_master_0_w_bits_data[33];
  assign io_slave_w_bits_data[32] = io_master_0_w_bits_data[32];
  assign io_slave_w_bits_data[31] = io_master_0_w_bits_data[31];
  assign io_slave_w_bits_data[30] = io_master_0_w_bits_data[30];
  assign io_slave_w_bits_data[29] = io_master_0_w_bits_data[29];
  assign io_slave_w_bits_data[28] = io_master_0_w_bits_data[28];
  assign io_slave_w_bits_data[27] = io_master_0_w_bits_data[27];
  assign io_slave_w_bits_data[26] = io_master_0_w_bits_data[26];
  assign io_slave_w_bits_data[25] = io_master_0_w_bits_data[25];
  assign io_slave_w_bits_data[24] = io_master_0_w_bits_data[24];
  assign io_slave_w_bits_data[23] = io_master_0_w_bits_data[23];
  assign io_slave_w_bits_data[22] = io_master_0_w_bits_data[22];
  assign io_slave_w_bits_data[21] = io_master_0_w_bits_data[21];
  assign io_slave_w_bits_data[20] = io_master_0_w_bits_data[20];
  assign io_slave_w_bits_data[19] = io_master_0_w_bits_data[19];
  assign io_slave_w_bits_data[18] = io_master_0_w_bits_data[18];
  assign io_slave_w_bits_data[17] = io_master_0_w_bits_data[17];
  assign io_slave_w_bits_data[16] = io_master_0_w_bits_data[16];
  assign io_slave_w_bits_data[15] = io_master_0_w_bits_data[15];
  assign io_slave_w_bits_data[14] = io_master_0_w_bits_data[14];
  assign io_slave_w_bits_data[13] = io_master_0_w_bits_data[13];
  assign io_slave_w_bits_data[12] = io_master_0_w_bits_data[12];
  assign io_slave_w_bits_data[11] = io_master_0_w_bits_data[11];
  assign io_slave_w_bits_data[10] = io_master_0_w_bits_data[10];
  assign io_slave_w_bits_data[9] = io_master_0_w_bits_data[9];
  assign io_slave_w_bits_data[8] = io_master_0_w_bits_data[8];
  assign io_slave_w_bits_data[7] = io_master_0_w_bits_data[7];
  assign io_slave_w_bits_data[6] = io_master_0_w_bits_data[6];
  assign io_slave_w_bits_data[5] = io_master_0_w_bits_data[5];
  assign io_slave_w_bits_data[4] = io_master_0_w_bits_data[4];
  assign io_slave_w_bits_data[3] = io_master_0_w_bits_data[3];
  assign io_slave_w_bits_data[2] = io_master_0_w_bits_data[2];
  assign io_slave_w_bits_data[1] = io_master_0_w_bits_data[1];
  assign io_slave_w_bits_data[0] = io_master_0_w_bits_data[0];
  assign io_slave_w_bits_last = io_master_0_w_bits_last;
  assign io_slave_w_bits_strb[7] = io_master_0_w_bits_strb[7];
  assign io_slave_w_bits_strb[6] = io_master_0_w_bits_strb[6];
  assign io_slave_w_bits_strb[5] = io_master_0_w_bits_strb[5];
  assign io_slave_w_bits_strb[4] = io_master_0_w_bits_strb[4];
  assign io_slave_w_bits_strb[3] = io_master_0_w_bits_strb[3];
  assign io_slave_w_bits_strb[2] = io_master_0_w_bits_strb[2];
  assign io_slave_w_bits_strb[1] = io_master_0_w_bits_strb[1];
  assign io_slave_w_bits_strb[0] = io_master_0_w_bits_strb[0];
  assign io_slave_w_bits_user = io_master_0_w_bits_user;
  assign io_slave_b_ready = io_master_0_b_ready;
  assign io_slave_ar_valid = io_master_0_ar_valid;
  assign io_slave_ar_bits_addr[31] = io_master_0_ar_bits_addr[31];
  assign io_slave_ar_bits_addr[30] = io_master_0_ar_bits_addr[30];
  assign io_slave_ar_bits_addr[29] = io_master_0_ar_bits_addr[29];
  assign io_slave_ar_bits_addr[28] = io_master_0_ar_bits_addr[28];
  assign io_slave_ar_bits_addr[27] = io_master_0_ar_bits_addr[27];
  assign io_slave_ar_bits_addr[26] = io_master_0_ar_bits_addr[26];
  assign io_slave_ar_bits_addr[25] = io_master_0_ar_bits_addr[25];
  assign io_slave_ar_bits_addr[24] = io_master_0_ar_bits_addr[24];
  assign io_slave_ar_bits_addr[23] = io_master_0_ar_bits_addr[23];
  assign io_slave_ar_bits_addr[22] = io_master_0_ar_bits_addr[22];
  assign io_slave_ar_bits_addr[21] = io_master_0_ar_bits_addr[21];
  assign io_slave_ar_bits_addr[20] = io_master_0_ar_bits_addr[20];
  assign io_slave_ar_bits_addr[19] = io_master_0_ar_bits_addr[19];
  assign io_slave_ar_bits_addr[18] = io_master_0_ar_bits_addr[18];
  assign io_slave_ar_bits_addr[17] = io_master_0_ar_bits_addr[17];
  assign io_slave_ar_bits_addr[16] = io_master_0_ar_bits_addr[16];
  assign io_slave_ar_bits_addr[15] = io_master_0_ar_bits_addr[15];
  assign io_slave_ar_bits_addr[14] = io_master_0_ar_bits_addr[14];
  assign io_slave_ar_bits_addr[13] = io_master_0_ar_bits_addr[13];
  assign io_slave_ar_bits_addr[12] = io_master_0_ar_bits_addr[12];
  assign io_slave_ar_bits_addr[11] = io_master_0_ar_bits_addr[11];
  assign io_slave_ar_bits_addr[10] = io_master_0_ar_bits_addr[10];
  assign io_slave_ar_bits_addr[9] = io_master_0_ar_bits_addr[9];
  assign io_slave_ar_bits_addr[8] = io_master_0_ar_bits_addr[8];
  assign io_slave_ar_bits_addr[7] = io_master_0_ar_bits_addr[7];
  assign io_slave_ar_bits_addr[6] = io_master_0_ar_bits_addr[6];
  assign io_slave_ar_bits_addr[5] = io_master_0_ar_bits_addr[5];
  assign io_slave_ar_bits_addr[4] = io_master_0_ar_bits_addr[4];
  assign io_slave_ar_bits_addr[3] = io_master_0_ar_bits_addr[3];
  assign io_slave_ar_bits_addr[2] = io_master_0_ar_bits_addr[2];
  assign io_slave_ar_bits_addr[1] = io_master_0_ar_bits_addr[1];
  assign io_slave_ar_bits_addr[0] = io_master_0_ar_bits_addr[0];
  assign io_slave_ar_bits_len[7] = io_master_0_ar_bits_len[7];
  assign io_slave_ar_bits_len[6] = io_master_0_ar_bits_len[6];
  assign io_slave_ar_bits_len[5] = io_master_0_ar_bits_len[5];
  assign io_slave_ar_bits_len[4] = io_master_0_ar_bits_len[4];
  assign io_slave_ar_bits_len[3] = io_master_0_ar_bits_len[3];
  assign io_slave_ar_bits_len[2] = io_master_0_ar_bits_len[2];
  assign io_slave_ar_bits_len[1] = io_master_0_ar_bits_len[1];
  assign io_slave_ar_bits_len[0] = io_master_0_ar_bits_len[0];
  assign io_slave_ar_bits_size[2] = io_master_0_ar_bits_size[2];
  assign io_slave_ar_bits_size[1] = io_master_0_ar_bits_size[1];
  assign io_slave_ar_bits_size[0] = io_master_0_ar_bits_size[0];
  assign io_slave_ar_bits_burst[1] = io_master_0_ar_bits_burst[1];
  assign io_slave_ar_bits_burst[0] = io_master_0_ar_bits_burst[0];
  assign io_slave_ar_bits_lock = io_master_0_ar_bits_lock;
  assign io_slave_ar_bits_cache[3] = io_master_0_ar_bits_cache[3];
  assign io_slave_ar_bits_cache[2] = io_master_0_ar_bits_cache[2];
  assign io_slave_ar_bits_cache[1] = io_master_0_ar_bits_cache[1];
  assign io_slave_ar_bits_cache[0] = io_master_0_ar_bits_cache[0];
  assign io_slave_ar_bits_prot[2] = io_master_0_ar_bits_prot[2];
  assign io_slave_ar_bits_prot[1] = io_master_0_ar_bits_prot[1];
  assign io_slave_ar_bits_prot[0] = io_master_0_ar_bits_prot[0];
  assign io_slave_ar_bits_qos[3] = io_master_0_ar_bits_qos[3];
  assign io_slave_ar_bits_qos[2] = io_master_0_ar_bits_qos[2];
  assign io_slave_ar_bits_qos[1] = io_master_0_ar_bits_qos[1];
  assign io_slave_ar_bits_qos[0] = io_master_0_ar_bits_qos[0];
  assign io_slave_ar_bits_region[3] = io_master_0_ar_bits_region[3];
  assign io_slave_ar_bits_region[2] = io_master_0_ar_bits_region[2];
  assign io_slave_ar_bits_region[1] = io_master_0_ar_bits_region[1];
  assign io_slave_ar_bits_region[0] = io_master_0_ar_bits_region[0];
  assign io_slave_ar_bits_id[5] = io_master_0_ar_bits_id[5];
  assign io_slave_ar_bits_id[4] = io_master_0_ar_bits_id[4];
  assign io_slave_ar_bits_id[3] = io_master_0_ar_bits_id[3];
  assign io_slave_ar_bits_id[2] = io_master_0_ar_bits_id[2];
  assign io_slave_ar_bits_id[1] = io_master_0_ar_bits_id[1];
  assign io_slave_ar_bits_id[0] = io_master_0_ar_bits_id[0];
  assign io_slave_ar_bits_user = io_master_0_ar_bits_user;
  assign io_slave_r_ready = io_master_0_r_ready;

endmodule