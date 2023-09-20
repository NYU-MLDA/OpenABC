module LockingRRArbiter_7
(
  clk,
  reset,
  io_in_4_ready,
  io_in_4_valid,
  io_in_4_bits_header_src,
  io_in_4_bits_header_dst,
  io_in_4_bits_payload_addr_block,
  io_in_4_bits_payload_p_type,
  io_in_3_ready,
  io_in_3_valid,
  io_in_3_bits_header_src,
  io_in_3_bits_header_dst,
  io_in_3_bits_payload_addr_block,
  io_in_3_bits_payload_p_type,
  io_in_2_ready,
  io_in_2_valid,
  io_in_2_bits_header_src,
  io_in_2_bits_header_dst,
  io_in_2_bits_payload_addr_block,
  io_in_2_bits_payload_p_type,
  io_in_1_ready,
  io_in_1_valid,
  io_in_1_bits_header_src,
  io_in_1_bits_header_dst,
  io_in_1_bits_payload_addr_block,
  io_in_1_bits_payload_p_type,
  io_in_0_ready,
  io_in_0_valid,
  io_in_0_bits_header_src,
  io_in_0_bits_header_dst,
  io_in_0_bits_payload_addr_block,
  io_in_0_bits_payload_p_type,
  io_out_ready,
  io_out_valid,
  io_out_bits_header_src,
  io_out_bits_header_dst,
  io_out_bits_payload_addr_block,
  io_out_bits_payload_p_type,
  io_chosen
);

  input [2:0] io_in_4_bits_header_src;
  input [2:0] io_in_4_bits_header_dst;
  input [25:0] io_in_4_bits_payload_addr_block;
  input [1:0] io_in_4_bits_payload_p_type;
  input [2:0] io_in_3_bits_header_src;
  input [2:0] io_in_3_bits_header_dst;
  input [25:0] io_in_3_bits_payload_addr_block;
  input [1:0] io_in_3_bits_payload_p_type;
  input [2:0] io_in_2_bits_header_src;
  input [2:0] io_in_2_bits_header_dst;
  input [25:0] io_in_2_bits_payload_addr_block;
  input [1:0] io_in_2_bits_payload_p_type;
  input [2:0] io_in_1_bits_header_src;
  input [2:0] io_in_1_bits_header_dst;
  input [25:0] io_in_1_bits_payload_addr_block;
  input [1:0] io_in_1_bits_payload_p_type;
  input [2:0] io_in_0_bits_header_src;
  input [2:0] io_in_0_bits_header_dst;
  input [25:0] io_in_0_bits_payload_addr_block;
  input [1:0] io_in_0_bits_payload_p_type;
  output [2:0] io_out_bits_header_src;
  output [2:0] io_out_bits_header_dst;
  output [25:0] io_out_bits_payload_addr_block;
  output [1:0] io_out_bits_payload_p_type;
  output [2:0] io_chosen;
  input clk;
  input reset;
  input io_in_4_valid;
  input io_in_3_valid;
  input io_in_2_valid;
  input io_in_1_valid;
  input io_in_0_valid;
  input io_out_ready;
  output io_in_4_ready;
  output io_in_3_ready;
  output io_in_2_ready;
  output io_in_1_ready;
  output io_in_0_ready;
  output io_out_valid;
  wire [2:0] io_out_bits_header_src,io_out_bits_header_dst,io_chosen,T0,T1,T2,T3,T4,T5,T35,
  T38,T36,T43,T46,T44;
  wire [25:0] io_out_bits_payload_addr_block,T27,T30,T28;
  wire [1:0] io_out_bits_payload_p_type,T18,T22,T19;
  wire io_in_4_ready,io_in_3_ready,io_in_2_ready,io_in_1_ready,io_in_0_ready,
  io_out_valid,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  T15,N21,T13,N22,T11,N23,T7,N24,N25,N26,N27,N28,T8,T10,T12,T14,T16,N29,N30,N31,T51,
  T54,T52,T59,T75,T60,T61,T64,T62,T63,T67,T65,T66,T70,T68,T69,T73,T71,T72,T74,T77,
  T84,T78,T79,T80,T81,T82,T83,T86,T85,T88,T96,T89,T90,T91,T92,T93,T94,T95,T98,T97,
  T99,T101,T110,T102,T103,T104,T105,T106,T107,T108,T109,T112,T111,T113,T114,T116,
  T126,T117,T118,T119,T120,T121,T122,T123,T124,T125,T128,T127,T129,T130,T131,N32,
  N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48;
  wire [2:1] T6;
  reg [2:0] last_grant;
  assign T12 = last_grant < { 1'b1, 1'b1 };
  assign T66 = last_grant < { 1'b1, 1'b1 };
  assign T74 = last_grant < 1'b0;
  assign T75 = last_grant < 1'b0;
  assign T111 = last_grant < { 1'b1, 1'b1 };

  always @(posedge clk) begin
    if(N34) begin
      last_grant[2] <= N37;
    end 
  end


  always @(posedge clk) begin
    if(N34) begin
      last_grant[1] <= N36;
    end 
  end


  always @(posedge clk) begin
    if(N34) begin
      last_grant[0] <= N35;
    end 
  end

  assign io_chosen = (N0)? { 1'b0, 1'b0, 1'b1 } : 
                     (N1)? T0 : 1'b0;
  assign N0 = T15;
  assign N1 = N21;
  assign T0 = (N2)? { 1'b0, 1'b1, 1'b0 } : 
              (N3)? T1 : 1'b0;
  assign N2 = T13;
  assign N3 = N22;
  assign T1 = (N4)? { 1'b0, 1'b1, 1'b1 } : 
              (N5)? T2 : 1'b0;
  assign N4 = T11;
  assign N5 = N23;
  assign T2 = (N6)? { 1'b1, 1'b0, 1'b0 } : 
              (N7)? T3 : 1'b0;
  assign N6 = T7;
  assign N7 = N24;
  assign T3 = (N8)? { 1'b0, 1'b0, 1'b0 } : 
              (N9)? T4 : 1'b0;
  assign N8 = io_in_0_valid;
  assign N9 = N25;
  assign T4 = (N10)? { 1'b0, 1'b0, 1'b1 } : 
              (N11)? T5 : 1'b0;
  assign N10 = io_in_1_valid;
  assign N11 = N26;
  assign T5 = (N12)? { 1'b0, 1'b1, 1'b0 } : 
              (N13)? { T6, T6[1:1] } : 1'b0;
  assign N12 = io_in_2_valid;
  assign N13 = N27;
  assign io_out_bits_payload_p_type = (N14)? io_in_4_bits_payload_p_type : 
                                      (N15)? T18 : 1'b0;
  assign N14 = io_chosen[2];
  assign N15 = N29;
  assign T18 = (N16)? T22 : 
               (N17)? T19 : 1'b0;
  assign N16 = io_chosen[1];
  assign N17 = N30;
  assign T19 = (N18)? io_in_1_bits_payload_p_type : 
               (N19)? io_in_0_bits_payload_p_type : 1'b0;
  assign N18 = io_chosen[0];
  assign N19 = N31;
  assign T22 = (N18)? io_in_3_bits_payload_p_type : 
               (N19)? io_in_2_bits_payload_p_type : 1'b0;
  assign io_out_bits_payload_addr_block = (N14)? io_in_4_bits_payload_addr_block : 
                                          (N15)? T27 : 1'b0;
  assign T27 = (N16)? T30 : 
               (N17)? T28 : 1'b0;
  assign T28 = (N18)? io_in_1_bits_payload_addr_block : 
               (N19)? io_in_0_bits_payload_addr_block : 1'b0;
  assign T30 = (N18)? io_in_3_bits_payload_addr_block : 
               (N19)? io_in_2_bits_payload_addr_block : 1'b0;
  assign io_out_bits_header_dst = (N14)? io_in_4_bits_header_dst : 
                                  (N15)? T35 : 1'b0;
  assign T35 = (N16)? T38 : 
               (N17)? T36 : 1'b0;
  assign T36 = (N18)? io_in_1_bits_header_dst : 
               (N19)? io_in_0_bits_header_dst : 1'b0;
  assign T38 = (N18)? io_in_3_bits_header_dst : 
               (N19)? io_in_2_bits_header_dst : 1'b0;
  assign io_out_bits_header_src = (N14)? io_in_4_bits_header_src : 
                                  (N15)? T43 : 1'b0;
  assign T43 = (N16)? T46 : 
               (N17)? T44 : 1'b0;
  assign T44 = (N18)? io_in_1_bits_header_src : 
               (N19)? io_in_0_bits_header_src : 1'b0;
  assign T46 = (N18)? io_in_3_bits_header_src : 
               (N19)? io_in_2_bits_header_src : 1'b0;
  assign io_out_valid = (N14)? io_in_4_valid : 
                        (N15)? T51 : 1'b0;
  assign T51 = (N16)? T54 : 
               (N17)? T52 : 1'b0;
  assign T52 = (N18)? io_in_1_valid : 
               (N19)? io_in_0_valid : 1'b0;
  assign T54 = (N18)? io_in_3_valid : 
               (N19)? io_in_2_valid : 1'b0;
  assign N34 = (N20)? 1'b1 : 
               (N39)? 1'b1 : 
               (N33)? 1'b0 : 1'b0;
  assign N20 = reset;
  assign { N37, N36, N35 } = (N20)? { 1'b0, 1'b0, 1'b0 } : 
                             (N39)? io_chosen : 1'b0;
  assign N21 = ~T15;
  assign N22 = ~T13;
  assign N23 = ~T11;
  assign N24 = ~T7;
  assign N25 = ~io_in_0_valid;
  assign N26 = ~io_in_1_valid;
  assign N27 = ~io_in_2_valid;
  assign N28 = ~io_in_3_valid;
  assign T6[1] = io_in_3_valid;
  assign T6[2] = N28;
  assign T7 = io_in_4_valid & T8;
  assign T8 = ~last_grant[2];
  assign T10 = io_out_ready & io_out_valid;
  assign T11 = io_in_3_valid & T12;
  assign T13 = io_in_2_valid & T14;
  assign T14 = ~N40;
  assign N40 = last_grant[2] | last_grant[1];
  assign T15 = io_in_1_valid & T16;
  assign T16 = ~N42;
  assign N42 = N41 | last_grant[0];
  assign N41 = last_grant[2] | last_grant[1];
  assign N29 = ~io_chosen[2];
  assign N30 = ~io_chosen[1];
  assign N31 = ~io_chosen[0];
  assign io_in_0_ready = T59 & io_out_ready;
  assign T59 = T75 | T60;
  assign T60 = ~T61;
  assign T61 = T64 | T62;
  assign T62 = io_in_4_valid & T63;
  assign T63 = ~last_grant[2];
  assign T64 = T67 | T65;
  assign T65 = io_in_3_valid & T66;
  assign T67 = T70 | T68;
  assign T68 = io_in_2_valid & T69;
  assign T69 = ~N43;
  assign N43 = last_grant[2] | last_grant[1];
  assign T70 = T73 | T71;
  assign T71 = io_in_1_valid & T72;
  assign T72 = ~N45;
  assign N45 = N44 | last_grant[0];
  assign N44 = last_grant[2] | last_grant[1];
  assign T73 = io_in_0_valid & T74;
  assign io_in_1_ready = T77 & io_out_ready;
  assign T77 = T84 | T78;
  assign T78 = ~T79;
  assign T79 = T80 | io_in_0_valid;
  assign T80 = T81 | T62;
  assign T81 = T82 | T65;
  assign T82 = T83 | T68;
  assign T83 = T73 | T71;
  assign T84 = T86 & T85;
  assign T85 = ~N47;
  assign N47 = N46 | last_grant[0];
  assign N46 = last_grant[2] | last_grant[1];
  assign T86 = ~T73;
  assign io_in_2_ready = T88 & io_out_ready;
  assign T88 = T96 | T89;
  assign T89 = ~T90;
  assign T90 = T91 | io_in_1_valid;
  assign T91 = T92 | io_in_0_valid;
  assign T92 = T93 | T62;
  assign T93 = T94 | T65;
  assign T94 = T95 | T68;
  assign T95 = T73 | T71;
  assign T96 = T98 & T97;
  assign T97 = ~N48;
  assign N48 = last_grant[2] | last_grant[1];
  assign T98 = ~T99;
  assign T99 = T73 | T71;
  assign io_in_3_ready = T101 & io_out_ready;
  assign T101 = T110 | T102;
  assign T102 = ~T103;
  assign T103 = T104 | io_in_2_valid;
  assign T104 = T105 | io_in_1_valid;
  assign T105 = T106 | io_in_0_valid;
  assign T106 = T107 | T62;
  assign T107 = T108 | T65;
  assign T108 = T109 | T68;
  assign T109 = T73 | T71;
  assign T110 = T112 & T111;
  assign T112 = ~T113;
  assign T113 = T114 | T68;
  assign T114 = T73 | T71;
  assign io_in_4_ready = T116 & io_out_ready;
  assign T116 = T126 | T117;
  assign T117 = ~T118;
  assign T118 = T119 | io_in_3_valid;
  assign T119 = T120 | io_in_2_valid;
  assign T120 = T121 | io_in_1_valid;
  assign T121 = T122 | io_in_0_valid;
  assign T122 = T123 | T62;
  assign T123 = T124 | T65;
  assign T124 = T125 | T68;
  assign T125 = T73 | T71;
  assign T126 = T128 & T127;
  assign T127 = ~last_grant[2];
  assign T128 = ~T129;
  assign T129 = T130 | T65;
  assign T130 = T131 | T68;
  assign T131 = T73 | T71;
  assign N32 = T10 | reset;
  assign N33 = ~N32;
  assign N38 = ~reset;
  assign N39 = T10 & N38;

endmodule