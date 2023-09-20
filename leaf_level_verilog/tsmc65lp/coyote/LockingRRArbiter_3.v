module LockingRRArbiter_3
(
  clk,
  reset,
  io_in_7_ready,
  io_in_7_valid,
  io_in_7_bits_addr_block,
  io_in_7_bits_p_type,
  io_in_7_bits_client_id,
  io_in_6_ready,
  io_in_6_valid,
  io_in_6_bits_addr_block,
  io_in_6_bits_p_type,
  io_in_6_bits_client_id,
  io_in_5_ready,
  io_in_5_valid,
  io_in_5_bits_addr_block,
  io_in_5_bits_p_type,
  io_in_5_bits_client_id,
  io_in_4_ready,
  io_in_4_valid,
  io_in_4_bits_addr_block,
  io_in_4_bits_p_type,
  io_in_4_bits_client_id,
  io_in_3_ready,
  io_in_3_valid,
  io_in_3_bits_addr_block,
  io_in_3_bits_p_type,
  io_in_3_bits_client_id,
  io_in_2_ready,
  io_in_2_valid,
  io_in_2_bits_addr_block,
  io_in_2_bits_p_type,
  io_in_2_bits_client_id,
  io_in_1_ready,
  io_in_1_valid,
  io_in_1_bits_addr_block,
  io_in_1_bits_p_type,
  io_in_1_bits_client_id,
  io_in_0_ready,
  io_in_0_valid,
  io_in_0_bits_addr_block,
  io_in_0_bits_p_type,
  io_in_0_bits_client_id,
  io_out_ready,
  io_out_valid,
  io_out_bits_addr_block,
  io_out_bits_p_type,
  io_out_bits_client_id,
  io_chosen
);

  input [25:0] io_in_7_bits_addr_block;
  input [1:0] io_in_7_bits_p_type;
  input [1:0] io_in_7_bits_client_id;
  input [25:0] io_in_6_bits_addr_block;
  input [1:0] io_in_6_bits_p_type;
  input [1:0] io_in_6_bits_client_id;
  input [25:0] io_in_5_bits_addr_block;
  input [1:0] io_in_5_bits_p_type;
  input [1:0] io_in_5_bits_client_id;
  input [25:0] io_in_4_bits_addr_block;
  input [1:0] io_in_4_bits_p_type;
  input [1:0] io_in_4_bits_client_id;
  input [25:0] io_in_3_bits_addr_block;
  input [1:0] io_in_3_bits_p_type;
  input [1:0] io_in_3_bits_client_id;
  input [25:0] io_in_2_bits_addr_block;
  input [1:0] io_in_2_bits_p_type;
  input [1:0] io_in_2_bits_client_id;
  input [25:0] io_in_1_bits_addr_block;
  input [1:0] io_in_1_bits_p_type;
  input [1:0] io_in_1_bits_client_id;
  input [25:0] io_in_0_bits_addr_block;
  input [1:0] io_in_0_bits_p_type;
  input [1:0] io_in_0_bits_client_id;
  output [25:0] io_out_bits_addr_block;
  output [1:0] io_out_bits_p_type;
  output [1:0] io_out_bits_client_id;
  output [2:0] io_chosen;
  input clk;
  input reset;
  input io_in_7_valid;
  input io_in_6_valid;
  input io_in_5_valid;
  input io_in_4_valid;
  input io_in_3_valid;
  input io_in_2_valid;
  input io_in_1_valid;
  input io_in_0_valid;
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
  wire [25:0] io_out_bits_addr_block,T68,T62,T65,T63,T71,T69;
  wire [1:0] io_out_bits_p_type,io_out_bits_client_id,T11,T12,T40,T33,T37,T34,T43,T41,T54,
  T48,T51,T49,T57,T55;
  wire [2:0] io_chosen,choose,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10;
  wire io_in_7_ready,io_in_6_ready,io_in_5_ready,io_in_4_ready,io_in_3_ready,
  io_in_2_ready,io_in_1_ready,io_in_0_ready,io_out_valid,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,
  N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,
  N31,N32,N33,N34,N35,T28,N36,T26,N37,T24,N38,T22,N39,T20,N40,T18,N41,T14,N42,N43,
  N44,N45,N46,N47,N48,N49,T15,T17,T19,T21,T23,T25,T27,T29,T31,N50,N51,N52,T82,T76,
  T79,T77,T85,T83,T90,T91,T116,T92,T93,T96,T94,T95,T99,T97,T98,T102,T100,T101,T105,
  T103,T104,T108,T106,T107,T111,T109,T110,T114,T112,T113,T115,T119,T120,T130,T121,
  T122,T123,T124,T125,T126,T127,T128,T129,T132,T131,T135,T136,T147,T137,T138,T139,
  T140,T141,T142,T143,T144,T145,T146,T149,T148,T150,T153,T154,T166,T155,T156,T157,
  T158,T159,T160,T161,T162,T163,T164,T165,T168,T167,T169,T170,T173,T174,T187,T175,
  T176,T177,T178,T179,T180,T181,T182,T183,T184,T185,T186,T189,T188,T190,T191,T192,
  T195,T196,T210,T197,T198,T199,T200,T201,T202,T203,T204,T205,T206,T207,T208,T209,
  T212,T211,T213,T214,T215,T216,T219,T220,T235,T221,T222,T223,T224,T225,T226,T227,
  T228,T229,T230,T231,T232,T233,T234,T237,T236,T238,T239,T240,T241,T242,T245,T246,
  T262,T247,T248,T249,T250,T251,T252,T253,T254,T255,T256,T257,T258,T259,T260,T261,
  T264,T263,T265,T266,T267,T268,T269,T270,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,
  N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,
  N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99;
  wire [0:0] T13;
  reg [2:0] last_grant,lockIdx;
  reg locked;
  assign T15 = last_grant < { 1'b1, 1'b1, 1'b1 };
  assign T19 = last_grant < { 1'b1, 1'b1, 1'b0 };
  assign T21 = last_grant < { 1'b1, 1'b0, 1'b1 };
  assign T25 = last_grant < { 1'b1, 1'b1 };
  assign T95 = last_grant < { 1'b1, 1'b1, 1'b1 };
  assign T98 = last_grant < { 1'b1, 1'b1, 1'b0 };
  assign T101 = last_grant < { 1'b1, 1'b0, 1'b1 };
  assign T107 = last_grant < { 1'b1, 1'b1 };
  assign T115 = last_grant < 1'b0;
  assign T116 = last_grant < 1'b0;
  assign T167 = last_grant < { 1'b1, 1'b1 };
  assign T211 = last_grant < { 1'b1, 1'b0, 1'b1 };
  assign T236 = last_grant < { 1'b1, 1'b1, 1'b0 };
  assign T263 = last_grant < { 1'b1, 1'b1, 1'b1 };

  always @(posedge clk) begin
    if(N55) begin
      last_grant[2] <= N58;
    end 
  end


  always @(posedge clk) begin
    if(N55) begin
      last_grant[1] <= N57;
    end 
  end


  always @(posedge clk) begin
    if(N55) begin
      last_grant[0] <= N56;
    end 
  end


  always @(posedge clk) begin
    if(reset) begin
      lockIdx[2] <= 1'b1;
    end 
  end


  always @(posedge clk) begin
    if(reset) begin
      lockIdx[1] <= 1'b1;
    end 
  end


  always @(posedge clk) begin
    if(reset) begin
      lockIdx[0] <= 1'b1;
    end 
  end


  always @(posedge clk) begin
    if(N61) begin
      locked <= 1'b0;
    end 
  end

  assign N65 = lockIdx[1] & lockIdx[2];
  assign N66 = lockIdx[0] & N65;
  assign N67 = ~lockIdx[2];
  assign N68 = ~lockIdx[1];
  assign N69 = N68 | N67;
  assign N70 = lockIdx[0] | N69;
  assign N71 = ~N70;
  assign N72 = ~lockIdx[0];
  assign N73 = lockIdx[1] | N67;
  assign N74 = N72 | N73;
  assign N75 = ~N74;
  assign N76 = lockIdx[1] | N67;
  assign N77 = lockIdx[0] | N76;
  assign N78 = ~N77;
  assign N79 = N68 | lockIdx[2];
  assign N80 = N72 | N79;
  assign N81 = ~N80;
  assign N82 = N68 | lockIdx[2];
  assign N83 = lockIdx[0] | N82;
  assign N84 = ~N83;
  assign N85 = lockIdx[1] | lockIdx[2];
  assign N86 = N72 | N85;
  assign N87 = ~N86;
  assign N88 = lockIdx[1] | lockIdx[2];
  assign N89 = lockIdx[0] | N88;
  assign N90 = ~N89;
  assign io_chosen = (N0)? lockIdx : 
                     (N1)? choose : 1'b0;
  assign N0 = locked;
  assign N1 = N35;
  assign choose = (N2)? { 1'b0, 1'b0, 1'b1 } : 
                  (N3)? T1 : 1'b0;
  assign N2 = T28;
  assign N3 = N36;
  assign T1 = (N4)? { 1'b0, 1'b1, 1'b0 } : 
              (N5)? T2 : 1'b0;
  assign N4 = T26;
  assign N5 = N37;
  assign T2 = (N6)? { 1'b0, 1'b1, 1'b1 } : 
              (N7)? T3 : 1'b0;
  assign N6 = T24;
  assign N7 = N38;
  assign T3 = (N8)? { 1'b1, 1'b0, 1'b0 } : 
              (N9)? T4 : 1'b0;
  assign N8 = T22;
  assign N9 = N39;
  assign T4 = (N10)? { 1'b1, 1'b0, 1'b1 } : 
              (N11)? T5 : 1'b0;
  assign N10 = T20;
  assign N11 = N40;
  assign T5 = (N12)? { 1'b1, 1'b1, 1'b0 } : 
              (N13)? T6 : 1'b0;
  assign N12 = T18;
  assign N13 = N41;
  assign T6 = (N14)? { 1'b1, 1'b1, 1'b1 } : 
              (N15)? T7 : 1'b0;
  assign N14 = T14;
  assign N15 = N42;
  assign T7 = (N16)? { 1'b0, 1'b0, 1'b0 } : 
              (N17)? T8 : 1'b0;
  assign N16 = io_in_0_valid;
  assign N17 = N43;
  assign T8 = (N18)? { 1'b0, 1'b0, 1'b1 } : 
              (N19)? T9 : 1'b0;
  assign N18 = io_in_1_valid;
  assign N19 = N44;
  assign T9 = (N20)? { 1'b0, 1'b1, 1'b0 } : 
              (N21)? T10 : 1'b0;
  assign N20 = io_in_2_valid;
  assign N21 = N45;
  assign T10[1:0] = (N22)? { 1'b1, 1'b1 } : 
                    (N23)? T11 : 1'b0;
  assign N22 = io_in_3_valid;
  assign N23 = T10[2];
  assign T11 = (N24)? { 1'b0, 1'b0 } : 
               (N25)? T12 : 1'b0;
  assign N24 = io_in_4_valid;
  assign N25 = N47;
  assign T12[0] = (N26)? 1'b1 : 
                  (N27)? T13[0] : 1'b0;
  assign N26 = io_in_5_valid;
  assign N27 = T12[1];
  assign io_out_bits_client_id = (N28)? T40 : 
                                 (N29)? T33 : 1'b0;
  assign N28 = io_chosen[2];
  assign N29 = N50;
  assign T33 = (N30)? T37 : 
               (N31)? T34 : 1'b0;
  assign N30 = io_chosen[1];
  assign N31 = N51;
  assign T34 = (N32)? io_in_1_bits_client_id : 
               (N33)? io_in_0_bits_client_id : 1'b0;
  assign N32 = io_chosen[0];
  assign N33 = N52;
  assign T37 = (N32)? io_in_3_bits_client_id : 
               (N33)? io_in_2_bits_client_id : 1'b0;
  assign T40 = (N30)? T43 : 
               (N31)? T41 : 1'b0;
  assign T41 = (N32)? io_in_5_bits_client_id : 
               (N33)? io_in_4_bits_client_id : 1'b0;
  assign T43 = (N32)? io_in_7_bits_client_id : 
               (N33)? io_in_6_bits_client_id : 1'b0;
  assign io_out_bits_p_type = (N28)? T54 : 
                              (N29)? T48 : 1'b0;
  assign T48 = (N30)? T51 : 
               (N31)? T49 : 1'b0;
  assign T49 = (N32)? io_in_1_bits_p_type : 
               (N33)? io_in_0_bits_p_type : 1'b0;
  assign T51 = (N32)? io_in_3_bits_p_type : 
               (N33)? io_in_2_bits_p_type : 1'b0;
  assign T54 = (N30)? T57 : 
               (N31)? T55 : 1'b0;
  assign T55 = (N32)? io_in_5_bits_p_type : 
               (N33)? io_in_4_bits_p_type : 1'b0;
  assign T57 = (N32)? io_in_7_bits_p_type : 
               (N33)? io_in_6_bits_p_type : 1'b0;
  assign io_out_bits_addr_block = (N28)? T68 : 
                                  (N29)? T62 : 1'b0;
  assign T62 = (N30)? T65 : 
               (N31)? T63 : 1'b0;
  assign T63 = (N32)? io_in_1_bits_addr_block : 
               (N33)? io_in_0_bits_addr_block : 1'b0;
  assign T65 = (N32)? io_in_3_bits_addr_block : 
               (N33)? io_in_2_bits_addr_block : 1'b0;
  assign T68 = (N30)? T71 : 
               (N31)? T69 : 1'b0;
  assign T69 = (N32)? io_in_5_bits_addr_block : 
               (N33)? io_in_4_bits_addr_block : 1'b0;
  assign T71 = (N32)? io_in_7_bits_addr_block : 
               (N33)? io_in_6_bits_addr_block : 1'b0;
  assign io_out_valid = (N28)? T82 : 
                        (N29)? T76 : 1'b0;
  assign T76 = (N30)? T79 : 
               (N31)? T77 : 1'b0;
  assign T77 = (N32)? io_in_1_valid : 
               (N33)? io_in_0_valid : 1'b0;
  assign T79 = (N32)? io_in_3_valid : 
               (N33)? io_in_2_valid : 1'b0;
  assign T82 = (N30)? T85 : 
               (N31)? T83 : 1'b0;
  assign T83 = (N32)? io_in_5_valid : 
               (N33)? io_in_4_valid : 1'b0;
  assign T85 = (N32)? io_in_7_valid : 
               (N33)? io_in_6_valid : 1'b0;
  assign T90 = (N0)? N90 : 
               (N1)? T91 : 1'b0;
  assign T119 = (N0)? N87 : 
                (N1)? T120 : 1'b0;
  assign T135 = (N0)? N84 : 
                (N1)? T136 : 1'b0;
  assign T153 = (N0)? N81 : 
                (N1)? T154 : 1'b0;
  assign T173 = (N0)? N78 : 
                (N1)? T174 : 1'b0;
  assign T195 = (N0)? N75 : 
                (N1)? T196 : 1'b0;
  assign T219 = (N0)? N71 : 
                (N1)? T220 : 1'b0;
  assign T245 = (N0)? N66 : 
                (N1)? T246 : 1'b0;
  assign N55 = (N34)? 1'b1 : 
               (N63)? 1'b1 : 
               (N54)? 1'b0 : 1'b0;
  assign N34 = reset;
  assign { N58, N57, N56 } = (N34)? { 1'b0, 1'b0, 1'b0 } : 
                             (N63)? io_chosen : 1'b0;
  assign N61 = (N34)? 1'b1 : 
               (N64)? 1'b1 : 
               (N60)? 1'b0 : 1'b0;
  assign N35 = ~locked;
  assign N36 = ~T28;
  assign N37 = ~T26;
  assign N38 = ~T24;
  assign N39 = ~T22;
  assign N40 = ~T20;
  assign N41 = ~T18;
  assign N42 = ~T14;
  assign N43 = ~io_in_0_valid;
  assign N44 = ~io_in_1_valid;
  assign N45 = ~io_in_2_valid;
  assign N46 = ~io_in_3_valid;
  assign T10[2] = N46;
  assign N47 = ~io_in_4_valid;
  assign N48 = ~io_in_5_valid;
  assign T12[1] = N48;
  assign N49 = ~io_in_6_valid;
  assign T13[0] = N49;
  assign T14 = io_in_7_valid & T15;
  assign T17 = io_out_ready & io_out_valid;
  assign T18 = io_in_6_valid & T19;
  assign T20 = io_in_5_valid & T21;
  assign T22 = io_in_4_valid & T23;
  assign T23 = ~last_grant[2];
  assign T24 = io_in_3_valid & T25;
  assign T26 = io_in_2_valid & T27;
  assign T27 = ~N91;
  assign N91 = last_grant[2] | last_grant[1];
  assign T28 = io_in_1_valid & T29;
  assign T29 = ~N93;
  assign N93 = N92 | last_grant[0];
  assign N92 = last_grant[2] | last_grant[1];
  assign T31 = io_out_valid & io_out_ready;
  assign N50 = ~io_chosen[2];
  assign N51 = ~io_chosen[1];
  assign N52 = ~io_chosen[0];
  assign io_in_0_ready = T90 & io_out_ready;
  assign T91 = T116 | T92;
  assign T92 = ~T93;
  assign T93 = T96 | T94;
  assign T94 = io_in_7_valid & T95;
  assign T96 = T99 | T97;
  assign T97 = io_in_6_valid & T98;
  assign T99 = T102 | T100;
  assign T100 = io_in_5_valid & T101;
  assign T102 = T105 | T103;
  assign T103 = io_in_4_valid & T104;
  assign T104 = ~last_grant[2];
  assign T105 = T108 | T106;
  assign T106 = io_in_3_valid & T107;
  assign T108 = T111 | T109;
  assign T109 = io_in_2_valid & T110;
  assign T110 = ~N94;
  assign N94 = last_grant[2] | last_grant[1];
  assign T111 = T114 | T112;
  assign T112 = io_in_1_valid & T113;
  assign T113 = ~N96;
  assign N96 = N95 | last_grant[0];
  assign N95 = last_grant[2] | last_grant[1];
  assign T114 = io_in_0_valid & T115;
  assign io_in_1_ready = T119 & io_out_ready;
  assign T120 = T130 | T121;
  assign T121 = ~T122;
  assign T122 = T123 | io_in_0_valid;
  assign T123 = T124 | T94;
  assign T124 = T125 | T97;
  assign T125 = T126 | T100;
  assign T126 = T127 | T103;
  assign T127 = T128 | T106;
  assign T128 = T129 | T109;
  assign T129 = T114 | T112;
  assign T130 = T132 & T131;
  assign T131 = ~N98;
  assign N98 = N97 | last_grant[0];
  assign N97 = last_grant[2] | last_grant[1];
  assign T132 = ~T114;
  assign io_in_2_ready = T135 & io_out_ready;
  assign T136 = T147 | T137;
  assign T137 = ~T138;
  assign T138 = T139 | io_in_1_valid;
  assign T139 = T140 | io_in_0_valid;
  assign T140 = T141 | T94;
  assign T141 = T142 | T97;
  assign T142 = T143 | T100;
  assign T143 = T144 | T103;
  assign T144 = T145 | T106;
  assign T145 = T146 | T109;
  assign T146 = T114 | T112;
  assign T147 = T149 & T148;
  assign T148 = ~N99;
  assign N99 = last_grant[2] | last_grant[1];
  assign T149 = ~T150;
  assign T150 = T114 | T112;
  assign io_in_3_ready = T153 & io_out_ready;
  assign T154 = T166 | T155;
  assign T155 = ~T156;
  assign T156 = T157 | io_in_2_valid;
  assign T157 = T158 | io_in_1_valid;
  assign T158 = T159 | io_in_0_valid;
  assign T159 = T160 | T94;
  assign T160 = T161 | T97;
  assign T161 = T162 | T100;
  assign T162 = T163 | T103;
  assign T163 = T164 | T106;
  assign T164 = T165 | T109;
  assign T165 = T114 | T112;
  assign T166 = T168 & T167;
  assign T168 = ~T169;
  assign T169 = T170 | T109;
  assign T170 = T114 | T112;
  assign io_in_4_ready = T173 & io_out_ready;
  assign T174 = T187 | T175;
  assign T175 = ~T176;
  assign T176 = T177 | io_in_3_valid;
  assign T177 = T178 | io_in_2_valid;
  assign T178 = T179 | io_in_1_valid;
  assign T179 = T180 | io_in_0_valid;
  assign T180 = T181 | T94;
  assign T181 = T182 | T97;
  assign T182 = T183 | T100;
  assign T183 = T184 | T103;
  assign T184 = T185 | T106;
  assign T185 = T186 | T109;
  assign T186 = T114 | T112;
  assign T187 = T189 & T188;
  assign T188 = ~last_grant[2];
  assign T189 = ~T190;
  assign T190 = T191 | T106;
  assign T191 = T192 | T109;
  assign T192 = T114 | T112;
  assign io_in_5_ready = T195 & io_out_ready;
  assign T196 = T210 | T197;
  assign T197 = ~T198;
  assign T198 = T199 | io_in_4_valid;
  assign T199 = T200 | io_in_3_valid;
  assign T200 = T201 | io_in_2_valid;
  assign T201 = T202 | io_in_1_valid;
  assign T202 = T203 | io_in_0_valid;
  assign T203 = T204 | T94;
  assign T204 = T205 | T97;
  assign T205 = T206 | T100;
  assign T206 = T207 | T103;
  assign T207 = T208 | T106;
  assign T208 = T209 | T109;
  assign T209 = T114 | T112;
  assign T210 = T212 & T211;
  assign T212 = ~T213;
  assign T213 = T214 | T103;
  assign T214 = T215 | T106;
  assign T215 = T216 | T109;
  assign T216 = T114 | T112;
  assign io_in_6_ready = T219 & io_out_ready;
  assign T220 = T235 | T221;
  assign T221 = ~T222;
  assign T222 = T223 | io_in_5_valid;
  assign T223 = T224 | io_in_4_valid;
  assign T224 = T225 | io_in_3_valid;
  assign T225 = T226 | io_in_2_valid;
  assign T226 = T227 | io_in_1_valid;
  assign T227 = T228 | io_in_0_valid;
  assign T228 = T229 | T94;
  assign T229 = T230 | T97;
  assign T230 = T231 | T100;
  assign T231 = T232 | T103;
  assign T232 = T233 | T106;
  assign T233 = T234 | T109;
  assign T234 = T114 | T112;
  assign T235 = T237 & T236;
  assign T237 = ~T238;
  assign T238 = T239 | T100;
  assign T239 = T240 | T103;
  assign T240 = T241 | T106;
  assign T241 = T242 | T109;
  assign T242 = T114 | T112;
  assign io_in_7_ready = T245 & io_out_ready;
  assign T246 = T262 | T247;
  assign T247 = ~T248;
  assign T248 = T249 | io_in_6_valid;
  assign T249 = T250 | io_in_5_valid;
  assign T250 = T251 | io_in_4_valid;
  assign T251 = T252 | io_in_3_valid;
  assign T252 = T253 | io_in_2_valid;
  assign T253 = T254 | io_in_1_valid;
  assign T254 = T255 | io_in_0_valid;
  assign T255 = T256 | T94;
  assign T256 = T257 | T97;
  assign T257 = T258 | T100;
  assign T258 = T259 | T103;
  assign T259 = T260 | T106;
  assign T260 = T261 | T109;
  assign T261 = T114 | T112;
  assign T262 = T264 & T263;
  assign T264 = ~T265;
  assign T265 = T266 | T97;
  assign T266 = T267 | T100;
  assign T267 = T268 | T103;
  assign T268 = T269 | T106;
  assign T269 = T270 | T109;
  assign T270 = T114 | T112;
  assign N53 = T17 | reset;
  assign N54 = ~N53;
  assign N59 = T31 | reset;
  assign N60 = ~N59;
  assign N62 = ~reset;
  assign N63 = T17 & N62;
  assign N64 = T31 & N62;

endmodule