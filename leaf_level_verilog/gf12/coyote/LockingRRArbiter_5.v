module LockingRRArbiter_5
(
  clk,
  reset,
  io_in_4_ready,
  io_in_4_valid,
  io_in_4_bits_header_src,
  io_in_4_bits_header_dst,
  io_in_4_bits_payload_addr_block,
  io_in_4_bits_payload_client_xact_id,
  io_in_4_bits_payload_addr_beat,
  io_in_4_bits_payload_is_builtin_type,
  io_in_4_bits_payload_a_type,
  io_in_4_bits_payload_union,
  io_in_4_bits_payload_data,
  io_in_3_ready,
  io_in_3_valid,
  io_in_3_bits_header_src,
  io_in_3_bits_header_dst,
  io_in_3_bits_payload_addr_block,
  io_in_3_bits_payload_client_xact_id,
  io_in_3_bits_payload_addr_beat,
  io_in_3_bits_payload_is_builtin_type,
  io_in_3_bits_payload_a_type,
  io_in_3_bits_payload_union,
  io_in_3_bits_payload_data,
  io_in_2_ready,
  io_in_2_valid,
  io_in_2_bits_header_src,
  io_in_2_bits_header_dst,
  io_in_2_bits_payload_addr_block,
  io_in_2_bits_payload_client_xact_id,
  io_in_2_bits_payload_addr_beat,
  io_in_2_bits_payload_is_builtin_type,
  io_in_2_bits_payload_a_type,
  io_in_2_bits_payload_union,
  io_in_2_bits_payload_data,
  io_in_1_ready,
  io_in_1_valid,
  io_in_1_bits_header_src,
  io_in_1_bits_header_dst,
  io_in_1_bits_payload_addr_block,
  io_in_1_bits_payload_client_xact_id,
  io_in_1_bits_payload_addr_beat,
  io_in_1_bits_payload_is_builtin_type,
  io_in_1_bits_payload_a_type,
  io_in_1_bits_payload_union,
  io_in_1_bits_payload_data,
  io_in_0_ready,
  io_in_0_valid,
  io_in_0_bits_header_src,
  io_in_0_bits_header_dst,
  io_in_0_bits_payload_addr_block,
  io_in_0_bits_payload_client_xact_id,
  io_in_0_bits_payload_addr_beat,
  io_in_0_bits_payload_is_builtin_type,
  io_in_0_bits_payload_a_type,
  io_in_0_bits_payload_union,
  io_in_0_bits_payload_data,
  io_out_ready,
  io_out_valid,
  io_out_bits_header_src,
  io_out_bits_header_dst,
  io_out_bits_payload_addr_block,
  io_out_bits_payload_client_xact_id,
  io_out_bits_payload_addr_beat,
  io_out_bits_payload_is_builtin_type,
  io_out_bits_payload_a_type,
  io_out_bits_payload_union,
  io_out_bits_payload_data,
  io_chosen
);

  input [2:0] io_in_4_bits_header_src;
  input [2:0] io_in_4_bits_header_dst;
  input [25:0] io_in_4_bits_payload_addr_block;
  input [5:0] io_in_4_bits_payload_client_xact_id;
  input [1:0] io_in_4_bits_payload_addr_beat;
  input [2:0] io_in_4_bits_payload_a_type;
  input [16:0] io_in_4_bits_payload_union;
  input [127:0] io_in_4_bits_payload_data;
  input [2:0] io_in_3_bits_header_src;
  input [2:0] io_in_3_bits_header_dst;
  input [25:0] io_in_3_bits_payload_addr_block;
  input [5:0] io_in_3_bits_payload_client_xact_id;
  input [1:0] io_in_3_bits_payload_addr_beat;
  input [2:0] io_in_3_bits_payload_a_type;
  input [16:0] io_in_3_bits_payload_union;
  input [127:0] io_in_3_bits_payload_data;
  input [2:0] io_in_2_bits_header_src;
  input [2:0] io_in_2_bits_header_dst;
  input [25:0] io_in_2_bits_payload_addr_block;
  input [5:0] io_in_2_bits_payload_client_xact_id;
  input [1:0] io_in_2_bits_payload_addr_beat;
  input [2:0] io_in_2_bits_payload_a_type;
  input [16:0] io_in_2_bits_payload_union;
  input [127:0] io_in_2_bits_payload_data;
  input [2:0] io_in_1_bits_header_src;
  input [2:0] io_in_1_bits_header_dst;
  input [25:0] io_in_1_bits_payload_addr_block;
  input [5:0] io_in_1_bits_payload_client_xact_id;
  input [1:0] io_in_1_bits_payload_addr_beat;
  input [2:0] io_in_1_bits_payload_a_type;
  input [16:0] io_in_1_bits_payload_union;
  input [127:0] io_in_1_bits_payload_data;
  input [2:0] io_in_0_bits_header_src;
  input [2:0] io_in_0_bits_header_dst;
  input [25:0] io_in_0_bits_payload_addr_block;
  input [5:0] io_in_0_bits_payload_client_xact_id;
  input [1:0] io_in_0_bits_payload_addr_beat;
  input [2:0] io_in_0_bits_payload_a_type;
  input [16:0] io_in_0_bits_payload_union;
  input [127:0] io_in_0_bits_payload_data;
  output [2:0] io_out_bits_header_src;
  output [2:0] io_out_bits_header_dst;
  output [25:0] io_out_bits_payload_addr_block;
  output [5:0] io_out_bits_payload_client_xact_id;
  output [1:0] io_out_bits_payload_addr_beat;
  output [2:0] io_out_bits_payload_a_type;
  output [16:0] io_out_bits_payload_union;
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
  wire [2:0] io_out_bits_header_src,io_out_bits_header_dst,io_out_bits_payload_a_type,
  io_chosen,choose,T1,T2,T3,T4,T5,T6,T19,T20,T21,T60,T63,T61,T100,T103,T101,T108,T111,
  T109;
  wire [25:0] io_out_bits_payload_addr_block,T92,T95,T93;
  wire [5:0] io_out_bits_payload_client_xact_id,T84,T87,T85;
  wire [1:0] io_out_bits_payload_addr_beat,T37,T76,T79,T77;
  wire [16:0] io_out_bits_payload_union,T52,T55,T53;
  wire [127:0] io_out_bits_payload_data,T43,T47,T44;
  wire io_in_4_ready,io_in_3_ready,io_in_2_ready,io_in_1_ready,io_in_0_ready,
  io_out_valid,io_out_bits_payload_is_builtin_type,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,
  N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,T16,N30,
  T14,N31,T12,N32,T8,N33,N34,N35,N36,N37,T9,T11,T13,T15,T17,T27,T26,N38,T25,N39,T24,
  N40,T23,N41,T29,T28,T32,T30,T40,T35,T36,T41,N42,N43,N44,T68,T71,T69,T116,T119,
  T117,T124,T125,T141,T126,T127,T130,T128,T129,T133,T131,T132,T136,T134,T135,T139,
  T137,T138,T140,T144,T145,T152,T146,T147,T148,T149,T150,T151,T154,T153,T157,T158,
  T166,T159,T160,T161,T162,T163,T164,T165,T168,T167,T169,T172,T173,T182,T174,T175,
  T176,T177,T178,T179,T180,T181,T184,T183,T185,T186,T189,T190,T200,T191,T192,T193,
  T194,T195,T196,T197,T198,T199,T202,T201,T203,T204,T205,N45,N46,N47,N48,N49,N50,N51,
  N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,
  N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,
  N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106;
  wire [2:1] T7,T22;
  reg [2:0] last_grant,lockIdx;
  reg locked;
  reg [1:0] R38;
  assign T13 = last_grant < { 1'b1, 1'b1 };
  assign T36 = T37 == 1'b0;
  assign T132 = last_grant < { 1'b1, 1'b1 };
  assign T140 = last_grant < 1'b0;
  assign T141 = last_grant < 1'b0;
  assign T183 = last_grant < { 1'b1, 1'b1 };

  always @(posedge clk) begin
    if(N47) begin
      last_grant[2] <= N50;
    end 
  end


  always @(posedge clk) begin
    if(N47) begin
      last_grant[1] <= N49;
    end 
  end


  always @(posedge clk) begin
    if(N47) begin
      last_grant[0] <= N48;
    end 
  end


  always @(posedge clk) begin
    if(N53) begin
      lockIdx[2] <= N56;
    end 
  end


  always @(posedge clk) begin
    if(N53) begin
      lockIdx[1] <= N55;
    end 
  end


  always @(posedge clk) begin
    if(N53) begin
      lockIdx[0] <= N54;
    end 
  end


  always @(posedge clk) begin
    if(N60) begin
      locked <= N61;
    end 
  end


  always @(posedge clk) begin
    if(N64) begin
      R38[1] <= N66;
    end 
  end


  always @(posedge clk) begin
    if(N64) begin
      R38[0] <= N65;
    end 
  end

  assign N75 = ~lockIdx[2];
  assign N76 = lockIdx[1] | N75;
  assign N77 = lockIdx[0] | N76;
  assign N78 = ~N77;
  assign N79 = lockIdx[1] | lockIdx[2];
  assign N80 = lockIdx[0] | N79;
  assign N81 = ~N80;
  assign N82 = ~lockIdx[0];
  assign N83 = lockIdx[1] | lockIdx[2];
  assign N84 = N82 | N83;
  assign N85 = ~N84;
  assign N86 = ~io_out_bits_payload_a_type[1];
  assign N87 = ~io_out_bits_payload_a_type[0];
  assign N88 = N86 | io_out_bits_payload_a_type[2];
  assign N89 = N87 | N88;
  assign N90 = ~N89;
  assign N91 = ~lockIdx[1];
  assign N92 = N91 | lockIdx[2];
  assign N93 = lockIdx[0] | N92;
  assign N94 = ~N93;
  assign N95 = N91 | lockIdx[2];
  assign N96 = N82 | N95;
  assign N97 = ~N96;
  assign T37 = R38 + 1'b1;
  assign io_chosen = (N0)? lockIdx : 
                     (N1)? choose : 1'b0;
  assign N0 = locked;
  assign N1 = N29;
  assign choose = (N2)? { 1'b0, 1'b0, 1'b1 } : 
                  (N3)? T1 : 1'b0;
  assign N2 = T16;
  assign N3 = N30;
  assign T1 = (N4)? { 1'b0, 1'b1, 1'b0 } : 
              (N5)? T2 : 1'b0;
  assign N4 = T14;
  assign N5 = N31;
  assign T2 = (N6)? { 1'b0, 1'b1, 1'b1 } : 
              (N7)? T3 : 1'b0;
  assign N6 = T12;
  assign N7 = N32;
  assign T3 = (N8)? { 1'b1, 1'b0, 1'b0 } : 
              (N9)? T4 : 1'b0;
  assign N8 = T8;
  assign N9 = N33;
  assign T4 = (N10)? { 1'b0, 1'b0, 1'b0 } : 
              (N11)? T5 : 1'b0;
  assign N10 = io_in_0_valid;
  assign N11 = N34;
  assign T5 = (N12)? { 1'b0, 1'b0, 1'b1 } : 
              (N13)? T6 : 1'b0;
  assign N12 = io_in_1_valid;
  assign N13 = N35;
  assign T6 = (N14)? { 1'b0, 1'b1, 1'b0 } : 
              (N15)? { T7, T7[1:1] } : 1'b0;
  assign N14 = io_in_2_valid;
  assign N15 = N36;
  assign T19 = (N16)? { 1'b0, 1'b0, 1'b0 } : 
               (N17)? T20 : 1'b0;
  assign N16 = T26;
  assign N17 = N38;
  assign T20 = (N18)? { 1'b0, 1'b0, 1'b1 } : 
               (N19)? T21 : 1'b0;
  assign N18 = T25;
  assign N19 = N39;
  assign T21 = (N20)? { 1'b0, 1'b1, 1'b0 } : 
               (N21)? { T22, T22[1:1] } : 1'b0;
  assign N20 = T24;
  assign N21 = N40;
  assign io_out_bits_payload_data = (N22)? io_in_4_bits_payload_data : 
                                    (N23)? T43 : 1'b0;
  assign N22 = io_chosen[2];
  assign N23 = N42;
  assign T43 = (N24)? T47 : 
               (N25)? T44 : 1'b0;
  assign N24 = io_chosen[1];
  assign N25 = N43;
  assign T44 = (N26)? io_in_1_bits_payload_data : 
               (N27)? io_in_0_bits_payload_data : 1'b0;
  assign N26 = io_chosen[0];
  assign N27 = N44;
  assign T47 = (N26)? io_in_3_bits_payload_data : 
               (N27)? io_in_2_bits_payload_data : 1'b0;
  assign io_out_bits_payload_union = (N22)? io_in_4_bits_payload_union : 
                                     (N23)? T52 : 1'b0;
  assign T52 = (N24)? T55 : 
               (N25)? T53 : 1'b0;
  assign T53 = (N26)? io_in_1_bits_payload_union : 
               (N27)? io_in_0_bits_payload_union : 1'b0;
  assign T55 = (N26)? io_in_3_bits_payload_union : 
               (N27)? io_in_2_bits_payload_union : 1'b0;
  assign io_out_bits_payload_a_type = (N22)? io_in_4_bits_payload_a_type : 
                                      (N23)? T60 : 1'b0;
  assign T60 = (N24)? T63 : 
               (N25)? T61 : 1'b0;
  assign T61 = (N26)? io_in_1_bits_payload_a_type : 
               (N27)? io_in_0_bits_payload_a_type : 1'b0;
  assign T63 = (N26)? io_in_3_bits_payload_a_type : 
               (N27)? io_in_2_bits_payload_a_type : 1'b0;
  assign io_out_bits_payload_is_builtin_type = (N22)? io_in_4_bits_payload_is_builtin_type : 
                                               (N23)? T68 : 1'b0;
  assign T68 = (N24)? T71 : 
               (N25)? T69 : 1'b0;
  assign T69 = (N26)? io_in_1_bits_payload_is_builtin_type : 
               (N27)? io_in_0_bits_payload_is_builtin_type : 1'b0;
  assign T71 = (N26)? io_in_3_bits_payload_is_builtin_type : 
               (N27)? io_in_2_bits_payload_is_builtin_type : 1'b0;
  assign io_out_bits_payload_addr_beat = (N22)? io_in_4_bits_payload_addr_beat : 
                                         (N23)? T76 : 1'b0;
  assign T76 = (N24)? T79 : 
               (N25)? T77 : 1'b0;
  assign T77 = (N26)? io_in_1_bits_payload_addr_beat : 
               (N27)? io_in_0_bits_payload_addr_beat : 1'b0;
  assign T79 = (N26)? io_in_3_bits_payload_addr_beat : 
               (N27)? io_in_2_bits_payload_addr_beat : 1'b0;
  assign io_out_bits_payload_client_xact_id = (N22)? io_in_4_bits_payload_client_xact_id : 
                                              (N23)? T84 : 1'b0;
  assign T84 = (N24)? T87 : 
               (N25)? T85 : 1'b0;
  assign T85 = (N26)? io_in_1_bits_payload_client_xact_id : 
               (N27)? io_in_0_bits_payload_client_xact_id : 1'b0;
  assign T87 = (N26)? io_in_3_bits_payload_client_xact_id : 
               (N27)? io_in_2_bits_payload_client_xact_id : 1'b0;
  assign io_out_bits_payload_addr_block = (N22)? io_in_4_bits_payload_addr_block : 
                                          (N23)? T92 : 1'b0;
  assign T92 = (N24)? T95 : 
               (N25)? T93 : 1'b0;
  assign T93 = (N26)? io_in_1_bits_payload_addr_block : 
               (N27)? io_in_0_bits_payload_addr_block : 1'b0;
  assign T95 = (N26)? io_in_3_bits_payload_addr_block : 
               (N27)? io_in_2_bits_payload_addr_block : 1'b0;
  assign io_out_bits_header_dst = (N22)? io_in_4_bits_header_dst : 
                                  (N23)? T100 : 1'b0;
  assign T100 = (N24)? T103 : 
                (N25)? T101 : 1'b0;
  assign T101 = (N26)? io_in_1_bits_header_dst : 
                (N27)? io_in_0_bits_header_dst : 1'b0;
  assign T103 = (N26)? io_in_3_bits_header_dst : 
                (N27)? io_in_2_bits_header_dst : 1'b0;
  assign io_out_bits_header_src = (N22)? io_in_4_bits_header_src : 
                                  (N23)? T108 : 1'b0;
  assign T108 = (N24)? T111 : 
                (N25)? T109 : 1'b0;
  assign T109 = (N26)? io_in_1_bits_header_src : 
                (N27)? io_in_0_bits_header_src : 1'b0;
  assign T111 = (N26)? io_in_3_bits_header_src : 
                (N27)? io_in_2_bits_header_src : 1'b0;
  assign io_out_valid = (N22)? io_in_4_valid : 
                        (N23)? T116 : 1'b0;
  assign T116 = (N24)? T119 : 
                (N25)? T117 : 1'b0;
  assign T117 = (N26)? io_in_1_valid : 
                (N27)? io_in_0_valid : 1'b0;
  assign T119 = (N26)? io_in_3_valid : 
                (N27)? io_in_2_valid : 1'b0;
  assign T124 = (N0)? N81 : 
                (N1)? T125 : 1'b0;
  assign T144 = (N0)? N85 : 
                (N1)? T145 : 1'b0;
  assign T157 = (N0)? N94 : 
                (N1)? T158 : 1'b0;
  assign T172 = (N0)? N97 : 
                (N1)? T173 : 1'b0;
  assign T189 = (N0)? N78 : 
                (N1)? T190 : 1'b0;
  assign N47 = (N28)? 1'b1 : 
               (N68)? 1'b1 : 
               (N46)? 1'b0 : 1'b0;
  assign N28 = reset;
  assign { N50, N49, N48 } = (N28)? { 1'b0, 1'b0, 1'b0 } : 
                             (N68)? io_chosen : 1'b0;
  assign N53 = (N28)? 1'b1 : 
               (N69)? 1'b1 : 
               (N52)? 1'b0 : 1'b0;
  assign { N56, N55, N54 } = (N28)? { 1'b1, 1'b0, 1'b0 } : 
                             (N69)? T19 : 1'b0;
  assign N60 = (N28)? 1'b1 : 
               (N70)? 1'b1 : 
               (N73)? 1'b1 : 
               (N59)? 1'b0 : 1'b0;
  assign N61 = (N28)? 1'b0 : 
               (N70)? 1'b0 : 
               (N73)? T35 : 1'b0;
  assign N64 = (N28)? 1'b1 : 
               (N74)? 1'b1 : 
               (N63)? 1'b0 : 1'b0;
  assign { N66, N65 } = (N28)? { 1'b0, 1'b0 } : 
                        (N74)? T37 : 1'b0;
  assign N29 = ~locked;
  assign N30 = ~T16;
  assign N31 = ~T14;
  assign N32 = ~T12;
  assign N33 = ~T8;
  assign N34 = ~io_in_0_valid;
  assign N35 = ~io_in_1_valid;
  assign N36 = ~io_in_2_valid;
  assign N37 = ~io_in_3_valid;
  assign T7[1] = io_in_3_valid;
  assign T7[2] = N37;
  assign T8 = io_in_4_valid & T9;
  assign T9 = ~last_grant[2];
  assign T11 = io_out_ready & io_out_valid;
  assign T12 = io_in_3_valid & T13;
  assign T14 = io_in_2_valid & T15;
  assign T15 = ~N98;
  assign N98 = last_grant[2] | last_grant[1];
  assign T16 = io_in_1_valid & T17;
  assign T17 = ~N100;
  assign N100 = N99 | last_grant[0];
  assign N99 = last_grant[2] | last_grant[1];
  assign N38 = ~T26;
  assign N39 = ~T25;
  assign N40 = ~T24;
  assign N41 = ~T23;
  assign T22[1] = T23;
  assign T22[2] = N41;
  assign T23 = io_in_3_ready & io_in_3_valid;
  assign T24 = io_in_2_ready & io_in_2_valid;
  assign T25 = io_in_1_ready & io_in_1_valid;
  assign T26 = io_in_0_ready & io_in_0_valid;
  assign T27 = T29 & T28;
  assign T28 = ~locked;
  assign T29 = T32 & T30;
  assign T30 = io_out_bits_payload_is_builtin_type & N90;
  assign T32 = io_out_valid & io_out_ready;
  assign T35 = ~T36;
  assign T40 = T32 & T41;
  assign T41 = ~T30;
  assign N42 = ~io_chosen[2];
  assign N43 = ~io_chosen[1];
  assign N44 = ~io_chosen[0];
  assign io_in_0_ready = T124 & io_out_ready;
  assign T125 = T141 | T126;
  assign T126 = ~T127;
  assign T127 = T130 | T128;
  assign T128 = io_in_4_valid & T129;
  assign T129 = ~last_grant[2];
  assign T130 = T133 | T131;
  assign T131 = io_in_3_valid & T132;
  assign T133 = T136 | T134;
  assign T134 = io_in_2_valid & T135;
  assign T135 = ~N101;
  assign N101 = last_grant[2] | last_grant[1];
  assign T136 = T139 | T137;
  assign T137 = io_in_1_valid & T138;
  assign T138 = ~N103;
  assign N103 = N102 | last_grant[0];
  assign N102 = last_grant[2] | last_grant[1];
  assign T139 = io_in_0_valid & T140;
  assign io_in_1_ready = T144 & io_out_ready;
  assign T145 = T152 | T146;
  assign T146 = ~T147;
  assign T147 = T148 | io_in_0_valid;
  assign T148 = T149 | T128;
  assign T149 = T150 | T131;
  assign T150 = T151 | T134;
  assign T151 = T139 | T137;
  assign T152 = T154 & T153;
  assign T153 = ~N105;
  assign N105 = N104 | last_grant[0];
  assign N104 = last_grant[2] | last_grant[1];
  assign T154 = ~T139;
  assign io_in_2_ready = T157 & io_out_ready;
  assign T158 = T166 | T159;
  assign T159 = ~T160;
  assign T160 = T161 | io_in_1_valid;
  assign T161 = T162 | io_in_0_valid;
  assign T162 = T163 | T128;
  assign T163 = T164 | T131;
  assign T164 = T165 | T134;
  assign T165 = T139 | T137;
  assign T166 = T168 & T167;
  assign T167 = ~N106;
  assign N106 = last_grant[2] | last_grant[1];
  assign T168 = ~T169;
  assign T169 = T139 | T137;
  assign io_in_3_ready = T172 & io_out_ready;
  assign T173 = T182 | T174;
  assign T174 = ~T175;
  assign T175 = T176 | io_in_2_valid;
  assign T176 = T177 | io_in_1_valid;
  assign T177 = T178 | io_in_0_valid;
  assign T178 = T179 | T128;
  assign T179 = T180 | T131;
  assign T180 = T181 | T134;
  assign T181 = T139 | T137;
  assign T182 = T184 & T183;
  assign T184 = ~T185;
  assign T185 = T186 | T134;
  assign T186 = T139 | T137;
  assign io_in_4_ready = T189 & io_out_ready;
  assign T190 = T200 | T191;
  assign T191 = ~T192;
  assign T192 = T193 | io_in_3_valid;
  assign T193 = T194 | io_in_2_valid;
  assign T194 = T195 | io_in_1_valid;
  assign T195 = T196 | io_in_0_valid;
  assign T196 = T197 | T128;
  assign T197 = T198 | T131;
  assign T198 = T199 | T134;
  assign T199 = T139 | T137;
  assign T200 = T202 & T201;
  assign T201 = ~last_grant[2];
  assign T202 = ~T203;
  assign T203 = T204 | T131;
  assign T204 = T205 | T134;
  assign T205 = T139 | T137;
  assign N45 = T11 | reset;
  assign N46 = ~N45;
  assign N51 = T27 | reset;
  assign N52 = ~N51;
  assign N57 = T40 | reset;
  assign N58 = T29 | N57;
  assign N59 = ~N58;
  assign N62 = T29 | reset;
  assign N63 = ~N62;
  assign N67 = ~reset;
  assign N68 = T11 & N67;
  assign N69 = T27 & N67;
  assign N70 = T40 & N67;
  assign N71 = ~T40;
  assign N72 = N67 & N71;
  assign N73 = T29 & N72;
  assign N74 = T29 & N67;

endmodule