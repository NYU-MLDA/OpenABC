module LockingRRArbiter_10
(
  clk,
  reset,
  io_in_7_ready,
  io_in_7_valid,
  io_in_7_bits_addr_block,
  io_in_7_bits_client_xact_id,
  io_in_7_bits_addr_beat,
  io_in_7_bits_is_builtin_type,
  io_in_7_bits_a_type,
  io_in_7_bits_union,
  io_in_7_bits_data,
  io_in_6_ready,
  io_in_6_valid,
  io_in_6_bits_addr_block,
  io_in_6_bits_client_xact_id,
  io_in_6_bits_addr_beat,
  io_in_6_bits_is_builtin_type,
  io_in_6_bits_a_type,
  io_in_6_bits_union,
  io_in_6_bits_data,
  io_in_5_ready,
  io_in_5_valid,
  io_in_5_bits_addr_block,
  io_in_5_bits_client_xact_id,
  io_in_5_bits_addr_beat,
  io_in_5_bits_is_builtin_type,
  io_in_5_bits_a_type,
  io_in_5_bits_union,
  io_in_5_bits_data,
  io_in_4_ready,
  io_in_4_valid,
  io_in_4_bits_addr_block,
  io_in_4_bits_client_xact_id,
  io_in_4_bits_addr_beat,
  io_in_4_bits_is_builtin_type,
  io_in_4_bits_a_type,
  io_in_4_bits_union,
  io_in_4_bits_data,
  io_in_3_ready,
  io_in_3_valid,
  io_in_3_bits_addr_block,
  io_in_3_bits_client_xact_id,
  io_in_3_bits_addr_beat,
  io_in_3_bits_is_builtin_type,
  io_in_3_bits_a_type,
  io_in_3_bits_union,
  io_in_3_bits_data,
  io_in_2_ready,
  io_in_2_valid,
  io_in_2_bits_addr_block,
  io_in_2_bits_client_xact_id,
  io_in_2_bits_addr_beat,
  io_in_2_bits_is_builtin_type,
  io_in_2_bits_a_type,
  io_in_2_bits_union,
  io_in_2_bits_data,
  io_in_1_ready,
  io_in_1_valid,
  io_in_1_bits_addr_block,
  io_in_1_bits_client_xact_id,
  io_in_1_bits_addr_beat,
  io_in_1_bits_is_builtin_type,
  io_in_1_bits_a_type,
  io_in_1_bits_union,
  io_in_1_bits_data,
  io_in_0_ready,
  io_in_0_valid,
  io_in_0_bits_addr_block,
  io_in_0_bits_client_xact_id,
  io_in_0_bits_addr_beat,
  io_in_0_bits_is_builtin_type,
  io_in_0_bits_a_type,
  io_in_0_bits_union,
  io_in_0_bits_data,
  io_out_ready,
  io_out_valid,
  io_out_bits_addr_block,
  io_out_bits_client_xact_id,
  io_out_bits_addr_beat,
  io_out_bits_is_builtin_type,
  io_out_bits_a_type,
  io_out_bits_union,
  io_out_bits_data,
  io_chosen
);

  input [25:0] io_in_7_bits_addr_block;
  input [3:0] io_in_7_bits_client_xact_id;
  input [1:0] io_in_7_bits_addr_beat;
  input [2:0] io_in_7_bits_a_type;
  input [16:0] io_in_7_bits_union;
  input [3:0] io_in_7_bits_data;
  input [25:0] io_in_6_bits_addr_block;
  input [3:0] io_in_6_bits_client_xact_id;
  input [1:0] io_in_6_bits_addr_beat;
  input [2:0] io_in_6_bits_a_type;
  input [16:0] io_in_6_bits_union;
  input [3:0] io_in_6_bits_data;
  input [25:0] io_in_5_bits_addr_block;
  input [3:0] io_in_5_bits_client_xact_id;
  input [1:0] io_in_5_bits_addr_beat;
  input [2:0] io_in_5_bits_a_type;
  input [16:0] io_in_5_bits_union;
  input [3:0] io_in_5_bits_data;
  input [25:0] io_in_4_bits_addr_block;
  input [3:0] io_in_4_bits_client_xact_id;
  input [1:0] io_in_4_bits_addr_beat;
  input [2:0] io_in_4_bits_a_type;
  input [16:0] io_in_4_bits_union;
  input [3:0] io_in_4_bits_data;
  input [25:0] io_in_3_bits_addr_block;
  input [3:0] io_in_3_bits_client_xact_id;
  input [1:0] io_in_3_bits_addr_beat;
  input [2:0] io_in_3_bits_a_type;
  input [16:0] io_in_3_bits_union;
  input [3:0] io_in_3_bits_data;
  input [25:0] io_in_2_bits_addr_block;
  input [3:0] io_in_2_bits_client_xact_id;
  input [1:0] io_in_2_bits_addr_beat;
  input [2:0] io_in_2_bits_a_type;
  input [16:0] io_in_2_bits_union;
  input [3:0] io_in_2_bits_data;
  input [25:0] io_in_1_bits_addr_block;
  input [3:0] io_in_1_bits_client_xact_id;
  input [1:0] io_in_1_bits_addr_beat;
  input [2:0] io_in_1_bits_a_type;
  input [16:0] io_in_1_bits_union;
  input [3:0] io_in_1_bits_data;
  input [25:0] io_in_0_bits_addr_block;
  input [3:0] io_in_0_bits_client_xact_id;
  input [1:0] io_in_0_bits_addr_beat;
  input [2:0] io_in_0_bits_a_type;
  input [16:0] io_in_0_bits_union;
  input [3:0] io_in_0_bits_data;
  output [25:0] io_out_bits_addr_block;
  output [3:0] io_out_bits_client_xact_id;
  output [1:0] io_out_bits_addr_beat;
  output [2:0] io_out_bits_a_type;
  output [16:0] io_out_bits_union;
  output [3:0] io_out_bits_data;
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
  wire [25:0] io_out_bits_addr_block,T152,T146,T149,T147,T155,T153;
  wire [3:0] io_out_bits_client_xact_id,io_out_bits_data,T68,T61,T65,T62,T71,T69,T138,T132,
  T135,T133,T141,T139;
  wire [1:0] io_out_bits_addr_beat,T11,T12,T35,T36,T55,T124,T118,T121,T119,T127,T125;
  wire [2:0] io_out_bits_a_type,io_chosen,choose,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T31,T32,T33,
  T34,T96,T90,T93,T91,T99,T97;
  wire [16:0] io_out_bits_union,T82,T76,T79,T77,T85,T83;
  wire io_in_7_ready,io_in_6_ready,io_in_5_ready,io_in_4_ready,io_in_3_ready,
  io_in_2_ready,io_in_1_ready,io_in_0_ready,io_out_valid,io_out_bits_is_builtin_type,N0,N1,
  N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,
  N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,
  N44,N45,N46,N47,T28,N48,T26,N49,T24,N50,T22,N51,T20,N52,T18,N53,T14,N54,N55,N56,
  N57,N58,N59,N60,N61,T15,T17,T19,T21,T23,T25,T27,T29,T45,T44,N62,T43,N63,T42,N64,
  T41,N65,T40,N66,T39,N67,T38,N68,T47,T46,T50,T48,T58,T53,T54,T59,N69,N70,N71,T110,
  T104,T107,T105,T113,T111,T166,T160,T163,T161,T169,T167,T174,T175,T200,T176,T177,
  T180,T178,T179,T183,T181,T182,T186,T184,T185,T189,T187,T188,T192,T190,T191,T195,
  T193,T194,T198,T196,T197,T199,T203,T204,T214,T205,T206,T207,T208,T209,T210,T211,
  T212,T213,T216,T215,T219,T220,T231,T221,T222,T223,T224,T225,T226,T227,T228,T229,
  T230,T233,T232,T234,T237,T238,T250,T239,T240,T241,T242,T243,T244,T245,T246,T247,
  T248,T249,T252,T251,T253,T254,T257,T258,T271,T259,T260,T261,T262,T263,T264,T265,
  T266,T267,T268,T269,T270,T273,T272,T274,T275,T276,T279,T280,T294,T281,T282,T283,
  T284,T285,T286,T287,T288,T289,T290,T291,T292,T293,T296,T295,T297,T298,T299,T300,
  T303,T304,T319,T305,T306,T307,T308,T309,T310,T311,T312,T313,T314,T315,T316,T317,
  T318,T321,T320,T322,T323,T324,T325,T326,T329,T330,T346,T331,T332,T333,T334,T335,
  T336,T337,T338,T339,T340,T341,T342,T343,T344,T345,T348,T347,T349,T350,T351,T352,
  T353,T354,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,
  N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,
  N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,
  N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,N134,N135,N136,N137,N138,
  N139,N140,N141;
  wire [0:0] T13,T37;
  reg [2:0] last_grant,lockIdx;
  reg locked;
  reg [1:0] R56;
  assign T15 = last_grant < { 1'b1, 1'b1, 1'b1 };
  assign T19 = last_grant < { 1'b1, 1'b1, 1'b0 };
  assign T21 = last_grant < { 1'b1, 1'b0, 1'b1 };
  assign T25 = last_grant < { 1'b1, 1'b1 };
  assign T54 = T55 == 1'b0;
  assign T179 = last_grant < { 1'b1, 1'b1, 1'b1 };
  assign T182 = last_grant < { 1'b1, 1'b1, 1'b0 };
  assign T185 = last_grant < { 1'b1, 1'b0, 1'b1 };
  assign T191 = last_grant < { 1'b1, 1'b1 };
  assign T199 = last_grant < 1'b0;
  assign T200 = last_grant < 1'b0;
  assign T251 = last_grant < { 1'b1, 1'b1 };
  assign T295 = last_grant < { 1'b1, 1'b0, 1'b1 };
  assign T320 = last_grant < { 1'b1, 1'b1, 1'b0 };
  assign T347 = last_grant < { 1'b1, 1'b1, 1'b1 };

  always @(posedge clk) begin
    if(N74) begin
      last_grant[2] <= N77;
    end 
  end


  always @(posedge clk) begin
    if(N74) begin
      last_grant[1] <= N76;
    end 
  end


  always @(posedge clk) begin
    if(N74) begin
      last_grant[0] <= N75;
    end 
  end


  always @(posedge clk) begin
    if(N80) begin
      lockIdx[2] <= N83;
    end 
  end


  always @(posedge clk) begin
    if(N80) begin
      lockIdx[1] <= N82;
    end 
  end


  always @(posedge clk) begin
    if(N80) begin
      lockIdx[0] <= N81;
    end 
  end


  always @(posedge clk) begin
    if(N87) begin
      locked <= N88;
    end 
  end


  always @(posedge clk) begin
    if(N91) begin
      R56[1] <= N93;
    end 
  end


  always @(posedge clk) begin
    if(N91) begin
      R56[0] <= N92;
    end 
  end

  assign N102 = lockIdx[1] & lockIdx[2];
  assign N103 = lockIdx[0] & N102;
  assign N104 = lockIdx[1] | lockIdx[2];
  assign N105 = lockIdx[0] | N104;
  assign N106 = ~N105;
  assign N107 = ~lockIdx[0];
  assign N108 = lockIdx[1] | lockIdx[2];
  assign N109 = N107 | N108;
  assign N110 = ~N109;
  assign N111 = ~io_out_bits_a_type[1];
  assign N112 = ~io_out_bits_a_type[0];
  assign N113 = N111 | io_out_bits_a_type[2];
  assign N114 = N112 | N113;
  assign N115 = ~N114;
  assign N116 = ~lockIdx[1];
  assign N117 = N116 | lockIdx[2];
  assign N118 = lockIdx[0] | N117;
  assign N119 = ~N118;
  assign N120 = N116 | lockIdx[2];
  assign N121 = N107 | N120;
  assign N122 = ~N121;
  assign N123 = ~lockIdx[2];
  assign N124 = lockIdx[1] | N123;
  assign N125 = lockIdx[0] | N124;
  assign N126 = ~N125;
  assign N127 = lockIdx[1] | N123;
  assign N128 = N107 | N127;
  assign N129 = ~N128;
  assign N130 = N116 | N123;
  assign N131 = lockIdx[0] | N130;
  assign N132 = ~N131;
  assign T55 = R56 + 1'b1;
  assign io_chosen = (N0)? lockIdx : 
                     (N1)? choose : 1'b0;
  assign N0 = locked;
  assign N1 = N47;
  assign choose = (N2)? { 1'b0, 1'b0, 1'b1 } : 
                  (N3)? T1 : 1'b0;
  assign N2 = T28;
  assign N3 = N48;
  assign T1 = (N4)? { 1'b0, 1'b1, 1'b0 } : 
              (N5)? T2 : 1'b0;
  assign N4 = T26;
  assign N5 = N49;
  assign T2 = (N6)? { 1'b0, 1'b1, 1'b1 } : 
              (N7)? T3 : 1'b0;
  assign N6 = T24;
  assign N7 = N50;
  assign T3 = (N8)? { 1'b1, 1'b0, 1'b0 } : 
              (N9)? T4 : 1'b0;
  assign N8 = T22;
  assign N9 = N51;
  assign T4 = (N10)? { 1'b1, 1'b0, 1'b1 } : 
              (N11)? T5 : 1'b0;
  assign N10 = T20;
  assign N11 = N52;
  assign T5 = (N12)? { 1'b1, 1'b1, 1'b0 } : 
              (N13)? T6 : 1'b0;
  assign N12 = T18;
  assign N13 = N53;
  assign T6 = (N14)? { 1'b1, 1'b1, 1'b1 } : 
              (N15)? T7 : 1'b0;
  assign N14 = T14;
  assign N15 = N54;
  assign T7 = (N16)? { 1'b0, 1'b0, 1'b0 } : 
              (N17)? T8 : 1'b0;
  assign N16 = io_in_0_valid;
  assign N17 = N55;
  assign T8 = (N18)? { 1'b0, 1'b0, 1'b1 } : 
              (N19)? T9 : 1'b0;
  assign N18 = io_in_1_valid;
  assign N19 = N56;
  assign T9 = (N20)? { 1'b0, 1'b1, 1'b0 } : 
              (N21)? T10 : 1'b0;
  assign N20 = io_in_2_valid;
  assign N21 = N57;
  assign T10[1:0] = (N22)? { 1'b1, 1'b1 } : 
                    (N23)? T11 : 1'b0;
  assign N22 = io_in_3_valid;
  assign N23 = T10[2];
  assign T11 = (N24)? { 1'b0, 1'b0 } : 
               (N25)? T12 : 1'b0;
  assign N24 = io_in_4_valid;
  assign N25 = N59;
  assign T12[0] = (N26)? 1'b1 : 
                  (N27)? T13[0] : 1'b0;
  assign N26 = io_in_5_valid;
  assign N27 = T12[1];
  assign T31 = (N28)? { 1'b0, 1'b0, 1'b0 } : 
               (N29)? T32 : 1'b0;
  assign N28 = T44;
  assign N29 = N62;
  assign T32 = (N30)? { 1'b0, 1'b0, 1'b1 } : 
               (N31)? T33 : 1'b0;
  assign N30 = T43;
  assign N31 = N63;
  assign T33 = (N32)? { 1'b0, 1'b1, 1'b0 } : 
               (N33)? T34 : 1'b0;
  assign N32 = T42;
  assign N33 = N64;
  assign T34[1:0] = (N34)? { 1'b1, 1'b1 } : 
                    (N35)? T35 : 1'b0;
  assign N34 = T41;
  assign N35 = T34[2];
  assign T35 = (N36)? { 1'b0, 1'b0 } : 
               (N37)? T36 : 1'b0;
  assign N36 = T40;
  assign N37 = N66;
  assign T36[0] = (N38)? 1'b1 : 
                  (N39)? T37[0] : 1'b0;
  assign N38 = T39;
  assign N39 = T36[1];
  assign io_out_bits_data = (N40)? T68 : 
                            (N41)? T61 : 1'b0;
  assign N40 = io_chosen[2];
  assign N41 = N69;
  assign T61 = (N42)? T65 : 
               (N43)? T62 : 1'b0;
  assign N42 = io_chosen[1];
  assign N43 = N70;
  assign T62 = (N44)? io_in_1_bits_data : 
               (N45)? io_in_0_bits_data : 1'b0;
  assign N44 = io_chosen[0];
  assign N45 = N71;
  assign T65 = (N44)? io_in_3_bits_data : 
               (N45)? io_in_2_bits_data : 1'b0;
  assign T68 = (N42)? T71 : 
               (N43)? T69 : 1'b0;
  assign T69 = (N44)? io_in_5_bits_data : 
               (N45)? io_in_4_bits_data : 1'b0;
  assign T71 = (N44)? io_in_7_bits_data : 
               (N45)? io_in_6_bits_data : 1'b0;
  assign io_out_bits_union = (N40)? T82 : 
                             (N41)? T76 : 1'b0;
  assign T76 = (N42)? T79 : 
               (N43)? T77 : 1'b0;
  assign T77 = (N44)? io_in_1_bits_union : 
               (N45)? io_in_0_bits_union : 1'b0;
  assign T79 = (N44)? io_in_3_bits_union : 
               (N45)? io_in_2_bits_union : 1'b0;
  assign T82 = (N42)? T85 : 
               (N43)? T83 : 1'b0;
  assign T83 = (N44)? io_in_5_bits_union : 
               (N45)? io_in_4_bits_union : 1'b0;
  assign T85 = (N44)? io_in_7_bits_union : 
               (N45)? io_in_6_bits_union : 1'b0;
  assign io_out_bits_a_type = (N40)? T96 : 
                              (N41)? T90 : 1'b0;
  assign T90 = (N42)? T93 : 
               (N43)? T91 : 1'b0;
  assign T91 = (N44)? io_in_1_bits_a_type : 
               (N45)? io_in_0_bits_a_type : 1'b0;
  assign T93 = (N44)? io_in_3_bits_a_type : 
               (N45)? io_in_2_bits_a_type : 1'b0;
  assign T96 = (N42)? T99 : 
               (N43)? T97 : 1'b0;
  assign T97 = (N44)? io_in_5_bits_a_type : 
               (N45)? io_in_4_bits_a_type : 1'b0;
  assign T99 = (N44)? io_in_7_bits_a_type : 
               (N45)? io_in_6_bits_a_type : 1'b0;
  assign io_out_bits_is_builtin_type = (N40)? T110 : 
                                       (N41)? T104 : 1'b0;
  assign T104 = (N42)? T107 : 
                (N43)? T105 : 1'b0;
  assign T105 = (N44)? io_in_1_bits_is_builtin_type : 
                (N45)? io_in_0_bits_is_builtin_type : 1'b0;
  assign T107 = (N44)? io_in_3_bits_is_builtin_type : 
                (N45)? io_in_2_bits_is_builtin_type : 1'b0;
  assign T110 = (N42)? T113 : 
                (N43)? T111 : 1'b0;
  assign T111 = (N44)? io_in_5_bits_is_builtin_type : 
                (N45)? io_in_4_bits_is_builtin_type : 1'b0;
  assign T113 = (N44)? io_in_7_bits_is_builtin_type : 
                (N45)? io_in_6_bits_is_builtin_type : 1'b0;
  assign io_out_bits_addr_beat = (N40)? T124 : 
                                 (N41)? T118 : 1'b0;
  assign T118 = (N42)? T121 : 
                (N43)? T119 : 1'b0;
  assign T119 = (N44)? io_in_1_bits_addr_beat : 
                (N45)? io_in_0_bits_addr_beat : 1'b0;
  assign T121 = (N44)? io_in_3_bits_addr_beat : 
                (N45)? io_in_2_bits_addr_beat : 1'b0;
  assign T124 = (N42)? T127 : 
                (N43)? T125 : 1'b0;
  assign T125 = (N44)? io_in_5_bits_addr_beat : 
                (N45)? io_in_4_bits_addr_beat : 1'b0;
  assign T127 = (N44)? io_in_7_bits_addr_beat : 
                (N45)? io_in_6_bits_addr_beat : 1'b0;
  assign io_out_bits_client_xact_id = (N40)? T138 : 
                                      (N41)? T132 : 1'b0;
  assign T132 = (N42)? T135 : 
                (N43)? T133 : 1'b0;
  assign T133 = (N44)? io_in_1_bits_client_xact_id : 
                (N45)? io_in_0_bits_client_xact_id : 1'b0;
  assign T135 = (N44)? io_in_3_bits_client_xact_id : 
                (N45)? io_in_2_bits_client_xact_id : 1'b0;
  assign T138 = (N42)? T141 : 
                (N43)? T139 : 1'b0;
  assign T139 = (N44)? io_in_5_bits_client_xact_id : 
                (N45)? io_in_4_bits_client_xact_id : 1'b0;
  assign T141 = (N44)? io_in_7_bits_client_xact_id : 
                (N45)? io_in_6_bits_client_xact_id : 1'b0;
  assign io_out_bits_addr_block = (N40)? T152 : 
                                  (N41)? T146 : 1'b0;
  assign T146 = (N42)? T149 : 
                (N43)? T147 : 1'b0;
  assign T147 = (N44)? io_in_1_bits_addr_block : 
                (N45)? io_in_0_bits_addr_block : 1'b0;
  assign T149 = (N44)? io_in_3_bits_addr_block : 
                (N45)? io_in_2_bits_addr_block : 1'b0;
  assign T152 = (N42)? T155 : 
                (N43)? T153 : 1'b0;
  assign T153 = (N44)? io_in_5_bits_addr_block : 
                (N45)? io_in_4_bits_addr_block : 1'b0;
  assign T155 = (N44)? io_in_7_bits_addr_block : 
                (N45)? io_in_6_bits_addr_block : 1'b0;
  assign io_out_valid = (N40)? T166 : 
                        (N41)? T160 : 1'b0;
  assign T160 = (N42)? T163 : 
                (N43)? T161 : 1'b0;
  assign T161 = (N44)? io_in_1_valid : 
                (N45)? io_in_0_valid : 1'b0;
  assign T163 = (N44)? io_in_3_valid : 
                (N45)? io_in_2_valid : 1'b0;
  assign T166 = (N42)? T169 : 
                (N43)? T167 : 1'b0;
  assign T167 = (N44)? io_in_5_valid : 
                (N45)? io_in_4_valid : 1'b0;
  assign T169 = (N44)? io_in_7_valid : 
                (N45)? io_in_6_valid : 1'b0;
  assign T174 = (N0)? N106 : 
                (N1)? T175 : 1'b0;
  assign T203 = (N0)? N110 : 
                (N1)? T204 : 1'b0;
  assign T219 = (N0)? N119 : 
                (N1)? T220 : 1'b0;
  assign T237 = (N0)? N122 : 
                (N1)? T238 : 1'b0;
  assign T257 = (N0)? N126 : 
                (N1)? T258 : 1'b0;
  assign T279 = (N0)? N129 : 
                (N1)? T280 : 1'b0;
  assign T303 = (N0)? N132 : 
                (N1)? T304 : 1'b0;
  assign T329 = (N0)? N103 : 
                (N1)? T330 : 1'b0;
  assign N74 = (N46)? 1'b1 : 
               (N95)? 1'b1 : 
               (N73)? 1'b0 : 1'b0;
  assign N46 = reset;
  assign { N77, N76, N75 } = (N46)? { 1'b0, 1'b0, 1'b0 } : 
                             (N95)? io_chosen : 1'b0;
  assign N80 = (N46)? 1'b1 : 
               (N96)? 1'b1 : 
               (N79)? 1'b0 : 1'b0;
  assign { N83, N82, N81 } = (N46)? { 1'b1, 1'b1, 1'b1 } : 
                             (N96)? T31 : 1'b0;
  assign N87 = (N46)? 1'b1 : 
               (N97)? 1'b1 : 
               (N100)? 1'b1 : 
               (N86)? 1'b0 : 1'b0;
  assign N88 = (N46)? 1'b0 : 
               (N97)? 1'b0 : 
               (N100)? T53 : 1'b0;
  assign N91 = (N46)? 1'b1 : 
               (N101)? 1'b1 : 
               (N90)? 1'b0 : 1'b0;
  assign { N93, N92 } = (N46)? { 1'b0, 1'b0 } : 
                        (N101)? T55 : 1'b0;
  assign N47 = ~locked;
  assign N48 = ~T28;
  assign N49 = ~T26;
  assign N50 = ~T24;
  assign N51 = ~T22;
  assign N52 = ~T20;
  assign N53 = ~T18;
  assign N54 = ~T14;
  assign N55 = ~io_in_0_valid;
  assign N56 = ~io_in_1_valid;
  assign N57 = ~io_in_2_valid;
  assign N58 = ~io_in_3_valid;
  assign T10[2] = N58;
  assign N59 = ~io_in_4_valid;
  assign N60 = ~io_in_5_valid;
  assign T12[1] = N60;
  assign N61 = ~io_in_6_valid;
  assign T13[0] = N61;
  assign T14 = io_in_7_valid & T15;
  assign T17 = io_out_ready & io_out_valid;
  assign T18 = io_in_6_valid & T19;
  assign T20 = io_in_5_valid & T21;
  assign T22 = io_in_4_valid & T23;
  assign T23 = ~last_grant[2];
  assign T24 = io_in_3_valid & T25;
  assign T26 = io_in_2_valid & T27;
  assign T27 = ~N133;
  assign N133 = last_grant[2] | last_grant[1];
  assign T28 = io_in_1_valid & T29;
  assign T29 = ~N135;
  assign N135 = N134 | last_grant[0];
  assign N134 = last_grant[2] | last_grant[1];
  assign N62 = ~T44;
  assign N63 = ~T43;
  assign N64 = ~T42;
  assign N65 = ~T41;
  assign T34[2] = N65;
  assign N66 = ~T40;
  assign N67 = ~T39;
  assign T36[1] = N67;
  assign N68 = ~T38;
  assign T37[0] = N68;
  assign T38 = io_in_6_ready & io_in_6_valid;
  assign T39 = io_in_5_ready & io_in_5_valid;
  assign T40 = io_in_4_ready & io_in_4_valid;
  assign T41 = io_in_3_ready & io_in_3_valid;
  assign T42 = io_in_2_ready & io_in_2_valid;
  assign T43 = io_in_1_ready & io_in_1_valid;
  assign T44 = io_in_0_ready & io_in_0_valid;
  assign T45 = T47 & T46;
  assign T46 = ~locked;
  assign T47 = T50 & T48;
  assign T48 = io_out_bits_is_builtin_type & N115;
  assign T50 = io_out_valid & io_out_ready;
  assign T53 = ~T54;
  assign T58 = T50 & T59;
  assign T59 = ~T48;
  assign N69 = ~io_chosen[2];
  assign N70 = ~io_chosen[1];
  assign N71 = ~io_chosen[0];
  assign io_in_0_ready = T174 & io_out_ready;
  assign T175 = T200 | T176;
  assign T176 = ~T177;
  assign T177 = T180 | T178;
  assign T178 = io_in_7_valid & T179;
  assign T180 = T183 | T181;
  assign T181 = io_in_6_valid & T182;
  assign T183 = T186 | T184;
  assign T184 = io_in_5_valid & T185;
  assign T186 = T189 | T187;
  assign T187 = io_in_4_valid & T188;
  assign T188 = ~last_grant[2];
  assign T189 = T192 | T190;
  assign T190 = io_in_3_valid & T191;
  assign T192 = T195 | T193;
  assign T193 = io_in_2_valid & T194;
  assign T194 = ~N136;
  assign N136 = last_grant[2] | last_grant[1];
  assign T195 = T198 | T196;
  assign T196 = io_in_1_valid & T197;
  assign T197 = ~N138;
  assign N138 = N137 | last_grant[0];
  assign N137 = last_grant[2] | last_grant[1];
  assign T198 = io_in_0_valid & T199;
  assign io_in_1_ready = T203 & io_out_ready;
  assign T204 = T214 | T205;
  assign T205 = ~T206;
  assign T206 = T207 | io_in_0_valid;
  assign T207 = T208 | T178;
  assign T208 = T209 | T181;
  assign T209 = T210 | T184;
  assign T210 = T211 | T187;
  assign T211 = T212 | T190;
  assign T212 = T213 | T193;
  assign T213 = T198 | T196;
  assign T214 = T216 & T215;
  assign T215 = ~N140;
  assign N140 = N139 | last_grant[0];
  assign N139 = last_grant[2] | last_grant[1];
  assign T216 = ~T198;
  assign io_in_2_ready = T219 & io_out_ready;
  assign T220 = T231 | T221;
  assign T221 = ~T222;
  assign T222 = T223 | io_in_1_valid;
  assign T223 = T224 | io_in_0_valid;
  assign T224 = T225 | T178;
  assign T225 = T226 | T181;
  assign T226 = T227 | T184;
  assign T227 = T228 | T187;
  assign T228 = T229 | T190;
  assign T229 = T230 | T193;
  assign T230 = T198 | T196;
  assign T231 = T233 & T232;
  assign T232 = ~N141;
  assign N141 = last_grant[2] | last_grant[1];
  assign T233 = ~T234;
  assign T234 = T198 | T196;
  assign io_in_3_ready = T237 & io_out_ready;
  assign T238 = T250 | T239;
  assign T239 = ~T240;
  assign T240 = T241 | io_in_2_valid;
  assign T241 = T242 | io_in_1_valid;
  assign T242 = T243 | io_in_0_valid;
  assign T243 = T244 | T178;
  assign T244 = T245 | T181;
  assign T245 = T246 | T184;
  assign T246 = T247 | T187;
  assign T247 = T248 | T190;
  assign T248 = T249 | T193;
  assign T249 = T198 | T196;
  assign T250 = T252 & T251;
  assign T252 = ~T253;
  assign T253 = T254 | T193;
  assign T254 = T198 | T196;
  assign io_in_4_ready = T257 & io_out_ready;
  assign T258 = T271 | T259;
  assign T259 = ~T260;
  assign T260 = T261 | io_in_3_valid;
  assign T261 = T262 | io_in_2_valid;
  assign T262 = T263 | io_in_1_valid;
  assign T263 = T264 | io_in_0_valid;
  assign T264 = T265 | T178;
  assign T265 = T266 | T181;
  assign T266 = T267 | T184;
  assign T267 = T268 | T187;
  assign T268 = T269 | T190;
  assign T269 = T270 | T193;
  assign T270 = T198 | T196;
  assign T271 = T273 & T272;
  assign T272 = ~last_grant[2];
  assign T273 = ~T274;
  assign T274 = T275 | T190;
  assign T275 = T276 | T193;
  assign T276 = T198 | T196;
  assign io_in_5_ready = T279 & io_out_ready;
  assign T280 = T294 | T281;
  assign T281 = ~T282;
  assign T282 = T283 | io_in_4_valid;
  assign T283 = T284 | io_in_3_valid;
  assign T284 = T285 | io_in_2_valid;
  assign T285 = T286 | io_in_1_valid;
  assign T286 = T287 | io_in_0_valid;
  assign T287 = T288 | T178;
  assign T288 = T289 | T181;
  assign T289 = T290 | T184;
  assign T290 = T291 | T187;
  assign T291 = T292 | T190;
  assign T292 = T293 | T193;
  assign T293 = T198 | T196;
  assign T294 = T296 & T295;
  assign T296 = ~T297;
  assign T297 = T298 | T187;
  assign T298 = T299 | T190;
  assign T299 = T300 | T193;
  assign T300 = T198 | T196;
  assign io_in_6_ready = T303 & io_out_ready;
  assign T304 = T319 | T305;
  assign T305 = ~T306;
  assign T306 = T307 | io_in_5_valid;
  assign T307 = T308 | io_in_4_valid;
  assign T308 = T309 | io_in_3_valid;
  assign T309 = T310 | io_in_2_valid;
  assign T310 = T311 | io_in_1_valid;
  assign T311 = T312 | io_in_0_valid;
  assign T312 = T313 | T178;
  assign T313 = T314 | T181;
  assign T314 = T315 | T184;
  assign T315 = T316 | T187;
  assign T316 = T317 | T190;
  assign T317 = T318 | T193;
  assign T318 = T198 | T196;
  assign T319 = T321 & T320;
  assign T321 = ~T322;
  assign T322 = T323 | T184;
  assign T323 = T324 | T187;
  assign T324 = T325 | T190;
  assign T325 = T326 | T193;
  assign T326 = T198 | T196;
  assign io_in_7_ready = T329 & io_out_ready;
  assign T330 = T346 | T331;
  assign T331 = ~T332;
  assign T332 = T333 | io_in_6_valid;
  assign T333 = T334 | io_in_5_valid;
  assign T334 = T335 | io_in_4_valid;
  assign T335 = T336 | io_in_3_valid;
  assign T336 = T337 | io_in_2_valid;
  assign T337 = T338 | io_in_1_valid;
  assign T338 = T339 | io_in_0_valid;
  assign T339 = T340 | T178;
  assign T340 = T341 | T181;
  assign T341 = T342 | T184;
  assign T342 = T343 | T187;
  assign T343 = T344 | T190;
  assign T344 = T345 | T193;
  assign T345 = T198 | T196;
  assign T346 = T348 & T347;
  assign T348 = ~T349;
  assign T349 = T350 | T181;
  assign T350 = T351 | T184;
  assign T351 = T352 | T187;
  assign T352 = T353 | T190;
  assign T353 = T354 | T193;
  assign T354 = T198 | T196;
  assign N72 = T17 | reset;
  assign N73 = ~N72;
  assign N78 = T45 | reset;
  assign N79 = ~N78;
  assign N84 = T58 | reset;
  assign N85 = T47 | N84;
  assign N86 = ~N85;
  assign N89 = T47 | reset;
  assign N90 = ~N89;
  assign N94 = ~reset;
  assign N95 = T17 & N94;
  assign N96 = T45 & N94;
  assign N97 = T58 & N94;
  assign N98 = ~T58;
  assign N99 = N94 & N98;
  assign N100 = T47 & N99;
  assign N101 = T47 & N94;

endmodule