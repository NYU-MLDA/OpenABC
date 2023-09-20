module BroadcastAcquireTracker_1
(
  clk,
  reset,
  io_inner_acquire_ready,
  io_inner_acquire_valid,
  io_inner_acquire_bits_addr_block,
  io_inner_acquire_bits_client_xact_id,
  io_inner_acquire_bits_addr_beat,
  io_inner_acquire_bits_is_builtin_type,
  io_inner_acquire_bits_a_type,
  io_inner_acquire_bits_union,
  io_inner_acquire_bits_data,
  io_inner_acquire_bits_client_id,
  io_inner_grant_ready,
  io_inner_grant_valid,
  io_inner_grant_bits_addr_beat,
  io_inner_grant_bits_client_xact_id,
  io_inner_grant_bits_manager_xact_id,
  io_inner_grant_bits_is_builtin_type,
  io_inner_grant_bits_g_type,
  io_inner_grant_bits_data,
  io_inner_grant_bits_client_id,
  io_inner_finish_ready,
  io_inner_finish_valid,
  io_inner_finish_bits_manager_xact_id,
  io_inner_probe_ready,
  io_inner_probe_valid,
  io_inner_probe_bits_addr_block,
  io_inner_probe_bits_p_type,
  io_inner_probe_bits_client_id,
  io_inner_release_ready,
  io_inner_release_valid,
  io_inner_release_bits_addr_beat,
  io_inner_release_bits_addr_block,
  io_inner_release_bits_client_xact_id,
  io_inner_release_bits_voluntary,
  io_inner_release_bits_r_type,
  io_inner_release_bits_data,
  io_inner_release_bits_client_id,
  io_incoherent_0,
  io_outer_acquire_ready,
  io_outer_acquire_valid,
  io_outer_acquire_bits_addr_block,
  io_outer_acquire_bits_client_xact_id,
  io_outer_acquire_bits_addr_beat,
  io_outer_acquire_bits_is_builtin_type,
  io_outer_acquire_bits_a_type,
  io_outer_acquire_bits_union,
  io_outer_acquire_bits_data,
  io_outer_grant_ready,
  io_outer_grant_valid,
  io_outer_grant_bits_addr_beat,
  io_outer_grant_bits_client_xact_id,
  io_outer_grant_bits_manager_xact_id,
  io_outer_grant_bits_is_builtin_type,
  io_outer_grant_bits_g_type,
  io_outer_grant_bits_data,
  io_has_acquire_conflict,
  io_has_acquire_match
);

  input [25:0] io_inner_acquire_bits_addr_block;
  input [5:0] io_inner_acquire_bits_client_xact_id;
  input [1:0] io_inner_acquire_bits_addr_beat;
  input [2:0] io_inner_acquire_bits_a_type;
  input [16:0] io_inner_acquire_bits_union;
  input [3:0] io_inner_acquire_bits_data;
  input [1:0] io_inner_acquire_bits_client_id;
  output [1:0] io_inner_grant_bits_addr_beat;
  output [5:0] io_inner_grant_bits_client_xact_id;
  output [3:0] io_inner_grant_bits_manager_xact_id;
  output [3:0] io_inner_grant_bits_g_type;
  output [3:0] io_inner_grant_bits_data;
  output [1:0] io_inner_grant_bits_client_id;
  input [3:0] io_inner_finish_bits_manager_xact_id;
  output [25:0] io_inner_probe_bits_addr_block;
  output [1:0] io_inner_probe_bits_p_type;
  output [1:0] io_inner_probe_bits_client_id;
  input [1:0] io_inner_release_bits_addr_beat;
  input [25:0] io_inner_release_bits_addr_block;
  input [5:0] io_inner_release_bits_client_xact_id;
  input [2:0] io_inner_release_bits_r_type;
  input [3:0] io_inner_release_bits_data;
  input [1:0] io_inner_release_bits_client_id;
  output [25:0] io_outer_acquire_bits_addr_block;
  output [3:0] io_outer_acquire_bits_client_xact_id;
  output [1:0] io_outer_acquire_bits_addr_beat;
  output [2:0] io_outer_acquire_bits_a_type;
  output [16:0] io_outer_acquire_bits_union;
  output [3:0] io_outer_acquire_bits_data;
  input [1:0] io_outer_grant_bits_addr_beat;
  input [3:0] io_outer_grant_bits_client_xact_id;
  input [3:0] io_outer_grant_bits_g_type;
  input [3:0] io_outer_grant_bits_data;
  input clk;
  input reset;
  input io_inner_acquire_valid;
  input io_inner_acquire_bits_is_builtin_type;
  input io_inner_grant_ready;
  input io_inner_finish_valid;
  input io_inner_probe_ready;
  input io_inner_release_valid;
  input io_inner_release_bits_voluntary;
  input io_incoherent_0;
  input io_outer_acquire_ready;
  input io_outer_grant_valid;
  input io_outer_grant_bits_manager_xact_id;
  input io_outer_grant_bits_is_builtin_type;
  output io_inner_acquire_ready;
  output io_inner_grant_valid;
  output io_inner_grant_bits_is_builtin_type;
  output io_inner_finish_ready;
  output io_inner_probe_valid;
  output io_inner_release_ready;
  output io_outer_acquire_valid;
  output io_outer_acquire_bits_is_builtin_type;
  output io_outer_grant_ready;
  output io_has_acquire_conflict;
  output io_has_acquire_match;
  wire [1:0] io_inner_grant_bits_addr_beat,io_inner_probe_bits_p_type,
  io_inner_probe_bits_client_id,io_outer_acquire_bits_addr_beat,T116,T142,T175,T244,T368,T376,T379,T377,
  T395,T396,T434;
  wire [3:0] io_inner_grant_bits_manager_xact_id,io_inner_grant_bits_g_type,
  io_inner_grant_bits_data,io_outer_acquire_bits_client_xact_id,io_outer_acquire_bits_data,
  mask_incoherent,mask_self,T58,T55,T56,T59,T216,T223,oacq_write_block_data,T245,T225,
  T230,T297,T406,T400,T404,T401,T402,T405;
  wire [25:0] io_outer_acquire_bits_addr_block;
  wire [2:0] io_outer_acquire_bits_a_type,T122,T63,T19,T20,T24,T28,T29,T30,T31,T32,T461,T462,
  T463,T464,T465;
  wire [16:0] io_outer_acquire_bits_union,T263;
  wire io_inner_acquire_ready,io_inner_grant_valid,io_inner_finish_ready,
  io_inner_probe_valid,io_inner_release_ready,io_outer_acquire_valid,
  io_outer_acquire_bits_is_builtin_type,io_outer_grant_ready,io_has_acquire_conflict,io_has_acquire_match,N0,
  N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,
  N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,
  N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,
  N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,
  N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,
  N102,N103,N104,N105,N106,N107,T156,T154,T136,T129,T127,T124,T78,T61,N108,
  pending_outer_write_,N109,pending_outer_read_,N110,N111,T43,T22,T47,T49,
  pending_outer_write,N112,pending_outer_read,N113,N114,T68,T65,T71,T74,T110,N115,T96,N116,N117,T93,
  N118,T103,T97,T98,T100,T104,T105,T107,T106,T120,oacq_data_done,T118,N119,T112,
  T111,T117,T121,T130,T133,T134,ignt_data_done,T144,N120,T138,T137,T143,T145,T151,
  T152,T179,T169,iacq_data_done,T177,N121,T171,T170,T176,T204,T207,T206,T209,T214,
  subblock_type,T218,T220,N122,N123,N124,T233,T228,T232,T241,T239,T250,T248,T256,
  T254,T264_0,T318,T295,T293,N125,T284_15,T284_0,T279,N126,T282,T280,T316,N127,
  T307_15,T307_0,T302,N128,T305,T303,T326,T324,T335,T333,T341,T339,T363,N129,T354_15,
  T354_0,T349,N130,T352,T350,T415,T389,T390,T414,T391,T413,T392,T397,T393,T394,N131,
  T407,T408,T410,T417,T418,T419,T420,T422,T431,N132,T429,T480,N133,N134,N135,N136,
  N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,N150,N151,N152,
  N153,N154,N155,N156,N157,N158,N159,N160,N161,N162,N163,N164,N165,N166,N167,N168,
  N169,N170,N171,N172,N173,N174,N175,N176,N177,N178,N179,N180,N181,N182,N183,N184,
  N185,N186,N187,N188,N189,N190,N191,N192,N193,N194,N195,N196,N197,N198,N199,N200,
  N201,N202,N203,N204,N205,N206,N207,N208,N209,N210,N211,N212,N213,N214,N215,N216,
  N217,N218,N219,N220,N221,N222,N223,N224,N225,N226,N227,N228,N229,N230,N231,N232,
  N233,N234,N235,N236,N237,N238,N239,N240,N241,N242,N243,N244,N245,N246,N247,N248,
  N249,N250,N251,N252,N253,N254,N255,N256,N257,N258,N259,N260,N261,N262,N263,N264,
  N265,N266,N267,N268,N269,N270,N271,N272,N273,N274,N275,N276,N277,N278,N279,N280,
  N281,N282,N283,N284,N285,N286,N287,N288,N289,N290,N291,N292,N293,N294,N295,N296,
  N297,N298,N299,N300,N301,N302,N303,N304,N305,N306,N307,N308,N309,N310,N311,N312,
  N313,N314,N315,N316,N317,N318,N319,N320,N321,N322,N323,N324,N325,N326,N327,N328,
  N329,N330,N331,N332,N333,N334,N335,N336,N337,N338,N339,N340,N341,N342,N343,N344,
  N345,N346,N347,N348,N349,N350,N351,N352,N353,N354,N355,N356,N357,N358,N359,N360,
  N361,N362,N363,N364,N365,N366,N367,N368,N369,N370,N371,N372,N373,N374,N375,N376,
  N377,N378,N379,N380,N381,N382,N383,N384,N385,N386,N387,N388,N389,N390,N391,N392,
  N393,N394,N395,N396,N397,N398,N399,N400,N401,N402,N403,N404,N405,N406,N407,N408,
  N409,N410,N411,N412,N413,N414,N415,N416,N417,N418,N419,N420,N421,N422,N423,N424,
  N425,N426,N427,N428,N429,N430,N431,N432,N433,N434,N436,N437,N438,N439,N440,N441,
  N442,N443,N444,N445,N446,N447,N448,N449,N450,N451,N452,N453,N454,N455,N456,N457,
  N458,N459,N460,N461,N462,N463,N464,N465,N466,N467,N468,N469,N470,N471,N472,N473,
  N474,N475,N476,N477,N478,N479,N480,N481,N482,N483,N484,N485,N486,N487,N488,N489,
  N490,N491,N492,N493,N494,N495,N496,N497,N498,N499,N500,N501,N502,N503,N504,N505,
  N506,N507,N508,N509,N510,N511,N512,N513,N514,SV2V_UNCONNECTED_1,
  SV2V_UNCONNECTED_2,SV2V_UNCONNECTED_3;
  wire [2:2] T150,T132;
  wire [2:1] T126,T21,T64,T123;
  wire [0:0] T484,T485,T489,T80,T495,T81,T494,T82,T83,T492,T84,T502,T504,T506,T370,T369,T512,
  T426,T514,T427,T517;
  wire [1:1] T33,T34,T288,T311,T358,T438,T435,T439,T440,T441,T442,T443,T444,T466,T467;
  wire [3:3] T486,T509;
  wire [16:1] T270,oacq_write_beat_union,oacq_write_block_union;
  wire [12:6] T264;
  wire [15:0] T330,T273,T299,T276,T277,T300,T347;
  wire [8:7] T284,T307,T354;
  reg [2:0] state,xact_a_type;
  reg io_inner_grant_bits_is_builtin_type,collect_iacq_data,pending_ognt_ack,T348_15,
  T348_14,T348_13,T348_12;
  reg [0:0] T490,T513;
  reg [25:0] io_inner_probe_bits_addr_block;
  reg [1:0] R114,R140,R173,io_inner_grant_bits_client_id,oacq_read_beat_addr_beat;
  reg [5:0] io_inner_grant_bits_client_xact_id;
  reg [3:0] oacq_write_beat_data,xact_data_buffer_1,xact_data_buffer_2,xact_data_buffer_3,
  iacq_data_valid;
  reg [12:6] oacq_read_beat_union;
  reg [4:0] T348;
  reg [15:0] xact_wmask_buffer_0,xact_wmask_buffer_1,xact_wmask_buffer_2,xact_wmask_buffer_3;
  assign io_outer_acquire_bits_client_xact_id[1] = 1'b1;
  assign io_outer_acquire_bits_is_builtin_type = 1'b1;
  assign io_inner_grant_bits_manager_xact_id[1] = 1'b1;
  assign io_outer_acquire_bits_client_xact_id[3] = 1'b0;
  assign io_outer_acquire_bits_client_xact_id[2] = 1'b0;
  assign io_outer_acquire_bits_client_xact_id[0] = 1'b0;
  assign io_outer_acquire_bits_a_type[2] = 1'b0;
  assign io_inner_grant_bits_addr_beat[0] = 1'b0;
  assign io_inner_grant_bits_addr_beat[1] = 1'b0;
  assign io_inner_grant_bits_manager_xact_id[0] = 1'b0;
  assign io_inner_grant_bits_manager_xact_id[2] = 1'b0;
  assign io_inner_grant_bits_manager_xact_id[3] = 1'b0;
  assign io_inner_grant_bits_g_type[3] = 1'b0;
  assign io_inner_grant_bits_data[0] = 1'b0;
  assign io_inner_grant_bits_data[1] = 1'b0;
  assign io_inner_grant_bits_data[2] = 1'b0;
  assign io_inner_grant_bits_data[3] = 1'b0;
  assign io_inner_probe_bits_client_id[0] = 1'b0;
  assign io_inner_probe_bits_client_id[1] = 1'b0;
  assign T56 = { 1'b0, 1'b0, 1'b0, 1'b1 } << io_inner_acquire_bits_client_id;
  assign T107 = io_inner_probe_bits_addr_block == io_inner_release_bits_addr_block;
  assign T204 = io_inner_probe_bits_addr_block == io_inner_acquire_bits_addr_block;
  assign T209 = io_inner_probe_bits_addr_block == io_inner_acquire_bits_addr_block;
  assign T230 = { 1'b0, 1'b0, 1'b0, 1'b1 } << io_inner_acquire_bits_addr_beat;
  assign { T288[1:1], T502[0:0] } = { 1'b0, 1'b1 } << io_inner_acquire_bits_union[12];
  assign T297 = { 1'b0, 1'b0, 1'b0, 1'b1 } << io_inner_acquire_bits_addr_beat;
  assign { T311[1:1], T504[0:0] } = { 1'b0, 1'b1 } << io_inner_acquire_bits_union[12];
  assign { T358[1:1], T506[0:0] } = { 1'b0, 1'b1 } << oacq_read_beat_union[12];
  assign { SV2V_UNCONNECTED_1, SV2V_UNCONNECTED_2, SV2V_UNCONNECTED_3, T397 } = iacq_data_valid >> T244;
  assign T402 = { 1'b0, 1'b0, 1'b0, 1'b1 } << io_inner_acquire_bits_addr_beat;
  assign T406 = { 1'b0, 1'b0, 1'b0, T407 } << io_inner_acquire_bits_addr_beat;

  always @(posedge clk) begin
    if(N142) begin
      state[2] <= N145;
    end 
  end


  always @(posedge clk) begin
    if(N142) begin
      state[1] <= N144;
    end 
  end


  always @(posedge clk) begin
    if(N142) begin
      state[0] <= N143;
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      xact_a_type[2] <= io_inner_acquire_bits_a_type[2];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      xact_a_type[1] <= io_inner_acquire_bits_a_type[1];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      xact_a_type[0] <= io_inner_acquire_bits_a_type[0];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_grant_bits_is_builtin_type <= io_inner_acquire_bits_is_builtin_type;
    end 
  end


  always @(posedge clk) begin
    if(1'b1) begin
      T490[0] <= T489[0];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_probe_bits_addr_block[25] <= io_inner_acquire_bits_addr_block[25];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_probe_bits_addr_block[24] <= io_inner_acquire_bits_addr_block[24];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_probe_bits_addr_block[23] <= io_inner_acquire_bits_addr_block[23];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_probe_bits_addr_block[22] <= io_inner_acquire_bits_addr_block[22];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_probe_bits_addr_block[21] <= io_inner_acquire_bits_addr_block[21];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_probe_bits_addr_block[20] <= io_inner_acquire_bits_addr_block[20];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_probe_bits_addr_block[19] <= io_inner_acquire_bits_addr_block[19];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_probe_bits_addr_block[18] <= io_inner_acquire_bits_addr_block[18];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_probe_bits_addr_block[17] <= io_inner_acquire_bits_addr_block[17];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_probe_bits_addr_block[16] <= io_inner_acquire_bits_addr_block[16];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_probe_bits_addr_block[15] <= io_inner_acquire_bits_addr_block[15];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_probe_bits_addr_block[14] <= io_inner_acquire_bits_addr_block[14];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_probe_bits_addr_block[13] <= io_inner_acquire_bits_addr_block[13];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_probe_bits_addr_block[12] <= io_inner_acquire_bits_addr_block[12];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_probe_bits_addr_block[11] <= io_inner_acquire_bits_addr_block[11];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_probe_bits_addr_block[10] <= io_inner_acquire_bits_addr_block[10];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_probe_bits_addr_block[9] <= io_inner_acquire_bits_addr_block[9];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_probe_bits_addr_block[8] <= io_inner_acquire_bits_addr_block[8];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_probe_bits_addr_block[7] <= io_inner_acquire_bits_addr_block[7];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_probe_bits_addr_block[6] <= io_inner_acquire_bits_addr_block[6];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_probe_bits_addr_block[5] <= io_inner_acquire_bits_addr_block[5];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_probe_bits_addr_block[4] <= io_inner_acquire_bits_addr_block[4];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_probe_bits_addr_block[3] <= io_inner_acquire_bits_addr_block[3];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_probe_bits_addr_block[2] <= io_inner_acquire_bits_addr_block[2];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_probe_bits_addr_block[1] <= io_inner_acquire_bits_addr_block[1];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_probe_bits_addr_block[0] <= io_inner_acquire_bits_addr_block[0];
    end 
  end


  always @(posedge clk) begin
    if(N148) begin
      R114[1] <= N150;
    end 
  end


  always @(posedge clk) begin
    if(N148) begin
      R114[0] <= N149;
    end 
  end


  always @(posedge clk) begin
    if(N153) begin
      R140[1] <= N155;
    end 
  end


  always @(posedge clk) begin
    if(N153) begin
      R140[0] <= N154;
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_grant_bits_client_xact_id[5] <= io_inner_acquire_bits_client_xact_id[5];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_grant_bits_client_xact_id[4] <= io_inner_acquire_bits_client_xact_id[4];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_grant_bits_client_xact_id[3] <= io_inner_acquire_bits_client_xact_id[3];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_grant_bits_client_xact_id[2] <= io_inner_acquire_bits_client_xact_id[2];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_grant_bits_client_xact_id[1] <= io_inner_acquire_bits_client_xact_id[1];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_grant_bits_client_xact_id[0] <= io_inner_acquire_bits_client_xact_id[0];
    end 
  end


  always @(posedge clk) begin
    if(N159) begin
      collect_iacq_data <= N160;
    end 
  end


  always @(posedge clk) begin
    if(N163) begin
      R173[1] <= N165;
    end 
  end


  always @(posedge clk) begin
    if(N163) begin
      R173[0] <= N164;
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_grant_bits_client_id[1] <= io_inner_acquire_bits_client_id[1];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      io_inner_grant_bits_client_id[0] <= io_inner_acquire_bits_client_id[0];
    end 
  end


  always @(posedge clk) begin
    if(N170) begin
      pending_ognt_ack <= N171;
    end 
  end


  always @(posedge clk) begin
    if(N174) begin
      oacq_write_beat_data[3] <= io_inner_acquire_bits_data[3];
    end 
  end


  always @(posedge clk) begin
    if(N174) begin
      oacq_write_beat_data[2] <= io_inner_acquire_bits_data[2];
    end 
  end


  always @(posedge clk) begin
    if(N174) begin
      oacq_write_beat_data[1] <= io_inner_acquire_bits_data[1];
    end 
  end


  always @(posedge clk) begin
    if(N174) begin
      oacq_write_beat_data[0] <= io_inner_acquire_bits_data[0];
    end 
  end


  always @(posedge clk) begin
    if(N177) begin
      xact_data_buffer_1[3] <= io_inner_acquire_bits_data[3];
    end 
  end


  always @(posedge clk) begin
    if(N177) begin
      xact_data_buffer_1[2] <= io_inner_acquire_bits_data[2];
    end 
  end


  always @(posedge clk) begin
    if(N177) begin
      xact_data_buffer_1[1] <= io_inner_acquire_bits_data[1];
    end 
  end


  always @(posedge clk) begin
    if(N177) begin
      xact_data_buffer_1[0] <= io_inner_acquire_bits_data[0];
    end 
  end


  always @(posedge clk) begin
    if(N180) begin
      xact_data_buffer_2[3] <= io_inner_acquire_bits_data[3];
    end 
  end


  always @(posedge clk) begin
    if(N180) begin
      xact_data_buffer_2[2] <= io_inner_acquire_bits_data[2];
    end 
  end


  always @(posedge clk) begin
    if(N180) begin
      xact_data_buffer_2[1] <= io_inner_acquire_bits_data[1];
    end 
  end


  always @(posedge clk) begin
    if(N180) begin
      xact_data_buffer_2[0] <= io_inner_acquire_bits_data[0];
    end 
  end


  always @(posedge clk) begin
    if(N183) begin
      xact_data_buffer_3[3] <= io_inner_acquire_bits_data[3];
    end 
  end


  always @(posedge clk) begin
    if(N183) begin
      xact_data_buffer_3[2] <= io_inner_acquire_bits_data[2];
    end 
  end


  always @(posedge clk) begin
    if(N183) begin
      xact_data_buffer_3[1] <= io_inner_acquire_bits_data[1];
    end 
  end


  always @(posedge clk) begin
    if(N183) begin
      xact_data_buffer_3[0] <= io_inner_acquire_bits_data[0];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      T348_15 <= io_inner_acquire_bits_union[16];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      T348_14 <= io_inner_acquire_bits_union[15];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      T348_13 <= io_inner_acquire_bits_union[14];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      T348_12 <= io_inner_acquire_bits_union[13];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      oacq_read_beat_union[12] <= io_inner_acquire_bits_union[12];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      oacq_read_beat_union[11] <= io_inner_acquire_bits_union[11];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      oacq_read_beat_union[10] <= io_inner_acquire_bits_union[10];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      oacq_read_beat_union[9] <= io_inner_acquire_bits_union[9];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      oacq_read_beat_union[8] <= io_inner_acquire_bits_union[8];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      oacq_read_beat_union[7] <= io_inner_acquire_bits_union[7];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      oacq_read_beat_union[6] <= io_inner_acquire_bits_union[6];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      T348[4] <= io_inner_acquire_bits_union[5];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      T348[3] <= io_inner_acquire_bits_union[4];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      T348[2] <= io_inner_acquire_bits_union[3];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      T348[1] <= io_inner_acquire_bits_union[2];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      T348[0] <= io_inner_acquire_bits_union[1];
    end 
  end


  always @(posedge clk) begin
    if(N186) begin
      xact_wmask_buffer_0[15] <= N202;
    end 
  end


  always @(posedge clk) begin
    if(N186) begin
      xact_wmask_buffer_0[14] <= N201;
    end 
  end


  always @(posedge clk) begin
    if(N186) begin
      xact_wmask_buffer_0[13] <= N200;
    end 
  end


  always @(posedge clk) begin
    if(N186) begin
      xact_wmask_buffer_0[12] <= N199;
    end 
  end


  always @(posedge clk) begin
    if(N186) begin
      xact_wmask_buffer_0[11] <= N198;
    end 
  end


  always @(posedge clk) begin
    if(N186) begin
      xact_wmask_buffer_0[10] <= N197;
    end 
  end


  always @(posedge clk) begin
    if(N186) begin
      xact_wmask_buffer_0[9] <= N196;
    end 
  end


  always @(posedge clk) begin
    if(N186) begin
      xact_wmask_buffer_0[8] <= N195;
    end 
  end


  always @(posedge clk) begin
    if(N186) begin
      xact_wmask_buffer_0[7] <= N194;
    end 
  end


  always @(posedge clk) begin
    if(N186) begin
      xact_wmask_buffer_0[6] <= N193;
    end 
  end


  always @(posedge clk) begin
    if(N186) begin
      xact_wmask_buffer_0[5] <= N192;
    end 
  end


  always @(posedge clk) begin
    if(N186) begin
      xact_wmask_buffer_0[4] <= N191;
    end 
  end


  always @(posedge clk) begin
    if(N186) begin
      xact_wmask_buffer_0[3] <= N190;
    end 
  end


  always @(posedge clk) begin
    if(N186) begin
      xact_wmask_buffer_0[2] <= N189;
    end 
  end


  always @(posedge clk) begin
    if(N186) begin
      xact_wmask_buffer_0[1] <= N188;
    end 
  end


  always @(posedge clk) begin
    if(N186) begin
      xact_wmask_buffer_0[0] <= N187;
    end 
  end


  always @(posedge clk) begin
    if(N205) begin
      xact_wmask_buffer_1[15] <= N221;
    end 
  end


  always @(posedge clk) begin
    if(N205) begin
      xact_wmask_buffer_1[14] <= N220;
    end 
  end


  always @(posedge clk) begin
    if(N205) begin
      xact_wmask_buffer_1[13] <= N219;
    end 
  end


  always @(posedge clk) begin
    if(N205) begin
      xact_wmask_buffer_1[12] <= N218;
    end 
  end


  always @(posedge clk) begin
    if(N205) begin
      xact_wmask_buffer_1[11] <= N217;
    end 
  end


  always @(posedge clk) begin
    if(N205) begin
      xact_wmask_buffer_1[10] <= N216;
    end 
  end


  always @(posedge clk) begin
    if(N205) begin
      xact_wmask_buffer_1[9] <= N215;
    end 
  end


  always @(posedge clk) begin
    if(N205) begin
      xact_wmask_buffer_1[8] <= N214;
    end 
  end


  always @(posedge clk) begin
    if(N205) begin
      xact_wmask_buffer_1[7] <= N213;
    end 
  end


  always @(posedge clk) begin
    if(N205) begin
      xact_wmask_buffer_1[6] <= N212;
    end 
  end


  always @(posedge clk) begin
    if(N205) begin
      xact_wmask_buffer_1[5] <= N211;
    end 
  end


  always @(posedge clk) begin
    if(N205) begin
      xact_wmask_buffer_1[4] <= N210;
    end 
  end


  always @(posedge clk) begin
    if(N205) begin
      xact_wmask_buffer_1[3] <= N209;
    end 
  end


  always @(posedge clk) begin
    if(N205) begin
      xact_wmask_buffer_1[2] <= N208;
    end 
  end


  always @(posedge clk) begin
    if(N205) begin
      xact_wmask_buffer_1[1] <= N207;
    end 
  end


  always @(posedge clk) begin
    if(N205) begin
      xact_wmask_buffer_1[0] <= N206;
    end 
  end


  always @(posedge clk) begin
    if(N224) begin
      xact_wmask_buffer_2[15] <= N240;
    end 
  end


  always @(posedge clk) begin
    if(N224) begin
      xact_wmask_buffer_2[14] <= N239;
    end 
  end


  always @(posedge clk) begin
    if(N224) begin
      xact_wmask_buffer_2[13] <= N238;
    end 
  end


  always @(posedge clk) begin
    if(N224) begin
      xact_wmask_buffer_2[12] <= N237;
    end 
  end


  always @(posedge clk) begin
    if(N224) begin
      xact_wmask_buffer_2[11] <= N236;
    end 
  end


  always @(posedge clk) begin
    if(N224) begin
      xact_wmask_buffer_2[10] <= N235;
    end 
  end


  always @(posedge clk) begin
    if(N224) begin
      xact_wmask_buffer_2[9] <= N234;
    end 
  end


  always @(posedge clk) begin
    if(N224) begin
      xact_wmask_buffer_2[8] <= N233;
    end 
  end


  always @(posedge clk) begin
    if(N224) begin
      xact_wmask_buffer_2[7] <= N232;
    end 
  end


  always @(posedge clk) begin
    if(N224) begin
      xact_wmask_buffer_2[6] <= N231;
    end 
  end


  always @(posedge clk) begin
    if(N224) begin
      xact_wmask_buffer_2[5] <= N230;
    end 
  end


  always @(posedge clk) begin
    if(N224) begin
      xact_wmask_buffer_2[4] <= N229;
    end 
  end


  always @(posedge clk) begin
    if(N224) begin
      xact_wmask_buffer_2[3] <= N228;
    end 
  end


  always @(posedge clk) begin
    if(N224) begin
      xact_wmask_buffer_2[2] <= N227;
    end 
  end


  always @(posedge clk) begin
    if(N224) begin
      xact_wmask_buffer_2[1] <= N226;
    end 
  end


  always @(posedge clk) begin
    if(N224) begin
      xact_wmask_buffer_2[0] <= N225;
    end 
  end


  always @(posedge clk) begin
    if(N243) begin
      xact_wmask_buffer_3[15] <= N259;
    end 
  end


  always @(posedge clk) begin
    if(N243) begin
      xact_wmask_buffer_3[14] <= N258;
    end 
  end


  always @(posedge clk) begin
    if(N243) begin
      xact_wmask_buffer_3[13] <= N257;
    end 
  end


  always @(posedge clk) begin
    if(N243) begin
      xact_wmask_buffer_3[12] <= N256;
    end 
  end


  always @(posedge clk) begin
    if(N243) begin
      xact_wmask_buffer_3[11] <= N255;
    end 
  end


  always @(posedge clk) begin
    if(N243) begin
      xact_wmask_buffer_3[10] <= N254;
    end 
  end


  always @(posedge clk) begin
    if(N243) begin
      xact_wmask_buffer_3[9] <= N253;
    end 
  end


  always @(posedge clk) begin
    if(N243) begin
      xact_wmask_buffer_3[8] <= N252;
    end 
  end


  always @(posedge clk) begin
    if(N243) begin
      xact_wmask_buffer_3[7] <= N251;
    end 
  end


  always @(posedge clk) begin
    if(N243) begin
      xact_wmask_buffer_3[6] <= N250;
    end 
  end


  always @(posedge clk) begin
    if(N243) begin
      xact_wmask_buffer_3[5] <= N249;
    end 
  end


  always @(posedge clk) begin
    if(N243) begin
      xact_wmask_buffer_3[4] <= N248;
    end 
  end


  always @(posedge clk) begin
    if(N243) begin
      xact_wmask_buffer_3[3] <= N247;
    end 
  end


  always @(posedge clk) begin
    if(N243) begin
      xact_wmask_buffer_3[2] <= N246;
    end 
  end


  always @(posedge clk) begin
    if(N243) begin
      xact_wmask_buffer_3[1] <= N245;
    end 
  end


  always @(posedge clk) begin
    if(N243) begin
      xact_wmask_buffer_3[0] <= N244;
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      oacq_read_beat_addr_beat[1] <= io_inner_acquire_bits_addr_beat[1];
    end 
  end


  always @(posedge clk) begin
    if(T61) begin
      oacq_read_beat_addr_beat[0] <= io_inner_acquire_bits_addr_beat[0];
    end 
  end


  always @(posedge clk) begin
    if(N263) begin
      iacq_data_valid[3] <= N267;
    end 
  end


  always @(posedge clk) begin
    if(N263) begin
      iacq_data_valid[2] <= N266;
    end 
  end


  always @(posedge clk) begin
    if(N263) begin
      iacq_data_valid[1] <= N265;
    end 
  end


  always @(posedge clk) begin
    if(N263) begin
      iacq_data_valid[0] <= N264;
    end 
  end


  always @(posedge clk) begin
    if(1'b1) begin
      T513[0] <= T512[0];
    end 
  end

  assign N323 = state[1] | state[2];
  assign N324 = state[0] | N323;
  assign N325 = ~io_inner_acquire_bits_a_type[1];
  assign N326 = ~io_inner_acquire_bits_a_type[0];
  assign N327 = N325 | io_inner_acquire_bits_a_type[2];
  assign N328 = N326 | N327;
  assign N329 = ~N328;
  assign N330 = ~xact_a_type[0];
  assign N331 = xact_a_type[1] | xact_a_type[2];
  assign N332 = N330 | N331;
  assign N333 = ~N332;
  assign N334 = xact_a_type[1] | xact_a_type[2];
  assign N335 = xact_a_type[0] | N334;
  assign N336 = ~N335;
  assign N337 = xact_a_type[1] | xact_a_type[2];
  assign N338 = N330 | N337;
  assign N339 = ~xact_a_type[1];
  assign N340 = N339 | xact_a_type[2];
  assign N341 = N330 | N340;
  assign N342 = ~N341;
  assign N343 = ~io_inner_release_bits_r_type[1];
  assign N344 = N343 | io_inner_release_bits_r_type[2];
  assign N345 = io_inner_release_bits_r_type[0] | N344;
  assign N346 = ~N345;
  assign N347 = ~io_inner_acquire_bits_a_type[2];
  assign N348 = io_inner_acquire_bits_a_type[1] | N347;
  assign N349 = io_inner_acquire_bits_a_type[0] | N348;
  assign N350 = ~N349;
  assign N351 = xact_a_type[1] | xact_a_type[2];
  assign N352 = xact_a_type[0] | N351;
  assign N353 = ~N352;
  assign N354 = io_inner_release_bits_r_type[1] | io_inner_release_bits_r_type[2];
  assign N355 = io_inner_release_bits_r_type[0] | N354;
  assign N356 = ~N355;
  assign N357 = ~io_inner_release_bits_r_type[0];
  assign N358 = N357 | N354;
  assign N359 = ~N358;
  assign N360 = io_inner_acquire_bits_a_type[0] | N327;
  assign N361 = ~N360;
  assign N362 = N339 | xact_a_type[2];
  assign N363 = xact_a_type[0] | N362;
  assign N364 = ~N363;
  assign N365 = ~xact_a_type[2];
  assign N366 = xact_a_type[1] | N365;
  assign N367 = xact_a_type[0] | N366;
  assign N368 = ~N367;
  assign N369 = io_inner_grant_bits_g_type[1] | io_inner_grant_bits_g_type[2];
  assign N370 = io_inner_grant_bits_g_type[0] | N369;
  assign N371 = ~N370;
  assign N372 = io_inner_grant_bits_g_type[1] | io_inner_grant_bits_g_type[2];
  assign N373 = io_inner_grant_bits_g_type[0] | N372;
  assign N374 = ~N373;
  assign N375 = xact_a_type[1] | N365;
  assign N376 = xact_a_type[0] | N375;
  assign N377 = ~N376;
  assign N378 = xact_a_type[1] | N365;
  assign N379 = N330 | N378;
  assign N380 = ~N379;
  assign N381 = ~io_inner_grant_bits_g_type[2];
  assign N382 = ~io_inner_grant_bits_g_type[0];
  assign N383 = io_inner_grant_bits_g_type[1] | N381;
  assign N384 = N382 | N383;
  assign N385 = ~N384;
  assign N386 = io_inner_grant_bits_g_type[1] | N381;
  assign N387 = io_inner_grant_bits_g_type[0] | N386;
  assign N388 = ~N387;
  assign N389 = io_inner_grant_bits_g_type[1] | io_inner_grant_bits_g_type[2];
  assign N390 = io_inner_grant_bits_g_type[0] | N389;
  assign N391 = ~N390;
  assign N392 = io_inner_grant_bits_g_type[1] | io_inner_grant_bits_g_type[2];
  assign N393 = N382 | N392;
  assign N394 = ~N393;
  assign N395 = N339 | xact_a_type[2];
  assign N396 = xact_a_type[0] | N395;
  assign N397 = ~N396;
  assign N398 = N339 | xact_a_type[2];
  assign N399 = N330 | N398;
  assign N400 = ~N399;
  assign N401 = mask_incoherent[2] | mask_incoherent[3];
  assign N402 = mask_incoherent[1] | N401;
  assign N403 = mask_incoherent[0] | N402;
  assign N404 = R173[0] & R173[1];
  assign N405 = N339 | N365;
  assign N406 = xact_a_type[0] | N405;
  assign N407 = ~N406;
  assign N408 = N339 | xact_a_type[2];
  assign N409 = N330 | N408;
  assign N410 = ~N409;
  assign N411 = N339 | xact_a_type[2];
  assign N412 = xact_a_type[0] | N411;
  assign N413 = ~N412;
  assign N414 = ~T24[2];
  assign N415 = ~T24[0];
  assign N416 = T24[1] | N414;
  assign N417 = N415 | N416;
  assign N418 = ~N417;
  assign N419 = T24[1] | N414;
  assign N420 = T24[0] | N419;
  assign N421 = ~N420;
  assign N422 = T24[1] | T24[2];
  assign N423 = T24[0] | N422;
  assign N424 = ~N423;
  assign N425 = T24[1] | T24[2];
  assign N426 = N415 | N425;
  assign N427 = ~N426;
  assign N428 = xact_a_type[1] | N365;
  assign N429 = xact_a_type[0] | N428;
  assign N430 = R114[0] & R114[1];
  assign N431 = ~state[2];
  assign N432 = ~state[1];
  assign N433 = N432 | N431;
  assign N434 = state[0] | N433;
  assign io_inner_finish_ready = ~N434;
  assign N436 = R140[0] & R140[1];
  assign N437 = state[1] | state[2];
  assign N438 = state[0] | N437;
  assign N439 = ~N438;
  assign N440 = io_inner_acquire_bits_a_type[1] | io_inner_acquire_bits_a_type[2];
  assign N441 = io_inner_acquire_bits_a_type[0] | N440;
  assign N442 = ~N441;
  assign N443 = N326 | N440;
  assign N444 = ~N443;
  assign N445 = io_inner_grant_bits_g_type[1] | N381;
  assign N446 = N382 | N445;
  assign N447 = ~N446;
  assign N448 = io_inner_grant_bits_g_type[1] | io_inner_grant_bits_g_type[2];
  assign N449 = io_inner_grant_bits_g_type[0] | N448;
  assign N450 = ~N449;
  assign N451 = io_inner_grant_bits_g_type[1] | io_inner_grant_bits_g_type[2];
  assign N452 = N382 | N451;
  assign N453 = ~N452;
  assign N454 = N432 | state[2];
  assign N455 = state[0] | N454;
  assign N456 = ~N455;
  assign N457 = ~state[0];
  assign N458 = state[1] | state[2];
  assign N459 = N457 | N458;
  assign N460 = ~N459;
  assign N461 = N432 | state[2];
  assign N462 = N457 | N461;
  assign N463 = ~N462;
  assign N464 = state[1] | N431;
  assign N465 = state[0] | N464;
  assign N466 = ~N465;
  assign N467 = N326 | N348;
  assign N468 = ~N467;
  assign N469 = state[1] | N431;
  assign N470 = N457 | N469;
  assign N471 = ~N470;
  assign N472 = N325 | N347;
  assign N473 = io_inner_acquire_bits_a_type[0] | N472;
  assign N474 = xact_a_type[1] | xact_a_type[2];
  assign N475 = xact_a_type[0] | N474;
  assign N476 = xact_a_type[1] | xact_a_type[2];
  assign N477 = xact_a_type[0] | N476;
  assign N478 = ~N477;
  assign N479 = xact_a_type[1] | xact_a_type[2];
  assign N480 = N330 | N479;
  assign N481 = ~N480;
  assign N482 = N339 | xact_a_type[2];
  assign N483 = xact_a_type[0] | N482;
  assign N484 = ~N483;
  assign N485 = N339 | xact_a_type[2];
  assign N486 = N330 | N485;
  assign N487 = ~N486;
  assign N488 = xact_a_type[1] | N365;
  assign N489 = xact_a_type[0] | N488;
  assign N490 = ~N489;
  assign N491 = xact_a_type[1] | N365;
  assign N492 = N330 | N491;
  assign N493 = ~N492;
  assign N494 = N339 | N365;
  assign N495 = xact_a_type[0] | N494;
  assign N496 = ~io_outer_acquire_bits_a_type[1];
  assign N497 = ~io_outer_acquire_bits_a_type[0];
  assign N498 = N497 | N496;
  assign N499 = ~N498;
  assign N500 = state[1] | state[2];
  assign N501 = N457 | N500;
  assign N502 = ~N501;
  assign N503 = N432 | state[2];
  assign N504 = N457 | N503;
  assign N505 = ~N504;
  assign N506 = xact_a_type[1] | N365;
  assign N507 = xact_a_type[0] | N506;
  assign N508 = ~N507;
  assign N509 = N339 | xact_a_type[2];
  assign N510 = xact_a_type[0] | N509;
  assign N511 = ~N510;
  assign N512 = xact_a_type[1] | xact_a_type[2];
  assign N513 = xact_a_type[0] | N512;
  assign N514 = ~N513;
  assign T494[0] = T490[0] ^ 1'b1;
  assign T495[0] = T490[0] ^ 1'b1;
  assign T116 = R114 + 1'b1;
  assign T142 = R140 + 1'b1;
  assign T175 = R173 + 1'b1;
  assign { T284[7:7], T284_0 } = 1'b0 - T502[0];
  assign { T284_15, T284[8:8] } = 1'b0 - T288[1];
  assign { T307[7:7], T307_0 } = 1'b0 - T504[0];
  assign { T307_15, T307[8:8] } = 1'b0 - T311[1];
  assign { T354[7:7], T354_0 } = 1'b0 - T506[0];
  assign { T354_15, T354[8:8] } = 1'b0 - T358[1];
  assign T492[0] = mask_incoherent[0] ^ mask_incoherent[1];
  assign T84[0] = mask_incoherent[2] ^ mask_incoherent[3];
  assign T83[0] = T492[0] ^ T84[0];
  assign T396 = T244 - T244;
  assign T395 = T396 + 1'b1;
  assign T393 = T394 ^ 1'b1;
  assign T19 = (N0)? { 1'b0, 1'b0, 1'b1 } : 
               (N1)? T20 : 1'b0;
  assign N0 = N403;
  assign N1 = N108;
  assign T20[2:1] = (N2)? { 1'b0, 1'b1 } : 
                    (N3)? T21 : 1'b0;
  assign N2 = T20[0];
  assign N3 = N109;
  assign pending_outer_read_ = (N4)? T43 : 
                               (N5)? T22 : 1'b0;
  assign N4 = io_inner_acquire_bits_is_builtin_type;
  assign N5 = N111;
  assign T24 = (N4)? T28 : 
               (N5)? { 1'b0, 1'b0, T484[0:0] } : 1'b0;
  assign T28 = (N6)? { 1'b1, 1'b0, 1'b0 } : 
               (N7)? T29 : 1'b0;
  assign N6 = N442;
  assign N7 = T484[0];
  assign T29 = (N8)? { 1'b1, 1'b0, 1'b1 } : 
               (N9)? T30 : 1'b0;
  assign N8 = N444;
  assign N9 = N443;
  assign T30 = (N10)? { 1'b0, 1'b1, 1'b1 } : 
               (N11)? T31 : 1'b0;
  assign N10 = N361;
  assign N11 = N360;
  assign T31 = (N12)? { 1'b0, 1'b1, 1'b1 } : 
               (N13)? T32 : 1'b0;
  assign N12 = N329;
  assign N13 = N328;
  assign T32[1] = (N14)? 1'b0 : 
                  (N15)? T33[1] : 1'b0;
  assign N14 = T32[2];
  assign N15 = T32[0];
  assign T33[1] = (N16)? 1'b0 : 
                  (N17)? T34[1] : 1'b0;
  assign N16 = N468;
  assign N17 = N467;
  assign T63[2:1] = (N18)? { 1'b0, 1'b1 } : 
                    (N19)? T64 : 1'b0;
  assign N18 = T63[0];
  assign N19 = N112;
  assign pending_outer_read = (N20)? T68 : 
                              (N21)? T65 : 1'b0;
  assign N20 = io_inner_grant_bits_is_builtin_type;
  assign N21 = N114;
  assign T489[0] = (N22)? 1'b0 : 
                   (N23)? T80[0] : 1'b0;
  assign N22 = reset;
  assign N23 = N115;
  assign T80[0] = (N24)? T495[0] : 
                  (N25)? T81[0] : 1'b0;
  assign N24 = T96;
  assign N25 = N116;
  assign T81[0] = (N26)? T494[0] : 
                  (N27)? T82[0] : 1'b0;
  assign N26 = T110;
  assign N27 = N117;
  assign T82[0] = (N28)? T83[0] : 
                  (N29)? T490[0] : 1'b0;
  assign N28 = T93;
  assign N29 = N118;
  assign oacq_data_done = (N30)? T112 : 
                          (N31)? T111 : 1'b0;
  assign N30 = T118;
  assign N31 = N119;
  assign T122[2:1] = (N32)? { 1'b0, 1'b1 } : 
                     (N19)? T123 : 1'b0;
  assign N32 = T122[0];
  assign ignt_data_done = (N33)? T138 : 
                          (N34)? T137 : 1'b0;
  assign N33 = T144;
  assign N34 = N120;
  assign T144 = (N20)? N447 : 
                (N21)? T145 : 1'b0;
  assign iacq_data_done = (N35)? T171 : 
                          (N36)? T170 : 1'b0;
  assign N35 = T177;
  assign N36 = N121;
  assign io_outer_grant_ready = (N37)? io_inner_grant_ready : 
                                (N38)? pending_ognt_ack : 1'b0;
  assign N37 = N471;
  assign N38 = N470;
  assign io_outer_acquire_bits_data = (N39)? io_inner_release_bits_data : 
                                      (N40)? T216 : 1'b0;
  assign N39 = N502;
  assign N40 = N501;
  assign T216 = (N41)? T223 : 
                (N42)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N41 = T368[1];
  assign N42 = N504;
  assign T223 = (N43)? oacq_write_beat_data : 
                (N44)? oacq_write_block_data : 1'b0;
  assign N43 = subblock_type;
  assign N44 = N122;
  assign oacq_write_block_data = (N45)? T245 : 
                                 (N46)? T225 : 1'b0;
  assign N45 = T244[1];
  assign N46 = N123;
  assign T225 = (N47)? xact_data_buffer_1 : 
                (N48)? oacq_write_beat_data : 1'b0;
  assign N47 = T244[0];
  assign N48 = N124;
  assign T244 = (N30)? R114 : 
                (N31)? { 1'b0, 1'b0 } : 1'b0;
  assign T245 = (N47)? xact_data_buffer_3 : 
                (N48)? xact_data_buffer_2 : 1'b0;
  assign io_outer_acquire_bits_union = (N39)? { 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 } : 
                                       (N40)? T263 : 1'b0;
  assign T263 = (N41)? { T270, 1'b1 } : 
                (N42)? { 1'b0, 1'b0, 1'b0, 1'b0, T264, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, T264_0 } : 1'b0;
  assign T264 = (N43)? oacq_read_beat_union : 
                (N49)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1 } : 1'b0;
  assign N49 = T264_0;
  assign T270 = (N43)? oacq_write_beat_union : 
                (N44)? oacq_write_block_union : 1'b0;
  assign oacq_write_block_union = (N45)? T330 : 
                                  (N46)? T273 : 1'b0;
  assign T273 = (N47)? xact_wmask_buffer_1 : 
                (N48)? xact_wmask_buffer_0 : 1'b0;
  assign T276 = (N50)? { T284_15, T284_15, T284_15, T284_15, T284_15, T284_15, T284_15, T284, T284[7:7], T284[7:7], T284[7:7], T284[7:7], T284[7:7], T284[7:7], T284_0 } : 
                (N51)? T277 : 1'b0;
  assign N50 = T293;
  assign N51 = N125;
  assign T277 = (N52)? io_inner_acquire_bits_union[16:1] : 
                (N53)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N52 = T279;
  assign N53 = N126;
  assign T299 = (N54)? { T307_15, T307_15, T307_15, T307_15, T307_15, T307_15, T307_15, T307, T307[7:7], T307[7:7], T307[7:7], T307[7:7], T307[7:7], T307[7:7], T307_0 } : 
                (N55)? T300 : 1'b0;
  assign N54 = T316;
  assign N55 = N127;
  assign T300 = (N56)? io_inner_acquire_bits_union[16:1] : 
                (N57)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N56 = T302;
  assign N57 = N128;
  assign T330 = (N47)? xact_wmask_buffer_3 : 
                (N48)? xact_wmask_buffer_2 : 1'b0;
  assign oacq_write_beat_union = (N58)? { T354_15, T354_15, T354_15, T354_15, T354_15, T354_15, T354_15, T354, T354[7:7], T354[7:7], T354[7:7], T354[7:7], T354[7:7], T354[7:7], T354_0 } : 
                                 (N59)? T347 : 1'b0;
  assign N58 = T363;
  assign N59 = N129;
  assign T347 = (N60)? { T348_15, T348_14, T348_13, T348_12, oacq_read_beat_union, T348 } : 
                (N61)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N60 = T349;
  assign N61 = N130;
  assign io_outer_acquire_bits_a_type[1:0] = (N39)? { 1'b1, 1'b1 } : 
                                             (N40)? T368 : 1'b0;
  assign T368[0] = (N41)? T370[0] : 
                   (N42)? T369[0] : 1'b0;
  assign io_outer_acquire_bits_addr_beat = (N39)? io_inner_release_bits_addr_beat : 
                                           (N40)? T376 : 1'b0;
  assign T376 = (N41)? T379 : 
                (N42)? T377 : 1'b0;
  assign T377 = (N43)? oacq_read_beat_addr_beat : 
                (N44)? { 1'b0, 1'b0 } : 1'b0;
  assign T379 = (N43)? oacq_read_beat_addr_beat : 
                (N44)? T244 : 1'b0;
  assign io_outer_acquire_bits_addr_block = (N39)? io_inner_release_bits_addr_block : 
                                            (N40)? io_inner_probe_bits_addr_block : 1'b0;
  assign io_outer_acquire_valid = (N62)? T415 : 
                                  (N63)? T389 : 1'b0;
  assign N62 = N456;
  assign N63 = N455;
  assign T389 = (N64)? T390 : 
                (N65)? T121 : 1'b0;
  assign N64 = N463;
  assign N65 = N462;
  assign io_inner_release_ready = (N66)? T417 : 
                                  (N67)? 1'b0 : 1'b0;
  assign N66 = N460;
  assign N67 = N459;
  assign io_inner_probe_bits_p_type = (N20)? { T438[1:1], 1'b0 } : 
                                      (N21)? T434 : 1'b0;
  assign T434[1] = (N68)? 1'b0 : 
                   (N69)? T435[1] : 1'b0;
  assign N68 = T434[0];
  assign N69 = N335;
  assign T438[1] = (N70)? 1'b1 : 
                   (N71)? T439[1] : 1'b0;
  assign N70 = N333;
  assign N71 = N332;
  assign T439[1] = (N72)? 1'b0 : 
                   (N73)? T440[1] : 1'b0;
  assign N72 = N342;
  assign N73 = N341;
  assign T440[1] = (N74)? 1'b1 : 
                   (N75)? T441[1] : 1'b0;
  assign N74 = N353;
  assign N75 = N352;
  assign T441[1] = (N76)? 1'b0 : 
                   (N77)? T442[1] : 1'b0;
  assign N76 = N364;
  assign N77 = N363;
  assign T442[1] = (N78)? 1'b1 : 
                   (N79)? T443[1] : 1'b0;
  assign N78 = N380;
  assign N79 = N379;
  assign T443[1] = (N80)? 1'b0 : 
                   (N81)? T444[1] : 1'b0;
  assign N80 = N407;
  assign N81 = N406;
  assign io_inner_probe_valid = (N66)? T513[0] : 
                                (N67)? 1'b0 : 1'b0;
  assign T512[0] = (N22)? 1'b0 : 
                   (N23)? T426[0] : 1'b0;
  assign T426[0] = (N82)? T514[0] : 
                   (N83)? T427[0] : 1'b0;
  assign N82 = T431;
  assign N83 = N132;
  assign T427[0] = (N28)? mask_incoherent[0] : 
                   (N29)? T513[0] : 1'b0;
  assign io_inner_grant_bits_g_type[2:0] = (N20)? T461 : 
                                           (N21)? { 1'b0, 1'b0, T517[0:0] } : 1'b0;
  assign T461 = (N84)? { 1'b1, 1'b0, 1'b0 } : 
                (N85)? T462 : 1'b0;
  assign N84 = N478;
  assign N85 = N477;
  assign T462 = (N86)? { 1'b1, 1'b0, 1'b1 } : 
                (N87)? T463 : 1'b0;
  assign N86 = N481;
  assign N87 = N480;
  assign T463 = (N88)? { 1'b0, 1'b1, 1'b1 } : 
                (N89)? T464 : 1'b0;
  assign N88 = N484;
  assign N89 = N483;
  assign T464 = (N90)? { 1'b0, 1'b1, 1'b1 } : 
                (N91)? T465 : 1'b0;
  assign N90 = N487;
  assign N91 = N486;
  assign T465[1] = (N92)? 1'b0 : 
                   (N93)? T466[1] : 1'b0;
  assign N92 = T465[2];
  assign N93 = T465[0];
  assign T466[1] = (N94)? 1'b0 : 
                   (N95)? T467[1] : 1'b0;
  assign N94 = N493;
  assign N95 = N492;
  assign io_inner_grant_valid = (N96)? 1'b1 : 
                                (N97)? T480 : 1'b0;
  assign N96 = N466;
  assign N97 = N465;
  assign T480 = (N37)? io_outer_grant_valid : 
                (N38)? 1'b0 : 1'b0;
  assign io_inner_acquire_ready = (N98)? 1'b1 : 
                                  (N99)? collect_iacq_data : 1'b0;
  assign N98 = N439;
  assign N99 = N438;
  assign N142 = (N22)? 1'b1 : 
                (N268)? 1'b1 : 
                (N271)? 1'b1 : 
                (N274)? 1'b1 : 
                (N277)? 1'b1 : 
                (N280)? 1'b1 : 
                (N283)? 1'b1 : 
                (N286)? 1'b1 : 
                (N289)? 1'b1 : 
                (N141)? 1'b0 : 1'b0;
  assign { N145, N144, N143 } = (N22)? { 1'b0, 1'b0, 1'b0 } : 
                                (N268)? { 1'b0, 1'b0, 1'b0 } : 
                                (N271)? { T150[2:2], T150[2:2], 1'b0 } : 
                                (N274)? { T132[2:2], T132[2:2], 1'b0 } : 
                                (N277)? { 1'b1, 1'b0, 1'b1 } : 
                                (N280)? { T126, T126[2:2] } : 
                                (N283)? T122 : 
                                (N286)? T63 : 
                                (N289)? T19 : 1'b0;
  assign N148 = (N22)? 1'b1 : 
                (N291)? 1'b1 : 
                (N147)? 1'b0 : 1'b0;
  assign { N150, N149 } = (N22)? { 1'b0, 1'b0 } : 
                          (N291)? T116 : 1'b0;
  assign N153 = (N22)? 1'b1 : 
                (N292)? 1'b1 : 
                (N152)? 1'b0 : 1'b0;
  assign { N155, N154 } = (N22)? { 1'b0, 1'b0 } : 
                          (N292)? T142 : 1'b0;
  assign N159 = (N22)? 1'b1 : 
                (N293)? 1'b1 : 
                (N296)? 1'b1 : 
                (N158)? 1'b0 : 1'b0;
  assign N160 = (N22)? 1'b0 : 
                (N293)? T179 : 
                (N296)? 1'b0 : 1'b0;
  assign N163 = (N22)? 1'b1 : 
                (N297)? 1'b1 : 
                (N162)? 1'b0 : 1'b0;
  assign { N165, N164 } = (N22)? { 1'b0, 1'b0 } : 
                          (N297)? T175 : 1'b0;
  assign N170 = (N22)? 1'b1 : 
                (N298)? 1'b1 : 
                (N300)? 1'b1 : 
                (N303)? 1'b1 : 
                (N169)? 1'b0 : 1'b0;
  assign N171 = (N22)? 1'b0 : 
                (N298)? 1'b1 : 
                (N300)? 1'b1 : 
                (N303)? 1'b0 : 1'b0;
  assign N174 = (N100)? 1'b1 : 
                (N305)? 1'b1 : 
                (N173)? 1'b0 : 1'b0;
  assign N100 = T233;
  assign N177 = (N101)? 1'b1 : 
                (N307)? 1'b1 : 
                (N176)? 1'b0 : 1'b0;
  assign N101 = T241;
  assign N180 = (N102)? 1'b1 : 
                (N309)? 1'b1 : 
                (N179)? 1'b0 : 1'b0;
  assign N102 = T250;
  assign N183 = (N103)? 1'b1 : 
                (N311)? 1'b1 : 
                (N182)? 1'b0 : 1'b0;
  assign N103 = T256;
  assign N186 = (N104)? 1'b1 : 
                (N313)? 1'b1 : 
                (N185)? 1'b0 : 1'b0;
  assign N104 = T318;
  assign { N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187 } = (N104)? T299 : 
                                                                                                              (N313)? T276 : 1'b0;
  assign N205 = (N105)? 1'b1 : 
                (N315)? 1'b1 : 
                (N204)? 1'b0 : 1'b0;
  assign N105 = T326;
  assign { N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206 } = (N105)? T299 : 
                                                                                                              (N315)? T276 : 1'b0;
  assign N224 = (N106)? 1'b1 : 
                (N317)? 1'b1 : 
                (N223)? 1'b0 : 1'b0;
  assign N106 = T335;
  assign { N240, N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, N225 } = (N106)? T299 : 
                                                                                                              (N317)? T276 : 1'b0;
  assign N243 = (N107)? 1'b1 : 
                (N319)? 1'b1 : 
                (N242)? 1'b0 : 1'b0;
  assign N107 = T341;
  assign { N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, N246, N245, N244 } = (N107)? T299 : 
                                                                                                              (N319)? T276 : 1'b0;
  assign N263 = (N22)? 1'b1 : 
                (N320)? 1'b1 : 
                (N322)? 1'b1 : 
                (N262)? 1'b0 : 1'b0;
  assign { N267, N266, N265, N264 } = (N22)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                      (N320)? T406 : 
                                      (N322)? T400 : 1'b0;
  assign N108 = ~N403;
  assign N109 = ~pending_outer_write_;
  assign T20[0] = pending_outer_write_;
  assign N110 = ~pending_outer_read_;
  assign T21[1] = pending_outer_read_;
  assign T21[2] = N110;
  assign N111 = ~io_inner_acquire_bits_is_builtin_type;
  assign T22 = N424 | N427;
  assign T484[0] = N441;
  assign T32[2] = N350;
  assign T32[0] = N349;
  assign T34[1] = N473;
  assign T43 = N418 | N421;
  assign pending_outer_write_ = io_inner_acquire_bits_is_builtin_type & T47;
  assign T47 = T49 | N350;
  assign T49 = N361 | N329;
  assign mask_incoherent[3] = mask_self[3] & 1'b0;
  assign mask_incoherent[2] = mask_self[2] & 1'b0;
  assign mask_incoherent[1] = mask_self[1] & 1'b0;
  assign mask_incoherent[0] = mask_self[0] & T485[0];
  assign T485[0] = ~io_incoherent_0;
  assign mask_self[3] = T58[3] | T55[3];
  assign mask_self[2] = T58[2] | T55[2];
  assign mask_self[1] = T58[1] | T55[1];
  assign mask_self[0] = T58[0] | T55[0];
  assign T55[3] = T486[3] & T56[3];
  assign T55[2] = T486[3] & T56[2];
  assign T55[1] = T486[3] & T56[1];
  assign T55[0] = T486[3] & T56[0];
  assign T486[3] = 1'b0;
  assign T58[3] = 1'b0 & T59[3];
  assign T58[2] = 1'b0 & T59[2];
  assign T58[1] = 1'b0 & T59[1];
  assign T58[0] = 1'b1 & T59[0];
  assign T59[3] = ~T56[3];
  assign T59[2] = ~T56[2];
  assign T59[1] = ~T56[1];
  assign T59[0] = ~T56[0];
  assign T61 = N439 & io_inner_acquire_valid;
  assign N112 = ~pending_outer_write;
  assign T63[0] = pending_outer_write;
  assign N113 = ~pending_outer_read;
  assign T64[1] = pending_outer_read;
  assign T64[2] = N113;
  assign N114 = ~io_inner_grant_bits_is_builtin_type;
  assign T65 = N391 | N394;
  assign T68 = N385 | N388;
  assign pending_outer_write = io_inner_grant_bits_is_builtin_type & T71;
  assign T71 = T74 | N377;
  assign T74 = N397 | N400;
  assign T78 = T110 & T490[0];
  assign N115 = ~reset;
  assign N116 = ~T96;
  assign N117 = ~T110;
  assign N118 = ~T93;
  assign T93 = T61 & N403;
  assign T96 = T103 & T97;
  assign T97 = ~T98;
  assign T98 = T100 | N346;
  assign T100 = N356 | N359;
  assign T103 = N460 & T104;
  assign T104 = io_inner_release_valid & T105;
  assign T105 = T107 & T106;
  assign T106 = ~io_inner_release_bits_voluntary;
  assign T110 = T120 & oacq_data_done;
  assign N119 = ~T118;
  assign T111 = io_outer_acquire_ready & io_outer_acquire_valid;
  assign T112 = T117 & N430;
  assign T117 = T111 & T118;
  assign T118 = 1'b1 & N499;
  assign T120 = T121 & io_outer_acquire_ready;
  assign T121 = T103 & T98;
  assign T122[0] = pending_outer_write;
  assign T123[1] = pending_outer_read;
  assign T123[2] = N113;
  assign T124 = T96 & T490[0];
  assign T126[1] = pending_outer_read;
  assign T126[2] = N113;
  assign T127 = N463 & oacq_data_done;
  assign T129 = N456 & T130;
  assign T130 = io_outer_acquire_ready & io_outer_acquire_valid;
  assign T132[2] = T133;
  assign T133 = ~T134;
  assign T134 = io_inner_grant_bits_is_builtin_type & N374;
  assign T136 = N471 & ignt_data_done;
  assign N120 = ~T144;
  assign T137 = io_inner_grant_ready & io_inner_grant_valid;
  assign T138 = T143 & N436;
  assign T143 = T137 & T144;
  assign T145 = N450 | N453;
  assign T150[2] = T151;
  assign T151 = ~T152;
  assign T152 = io_inner_grant_bits_is_builtin_type & N371;
  assign T154 = N466 & io_inner_grant_ready;
  assign T156 = io_inner_finish_ready & io_inner_finish_valid;
  assign T169 = collect_iacq_data & iacq_data_done;
  assign N121 = ~T177;
  assign T170 = io_inner_acquire_ready & io_inner_acquire_valid;
  assign T171 = T176 & N404;
  assign T176 = T170 & T177;
  assign T177 = io_inner_acquire_bits_is_builtin_type & N329;
  assign T179 = io_inner_acquire_bits_is_builtin_type & N329;
  assign io_has_acquire_match = T204 & collect_iacq_data;
  assign io_has_acquire_conflict = T207 & T206;
  assign T206 = ~collect_iacq_data;
  assign T207 = T209 & N324;
  assign T214 = pending_ognt_ack & io_outer_grant_valid;
  assign T368[1] = N505;
  assign subblock_type = io_inner_grant_bits_is_builtin_type & T218;
  assign T218 = T220 | N508;
  assign T220 = N511 | N514;
  assign N122 = ~subblock_type;
  assign N123 = ~T244[1];
  assign N124 = ~T244[0];
  assign T228 = T232 & T230[0];
  assign T232 = collect_iacq_data & io_inner_acquire_valid;
  assign T233 = T61 & 1'b1;
  assign T239 = T232 & T230[1];
  assign T241 = T61 & 1'b0;
  assign T248 = T232 & T230[2];
  assign T250 = T61 & 1'b0;
  assign T254 = T232 & T230[3];
  assign T256 = T61 & 1'b0;
  assign T264_0 = N122;
  assign N125 = ~T293;
  assign N126 = ~T279;
  assign T279 = T282 | T280;
  assign T280 = io_inner_acquire_bits_is_builtin_type & N361;
  assign T282 = io_inner_acquire_bits_is_builtin_type & N329;
  assign T293 = io_inner_acquire_bits_is_builtin_type & N350;
  assign T295 = T232 & T297[0];
  assign N127 = ~T316;
  assign N128 = ~T302;
  assign T302 = T305 | T303;
  assign T303 = io_inner_acquire_bits_is_builtin_type & N361;
  assign T305 = io_inner_acquire_bits_is_builtin_type & N329;
  assign T316 = io_inner_acquire_bits_is_builtin_type & N350;
  assign T318 = T61 & 1'b1;
  assign T324 = T232 & T297[1];
  assign T326 = T61 & 1'b0;
  assign T333 = T232 & T297[2];
  assign T335 = T61 & 1'b0;
  assign T339 = T232 & T297[3];
  assign T341 = T61 & 1'b0;
  assign N129 = ~T363;
  assign N130 = ~T349;
  assign T349 = T352 | T350;
  assign T350 = io_inner_grant_bits_is_builtin_type & N413;
  assign T352 = io_inner_grant_bits_is_builtin_type & N410;
  assign T363 = io_inner_grant_bits_is_builtin_type & N368;
  assign T369[0] = N122;
  assign T370[0] = N122;
  assign T390 = T414 & T391;
  assign T391 = T413 | T392;
  assign T392 = T397 & T393;
  assign N131 = T395[0] | T395[1];
  assign T394 = ~N131;
  assign T400[3] = T404[3] | T401[3];
  assign T400[2] = T404[2] | T401[2];
  assign T400[1] = T404[1] | T401[1];
  assign T400[0] = T404[0] | T401[0];
  assign T401[3] = T509[3] & T402[3];
  assign T401[2] = T509[3] & T402[2];
  assign T401[1] = T509[3] & T402[1];
  assign T401[0] = T509[3] & T402[0];
  assign T509[3] = 1'b1;
  assign T404[3] = iacq_data_valid[3] & T405[3];
  assign T404[2] = iacq_data_valid[2] & T405[2];
  assign T404[1] = iacq_data_valid[1] & T405[1];
  assign T404[0] = iacq_data_valid[0] & T405[0];
  assign T405[3] = ~T402[3];
  assign T405[2] = ~T402[2];
  assign T405[1] = ~T402[1];
  assign T405[0] = ~T402[0];
  assign T407 = io_inner_acquire_bits_is_builtin_type & T408;
  assign T408 = T410 | N350;
  assign T410 = N361 | N329;
  assign T413 = ~collect_iacq_data;
  assign T414 = ~pending_ognt_ack;
  assign T415 = ~pending_ognt_ack;
  assign T417 = T418 & T105;
  assign T418 = T419 | io_outer_acquire_ready;
  assign T419 = ~T420;
  assign T420 = T422 | N346;
  assign T422 = N356 | N359;
  assign T434[0] = N336;
  assign T435[1] = N338;
  assign T444[1] = N429;
  assign N132 = ~T431;
  assign T514[0] = T513[0] & T429;
  assign T429 = ~1'b1;
  assign T431 = N460 & io_inner_probe_ready;
  assign T517[0] = N475;
  assign T465[2] = N490;
  assign T465[0] = N489;
  assign T467[1] = N495;
  assign N133 = T156 | reset;
  assign N134 = T154 | N133;
  assign N135 = T136 | N134;
  assign N136 = T129 | N135;
  assign N137 = T127 | N136;
  assign N138 = T124 | N137;
  assign N139 = T78 | N138;
  assign N140 = T61 | N139;
  assign N141 = ~N140;
  assign N146 = T117 | reset;
  assign N147 = ~N146;
  assign N151 = T143 | reset;
  assign N152 = ~N151;
  assign N156 = T61 | reset;
  assign N157 = T169 | N156;
  assign N158 = ~N157;
  assign N161 = T176 | reset;
  assign N162 = ~N161;
  assign N166 = T127 | reset;
  assign N167 = T110 | N166;
  assign N168 = T214 | N167;
  assign N169 = ~N168;
  assign N172 = T228 | T233;
  assign N173 = ~N172;
  assign N175 = T239 | T241;
  assign N176 = ~N175;
  assign N178 = T248 | T250;
  assign N179 = ~N178;
  assign N181 = T254 | T256;
  assign N182 = ~N181;
  assign N184 = T295 | T318;
  assign N185 = ~N184;
  assign N203 = T324 | T326;
  assign N204 = ~N203;
  assign N222 = T333 | T335;
  assign N223 = ~N222;
  assign N241 = T339 | T341;
  assign N242 = ~N241;
  assign N260 = T61 | reset;
  assign N261 = T232 | N260;
  assign N262 = ~N261;
  assign N268 = T156 & N290;
  assign N269 = ~T156;
  assign N270 = N290 & N269;
  assign N271 = T154 & N270;
  assign N272 = ~T154;
  assign N273 = N270 & N272;
  assign N274 = T136 & N273;
  assign N275 = ~T136;
  assign N276 = N273 & N275;
  assign N277 = T129 & N276;
  assign N278 = ~T129;
  assign N279 = N276 & N278;
  assign N280 = T127 & N279;
  assign N281 = ~T127;
  assign N282 = N279 & N281;
  assign N283 = T124 & N282;
  assign N284 = ~T124;
  assign N285 = N282 & N284;
  assign N286 = T78 & N285;
  assign N287 = ~T78;
  assign N288 = N285 & N287;
  assign N289 = T61 & N288;
  assign N290 = ~reset;
  assign N291 = T117 & N290;
  assign N292 = T143 & N290;
  assign N293 = T61 & N290;
  assign N294 = ~T61;
  assign N295 = N290 & N294;
  assign N296 = T169 & N295;
  assign N297 = T176 & N290;
  assign N298 = T127 & N290;
  assign N299 = N290 & N281;
  assign N300 = T110 & N299;
  assign N301 = ~T110;
  assign N302 = N299 & N301;
  assign N303 = T214 & N302;
  assign N304 = ~T233;
  assign N305 = T228 & N304;
  assign N306 = ~T241;
  assign N307 = T239 & N306;
  assign N308 = ~T250;
  assign N309 = T248 & N308;
  assign N310 = ~T256;
  assign N311 = T254 & N310;
  assign N312 = ~T318;
  assign N313 = T295 & N312;
  assign N314 = ~T326;
  assign N315 = T324 & N314;
  assign N316 = ~T335;
  assign N317 = T333 & N316;
  assign N318 = ~T341;
  assign N319 = T339 & N318;
  assign N320 = T61 & N290;
  assign N321 = N290 & N294;
  assign N322 = T232 & N321;

endmodule