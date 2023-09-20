module LockingRRArbiter_8
(
  clk,
  reset,
  io_in_4_ready,
  io_in_4_valid,
  io_in_4_bits_header_src,
  io_in_4_bits_header_dst,
  io_in_4_bits_payload_addr_beat,
  io_in_4_bits_payload_client_xact_id,
  io_in_4_bits_payload_manager_xact_id,
  io_in_4_bits_payload_is_builtin_type,
  io_in_4_bits_payload_g_type,
  io_in_4_bits_payload_data,
  io_in_3_ready,
  io_in_3_valid,
  io_in_3_bits_header_src,
  io_in_3_bits_header_dst,
  io_in_3_bits_payload_addr_beat,
  io_in_3_bits_payload_client_xact_id,
  io_in_3_bits_payload_manager_xact_id,
  io_in_3_bits_payload_is_builtin_type,
  io_in_3_bits_payload_g_type,
  io_in_3_bits_payload_data,
  io_in_2_ready,
  io_in_2_valid,
  io_in_2_bits_header_src,
  io_in_2_bits_header_dst,
  io_in_2_bits_payload_addr_beat,
  io_in_2_bits_payload_client_xact_id,
  io_in_2_bits_payload_manager_xact_id,
  io_in_2_bits_payload_is_builtin_type,
  io_in_2_bits_payload_g_type,
  io_in_2_bits_payload_data,
  io_in_1_ready,
  io_in_1_valid,
  io_in_1_bits_header_src,
  io_in_1_bits_header_dst,
  io_in_1_bits_payload_addr_beat,
  io_in_1_bits_payload_client_xact_id,
  io_in_1_bits_payload_manager_xact_id,
  io_in_1_bits_payload_is_builtin_type,
  io_in_1_bits_payload_g_type,
  io_in_1_bits_payload_data,
  io_in_0_ready,
  io_in_0_valid,
  io_in_0_bits_header_src,
  io_in_0_bits_header_dst,
  io_in_0_bits_payload_addr_beat,
  io_in_0_bits_payload_client_xact_id,
  io_in_0_bits_payload_manager_xact_id,
  io_in_0_bits_payload_is_builtin_type,
  io_in_0_bits_payload_g_type,
  io_in_0_bits_payload_data,
  io_out_ready,
  io_out_valid,
  io_out_bits_header_src,
  io_out_bits_header_dst,
  io_out_bits_payload_addr_beat,
  io_out_bits_payload_client_xact_id,
  io_out_bits_payload_manager_xact_id,
  io_out_bits_payload_is_builtin_type,
  io_out_bits_payload_g_type,
  io_out_bits_payload_data,
  io_chosen
);

  input [2:0] io_in_4_bits_header_src;
  input [2:0] io_in_4_bits_header_dst;
  input [1:0] io_in_4_bits_payload_addr_beat;
  input [5:0] io_in_4_bits_payload_client_xact_id;
  input [3:0] io_in_4_bits_payload_manager_xact_id;
  input [3:0] io_in_4_bits_payload_g_type;
  input [127:0] io_in_4_bits_payload_data;
  input [2:0] io_in_3_bits_header_src;
  input [2:0] io_in_3_bits_header_dst;
  input [1:0] io_in_3_bits_payload_addr_beat;
  input [5:0] io_in_3_bits_payload_client_xact_id;
  input [3:0] io_in_3_bits_payload_manager_xact_id;
  input [3:0] io_in_3_bits_payload_g_type;
  input [127:0] io_in_3_bits_payload_data;
  input [2:0] io_in_2_bits_header_src;
  input [2:0] io_in_2_bits_header_dst;
  input [1:0] io_in_2_bits_payload_addr_beat;
  input [5:0] io_in_2_bits_payload_client_xact_id;
  input [3:0] io_in_2_bits_payload_manager_xact_id;
  input [3:0] io_in_2_bits_payload_g_type;
  input [127:0] io_in_2_bits_payload_data;
  input [2:0] io_in_1_bits_header_src;
  input [2:0] io_in_1_bits_header_dst;
  input [1:0] io_in_1_bits_payload_addr_beat;
  input [5:0] io_in_1_bits_payload_client_xact_id;
  input [3:0] io_in_1_bits_payload_manager_xact_id;
  input [3:0] io_in_1_bits_payload_g_type;
  input [127:0] io_in_1_bits_payload_data;
  input [2:0] io_in_0_bits_header_src;
  input [2:0] io_in_0_bits_header_dst;
  input [1:0] io_in_0_bits_payload_addr_beat;
  input [5:0] io_in_0_bits_payload_client_xact_id;
  input [3:0] io_in_0_bits_payload_manager_xact_id;
  input [3:0] io_in_0_bits_payload_g_type;
  input [127:0] io_in_0_bits_payload_data;
  output [2:0] io_out_bits_header_src;
  output [2:0] io_out_bits_header_dst;
  output [1:0] io_out_bits_payload_addr_beat;
  output [5:0] io_out_bits_payload_client_xact_id;
  output [3:0] io_out_bits_payload_manager_xact_id;
  output [3:0] io_out_bits_payload_g_type;
  output [127:0] io_out_bits_payload_data;
  output [2:0] io_chosen;
  input clk;
  input reset;
  input io_in_4_valid;
  input io_in_4_bits_payload_is_builtin_type;
  input io_in_3_valid;
  input io_in_3_bits_payload_is_builtin_type;
  input io_in_2_valid;
  input io_in_2_bits_payload_is_builtin_type;
  input io_in_1_valid;
  input io_in_1_bits_payload_is_builtin_type;
  input io_in_0_valid;
  input io_in_0_bits_payload_is_builtin_type;
  input io_out_ready;
  output io_in_4_ready;
  output io_in_3_ready;
  output io_in_2_ready;
  output io_in_1_ready;
  output io_in_0_ready;
  output io_out_valid;
  output io_out_bits_payload_is_builtin_type;
  wire [2:0] io_out_bits_header_src,io_out_bits_header_dst,io_chosen,choose,T1,T2,T3,T4,T5,
  T6,T19,T20,T21,T95,T98,T96,T103,T106,T104;
  wire [1:0] io_out_bits_payload_addr_beat,T40,T87,T90,T88;
  wire [5:0] io_out_bits_payload_client_xact_id,T79,T82,T80;
  wire [3:0] io_out_bits_payload_manager_xact_id,io_out_bits_payload_g_type,T55,T58,T56,T71,
  T74,T72;
  wire [127:0] io_out_bits_payload_data,T46,T50,T47;
  wire io_in_4_ready,io_in_3_ready,io_in_2_ready,io_in_1_ready,io_in_0_ready,
  io_out_valid,io_out_bits_payload_is_builtin_type,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,
  N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,
  T16,N32,T14,N33,T12,N34,T8,N35,N36,N37,N38,N39,T9,T11,T13,T15,T17,T27,T26,N40,T25,
  N41,T24,N42,T23,N43,T29,T28,T35,T30,N44,T31,T43,T38,T39,T44,N45,N46,N47,T63,T66,
  T64,T111,T114,T112,T119,T120,T136,T121,T122,T125,T123,T124,T128,T126,T127,T131,
  T129,T130,T134,T132,T133,T135,T139,T140,T147,T141,T142,T143,T144,T145,T146,T149,
  T148,T152,T153,T161,T154,T155,T156,T157,T158,T159,T160,T163,T162,T164,T167,T168,
  T177,T169,T170,T171,T172,T173,T174,T175,T176,T179,T178,T180,T181,T184,T185,T195,
  T186,T187,T188,T189,T190,T191,T192,T193,T194,T197,T196,T198,T199,T200,N48,N49,N50,
  N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,
  N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,
  N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,
  N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,N118;
  wire [2:1] T7,T22;
  reg [2:0] last_grant,lockIdx;
  reg locked;
  reg [1:0] R41;
  assign T13 = last_grant < { 1'b1, 1'b1 };
  assign T39 = T40 == 1'b0;
  assign T127 = last_grant < { 1'b1, 1'b1 };
  assign T135 = last_grant < 1'b0;
  assign T136 = last_grant < 1'b0;
  assign T178 = last_grant < { 1'b1, 1'b1 };

  always @(posedge clk) begin
    if(N50) begin
      last_grant[2] <= N53;
    end 
  end


  always @(posedge clk) begin
    if(N50) begin
      last_grant[1] <= N52;
    end 
  end


  always @(posedge clk) begin
    if(N50) begin
      last_grant[0] <= N51;
    end 
  end


  always @(posedge clk) begin
    if(N56) begin
      lockIdx[2] <= N59;
    end 
  end


  always @(posedge clk) begin
    if(N56) begin
      lockIdx[1] <= N58;
    end 
  end


  always @(posedge clk) begin
    if(N56) begin
      lockIdx[0] <= N57;
    end 
  end


  always @(posedge clk) begin
    if(N63) begin
      locked <= N64;
    end 
  end


  always @(posedge clk) begin
    if(N67) begin
      R41[1] <= N69;
    end 
  end


  always @(posedge clk) begin
    if(N67) begin
      R41[0] <= N68;
    end 
  end

  assign N78 = ~lockIdx[2];
  assign N79 = lockIdx[1] | N78;
  assign N80 = lockIdx[0] | N79;
  assign N81 = ~N80;
  assign N82 = lockIdx[1] | lockIdx[2];
  assign N83 = lockIdx[0] | N82;
  assign N84 = ~N83;
  assign N85 = ~lockIdx[0];
  assign N86 = lockIdx[1] | lockIdx[2];
  assign N87 = N85 | N86;
  assign N88 = ~N87;
  assign N89 = ~io_out_bits_payload_g_type[2];
  assign N90 = ~io_out_bits_payload_g_type[0];
  assign N91 = N89 | io_out_bits_payload_g_type[3];
  assign N92 = io_out_bits_payload_g_type[1] | N91;
  assign N93 = N90 | N92;
  assign N94 = ~N93;
  assign N95 = ~lockIdx[1];
  assign N96 = N95 | lockIdx[2];
  assign N97 = lockIdx[0] | N96;
  assign N98 = ~N97;
  assign N99 = io_out_bits_payload_g_type[2] | io_out_bits_payload_g_type[3];
  assign N100 = io_out_bits_payload_g_type[1] | N99;
  assign N101 = io_out_bits_payload_g_type[0] | N100;
  assign N102 = ~N101;
  assign N103 = io_out_bits_payload_g_type[2] | io_out_bits_payload_g_type[3];
  assign N104 = io_out_bits_payload_g_type[1] | N103;
  assign N105 = N90 | N104;
  assign N106 = ~N105;
  assign N107 = N95 | lockIdx[2];
  assign N108 = N85 | N107;
  assign N109 = ~N108;
  assign T40 = R41 + 1'b1;
  assign io_chosen = (N0)? lockIdx : 
                     (N1)? choose : 1'b0;
  assign N0 = locked;
  assign N1 = N31;
  assign choose = (N2)? { 1'b0, 1'b0, 1'b1 } : 
                  (N3)? T1 : 1'b0;
  assign N2 = T16;
  assign N3 = N32;
  assign T1 = (N4)? { 1'b0, 1'b1, 1'b0 } : 
              (N5)? T2 : 1'b0;
  assign N4 = T14;
  assign N5 = N33;
  assign T2 = (N6)? { 1'b0, 1'b1, 1'b1 } : 
              (N7)? T3 : 1'b0;
  assign N6 = T12;
  assign N7 = N34;
  assign T3 = (N8)? { 1'b1, 1'b0, 1'b0 } : 
              (N9)? T4 : 1'b0;
  assign N8 = T8;
  assign N9 = N35;
  assign T4 = (N10)? { 1'b0, 1'b0, 1'b0 } : 
              (N11)? T5 : 1'b0;
  assign N10 = io_in_0_valid;
  assign N11 = N36;
  assign T5 = (N12)? { 1'b0, 1'b0, 1'b1 } : 
              (N13)? T6 : 1'b0;
  assign N12 = io_in_1_valid;
  assign N13 = N37;
  assign T6 = (N14)? { 1'b0, 1'b1, 1'b0 } : 
              (N15)? { T7, T7[1:1] } : 1'b0;
  assign N14 = io_in_2_valid;
  assign N15 = N38;
  assign T19 = (N16)? { 1'b0, 1'b0, 1'b0 } : 
               (N17)? T20 : 1'b0;
  assign N16 = T26;
  assign N17 = N40;
  assign T20 = (N18)? { 1'b0, 1'b0, 1'b1 } : 
               (N19)? T21 : 1'b0;
  assign N18 = T25;
  assign N19 = N41;
  assign T21 = (N20)? { 1'b0, 1'b1, 1'b0 } : 
               (N21)? { T22, T22[1:1] } : 1'b0;
  assign N20 = T24;
  assign N21 = N42;
  assign T30 = (N22)? N94 : 
               (N23)? T31 : 1'b0;
  assign N22 = io_out_bits_payload_is_builtin_type;
  assign N23 = N44;
  assign io_out_bits_payload_data = (N24)? io_in_4_bits_payload_data : 
                                    (N25)? T46 : 1'b0;
  assign N24 = io_chosen[2];
  assign N25 = N45;
  assign T46 = (N26)? T50 : 
               (N27)? T47 : 1'b0;
  assign N26 = io_chosen[1];
  assign N27 = N46;
  assign T47 = (N28)? io_in_1_bits_payload_data : 
               (N29)? io_in_0_bits_payload_data : 1'b0;
  assign N28 = io_chosen[0];
  assign N29 = N47;
  assign T50 = (N28)? io_in_3_bits_payload_data : 
               (N29)? io_in_2_bits_payload_data : 1'b0;
  assign io_out_bits_payload_g_type = (N24)? io_in_4_bits_payload_g_type : 
                                      (N25)? T55 : 1'b0;
  assign T55 = (N26)? T58 : 
               (N27)? T56 : 1'b0;
  assign T56 = (N28)? io_in_1_bits_payload_g_type : 
               (N29)? io_in_0_bits_payload_g_type : 1'b0;
  assign T58 = (N28)? io_in_3_bits_payload_g_type : 
               (N29)? io_in_2_bits_payload_g_type : 1'b0;
  assign io_out_bits_payload_is_builtin_type = (N24)? io_in_4_bits_payload_is_builtin_type : 
                                               (N25)? T63 : 1'b0;
  assign T63 = (N26)? T66 : 
               (N27)? T64 : 1'b0;
  assign T64 = (N28)? io_in_1_bits_payload_is_builtin_type : 
               (N29)? io_in_0_bits_payload_is_builtin_type : 1'b0;
  assign T66 = (N28)? io_in_3_bits_payload_is_builtin_type : 
               (N29)? io_in_2_bits_payload_is_builtin_type : 1'b0;
  assign io_out_bits_payload_manager_xact_id = (N24)? io_in_4_bits_payload_manager_xact_id : 
                                               (N25)? T71 : 1'b0;
  assign T71 = (N26)? T74 : 
               (N27)? T72 : 1'b0;
  assign T72 = (N28)? io_in_1_bits_payload_manager_xact_id : 
               (N29)? io_in_0_bits_payload_manager_xact_id : 1'b0;
  assign T74 = (N28)? io_in_3_bits_payload_manager_xact_id : 
               (N29)? io_in_2_bits_payload_manager_xact_id : 1'b0;
  assign io_out_bits_payload_client_xact_id = (N24)? io_in_4_bits_payload_client_xact_id : 
                                              (N25)? T79 : 1'b0;
  assign T79 = (N26)? T82 : 
               (N27)? T80 : 1'b0;
  assign T80 = (N28)? io_in_1_bits_payload_client_xact_id : 
               (N29)? io_in_0_bits_payload_client_xact_id : 1'b0;
  assign T82 = (N28)? io_in_3_bits_payload_client_xact_id : 
               (N29)? io_in_2_bits_payload_client_xact_id : 1'b0;
  assign io_out_bits_payload_addr_beat = (N24)? io_in_4_bits_payload_addr_beat : 
                                         (N25)? T87 : 1'b0;
  assign T87 = (N26)? T90 : 
               (N27)? T88 : 1'b0;
  assign T88 = (N28)? io_in_1_bits_payload_addr_beat : 
               (N29)? io_in_0_bits_payload_addr_beat : 1'b0;
  assign T90 = (N28)? io_in_3_bits_payload_addr_beat : 
               (N29)? io_in_2_bits_payload_addr_beat : 1'b0;
  assign io_out_bits_header_dst = (N24)? io_in_4_bits_header_dst : 
                                  (N25)? T95 : 1'b0;
  assign T95 = (N26)? T98 : 
               (N27)? T96 : 1'b0;
  assign T96 = (N28)? io_in_1_bits_header_dst : 
               (N29)? io_in_0_bits_header_dst : 1'b0;
  assign T98 = (N28)? io_in_3_bits_header_dst : 
               (N29)? io_in_2_bits_header_dst : 1'b0;
  assign io_out_bits_header_src = (N24)? io_in_4_bits_header_src : 
                                  (N25)? T103 : 1'b0;
  assign T103 = (N26)? T106 : 
                (N27)? T104 : 1'b0;
  assign T104 = (N28)? io_in_1_bits_header_src : 
                (N29)? io_in_0_bits_header_src : 1'b0;
  assign T106 = (N28)? io_in_3_bits_header_src : 
                (N29)? io_in_2_bits_header_src : 1'b0;
  assign io_out_valid = (N24)? io_in_4_valid : 
                        (N25)? T111 : 1'b0;
  assign T111 = (N26)? T114 : 
                (N27)? T112 : 1'b0;
  assign T112 = (N28)? io_in_1_valid : 
                (N29)? io_in_0_valid : 1'b0;
  assign T114 = (N28)? io_in_3_valid : 
                (N29)? io_in_2_valid : 1'b0;
  assign T119 = (N0)? N84 : 
                (N1)? T120 : 1'b0;
  assign T139 = (N0)? N88 : 
                (N1)? T140 : 1'b0;
  assign T152 = (N0)? N98 : 
                (N1)? T153 : 1'b0;
  assign T167 = (N0)? N109 : 
                (N1)? T168 : 1'b0;
  assign T184 = (N0)? N81 : 
                (N1)? T185 : 1'b0;
  assign N50 = (N30)? 1'b1 : 
               (N71)? 1'b1 : 
               (N49)? 1'b0 : 1'b0;
  assign N30 = reset;
  assign { N53, N52, N51 } = (N30)? { 1'b0, 1'b0, 1'b0 } : 
                             (N71)? io_chosen : 1'b0;
  assign N56 = (N30)? 1'b1 : 
               (N72)? 1'b1 : 
               (N55)? 1'b0 : 1'b0;
  assign { N59, N58, N57 } = (N30)? { 1'b1, 1'b0, 1'b0 } : 
                             (N72)? T19 : 1'b0;
  assign N63 = (N30)? 1'b1 : 
               (N73)? 1'b1 : 
               (N76)? 1'b1 : 
               (N62)? 1'b0 : 1'b0;
  assign N64 = (N30)? 1'b0 : 
               (N73)? 1'b0 : 
               (N76)? T38 : 1'b0;
  assign N67 = (N30)? 1'b1 : 
               (N77)? 1'b1 : 
               (N66)? 1'b0 : 1'b0;
  assign { N69, N68 } = (N30)? { 1'b0, 1'b0 } : 
                        (N77)? T40 : 1'b0;
  assign N31 = ~locked;
  assign N32 = ~T16;
  assign N33 = ~T14;
  assign N34 = ~T12;
  assign N35 = ~T8;
  assign N36 = ~io_in_0_valid;
  assign N37 = ~io_in_1_valid;
  assign N38 = ~io_in_2_valid;
  assign N39 = ~io_in_3_valid;
  assign T7[1] = io_in_3_valid;
  assign T7[2] = N39;
  assign T8 = io_in_4_valid & T9;
  assign T9 = ~last_grant[2];
  assign T11 = io_out_ready & io_out_valid;
  assign T12 = io_in_3_valid & T13;
  assign T14 = io_in_2_valid & T15;
  assign T15 = ~N110;
  assign N110 = last_grant[2] | last_grant[1];
  assign T16 = io_in_1_valid & T17;
  assign T17 = ~N112;
  assign N112 = N111 | last_grant[0];
  assign N111 = last_grant[2] | last_grant[1];
  assign N40 = ~T26;
  assign N41 = ~T25;
  assign N42 = ~T24;
  assign N43 = ~T23;
  assign T22[1] = T23;
  assign T22[2] = N43;
  assign T23 = io_in_3_ready & io_in_3_valid;
  assign T24 = io_in_2_ready & io_in_2_valid;
  assign T25 = io_in_1_ready & io_in_1_valid;
  assign T26 = io_in_0_ready & io_in_0_valid;
  assign T27 = T29 & T28;
  assign T28 = ~locked;
  assign T29 = T35 & T30;
  assign N44 = ~io_out_bits_payload_is_builtin_type;
  assign T31 = N102 | N106;
  assign T35 = io_out_valid & io_out_ready;
  assign T38 = ~T39;
  assign T43 = T35 & T44;
  assign T44 = ~T30;
  assign N45 = ~io_chosen[2];
  assign N46 = ~io_chosen[1];
  assign N47 = ~io_chosen[0];
  assign io_in_0_ready = T119 & io_out_ready;
  assign T120 = T136 | T121;
  assign T121 = ~T122;
  assign T122 = T125 | T123;
  assign T123 = io_in_4_valid & T124;
  assign T124 = ~last_grant[2];
  assign T125 = T128 | T126;
  assign T126 = io_in_3_valid & T127;
  assign T128 = T131 | T129;
  assign T129 = io_in_2_valid & T130;
  assign T130 = ~N113;
  assign N113 = last_grant[2] | last_grant[1];
  assign T131 = T134 | T132;
  assign T132 = io_in_1_valid & T133;
  assign T133 = ~N115;
  assign N115 = N114 | last_grant[0];
  assign N114 = last_grant[2] | last_grant[1];
  assign T134 = io_in_0_valid & T135;
  assign io_in_1_ready = T139 & io_out_ready;
  assign T140 = T147 | T141;
  assign T141 = ~T142;
  assign T142 = T143 | io_in_0_valid;
  assign T143 = T144 | T123;
  assign T144 = T145 | T126;
  assign T145 = T146 | T129;
  assign T146 = T134 | T132;
  assign T147 = T149 & T148;
  assign T148 = ~N117;
  assign N117 = N116 | last_grant[0];
  assign N116 = last_grant[2] | last_grant[1];
  assign T149 = ~T134;
  assign io_in_2_ready = T152 & io_out_ready;
  assign T153 = T161 | T154;
  assign T154 = ~T155;
  assign T155 = T156 | io_in_1_valid;
  assign T156 = T157 | io_in_0_valid;
  assign T157 = T158 | T123;
  assign T158 = T159 | T126;
  assign T159 = T160 | T129;
  assign T160 = T134 | T132;
  assign T161 = T163 & T162;
  assign T162 = ~N118;
  assign N118 = last_grant[2] | last_grant[1];
  assign T163 = ~T164;
  assign T164 = T134 | T132;
  assign io_in_3_ready = T167 & io_out_ready;
  assign T168 = T177 | T169;
  assign T169 = ~T170;
  assign T170 = T171 | io_in_2_valid;
  assign T171 = T172 | io_in_1_valid;
  assign T172 = T173 | io_in_0_valid;
  assign T173 = T174 | T123;
  assign T174 = T175 | T126;
  assign T175 = T176 | T129;
  assign T176 = T134 | T132;
  assign T177 = T179 & T178;
  assign T179 = ~T180;
  assign T180 = T181 | T129;
  assign T181 = T134 | T132;
  assign io_in_4_ready = T184 & io_out_ready;
  assign T185 = T195 | T186;
  assign T186 = ~T187;
  assign T187 = T188 | io_in_3_valid;
  assign T188 = T189 | io_in_2_valid;
  assign T189 = T190 | io_in_1_valid;
  assign T190 = T191 | io_in_0_valid;
  assign T191 = T192 | T123;
  assign T192 = T193 | T126;
  assign T193 = T194 | T129;
  assign T194 = T134 | T132;
  assign T195 = T197 & T196;
  assign T196 = ~last_grant[2];
  assign T197 = ~T198;
  assign T198 = T199 | T126;
  assign T199 = T200 | T129;
  assign T200 = T134 | T132;
  assign N48 = T11 | reset;
  assign N49 = ~N48;
  assign N54 = T27 | reset;
  assign N55 = ~N54;
  assign N60 = T43 | reset;
  assign N61 = T29 | N60;
  assign N62 = ~N61;
  assign N65 = T29 | reset;
  assign N66 = ~N65;
  assign N70 = ~reset;
  assign N71 = T11 & N70;
  assign N72 = T27 & N70;
  assign N73 = T43 & N70;
  assign N74 = ~T43;
  assign N75 = N70 & N74;
  assign N76 = T29 & N75;
  assign N77 = T29 & N70;

endmodule