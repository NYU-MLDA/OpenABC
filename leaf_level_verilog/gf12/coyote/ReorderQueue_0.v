module ReorderQueue_0
(
  clk,
  reset,
  io_enq_ready,
  io_enq_valid,
  io_enq_bits_data,
  io_enq_bits_tag,
  io_deq_valid,
  io_deq_tag,
  io_deq_data,
  io_deq_matches
);

  input [3:0] io_enq_bits_tag;
  input [3:0] io_deq_tag;
  input clk;
  input reset;
  input io_enq_valid;
  input io_enq_bits_data;
  input io_deq_valid;
  output io_enq_ready;
  output io_deq_data;
  output io_deq_matches;
  wire io_enq_ready,io_deq_data,io_deq_matches,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,
  N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,
  N32,N33,N34,N35,N36,T121,roq_matches_8,T117,T1,T115,T4,T114,N37,N38,N39,N40,N41,
  N42,N43,N44,T19,T17,roq_matches_0,N45,roq_matches_1,N46,roq_matches_2,N47,
  roq_matches_3,N48,roq_matches_4,N49,roq_matches_5,N50,roq_matches_6,N51,roq_matches_7,
  N52,T31,T30,T33,T38,T37,T40,T43,T42,T45,T48,T47,T50,T53,T52,T55,T58,T57,T60,T63,
  T62,T65,T68,T67,T70,T76,T74,T82,T80,T88,T86,T94,T92,T100,T98,T106,T104,T112,T110,
  T119,T122,T123,T124,T125,T126,T127,N53,T129,N54,T151,T130,N55,T142,T131,N56,T133,
  T138,T144,T147,T160,T152,T154,T157,T162,T165,T171,T175,T176,T177,T178,T179,T180,
  T181,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,
  N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,
  N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,
  N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,
  N128,N129,N130,N131,N132,N133,N134,N135,N136,N137,N138;
  wire [8:0] T6,T21,T35,T135;
  wire [3:0] T7,T8,T9,T10,T11,T12,T13,T22,T23,T24,T25,T26,T27,T28;
  wire [3:2] T14,T29;
  reg roq_free_8,roq_free_7,roq_free_6,roq_free_5,roq_free_4,roq_free_3,roq_free_2,
  roq_free_1,roq_free_0,roq_data_0,roq_data_1,roq_data_2,roq_data_3,roq_data_4,
  roq_data_5,roq_data_6,roq_data_7,roq_data_8;
  reg [3:0] roq_tags_7,roq_tags_6,roq_tags_5,roq_tags_4,roq_tags_3,roq_tags_2,roq_tags_1,
  roq_tags_0,roq_tags_8;
  assign T31 = roq_tags_7 == io_deq_tag;
  assign T38 = roq_tags_6 == io_deq_tag;
  assign T43 = roq_tags_5 == io_deq_tag;
  assign T48 = roq_tags_4 == io_deq_tag;
  assign T53 = roq_tags_3 == io_deq_tag;
  assign T58 = roq_tags_2 == io_deq_tag;
  assign T63 = roq_tags_1 == io_deq_tag;
  assign T68 = roq_tags_0 == io_deq_tag;
  assign T117 = roq_tags_8 == io_deq_tag;

  always @(posedge clk) begin
    if(N60) begin
      roq_free_8 <= N61;
    end 
  end


  always @(posedge clk) begin
    if(N65) begin
      roq_free_7 <= N66;
    end 
  end


  always @(posedge clk) begin
    if(T33) begin
      roq_tags_7[3] <= io_enq_bits_tag[3];
    end 
  end


  always @(posedge clk) begin
    if(T33) begin
      roq_tags_7[2] <= io_enq_bits_tag[2];
    end 
  end


  always @(posedge clk) begin
    if(T33) begin
      roq_tags_7[1] <= io_enq_bits_tag[1];
    end 
  end


  always @(posedge clk) begin
    if(T33) begin
      roq_tags_7[0] <= io_enq_bits_tag[0];
    end 
  end


  always @(posedge clk) begin
    if(T40) begin
      roq_tags_6[3] <= io_enq_bits_tag[3];
    end 
  end


  always @(posedge clk) begin
    if(T40) begin
      roq_tags_6[2] <= io_enq_bits_tag[2];
    end 
  end


  always @(posedge clk) begin
    if(T40) begin
      roq_tags_6[1] <= io_enq_bits_tag[1];
    end 
  end


  always @(posedge clk) begin
    if(T40) begin
      roq_tags_6[0] <= io_enq_bits_tag[0];
    end 
  end


  always @(posedge clk) begin
    if(T45) begin
      roq_tags_5[3] <= io_enq_bits_tag[3];
    end 
  end


  always @(posedge clk) begin
    if(T45) begin
      roq_tags_5[2] <= io_enq_bits_tag[2];
    end 
  end


  always @(posedge clk) begin
    if(T45) begin
      roq_tags_5[1] <= io_enq_bits_tag[1];
    end 
  end


  always @(posedge clk) begin
    if(T45) begin
      roq_tags_5[0] <= io_enq_bits_tag[0];
    end 
  end


  always @(posedge clk) begin
    if(T50) begin
      roq_tags_4[3] <= io_enq_bits_tag[3];
    end 
  end


  always @(posedge clk) begin
    if(T50) begin
      roq_tags_4[2] <= io_enq_bits_tag[2];
    end 
  end


  always @(posedge clk) begin
    if(T50) begin
      roq_tags_4[1] <= io_enq_bits_tag[1];
    end 
  end


  always @(posedge clk) begin
    if(T50) begin
      roq_tags_4[0] <= io_enq_bits_tag[0];
    end 
  end


  always @(posedge clk) begin
    if(T55) begin
      roq_tags_3[3] <= io_enq_bits_tag[3];
    end 
  end


  always @(posedge clk) begin
    if(T55) begin
      roq_tags_3[2] <= io_enq_bits_tag[2];
    end 
  end


  always @(posedge clk) begin
    if(T55) begin
      roq_tags_3[1] <= io_enq_bits_tag[1];
    end 
  end


  always @(posedge clk) begin
    if(T55) begin
      roq_tags_3[0] <= io_enq_bits_tag[0];
    end 
  end


  always @(posedge clk) begin
    if(T60) begin
      roq_tags_2[3] <= io_enq_bits_tag[3];
    end 
  end


  always @(posedge clk) begin
    if(T60) begin
      roq_tags_2[2] <= io_enq_bits_tag[2];
    end 
  end


  always @(posedge clk) begin
    if(T60) begin
      roq_tags_2[1] <= io_enq_bits_tag[1];
    end 
  end


  always @(posedge clk) begin
    if(T60) begin
      roq_tags_2[0] <= io_enq_bits_tag[0];
    end 
  end


  always @(posedge clk) begin
    if(T65) begin
      roq_tags_1[3] <= io_enq_bits_tag[3];
    end 
  end


  always @(posedge clk) begin
    if(T65) begin
      roq_tags_1[2] <= io_enq_bits_tag[2];
    end 
  end


  always @(posedge clk) begin
    if(T65) begin
      roq_tags_1[1] <= io_enq_bits_tag[1];
    end 
  end


  always @(posedge clk) begin
    if(T65) begin
      roq_tags_1[0] <= io_enq_bits_tag[0];
    end 
  end


  always @(posedge clk) begin
    if(T70) begin
      roq_tags_0[3] <= io_enq_bits_tag[3];
    end 
  end


  always @(posedge clk) begin
    if(T70) begin
      roq_tags_0[2] <= io_enq_bits_tag[2];
    end 
  end


  always @(posedge clk) begin
    if(T70) begin
      roq_tags_0[1] <= io_enq_bits_tag[1];
    end 
  end


  always @(posedge clk) begin
    if(T70) begin
      roq_tags_0[0] <= io_enq_bits_tag[0];
    end 
  end


  always @(posedge clk) begin
    if(N70) begin
      roq_free_6 <= N71;
    end 
  end


  always @(posedge clk) begin
    if(N75) begin
      roq_free_5 <= N76;
    end 
  end


  always @(posedge clk) begin
    if(N80) begin
      roq_free_4 <= N81;
    end 
  end


  always @(posedge clk) begin
    if(N85) begin
      roq_free_3 <= N86;
    end 
  end


  always @(posedge clk) begin
    if(N90) begin
      roq_free_2 <= N91;
    end 
  end


  always @(posedge clk) begin
    if(N95) begin
      roq_free_1 <= N96;
    end 
  end


  always @(posedge clk) begin
    if(N100) begin
      roq_free_0 <= N101;
    end 
  end


  always @(posedge clk) begin
    if(T119) begin
      roq_tags_8[3] <= io_enq_bits_tag[3];
    end 
  end


  always @(posedge clk) begin
    if(T119) begin
      roq_tags_8[2] <= io_enq_bits_tag[2];
    end 
  end


  always @(posedge clk) begin
    if(T119) begin
      roq_tags_8[1] <= io_enq_bits_tag[1];
    end 
  end


  always @(posedge clk) begin
    if(T119) begin
      roq_tags_8[0] <= io_enq_bits_tag[0];
    end 
  end


  always @(posedge clk) begin
    if(T133) begin
      roq_data_0 <= io_enq_bits_data;
    end 
  end


  always @(posedge clk) begin
    if(T138) begin
      roq_data_1 <= io_enq_bits_data;
    end 
  end


  always @(posedge clk) begin
    if(T144) begin
      roq_data_2 <= io_enq_bits_data;
    end 
  end


  always @(posedge clk) begin
    if(T147) begin
      roq_data_3 <= io_enq_bits_data;
    end 
  end


  always @(posedge clk) begin
    if(T154) begin
      roq_data_4 <= io_enq_bits_data;
    end 
  end


  always @(posedge clk) begin
    if(T157) begin
      roq_data_5 <= io_enq_bits_data;
    end 
  end


  always @(posedge clk) begin
    if(T162) begin
      roq_data_6 <= io_enq_bits_data;
    end 
  end


  always @(posedge clk) begin
    if(T165) begin
      roq_data_7 <= io_enq_bits_data;
    end 
  end


  always @(posedge clk) begin
    if(T171) begin
      roq_data_8 <= io_enq_bits_data;
    end 
  end

  assign T35 = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } << T7;
  assign T135 = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } << T7;
  assign T6 = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } << T7;
  assign T21 = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } << T22;
  assign T7 = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
              (N1)? T8 : 1'b0;
  assign N0 = roq_free_0;
  assign N1 = N37;
  assign T8 = (N2)? { 1'b0, 1'b0, 1'b0, 1'b1 } : 
              (N3)? T9 : 1'b0;
  assign N2 = roq_free_1;
  assign N3 = N38;
  assign T9 = (N4)? { 1'b0, 1'b0, 1'b1, 1'b0 } : 
              (N5)? T10 : 1'b0;
  assign N4 = roq_free_2;
  assign N5 = N39;
  assign T10 = (N6)? { 1'b0, 1'b0, 1'b1, 1'b1 } : 
               (N7)? T11 : 1'b0;
  assign N6 = roq_free_3;
  assign N7 = N40;
  assign T11 = (N8)? { 1'b0, 1'b1, 1'b0, 1'b0 } : 
               (N9)? T12 : 1'b0;
  assign N8 = roq_free_4;
  assign N9 = N41;
  assign T12 = (N10)? { 1'b0, 1'b1, 1'b0, 1'b1 } : 
               (N11)? T13 : 1'b0;
  assign N10 = roq_free_5;
  assign N11 = N42;
  assign T13 = (N12)? { 1'b0, 1'b1, 1'b1, 1'b0 } : 
               (N13)? { T14, T14[2:2], T14[2:2] } : 1'b0;
  assign N12 = roq_free_6;
  assign N13 = N43;
  assign T22 = (N14)? { 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N15)? T23 : 1'b0;
  assign N14 = roq_matches_0;
  assign N15 = N45;
  assign T23 = (N16)? { 1'b0, 1'b0, 1'b0, 1'b1 } : 
               (N17)? T24 : 1'b0;
  assign N16 = roq_matches_1;
  assign N17 = N46;
  assign T24 = (N18)? { 1'b0, 1'b0, 1'b1, 1'b0 } : 
               (N19)? T25 : 1'b0;
  assign N18 = roq_matches_2;
  assign N19 = N47;
  assign T25 = (N20)? { 1'b0, 1'b0, 1'b1, 1'b1 } : 
               (N21)? T26 : 1'b0;
  assign N20 = roq_matches_3;
  assign N21 = N48;
  assign T26 = (N22)? { 1'b0, 1'b1, 1'b0, 1'b0 } : 
               (N23)? T27 : 1'b0;
  assign N22 = roq_matches_4;
  assign N23 = N49;
  assign T27 = (N24)? { 1'b0, 1'b1, 1'b0, 1'b1 } : 
               (N25)? T28 : 1'b0;
  assign N24 = roq_matches_5;
  assign N25 = N50;
  assign T28 = (N26)? { 1'b0, 1'b1, 1'b1, 1'b0 } : 
               (N27)? { T29, T29[2:2], T29[2:2] } : 1'b0;
  assign N26 = roq_matches_6;
  assign N27 = N51;
  assign io_deq_data = (N28)? roq_data_8 : 
                       (N29)? T129 : 1'b0;
  assign N28 = T22[3];
  assign N29 = N53;
  assign T129 = (N30)? T151 : 
                (N31)? T130 : 1'b0;
  assign N30 = T22[2];
  assign N31 = N54;
  assign T130 = (N32)? T142 : 
                (N33)? T131 : 1'b0;
  assign N32 = T22[1];
  assign N33 = N55;
  assign T131 = (N34)? roq_data_1 : 
                (N35)? roq_data_0 : 1'b0;
  assign N34 = T22[0];
  assign N35 = N56;
  assign T142 = (N34)? roq_data_3 : 
                (N35)? roq_data_2 : 1'b0;
  assign T151 = (N32)? T160 : 
                (N33)? T152 : 1'b0;
  assign T152 = (N34)? roq_data_5 : 
                (N35)? roq_data_4 : 1'b0;
  assign T160 = (N34)? roq_data_7 : 
                (N35)? roq_data_6 : 1'b0;
  assign N60 = (N36)? 1'b1 : 
               (N103)? 1'b1 : 
               (N106)? 1'b1 : 
               (N59)? 1'b0 : 1'b0;
  assign N36 = reset;
  assign N61 = (N36)? 1'b1 : 
               (N103)? 1'b1 : 
               (N106)? 1'b0 : 1'b0;
  assign N65 = (N36)? 1'b1 : 
               (N107)? 1'b1 : 
               (N110)? 1'b1 : 
               (N64)? 1'b0 : 1'b0;
  assign N66 = (N36)? 1'b1 : 
               (N107)? 1'b1 : 
               (N110)? 1'b0 : 1'b0;
  assign N70 = (N36)? 1'b1 : 
               (N111)? 1'b1 : 
               (N114)? 1'b1 : 
               (N69)? 1'b0 : 1'b0;
  assign N71 = (N36)? 1'b1 : 
               (N111)? 1'b1 : 
               (N114)? 1'b0 : 1'b0;
  assign N75 = (N36)? 1'b1 : 
               (N115)? 1'b1 : 
               (N118)? 1'b1 : 
               (N74)? 1'b0 : 1'b0;
  assign N76 = (N36)? 1'b1 : 
               (N115)? 1'b1 : 
               (N118)? 1'b0 : 1'b0;
  assign N80 = (N36)? 1'b1 : 
               (N119)? 1'b1 : 
               (N122)? 1'b1 : 
               (N79)? 1'b0 : 1'b0;
  assign N81 = (N36)? 1'b1 : 
               (N119)? 1'b1 : 
               (N122)? 1'b0 : 1'b0;
  assign N85 = (N36)? 1'b1 : 
               (N123)? 1'b1 : 
               (N126)? 1'b1 : 
               (N84)? 1'b0 : 1'b0;
  assign N86 = (N36)? 1'b1 : 
               (N123)? 1'b1 : 
               (N126)? 1'b0 : 1'b0;
  assign N90 = (N36)? 1'b1 : 
               (N127)? 1'b1 : 
               (N130)? 1'b1 : 
               (N89)? 1'b0 : 1'b0;
  assign N91 = (N36)? 1'b1 : 
               (N127)? 1'b1 : 
               (N130)? 1'b0 : 1'b0;
  assign N95 = (N36)? 1'b1 : 
               (N131)? 1'b1 : 
               (N134)? 1'b1 : 
               (N94)? 1'b0 : 1'b0;
  assign N96 = (N36)? 1'b1 : 
               (N131)? 1'b1 : 
               (N134)? 1'b0 : 1'b0;
  assign N100 = (N36)? 1'b1 : 
                (N135)? 1'b1 : 
                (N138)? 1'b1 : 
                (N99)? 1'b0 : 1'b0;
  assign N101 = (N36)? 1'b1 : 
                (N135)? 1'b1 : 
                (N138)? 1'b0 : 1'b0;
  assign io_deq_matches = T121 | roq_matches_8;
  assign roq_matches_8 = T117 & T1;
  assign T1 = ~roq_free_8;
  assign T4 = T114 & T6[8];
  assign N37 = ~roq_free_0;
  assign N38 = ~roq_free_1;
  assign N39 = ~roq_free_2;
  assign N40 = ~roq_free_3;
  assign N41 = ~roq_free_4;
  assign N42 = ~roq_free_5;
  assign N43 = ~roq_free_6;
  assign N44 = ~roq_free_7;
  assign T14[2] = roq_free_7;
  assign T14[3] = N44;
  assign T17 = T114 & T6[7];
  assign T19 = io_deq_valid & T21[7];
  assign N45 = ~roq_matches_0;
  assign N46 = ~roq_matches_1;
  assign N47 = ~roq_matches_2;
  assign N48 = ~roq_matches_3;
  assign N49 = ~roq_matches_4;
  assign N50 = ~roq_matches_5;
  assign N51 = ~roq_matches_6;
  assign N52 = ~roq_matches_7;
  assign T29[2] = roq_matches_7;
  assign T29[3] = N52;
  assign roq_matches_7 = T31 & T30;
  assign T30 = ~roq_free_7;
  assign T33 = T114 & T35[7];
  assign roq_matches_6 = T38 & T37;
  assign T37 = ~roq_free_6;
  assign T40 = T114 & T35[6];
  assign roq_matches_5 = T43 & T42;
  assign T42 = ~roq_free_5;
  assign T45 = T114 & T35[5];
  assign roq_matches_4 = T48 & T47;
  assign T47 = ~roq_free_4;
  assign T50 = T114 & T35[4];
  assign roq_matches_3 = T53 & T52;
  assign T52 = ~roq_free_3;
  assign T55 = T114 & T35[3];
  assign roq_matches_2 = T58 & T57;
  assign T57 = ~roq_free_2;
  assign T60 = T114 & T35[2];
  assign roq_matches_1 = T63 & T62;
  assign T62 = ~roq_free_1;
  assign T65 = T114 & T35[1];
  assign roq_matches_0 = T68 & T67;
  assign T67 = ~roq_free_0;
  assign T70 = T114 & T35[0];
  assign T74 = T114 & T6[6];
  assign T76 = io_deq_valid & T21[6];
  assign T80 = T114 & T6[5];
  assign T82 = io_deq_valid & T21[5];
  assign T86 = T114 & T6[4];
  assign T88 = io_deq_valid & T21[4];
  assign T92 = T114 & T6[3];
  assign T94 = io_deq_valid & T21[3];
  assign T98 = T114 & T6[2];
  assign T100 = io_deq_valid & T21[2];
  assign T104 = T114 & T6[1];
  assign T106 = io_deq_valid & T21[1];
  assign T110 = T114 & T6[0];
  assign T112 = io_deq_valid & T21[0];
  assign T114 = io_enq_valid & io_enq_ready;
  assign T115 = io_deq_valid & T21[8];
  assign T119 = T114 & T35[8];
  assign T121 = T122 | roq_matches_7;
  assign T122 = T123 | roq_matches_6;
  assign T123 = T124 | roq_matches_5;
  assign T124 = T125 | roq_matches_4;
  assign T125 = T126 | roq_matches_3;
  assign T126 = T127 | roq_matches_2;
  assign T127 = roq_matches_0 | roq_matches_1;
  assign N53 = ~T22[3];
  assign N54 = ~T22[2];
  assign N55 = ~T22[1];
  assign N56 = ~T22[0];
  assign T133 = T114 & T135[0];
  assign T138 = T114 & T135[1];
  assign T144 = T114 & T135[2];
  assign T147 = T114 & T135[3];
  assign T154 = T114 & T135[4];
  assign T157 = T114 & T135[5];
  assign T162 = T114 & T135[6];
  assign T165 = T114 & T135[7];
  assign T171 = T114 & T135[8];
  assign io_enq_ready = T175 | roq_free_8;
  assign T175 = T176 | roq_free_7;
  assign T176 = T177 | roq_free_6;
  assign T177 = T178 | roq_free_5;
  assign T178 = T179 | roq_free_4;
  assign T179 = T180 | roq_free_3;
  assign T180 = T181 | roq_free_2;
  assign T181 = roq_free_0 | roq_free_1;
  assign N57 = T115 | reset;
  assign N58 = T4 | N57;
  assign N59 = ~N58;
  assign N62 = T19 | reset;
  assign N63 = T17 | N62;
  assign N64 = ~N63;
  assign N67 = T76 | reset;
  assign N68 = T74 | N67;
  assign N69 = ~N68;
  assign N72 = T82 | reset;
  assign N73 = T80 | N72;
  assign N74 = ~N73;
  assign N77 = T88 | reset;
  assign N78 = T86 | N77;
  assign N79 = ~N78;
  assign N82 = T94 | reset;
  assign N83 = T92 | N82;
  assign N84 = ~N83;
  assign N87 = T100 | reset;
  assign N88 = T98 | N87;
  assign N89 = ~N88;
  assign N92 = T106 | reset;
  assign N93 = T104 | N92;
  assign N94 = ~N93;
  assign N97 = T112 | reset;
  assign N98 = T110 | N97;
  assign N99 = ~N98;
  assign N102 = ~reset;
  assign N103 = T115 & N102;
  assign N104 = ~T115;
  assign N105 = N102 & N104;
  assign N106 = T4 & N105;
  assign N107 = T19 & N102;
  assign N108 = ~T19;
  assign N109 = N102 & N108;
  assign N110 = T17 & N109;
  assign N111 = T76 & N102;
  assign N112 = ~T76;
  assign N113 = N102 & N112;
  assign N114 = T74 & N113;
  assign N115 = T82 & N102;
  assign N116 = ~T82;
  assign N117 = N102 & N116;
  assign N118 = T80 & N117;
  assign N119 = T88 & N102;
  assign N120 = ~T88;
  assign N121 = N102 & N120;
  assign N122 = T86 & N121;
  assign N123 = T94 & N102;
  assign N124 = ~T94;
  assign N125 = N102 & N124;
  assign N126 = T92 & N125;
  assign N127 = T100 & N102;
  assign N128 = ~T100;
  assign N129 = N102 & N128;
  assign N130 = T98 & N129;
  assign N131 = T106 & N102;
  assign N132 = ~T106;
  assign N133 = N102 & N132;
  assign N134 = T104 & N133;
  assign N135 = T112 & N102;
  assign N136 = ~T112;
  assign N137 = N102 & N136;
  assign N138 = T110 & N137;

endmodule