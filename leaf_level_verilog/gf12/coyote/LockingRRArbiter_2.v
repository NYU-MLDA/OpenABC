module LockingRRArbiter_2
(
  clk,
  reset,
  io_in_7_ready,
  io_in_7_valid,
  io_in_7_bits_addr_beat,
  io_in_7_bits_client_xact_id,
  io_in_7_bits_manager_xact_id,
  io_in_7_bits_is_builtin_type,
  io_in_7_bits_g_type,
  io_in_7_bits_data,
  io_in_7_bits_client_id,
  io_in_6_ready,
  io_in_6_valid,
  io_in_6_bits_addr_beat,
  io_in_6_bits_client_xact_id,
  io_in_6_bits_manager_xact_id,
  io_in_6_bits_is_builtin_type,
  io_in_6_bits_g_type,
  io_in_6_bits_data,
  io_in_6_bits_client_id,
  io_in_5_ready,
  io_in_5_valid,
  io_in_5_bits_addr_beat,
  io_in_5_bits_client_xact_id,
  io_in_5_bits_manager_xact_id,
  io_in_5_bits_is_builtin_type,
  io_in_5_bits_g_type,
  io_in_5_bits_data,
  io_in_5_bits_client_id,
  io_in_4_ready,
  io_in_4_valid,
  io_in_4_bits_addr_beat,
  io_in_4_bits_client_xact_id,
  io_in_4_bits_manager_xact_id,
  io_in_4_bits_is_builtin_type,
  io_in_4_bits_g_type,
  io_in_4_bits_data,
  io_in_4_bits_client_id,
  io_in_3_ready,
  io_in_3_valid,
  io_in_3_bits_addr_beat,
  io_in_3_bits_client_xact_id,
  io_in_3_bits_manager_xact_id,
  io_in_3_bits_is_builtin_type,
  io_in_3_bits_g_type,
  io_in_3_bits_data,
  io_in_3_bits_client_id,
  io_in_2_ready,
  io_in_2_valid,
  io_in_2_bits_addr_beat,
  io_in_2_bits_client_xact_id,
  io_in_2_bits_manager_xact_id,
  io_in_2_bits_is_builtin_type,
  io_in_2_bits_g_type,
  io_in_2_bits_data,
  io_in_2_bits_client_id,
  io_in_1_ready,
  io_in_1_valid,
  io_in_1_bits_addr_beat,
  io_in_1_bits_client_xact_id,
  io_in_1_bits_manager_xact_id,
  io_in_1_bits_is_builtin_type,
  io_in_1_bits_g_type,
  io_in_1_bits_data,
  io_in_1_bits_client_id,
  io_in_0_ready,
  io_in_0_valid,
  io_in_0_bits_addr_beat,
  io_in_0_bits_client_xact_id,
  io_in_0_bits_manager_xact_id,
  io_in_0_bits_is_builtin_type,
  io_in_0_bits_g_type,
  io_in_0_bits_data,
  io_in_0_bits_client_id,
  io_out_ready,
  io_out_valid,
  io_out_bits_addr_beat,
  io_out_bits_client_xact_id,
  io_out_bits_manager_xact_id,
  io_out_bits_is_builtin_type,
  io_out_bits_g_type,
  io_out_bits_data,
  io_out_bits_client_id,
  io_chosen
);

  input [1:0] io_in_7_bits_addr_beat;
  input [5:0] io_in_7_bits_client_xact_id;
  input [3:0] io_in_7_bits_manager_xact_id;
  input [3:0] io_in_7_bits_g_type;
  input [127:0] io_in_7_bits_data;
  input [1:0] io_in_7_bits_client_id;
  input [1:0] io_in_6_bits_addr_beat;
  input [5:0] io_in_6_bits_client_xact_id;
  input [3:0] io_in_6_bits_manager_xact_id;
  input [3:0] io_in_6_bits_g_type;
  input [127:0] io_in_6_bits_data;
  input [1:0] io_in_6_bits_client_id;
  input [1:0] io_in_5_bits_addr_beat;
  input [5:0] io_in_5_bits_client_xact_id;
  input [3:0] io_in_5_bits_manager_xact_id;
  input [3:0] io_in_5_bits_g_type;
  input [127:0] io_in_5_bits_data;
  input [1:0] io_in_5_bits_client_id;
  input [1:0] io_in_4_bits_addr_beat;
  input [5:0] io_in_4_bits_client_xact_id;
  input [3:0] io_in_4_bits_manager_xact_id;
  input [3:0] io_in_4_bits_g_type;
  input [127:0] io_in_4_bits_data;
  input [1:0] io_in_4_bits_client_id;
  input [1:0] io_in_3_bits_addr_beat;
  input [5:0] io_in_3_bits_client_xact_id;
  input [3:0] io_in_3_bits_manager_xact_id;
  input [3:0] io_in_3_bits_g_type;
  input [127:0] io_in_3_bits_data;
  input [1:0] io_in_3_bits_client_id;
  input [1:0] io_in_2_bits_addr_beat;
  input [5:0] io_in_2_bits_client_xact_id;
  input [3:0] io_in_2_bits_manager_xact_id;
  input [3:0] io_in_2_bits_g_type;
  input [127:0] io_in_2_bits_data;
  input [1:0] io_in_2_bits_client_id;
  input [1:0] io_in_1_bits_addr_beat;
  input [5:0] io_in_1_bits_client_xact_id;
  input [3:0] io_in_1_bits_manager_xact_id;
  input [3:0] io_in_1_bits_g_type;
  input [127:0] io_in_1_bits_data;
  input [1:0] io_in_1_bits_client_id;
  input [1:0] io_in_0_bits_addr_beat;
  input [5:0] io_in_0_bits_client_xact_id;
  input [3:0] io_in_0_bits_manager_xact_id;
  input [3:0] io_in_0_bits_g_type;
  input [127:0] io_in_0_bits_data;
  input [1:0] io_in_0_bits_client_id;
  output [1:0] io_out_bits_addr_beat;
  output [5:0] io_out_bits_client_xact_id;
  output [3:0] io_out_bits_manager_xact_id;
  output [3:0] io_out_bits_g_type;
  output [127:0] io_out_bits_data;
  output [1:0] io_out_bits_client_id;
  output [2:0] io_chosen;
  input clk;
  input reset;
  input io_in_7_valid;
  input io_in_7_bits_is_builtin_type;
  input io_in_6_valid;
  input io_in_6_bits_is_builtin_type;
  input io_in_5_valid;
  input io_in_5_bits_is_builtin_type;
  input io_in_4_valid;
  input io_in_4_bits_is_builtin_type;
  input io_in_3_valid;
  input io_in_3_bits_is_builtin_type;
  input io_in_2_valid;
  input io_in_2_bits_is_builtin_type;
  input io_in_1_valid;
  input io_in_1_bits_is_builtin_type;
  input io_in_0_valid;
  input io_in_0_bits_is_builtin_type;
  input io_out_ready;
  output io_in_7_ready;
  output io_in_6_ready;
  output io_in_5_ready;
  output io_in_4_ready;
  output io_in_3_ready;
  output io_in_2_ready;
  output io_in_1_ready;
  output io_in_0_ready;
  output io_out_valid;
  output io_out_bits_is_builtin_type;
  wire [1:0] io_out_bits_addr_beat,io_out_bits_client_id,T11,T12,T35,T36,T58,T71,T64,T68,T65,
  T74,T72,T155,T149,T152,T150,T158,T156;
  wire [5:0] io_out_bits_client_xact_id,T141,T135,T138,T136,T144,T142;
  wire [3:0] io_out_bits_manager_xact_id,io_out_bits_g_type,T99,T93,T96,T94,T102,T100,T127,
  T121,T124,T122,T130,T128;
  wire [127:0] io_out_bits_data,T85,T79,T82,T80,T88,T86;
  wire [2:0] io_chosen,choose,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T31,T32,T33,T34;
  wire io_in_7_ready,io_in_6_ready,io_in_5_ready,io_in_4_ready,io_in_3_ready,
  io_in_2_ready,io_in_1_ready,io_in_0_ready,io_out_valid,io_out_bits_is_builtin_type,N0,N1,
  N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,
  N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,
  N44,N45,N46,N47,N48,N49,T28,N50,T26,N51,T24,N52,T22,N53,T20,N54,T18,N55,T14,N56,
  N57,N58,N59,N60,N61,N62,N63,T15,T17,T19,T21,T23,T25,T27,T29,T45,T44,N64,T43,N65,
  T42,N66,T41,N67,T40,N68,T39,N69,T38,N70,T47,T46,T53,T48,N71,T49,T61,T56,T57,T62,
  N72,N73,N74,T113,T107,T110,T108,T116,T114,T169,T163,T166,T164,T172,T170,T177,
  T178,T203,T179,T180,T183,T181,T182,T186,T184,T185,T189,T187,T188,T192,T190,T191,
  T195,T193,T194,T198,T196,T197,T201,T199,T200,T202,T206,T207,T217,T208,T209,T210,
  T211,T212,T213,T214,T215,T216,T219,T218,T222,T223,T234,T224,T225,T226,T227,T228,
  T229,T230,T231,T232,T233,T236,T235,T237,T240,T241,T253,T242,T243,T244,T245,T246,
  T247,T248,T249,T250,T251,T252,T255,T254,T256,T257,T260,T261,T274,T262,T263,T264,
  T265,T266,T267,T268,T269,T270,T271,T272,T273,T276,T275,T277,T278,T279,T282,T283,
  T297,T284,T285,T286,T287,T288,T289,T290,T291,T292,T293,T294,T295,T296,T299,T298,
  T300,T301,T302,T303,T306,T307,T322,T308,T309,T310,T311,T312,T313,T314,T315,T316,
  T317,T318,T319,T320,T321,T324,T323,T325,T326,T327,T328,T329,T332,T333,T349,T334,
  T335,T336,T337,T338,T339,T340,T341,T342,T343,T344,T345,T346,T347,T348,T351,T350,
  T352,T353,T354,T355,T356,T357,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,
  N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,
  N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,
  N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,N134,N135,N136,N137,
  N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,N150,N151,N152,N153;
  wire [0:0] T13,T37;
  reg [2:0] last_grant,lockIdx;
  reg locked;
  reg [1:0] R59;
  assign T15 = last_grant < { 1'b1, 1'b1, 1'b1 };
  assign T19 = last_grant < { 1'b1, 1'b1, 1'b0 };
  assign T21 = last_grant < { 1'b1, 1'b0, 1'b1 };
  assign T25 = last_grant < { 1'b1, 1'b1 };
  assign T57 = T58 == 1'b0;
  assign T182 = last_grant < { 1'b1, 1'b1, 1'b1 };
  assign T185 = last_grant < { 1'b1, 1'b1, 1'b0 };
  assign T188 = last_grant < { 1'b1, 1'b0, 1'b1 };
  assign T194 = last_grant < { 1'b1, 1'b1 };
  assign T202 = last_grant < 1'b0;
  assign T203 = last_grant < 1'b0;
  assign T254 = last_grant < { 1'b1, 1'b1 };
  assign T298 = last_grant < { 1'b1, 1'b0, 1'b1 };
  assign T323 = last_grant < { 1'b1, 1'b1, 1'b0 };
  assign T350 = last_grant < { 1'b1, 1'b1, 1'b1 };

  always @(posedge clk) begin
    if(N77) begin
      last_grant[2] <= N80;
    end 
  end


  always @(posedge clk) begin
    if(N77) begin
      last_grant[1] <= N79;
    end 
  end


  always @(posedge clk) begin
    if(N77) begin
      last_grant[0] <= N78;
    end 
  end


  always @(posedge clk) begin
    if(N83) begin
      lockIdx[2] <= N86;
    end 
  end


  always @(posedge clk) begin
    if(N83) begin
      lockIdx[1] <= N85;
    end 
  end


  always @(posedge clk) begin
    if(N83) begin
      lockIdx[0] <= N84;
    end 
  end


  always @(posedge clk) begin
    if(N90) begin
      locked <= N91;
    end 
  end


  always @(posedge clk) begin
    if(N94) begin
      R59[1] <= N96;
    end 
  end


  always @(posedge clk) begin
    if(N94) begin
      R59[0] <= N95;
    end 
  end

  assign N105 = lockIdx[1] & lockIdx[2];
  assign N106 = lockIdx[0] & N105;
  assign N107 = lockIdx[1] | lockIdx[2];
  assign N108 = lockIdx[0] | N107;
  assign N109 = ~N108;
  assign N110 = ~lockIdx[0];
  assign N111 = lockIdx[1] | lockIdx[2];
  assign N112 = N110 | N111;
  assign N113 = ~N112;
  assign N114 = ~io_out_bits_g_type[2];
  assign N115 = ~io_out_bits_g_type[0];
  assign N116 = N114 | io_out_bits_g_type[3];
  assign N117 = io_out_bits_g_type[1] | N116;
  assign N118 = N115 | N117;
  assign N119 = ~N118;
  assign N120 = ~lockIdx[1];
  assign N121 = N120 | lockIdx[2];
  assign N122 = lockIdx[0] | N121;
  assign N123 = ~N122;
  assign N124 = io_out_bits_g_type[2] | io_out_bits_g_type[3];
  assign N125 = io_out_bits_g_type[1] | N124;
  assign N126 = io_out_bits_g_type[0] | N125;
  assign N127 = ~N126;
  assign N128 = io_out_bits_g_type[2] | io_out_bits_g_type[3];
  assign N129 = io_out_bits_g_type[1] | N128;
  assign N130 = N115 | N129;
  assign N131 = ~N130;
  assign N132 = N120 | lockIdx[2];
  assign N133 = N110 | N132;
  assign N134 = ~N133;
  assign N135 = ~lockIdx[2];
  assign N136 = lockIdx[1] | N135;
  assign N137 = lockIdx[0] | N136;
  assign N138 = ~N137;
  assign N139 = lockIdx[1] | N135;
  assign N140 = N110 | N139;
  assign N141 = ~N140;
  assign N142 = N120 | N135;
  assign N143 = lockIdx[0] | N142;
  assign N144 = ~N143;
  assign T58 = R59 + 1'b1;
  assign io_chosen = (N0)? lockIdx : 
                     (N1)? choose : 1'b0;
  assign N0 = locked;
  assign N1 = N49;
  assign choose = (N2)? { 1'b0, 1'b0, 1'b1 } : 
                  (N3)? T1 : 1'b0;
  assign N2 = T28;
  assign N3 = N50;
  assign T1 = (N4)? { 1'b0, 1'b1, 1'b0 } : 
              (N5)? T2 : 1'b0;
  assign N4 = T26;
  assign N5 = N51;
  assign T2 = (N6)? { 1'b0, 1'b1, 1'b1 } : 
              (N7)? T3 : 1'b0;
  assign N6 = T24;
  assign N7 = N52;
  assign T3 = (N8)? { 1'b1, 1'b0, 1'b0 } : 
              (N9)? T4 : 1'b0;
  assign N8 = T22;
  assign N9 = N53;
  assign T4 = (N10)? { 1'b1, 1'b0, 1'b1 } : 
              (N11)? T5 : 1'b0;
  assign N10 = T20;
  assign N11 = N54;
  assign T5 = (N12)? { 1'b1, 1'b1, 1'b0 } : 
              (N13)? T6 : 1'b0;
  assign N12 = T18;
  assign N13 = N55;
  assign T6 = (N14)? { 1'b1, 1'b1, 1'b1 } : 
              (N15)? T7 : 1'b0;
  assign N14 = T14;
  assign N15 = N56;
  assign T7 = (N16)? { 1'b0, 1'b0, 1'b0 } : 
              (N17)? T8 : 1'b0;
  assign N16 = io_in_0_valid;
  assign N17 = N57;
  assign T8 = (N18)? { 1'b0, 1'b0, 1'b1 } : 
              (N19)? T9 : 1'b0;
  assign N18 = io_in_1_valid;
  assign N19 = N58;
  assign T9 = (N20)? { 1'b0, 1'b1, 1'b0 } : 
              (N21)? T10 : 1'b0;
  assign N20 = io_in_2_valid;
  assign N21 = N59;
  assign T10[1:0] = (N22)? { 1'b1, 1'b1 } : 
                    (N23)? T11 : 1'b0;
  assign N22 = io_in_3_valid;
  assign N23 = T10[2];
  assign T11 = (N24)? { 1'b0, 1'b0 } : 
               (N25)? T12 : 1'b0;
  assign N24 = io_in_4_valid;
  assign N25 = N61;
  assign T12[0] = (N26)? 1'b1 : 
                  (N27)? T13[0] : 1'b0;
  assign N26 = io_in_5_valid;
  assign N27 = T12[1];
  assign T31 = (N28)? { 1'b0, 1'b0, 1'b0 } : 
               (N29)? T32 : 1'b0;
  assign N28 = T44;
  assign N29 = N64;
  assign T32 = (N30)? { 1'b0, 1'b0, 1'b1 } : 
               (N31)? T33 : 1'b0;
  assign N30 = T43;
  assign N31 = N65;
  assign T33 = (N32)? { 1'b0, 1'b1, 1'b0 } : 
               (N33)? T34 : 1'b0;
  assign N32 = T42;
  assign N33 = N66;
  assign T34[1:0] = (N34)? { 1'b1, 1'b1 } : 
                    (N35)? T35 : 1'b0;
  assign N34 = T41;
  assign N35 = T34[2];
  assign T35 = (N36)? { 1'b0, 1'b0 } : 
               (N37)? T36 : 1'b0;
  assign N36 = T40;
  assign N37 = N68;
  assign T36[0] = (N38)? 1'b1 : 
                  (N39)? T37[0] : 1'b0;
  assign N38 = T39;
  assign N39 = T36[1];
  assign T48 = (N40)? N119 : 
               (N41)? T49 : 1'b0;
  assign N40 = io_out_bits_is_builtin_type;
  assign N41 = N71;
  assign io_out_bits_client_id = (N42)? T71 : 
                                 (N43)? T64 : 1'b0;
  assign N42 = io_chosen[2];
  assign N43 = N72;
  assign T64 = (N44)? T68 : 
               (N45)? T65 : 1'b0;
  assign N44 = io_chosen[1];
  assign N45 = N73;
  assign T65 = (N46)? io_in_1_bits_client_id : 
               (N47)? io_in_0_bits_client_id : 1'b0;
  assign N46 = io_chosen[0];
  assign N47 = N74;
  assign T68 = (N46)? io_in_3_bits_client_id : 
               (N47)? io_in_2_bits_client_id : 1'b0;
  assign T71 = (N44)? T74 : 
               (N45)? T72 : 1'b0;
  assign T72 = (N46)? io_in_5_bits_client_id : 
               (N47)? io_in_4_bits_client_id : 1'b0;
  assign T74 = (N46)? io_in_7_bits_client_id : 
               (N47)? io_in_6_bits_client_id : 1'b0;
  assign io_out_bits_data = (N42)? T85 : 
                            (N43)? T79 : 1'b0;
  assign T79 = (N44)? T82 : 
               (N45)? T80 : 1'b0;
  assign T80 = (N46)? io_in_1_bits_data : 
               (N47)? io_in_0_bits_data : 1'b0;
  assign T82 = (N46)? io_in_3_bits_data : 
               (N47)? io_in_2_bits_data : 1'b0;
  assign T85 = (N44)? T88 : 
               (N45)? T86 : 1'b0;
  assign T86 = (N46)? io_in_5_bits_data : 
               (N47)? io_in_4_bits_data : 1'b0;
  assign T88 = (N46)? io_in_7_bits_data : 
               (N47)? io_in_6_bits_data : 1'b0;
  assign io_out_bits_g_type = (N42)? T99 : 
                              (N43)? T93 : 1'b0;
  assign T93 = (N44)? T96 : 
               (N45)? T94 : 1'b0;
  assign T94 = (N46)? io_in_1_bits_g_type : 
               (N47)? io_in_0_bits_g_type : 1'b0;
  assign T96 = (N46)? io_in_3_bits_g_type : 
               (N47)? io_in_2_bits_g_type : 1'b0;
  assign T99 = (N44)? T102 : 
               (N45)? T100 : 1'b0;
  assign T100 = (N46)? io_in_5_bits_g_type : 
                (N47)? io_in_4_bits_g_type : 1'b0;
  assign T102 = (N46)? io_in_7_bits_g_type : 
                (N47)? io_in_6_bits_g_type : 1'b0;
  assign io_out_bits_is_builtin_type = (N42)? T113 : 
                                       (N43)? T107 : 1'b0;
  assign T107 = (N44)? T110 : 
                (N45)? T108 : 1'b0;
  assign T108 = (N46)? io_in_1_bits_is_builtin_type : 
                (N47)? io_in_0_bits_is_builtin_type : 1'b0;
  assign T110 = (N46)? io_in_3_bits_is_builtin_type : 
                (N47)? io_in_2_bits_is_builtin_type : 1'b0;
  assign T113 = (N44)? T116 : 
                (N45)? T114 : 1'b0;
  assign T114 = (N46)? io_in_5_bits_is_builtin_type : 
                (N47)? io_in_4_bits_is_builtin_type : 1'b0;
  assign T116 = (N46)? io_in_7_bits_is_builtin_type : 
                (N47)? io_in_6_bits_is_builtin_type : 1'b0;
  assign io_out_bits_manager_xact_id = (N42)? T127 : 
                                       (N43)? T121 : 1'b0;
  assign T121 = (N44)? T124 : 
                (N45)? T122 : 1'b0;
  assign T122 = (N46)? io_in_1_bits_manager_xact_id : 
                (N47)? io_in_0_bits_manager_xact_id : 1'b0;
  assign T124 = (N46)? io_in_3_bits_manager_xact_id : 
                (N47)? io_in_2_bits_manager_xact_id : 1'b0;
  assign T127 = (N44)? T130 : 
                (N45)? T128 : 1'b0;
  assign T128 = (N46)? io_in_5_bits_manager_xact_id : 
                (N47)? io_in_4_bits_manager_xact_id : 1'b0;
  assign T130 = (N46)? io_in_7_bits_manager_xact_id : 
                (N47)? io_in_6_bits_manager_xact_id : 1'b0;
  assign io_out_bits_client_xact_id = (N42)? T141 : 
                                      (N43)? T135 : 1'b0;
  assign T135 = (N44)? T138 : 
                (N45)? T136 : 1'b0;
  assign T136 = (N46)? io_in_1_bits_client_xact_id : 
                (N47)? io_in_0_bits_client_xact_id : 1'b0;
  assign T138 = (N46)? io_in_3_bits_client_xact_id : 
                (N47)? io_in_2_bits_client_xact_id : 1'b0;
  assign T141 = (N44)? T144 : 
                (N45)? T142 : 1'b0;
  assign T142 = (N46)? io_in_5_bits_client_xact_id : 
                (N47)? io_in_4_bits_client_xact_id : 1'b0;
  assign T144 = (N46)? io_in_7_bits_client_xact_id : 
                (N47)? io_in_6_bits_client_xact_id : 1'b0;
  assign io_out_bits_addr_beat = (N42)? T155 : 
                                 (N43)? T149 : 1'b0;
  assign T149 = (N44)? T152 : 
                (N45)? T150 : 1'b0;
  assign T150 = (N46)? io_in_1_bits_addr_beat : 
                (N47)? io_in_0_bits_addr_beat : 1'b0;
  assign T152 = (N46)? io_in_3_bits_addr_beat : 
                (N47)? io_in_2_bits_addr_beat : 1'b0;
  assign T155 = (N44)? T158 : 
                (N45)? T156 : 1'b0;
  assign T156 = (N46)? io_in_5_bits_addr_beat : 
                (N47)? io_in_4_bits_addr_beat : 1'b0;
  assign T158 = (N46)? io_in_7_bits_addr_beat : 
                (N47)? io_in_6_bits_addr_beat : 1'b0;
  assign io_out_valid = (N42)? T169 : 
                        (N43)? T163 : 1'b0;
  assign T163 = (N44)? T166 : 
                (N45)? T164 : 1'b0;
  assign T164 = (N46)? io_in_1_valid : 
                (N47)? io_in_0_valid : 1'b0;
  assign T166 = (N46)? io_in_3_valid : 
                (N47)? io_in_2_valid : 1'b0;
  assign T169 = (N44)? T172 : 
                (N45)? T170 : 1'b0;
  assign T170 = (N46)? io_in_5_valid : 
                (N47)? io_in_4_valid : 1'b0;
  assign T172 = (N46)? io_in_7_valid : 
                (N47)? io_in_6_valid : 1'b0;
  assign T177 = (N0)? N109 : 
                (N1)? T178 : 1'b0;
  assign T206 = (N0)? N113 : 
                (N1)? T207 : 1'b0;
  assign T222 = (N0)? N123 : 
                (N1)? T223 : 1'b0;
  assign T240 = (N0)? N134 : 
                (N1)? T241 : 1'b0;
  assign T260 = (N0)? N138 : 
                (N1)? T261 : 1'b0;
  assign T282 = (N0)? N141 : 
                (N1)? T283 : 1'b0;
  assign T306 = (N0)? N144 : 
                (N1)? T307 : 1'b0;
  assign T332 = (N0)? N106 : 
                (N1)? T333 : 1'b0;
  assign N77 = (N48)? 1'b1 : 
               (N98)? 1'b1 : 
               (N76)? 1'b0 : 1'b0;
  assign N48 = reset;
  assign { N80, N79, N78 } = (N48)? { 1'b0, 1'b0, 1'b0 } : 
                             (N98)? io_chosen : 1'b0;
  assign N83 = (N48)? 1'b1 : 
               (N99)? 1'b1 : 
               (N82)? 1'b0 : 1'b0;
  assign { N86, N85, N84 } = (N48)? { 1'b1, 1'b1, 1'b1 } : 
                             (N99)? T31 : 1'b0;
  assign N90 = (N48)? 1'b1 : 
               (N100)? 1'b1 : 
               (N103)? 1'b1 : 
               (N89)? 1'b0 : 1'b0;
  assign N91 = (N48)? 1'b0 : 
               (N100)? 1'b0 : 
               (N103)? T56 : 1'b0;
  assign N94 = (N48)? 1'b1 : 
               (N104)? 1'b1 : 
               (N93)? 1'b0 : 1'b0;
  assign { N96, N95 } = (N48)? { 1'b0, 1'b0 } : 
                        (N104)? T58 : 1'b0;
  assign N49 = ~locked;
  assign N50 = ~T28;
  assign N51 = ~T26;
  assign N52 = ~T24;
  assign N53 = ~T22;
  assign N54 = ~T20;
  assign N55 = ~T18;
  assign N56 = ~T14;
  assign N57 = ~io_in_0_valid;
  assign N58 = ~io_in_1_valid;
  assign N59 = ~io_in_2_valid;
  assign N60 = ~io_in_3_valid;
  assign T10[2] = N60;
  assign N61 = ~io_in_4_valid;
  assign N62 = ~io_in_5_valid;
  assign T12[1] = N62;
  assign N63 = ~io_in_6_valid;
  assign T13[0] = N63;
  assign T14 = io_in_7_valid & T15;
  assign T17 = io_out_ready & io_out_valid;
  assign T18 = io_in_6_valid & T19;
  assign T20 = io_in_5_valid & T21;
  assign T22 = io_in_4_valid & T23;
  assign T23 = ~last_grant[2];
  assign T24 = io_in_3_valid & T25;
  assign T26 = io_in_2_valid & T27;
  assign T27 = ~N145;
  assign N145 = last_grant[2] | last_grant[1];
  assign T28 = io_in_1_valid & T29;
  assign T29 = ~N147;
  assign N147 = N146 | last_grant[0];
  assign N146 = last_grant[2] | last_grant[1];
  assign N64 = ~T44;
  assign N65 = ~T43;
  assign N66 = ~T42;
  assign N67 = ~T41;
  assign T34[2] = N67;
  assign N68 = ~T40;
  assign N69 = ~T39;
  assign T36[1] = N69;
  assign N70 = ~T38;
  assign T37[0] = N70;
  assign T38 = io_in_6_ready & io_in_6_valid;
  assign T39 = io_in_5_ready & io_in_5_valid;
  assign T40 = io_in_4_ready & io_in_4_valid;
  assign T41 = io_in_3_ready & io_in_3_valid;
  assign T42 = io_in_2_ready & io_in_2_valid;
  assign T43 = io_in_1_ready & io_in_1_valid;
  assign T44 = io_in_0_ready & io_in_0_valid;
  assign T45 = T47 & T46;
  assign T46 = ~locked;
  assign T47 = T53 & T48;
  assign N71 = ~io_out_bits_is_builtin_type;
  assign T49 = N127 | N131;
  assign T53 = io_out_valid & io_out_ready;
  assign T56 = ~T57;
  assign T61 = T53 & T62;
  assign T62 = ~T48;
  assign N72 = ~io_chosen[2];
  assign N73 = ~io_chosen[1];
  assign N74 = ~io_chosen[0];
  assign io_in_0_ready = T177 & io_out_ready;
  assign T178 = T203 | T179;
  assign T179 = ~T180;
  assign T180 = T183 | T181;
  assign T181 = io_in_7_valid & T182;
  assign T183 = T186 | T184;
  assign T184 = io_in_6_valid & T185;
  assign T186 = T189 | T187;
  assign T187 = io_in_5_valid & T188;
  assign T189 = T192 | T190;
  assign T190 = io_in_4_valid & T191;
  assign T191 = ~last_grant[2];
  assign T192 = T195 | T193;
  assign T193 = io_in_3_valid & T194;
  assign T195 = T198 | T196;
  assign T196 = io_in_2_valid & T197;
  assign T197 = ~N148;
  assign N148 = last_grant[2] | last_grant[1];
  assign T198 = T201 | T199;
  assign T199 = io_in_1_valid & T200;
  assign T200 = ~N150;
  assign N150 = N149 | last_grant[0];
  assign N149 = last_grant[2] | last_grant[1];
  assign T201 = io_in_0_valid & T202;
  assign io_in_1_ready = T206 & io_out_ready;
  assign T207 = T217 | T208;
  assign T208 = ~T209;
  assign T209 = T210 | io_in_0_valid;
  assign T210 = T211 | T181;
  assign T211 = T212 | T184;
  assign T212 = T213 | T187;
  assign T213 = T214 | T190;
  assign T214 = T215 | T193;
  assign T215 = T216 | T196;
  assign T216 = T201 | T199;
  assign T217 = T219 & T218;
  assign T218 = ~N152;
  assign N152 = N151 | last_grant[0];
  assign N151 = last_grant[2] | last_grant[1];
  assign T219 = ~T201;
  assign io_in_2_ready = T222 & io_out_ready;
  assign T223 = T234 | T224;
  assign T224 = ~T225;
  assign T225 = T226 | io_in_1_valid;
  assign T226 = T227 | io_in_0_valid;
  assign T227 = T228 | T181;
  assign T228 = T229 | T184;
  assign T229 = T230 | T187;
  assign T230 = T231 | T190;
  assign T231 = T232 | T193;
  assign T232 = T233 | T196;
  assign T233 = T201 | T199;
  assign T234 = T236 & T235;
  assign T235 = ~N153;
  assign N153 = last_grant[2] | last_grant[1];
  assign T236 = ~T237;
  assign T237 = T201 | T199;
  assign io_in_3_ready = T240 & io_out_ready;
  assign T241 = T253 | T242;
  assign T242 = ~T243;
  assign T243 = T244 | io_in_2_valid;
  assign T244 = T245 | io_in_1_valid;
  assign T245 = T246 | io_in_0_valid;
  assign T246 = T247 | T181;
  assign T247 = T248 | T184;
  assign T248 = T249 | T187;
  assign T249 = T250 | T190;
  assign T250 = T251 | T193;
  assign T251 = T252 | T196;
  assign T252 = T201 | T199;
  assign T253 = T255 & T254;
  assign T255 = ~T256;
  assign T256 = T257 | T196;
  assign T257 = T201 | T199;
  assign io_in_4_ready = T260 & io_out_ready;
  assign T261 = T274 | T262;
  assign T262 = ~T263;
  assign T263 = T264 | io_in_3_valid;
  assign T264 = T265 | io_in_2_valid;
  assign T265 = T266 | io_in_1_valid;
  assign T266 = T267 | io_in_0_valid;
  assign T267 = T268 | T181;
  assign T268 = T269 | T184;
  assign T269 = T270 | T187;
  assign T270 = T271 | T190;
  assign T271 = T272 | T193;
  assign T272 = T273 | T196;
  assign T273 = T201 | T199;
  assign T274 = T276 & T275;
  assign T275 = ~last_grant[2];
  assign T276 = ~T277;
  assign T277 = T278 | T193;
  assign T278 = T279 | T196;
  assign T279 = T201 | T199;
  assign io_in_5_ready = T282 & io_out_ready;
  assign T283 = T297 | T284;
  assign T284 = ~T285;
  assign T285 = T286 | io_in_4_valid;
  assign T286 = T287 | io_in_3_valid;
  assign T287 = T288 | io_in_2_valid;
  assign T288 = T289 | io_in_1_valid;
  assign T289 = T290 | io_in_0_valid;
  assign T290 = T291 | T181;
  assign T291 = T292 | T184;
  assign T292 = T293 | T187;
  assign T293 = T294 | T190;
  assign T294 = T295 | T193;
  assign T295 = T296 | T196;
  assign T296 = T201 | T199;
  assign T297 = T299 & T298;
  assign T299 = ~T300;
  assign T300 = T301 | T190;
  assign T301 = T302 | T193;
  assign T302 = T303 | T196;
  assign T303 = T201 | T199;
  assign io_in_6_ready = T306 & io_out_ready;
  assign T307 = T322 | T308;
  assign T308 = ~T309;
  assign T309 = T310 | io_in_5_valid;
  assign T310 = T311 | io_in_4_valid;
  assign T311 = T312 | io_in_3_valid;
  assign T312 = T313 | io_in_2_valid;
  assign T313 = T314 | io_in_1_valid;
  assign T314 = T315 | io_in_0_valid;
  assign T315 = T316 | T181;
  assign T316 = T317 | T184;
  assign T317 = T318 | T187;
  assign T318 = T319 | T190;
  assign T319 = T320 | T193;
  assign T320 = T321 | T196;
  assign T321 = T201 | T199;
  assign T322 = T324 & T323;
  assign T324 = ~T325;
  assign T325 = T326 | T187;
  assign T326 = T327 | T190;
  assign T327 = T328 | T193;
  assign T328 = T329 | T196;
  assign T329 = T201 | T199;
  assign io_in_7_ready = T332 & io_out_ready;
  assign T333 = T349 | T334;
  assign T334 = ~T335;
  assign T335 = T336 | io_in_6_valid;
  assign T336 = T337 | io_in_5_valid;
  assign T337 = T338 | io_in_4_valid;
  assign T338 = T339 | io_in_3_valid;
  assign T339 = T340 | io_in_2_valid;
  assign T340 = T341 | io_in_1_valid;
  assign T341 = T342 | io_in_0_valid;
  assign T342 = T343 | T181;
  assign T343 = T344 | T184;
  assign T344 = T345 | T187;
  assign T345 = T346 | T190;
  assign T346 = T347 | T193;
  assign T347 = T348 | T196;
  assign T348 = T201 | T199;
  assign T349 = T351 & T350;
  assign T351 = ~T352;
  assign T352 = T353 | T184;
  assign T353 = T354 | T187;
  assign T354 = T355 | T190;
  assign T355 = T356 | T193;
  assign T356 = T357 | T196;
  assign T357 = T201 | T199;
  assign N75 = T17 | reset;
  assign N76 = ~N75;
  assign N81 = T45 | reset;
  assign N82 = ~N81;
  assign N87 = T61 | reset;
  assign N88 = T47 | N87;
  assign N89 = ~N88;
  assign N92 = T47 | reset;
  assign N93 = ~N92;
  assign N97 = ~reset;
  assign N98 = T17 & N97;
  assign N99 = T45 & N97;
  assign N100 = T61 & N97;
  assign N101 = ~T61;
  assign N102 = N97 & N101;
  assign N103 = T47 & N102;
  assign N104 = T47 & N97;

endmodule