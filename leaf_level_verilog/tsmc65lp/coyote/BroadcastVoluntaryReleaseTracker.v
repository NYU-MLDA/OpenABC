module BroadcastVoluntaryReleaseTracker
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
  wire [1:0] io_inner_grant_bits_addr_beat,io_outer_acquire_bits_addr_beat,T158;
  wire [3:0] io_inner_grant_bits_manager_xact_id,io_inner_grant_bits_g_type,
  io_inner_grant_bits_data,io_outer_acquire_bits_client_xact_id,io_outer_acquire_bits_data,T46,T21,
  T32,T22,T23,T33,T36,T34,T35,T47,T72,T59,T60,T63,T61,T62,T75,T73,T74,T109,T97,
  T101;
  wire [2:0] io_outer_acquire_bits_a_type;
  wire [16:0] io_outer_acquire_bits_union;
  wire io_inner_acquire_ready,io_inner_grant_valid,io_inner_grant_bits_is_builtin_type,
  io_inner_finish_ready,io_inner_probe_valid,io_inner_release_ready,
  io_outer_acquire_valid,io_outer_acquire_bits_is_builtin_type,io_outer_grant_ready,
  io_has_acquire_conflict,io_has_acquire_match,N0,N1,N2,N3,N4,N5,N6,N7,N8,T13,T10,T11,
  all_pending_done,T14,T18,T17,T24_0,T31,T26,T28,T37_0,T45,T39,T40,T42,T48_0,T55,T50,T52,
  T90,T84,T64_0,T71,T66,T68,T76_0,T83,T78,T80,T85,T87,T91,N9,N10,T99,T103,T105,N11,
  N12,N13,T111,T114,T132,T144,T146,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,
  N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,
  N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,
  N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77;
  wire [3:3] T24,T37,T48,T64,T76;
  wire [0:0] T151,T152,T153,T155,T156,T159;
  reg state,pending_ignt;
  reg [3:0] pending_writes,pending_irels,xact_data_buffer_0,xact_data_buffer_1,
  xact_data_buffer_2,xact_data_buffer_3;
  reg [25:0] io_outer_acquire_bits_addr_block;
  reg [1:0] io_inner_grant_bits_client_id;
  reg [5:0] io_inner_grant_bits_client_xact_id;
  assign io_inner_grant_bits_is_builtin_type = 1'b1;
  assign io_outer_acquire_bits_is_builtin_type = 1'b1;
  assign io_outer_acquire_bits_a_type[0] = 1'b1;
  assign io_outer_acquire_bits_a_type[1] = 1'b1;
  assign io_outer_acquire_bits_union[0] = 1'b1;
  assign io_outer_acquire_bits_union[1] = 1'b1;
  assign io_outer_acquire_bits_union[2] = 1'b1;
  assign io_outer_acquire_bits_union[3] = 1'b1;
  assign io_outer_acquire_bits_union[4] = 1'b1;
  assign io_outer_acquire_bits_union[5] = 1'b1;
  assign io_outer_acquire_bits_union[6] = 1'b1;
  assign io_outer_acquire_bits_union[7] = 1'b1;
  assign io_outer_acquire_bits_union[8] = 1'b1;
  assign io_outer_acquire_bits_union[9] = 1'b1;
  assign io_outer_acquire_bits_union[10] = 1'b1;
  assign io_outer_acquire_bits_union[11] = 1'b1;
  assign io_outer_acquire_bits_union[12] = 1'b1;
  assign io_outer_acquire_bits_union[13] = 1'b1;
  assign io_outer_acquire_bits_union[14] = 1'b1;
  assign io_outer_acquire_bits_union[15] = 1'b1;
  assign io_outer_acquire_bits_union[16] = 1'b1;
  assign io_inner_acquire_ready = 1'b0;
  assign io_inner_grant_bits_addr_beat[0] = 1'b0;
  assign io_inner_grant_bits_addr_beat[1] = 1'b0;
  assign io_inner_grant_bits_manager_xact_id[0] = 1'b0;
  assign io_inner_grant_bits_manager_xact_id[1] = 1'b0;
  assign io_inner_grant_bits_manager_xact_id[2] = 1'b0;
  assign io_inner_grant_bits_manager_xact_id[3] = 1'b0;
  assign io_inner_grant_bits_g_type[0] = 1'b0;
  assign io_inner_grant_bits_g_type[1] = 1'b0;
  assign io_inner_grant_bits_g_type[2] = 1'b0;
  assign io_inner_grant_bits_g_type[3] = 1'b0;
  assign io_inner_grant_bits_data[0] = 1'b0;
  assign io_inner_grant_bits_data[1] = 1'b0;
  assign io_inner_grant_bits_data[2] = 1'b0;
  assign io_inner_grant_bits_data[3] = 1'b0;
  assign io_inner_finish_ready = 1'b0;
  assign io_inner_probe_valid = 1'b0;
  assign io_outer_acquire_bits_client_xact_id[0] = 1'b0;
  assign io_outer_acquire_bits_client_xact_id[1] = 1'b0;
  assign io_outer_acquire_bits_client_xact_id[2] = 1'b0;
  assign io_outer_acquire_bits_client_xact_id[3] = 1'b0;
  assign io_outer_acquire_bits_a_type[2] = 1'b0;
  assign io_has_acquire_conflict = 1'b0;
  assign io_has_acquire_match = 1'b0;
  assign T23 = { 1'b0, 1'b0, 1'b0, 1'b1 } << io_inner_release_bits_addr_beat;
  assign T35 = { 1'b0, 1'b0, 1'b0, 1'b1 } << io_outer_acquire_bits_addr_beat;
  assign T47 = { 1'b0, 1'b0, 1'b0, 1'b1 } << io_inner_release_bits_addr_beat;
  assign T62 = { 1'b0, 1'b0, 1'b0, 1'b1 } << io_inner_release_bits_addr_beat;
  assign T74 = { 1'b0, 1'b0, 1'b0, 1'b1 } << io_inner_release_bits_addr_beat;
  assign T101 = { 1'b0, 1'b0, 1'b0, 1'b1 } << io_inner_release_bits_addr_beat;

  always @(posedge clk) begin
    if(N17) begin
      state <= N18;
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      pending_ignt <= N23;
    end 
  end


  always @(posedge clk) begin
    if(1'b1) begin
      pending_writes[3] <= N29;
    end 
  end


  always @(posedge clk) begin
    if(1'b1) begin
      pending_writes[2] <= N28;
    end 
  end


  always @(posedge clk) begin
    if(1'b1) begin
      pending_writes[1] <= N27;
    end 
  end


  always @(posedge clk) begin
    if(1'b1) begin
      pending_writes[0] <= N26;
    end 
  end


  always @(posedge clk) begin
    if(1'b1) begin
      pending_irels[3] <= N36;
    end 
  end


  always @(posedge clk) begin
    if(1'b1) begin
      pending_irels[2] <= N35;
    end 
  end


  always @(posedge clk) begin
    if(1'b1) begin
      pending_irels[1] <= N34;
    end 
  end


  always @(posedge clk) begin
    if(1'b1) begin
      pending_irels[0] <= N33;
    end 
  end


  always @(posedge clk) begin
    if(T99) begin
      xact_data_buffer_0[3] <= io_inner_release_bits_data[3];
    end 
  end


  always @(posedge clk) begin
    if(T99) begin
      xact_data_buffer_0[2] <= io_inner_release_bits_data[2];
    end 
  end


  always @(posedge clk) begin
    if(T99) begin
      xact_data_buffer_0[1] <= io_inner_release_bits_data[1];
    end 
  end


  always @(posedge clk) begin
    if(T99) begin
      xact_data_buffer_0[0] <= io_inner_release_bits_data[0];
    end 
  end


  always @(posedge clk) begin
    if(T105) begin
      xact_data_buffer_1[3] <= io_inner_release_bits_data[3];
    end 
  end


  always @(posedge clk) begin
    if(T105) begin
      xact_data_buffer_1[2] <= io_inner_release_bits_data[2];
    end 
  end


  always @(posedge clk) begin
    if(T105) begin
      xact_data_buffer_1[1] <= io_inner_release_bits_data[1];
    end 
  end


  always @(posedge clk) begin
    if(T105) begin
      xact_data_buffer_1[0] <= io_inner_release_bits_data[0];
    end 
  end


  always @(posedge clk) begin
    if(T111) begin
      xact_data_buffer_2[3] <= io_inner_release_bits_data[3];
    end 
  end


  always @(posedge clk) begin
    if(T111) begin
      xact_data_buffer_2[2] <= io_inner_release_bits_data[2];
    end 
  end


  always @(posedge clk) begin
    if(T111) begin
      xact_data_buffer_2[1] <= io_inner_release_bits_data[1];
    end 
  end


  always @(posedge clk) begin
    if(T111) begin
      xact_data_buffer_2[0] <= io_inner_release_bits_data[0];
    end 
  end


  always @(posedge clk) begin
    if(T114) begin
      xact_data_buffer_3[3] <= io_inner_release_bits_data[3];
    end 
  end


  always @(posedge clk) begin
    if(T114) begin
      xact_data_buffer_3[2] <= io_inner_release_bits_data[2];
    end 
  end


  always @(posedge clk) begin
    if(T114) begin
      xact_data_buffer_3[1] <= io_inner_release_bits_data[1];
    end 
  end


  always @(posedge clk) begin
    if(T114) begin
      xact_data_buffer_3[0] <= io_inner_release_bits_data[0];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_outer_acquire_bits_addr_block[25] <= io_inner_release_bits_addr_block[25];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_outer_acquire_bits_addr_block[24] <= io_inner_release_bits_addr_block[24];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_outer_acquire_bits_addr_block[23] <= io_inner_release_bits_addr_block[23];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_outer_acquire_bits_addr_block[22] <= io_inner_release_bits_addr_block[22];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_outer_acquire_bits_addr_block[21] <= io_inner_release_bits_addr_block[21];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_outer_acquire_bits_addr_block[20] <= io_inner_release_bits_addr_block[20];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_outer_acquire_bits_addr_block[19] <= io_inner_release_bits_addr_block[19];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_outer_acquire_bits_addr_block[18] <= io_inner_release_bits_addr_block[18];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_outer_acquire_bits_addr_block[17] <= io_inner_release_bits_addr_block[17];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_outer_acquire_bits_addr_block[16] <= io_inner_release_bits_addr_block[16];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_outer_acquire_bits_addr_block[15] <= io_inner_release_bits_addr_block[15];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_outer_acquire_bits_addr_block[14] <= io_inner_release_bits_addr_block[14];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_outer_acquire_bits_addr_block[13] <= io_inner_release_bits_addr_block[13];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_outer_acquire_bits_addr_block[12] <= io_inner_release_bits_addr_block[12];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_outer_acquire_bits_addr_block[11] <= io_inner_release_bits_addr_block[11];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_outer_acquire_bits_addr_block[10] <= io_inner_release_bits_addr_block[10];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_outer_acquire_bits_addr_block[9] <= io_inner_release_bits_addr_block[9];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_outer_acquire_bits_addr_block[8] <= io_inner_release_bits_addr_block[8];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_outer_acquire_bits_addr_block[7] <= io_inner_release_bits_addr_block[7];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_outer_acquire_bits_addr_block[6] <= io_inner_release_bits_addr_block[6];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_outer_acquire_bits_addr_block[5] <= io_inner_release_bits_addr_block[5];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_outer_acquire_bits_addr_block[4] <= io_inner_release_bits_addr_block[4];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_outer_acquire_bits_addr_block[3] <= io_inner_release_bits_addr_block[3];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_outer_acquire_bits_addr_block[2] <= io_inner_release_bits_addr_block[2];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_outer_acquire_bits_addr_block[1] <= io_inner_release_bits_addr_block[1];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_outer_acquire_bits_addr_block[0] <= io_inner_release_bits_addr_block[0];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_inner_grant_bits_client_id[1] <= io_inner_release_bits_client_id[1];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_inner_grant_bits_client_id[0] <= io_inner_release_bits_client_id[0];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_inner_grant_bits_client_xact_id[5] <= io_inner_release_bits_client_xact_id[5];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_inner_grant_bits_client_xact_id[4] <= io_inner_release_bits_client_xact_id[4];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_inner_grant_bits_client_xact_id[3] <= io_inner_release_bits_client_xact_id[3];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_inner_grant_bits_client_xact_id[2] <= io_inner_release_bits_client_xact_id[2];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_inner_grant_bits_client_xact_id[1] <= io_inner_release_bits_client_xact_id[1];
    end 
  end


  always @(posedge clk) begin
    if(T10) begin
      io_inner_grant_bits_client_xact_id[0] <= io_inner_release_bits_client_xact_id[0];
    end 
  end

  assign N51 = ~io_inner_release_bits_r_type[1];
  assign N52 = N51 | io_inner_release_bits_r_type[2];
  assign N53 = io_inner_release_bits_r_type[0] | N52;
  assign N54 = ~N53;
  assign N55 = io_inner_release_bits_r_type[1] | io_inner_release_bits_r_type[2];
  assign N56 = io_inner_release_bits_r_type[0] | N55;
  assign N57 = ~N56;
  assign N58 = ~io_inner_release_bits_r_type[0];
  assign N59 = N58 | N55;
  assign N60 = ~N59;
  assign N61 = pending_irels[2] | pending_irels[3];
  assign N62 = pending_irels[1] | N61;
  assign N63 = pending_irels[0] | N62;
  assign N64 = ~N63;
  assign N65 = ~state;
  assign N66 = pending_irels[2] | pending_irels[3];
  assign N67 = pending_irels[1] | N66;
  assign N68 = pending_irels[0] | N67;
  assign N69 = pending_writes[2] | pending_writes[3];
  assign N70 = pending_writes[1] | N69;
  assign N71 = pending_writes[0] | N70;
  assign N72 = pending_writes[2] | pending_writes[3];
  assign N73 = pending_writes[1] | N72;
  assign N74 = pending_writes[0] | N73;
  assign N75 = pending_irels[2] | pending_irels[3];
  assign N76 = pending_irels[1] | N75;
  assign N77 = pending_irels[0] | N76;
  assign { T37[3:3], T37_0 } = 1'b0 - T152[0];
  assign { T24[3:3], T24_0 } = 1'b0 - T151[0];
  assign { T48[3:3], T48_0 } = 1'b0 - T153[0];
  assign { T64[3:3], T64_0 } = 1'b0 - T155[0];
  assign { T76[3:3], T76_0 } = 1'b0 - T156[0];
  assign io_outer_acquire_bits_data = (N0)? T109 : 
                                      (N1)? T97 : 1'b0;
  assign N0 = io_outer_acquire_bits_addr_beat[1];
  assign N1 = N9;
  assign T97 = (N2)? xact_data_buffer_1 : 
               (N3)? xact_data_buffer_0 : 1'b0;
  assign N2 = io_outer_acquire_bits_addr_beat[0];
  assign N3 = N10;
  assign io_outer_acquire_bits_addr_beat = (N4)? { 1'b0, 1'b0 } : 
                                           (N5)? T158 : 1'b0;
  assign N4 = pending_writes[0];
  assign N5 = N11;
  assign T158[0] = (N6)? 1'b1 : 
                   (N7)? T159[0] : 1'b0;
  assign N6 = pending_writes[1];
  assign N7 = T158[1];
  assign T109 = (N2)? xact_data_buffer_3 : 
                (N3)? xact_data_buffer_2 : 1'b0;
  assign N17 = (N8)? 1'b1 : 
               (N37)? 1'b1 : 
               (N40)? 1'b1 : 
               (N16)? 1'b0 : 1'b0;
  assign N8 = reset;
  assign N18 = (N8)? 1'b0 : 
               (N37)? 1'b0 : 
               (N40)? 1'b1 : 1'b0;
  assign N22 = (N8)? 1'b1 : 
               (N41)? 1'b1 : 
               (N44)? 1'b1 : 
               (N21)? 1'b0 : 1'b0;
  assign N23 = (N8)? 1'b0 : 
               (N41)? 1'b1 : 
               (N44)? 1'b0 : 1'b0;
  assign { N29, N28, N27, N26 } = (N8)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                  (N46)? T46 : 
                                  (N25)? T21 : 1'b0;
  assign { N36, N35, N34, N33 } = (N8)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                  (N47)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                  (N50)? T72 : 
                                  (N32)? T59 : 1'b0;
  assign T10 = N65 & T11;
  assign T11 = io_inner_release_ready & io_inner_release_valid;
  assign T13 = state & all_pending_done;
  assign all_pending_done = ~T14;
  assign T14 = T18 | pending_ignt;
  assign T17 = io_inner_grant_ready & io_inner_grant_valid;
  assign T18 = N68 | N71;
  assign T21[3] = T32[3] | T22[3];
  assign T21[2] = T32[2] | T22[2];
  assign T21[1] = T32[1] | T22[1];
  assign T21[0] = T32[0] | T22[0];
  assign T22[3] = T24[3] & T23[3];
  assign T22[2] = T24[3] & T23[2];
  assign T22[1] = T24[3] & T23[1];
  assign T22[0] = T24_0 & T23[0];
  assign T151[0] = T31 & T26;
  assign T26 = T28 | N54;
  assign T28 = N57 | N60;
  assign T31 = io_inner_release_ready & io_inner_release_valid;
  assign T32[3] = pending_writes[3] & T33[3];
  assign T32[2] = pending_writes[2] & T33[2];
  assign T32[1] = pending_writes[1] & T33[1];
  assign T32[0] = pending_writes[0] & T33[0];
  assign T33[3] = T36[3] | T34[3];
  assign T33[2] = T36[2] | T34[2];
  assign T33[1] = T36[1] | T34[1];
  assign T33[0] = T36[0] | T34[0];
  assign T34[3] = ~T35[3];
  assign T34[2] = ~T35[2];
  assign T34[1] = ~T35[1];
  assign T34[0] = ~T35[0];
  assign T36[3] = ~T37[3];
  assign T36[2] = ~T37[3];
  assign T36[1] = ~T37[3];
  assign T36[0] = ~T37_0;
  assign T152[0] = T45 & T39;
  assign T39 = 1'b1 & T40;
  assign T40 = T42 | 1'b0;
  assign T42 = 1'b0 | 1'b1;
  assign T45 = io_outer_acquire_ready & io_outer_acquire_valid;
  assign T46[3] = T48[3] & T47[3];
  assign T46[2] = T48[3] & T47[2];
  assign T46[1] = T48[3] & T47[1];
  assign T46[0] = T48_0 & T47[0];
  assign T153[0] = T55 & T50;
  assign T50 = T52 | N54;
  assign T52 = N57 | N60;
  assign T55 = io_inner_release_ready & io_inner_release_valid;
  assign T59[3] = pending_irels[3] & T60[3];
  assign T59[2] = pending_irels[2] & T60[2];
  assign T59[1] = pending_irels[1] & T60[1];
  assign T59[0] = pending_irels[0] & T60[0];
  assign T60[3] = T63[3] | T61[3];
  assign T60[2] = T63[2] | T61[2];
  assign T60[1] = T63[1] | T61[1];
  assign T60[0] = T63[0] | T61[0];
  assign T61[3] = ~T62[3];
  assign T61[2] = ~T62[2];
  assign T61[1] = ~T62[1];
  assign T61[0] = ~T62[0];
  assign T63[3] = ~T64[3];
  assign T63[2] = ~T64[3];
  assign T63[1] = ~T64[3];
  assign T63[0] = ~T64_0;
  assign T155[0] = T71 & T66;
  assign T66 = T68 | N54;
  assign T68 = N57 | N60;
  assign T71 = io_inner_release_ready & io_inner_release_valid;
  assign T72[3] = T75[3] | T73[3];
  assign T72[2] = T75[2] | T73[2];
  assign T72[1] = T75[1] | T73[1];
  assign T72[0] = T75[0] | T73[0];
  assign T73[3] = ~T74[3];
  assign T73[2] = ~T74[2];
  assign T73[1] = ~T74[1];
  assign T73[0] = ~T74[0];
  assign T75[3] = ~T76[3];
  assign T75[2] = ~T76[3];
  assign T75[1] = ~T76[3];
  assign T75[0] = ~T76_0;
  assign T156[0] = T83 & T78;
  assign T78 = T80 | N54;
  assign T80 = N57 | N60;
  assign T83 = io_inner_release_ready & io_inner_release_valid;
  assign T84 = T10 & T85;
  assign T85 = T87 | N54;
  assign T87 = N57 | N60;
  assign T90 = T10 & T91;
  assign T91 = ~T85;
  assign io_outer_grant_ready = state & io_inner_grant_ready;
  assign N9 = ~io_outer_acquire_bits_addr_beat[1];
  assign N10 = ~io_outer_acquire_bits_addr_beat[0];
  assign T99 = T103 & T101[0];
  assign T103 = io_inner_release_ready & io_inner_release_valid;
  assign T105 = T103 & T101[1];
  assign N11 = ~pending_writes[0];
  assign N12 = ~pending_writes[1];
  assign T158[1] = N12;
  assign N13 = ~pending_writes[2];
  assign T159[0] = N13;
  assign T111 = T103 & T101[2];
  assign T114 = T103 & T101[3];
  assign io_outer_acquire_valid = state & N74;
  assign io_inner_release_ready = T132 | N77;
  assign T132 = N65 & io_inner_release_bits_voluntary;
  assign io_inner_grant_valid = T144 & io_outer_grant_valid;
  assign T144 = T146 & N64;
  assign T146 = state & pending_ignt;
  assign N14 = T13 | reset;
  assign N15 = T10 | N14;
  assign N16 = ~N15;
  assign N19 = T10 | reset;
  assign N20 = T17 | N19;
  assign N21 = ~N20;
  assign N24 = T10 | reset;
  assign N25 = ~N24;
  assign N30 = T90 | reset;
  assign N31 = T84 | N30;
  assign N32 = ~N31;
  assign N37 = T13 & N45;
  assign N38 = ~T13;
  assign N39 = N45 & N38;
  assign N40 = T10 & N39;
  assign N41 = T10 & N45;
  assign N42 = ~T10;
  assign N43 = N45 & N42;
  assign N44 = T17 & N43;
  assign N45 = ~reset;
  assign N46 = T10 & N45;
  assign N47 = T90 & N45;
  assign N48 = ~T90;
  assign N49 = N45 & N48;
  assign N50 = T84 & N49;

endmodule