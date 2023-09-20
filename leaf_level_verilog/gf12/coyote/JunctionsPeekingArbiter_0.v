module JunctionsPeekingArbiter_0
(
  clk,
  reset,
  io_in_2_ready,
  io_in_2_valid,
  io_in_2_bits_resp,
  io_in_2_bits_data,
  io_in_2_bits_last,
  io_in_2_bits_id,
  io_in_2_bits_user,
  io_in_1_ready,
  io_in_1_valid,
  io_in_1_bits_resp,
  io_in_1_bits_data,
  io_in_1_bits_last,
  io_in_1_bits_id,
  io_in_1_bits_user,
  io_in_0_ready,
  io_in_0_valid,
  io_in_0_bits_resp,
  io_in_0_bits_data,
  io_in_0_bits_last,
  io_in_0_bits_id,
  io_in_0_bits_user,
  io_out_ready,
  io_out_valid,
  io_out_bits_resp,
  io_out_bits_data,
  io_out_bits_last,
  io_out_bits_id,
  io_out_bits_user
);

  input [1:0] io_in_2_bits_resp;
  input [63:0] io_in_2_bits_data;
  input [5:0] io_in_2_bits_id;
  input [1:0] io_in_1_bits_resp;
  input [63:0] io_in_1_bits_data;
  input [5:0] io_in_1_bits_id;
  input [1:0] io_in_0_bits_resp;
  input [63:0] io_in_0_bits_data;
  input [5:0] io_in_0_bits_id;
  output [1:0] io_out_bits_resp;
  output [63:0] io_out_bits_data;
  output [5:0] io_out_bits_id;
  input clk;
  input reset;
  input io_in_2_valid;
  input io_in_2_bits_last;
  input io_in_2_bits_user;
  input io_in_1_valid;
  input io_in_1_bits_last;
  input io_in_1_bits_user;
  input io_in_0_valid;
  input io_in_0_bits_last;
  input io_in_0_bits_user;
  input io_out_ready;
  output io_in_2_ready;
  output io_in_1_ready;
  output io_in_0_ready;
  output io_out_valid;
  output io_out_bits_last;
  output io_out_bits_user;
  wire [1:0] io_out_bits_resp,T3,choice,T34,T4,T13,T5,T10,T6,T8,T9,T11,T16,T14,T15,T17,T23,
  T25,T30,T37,T35,T36,T44,T75;
  wire [63:0] io_out_bits_data,T71;
  wire [5:0] io_out_bits_id,T63;
  wire io_in_2_ready,io_in_1_ready,io_in_0_ready,io_out_valid,io_out_bits_last,
  io_out_bits_user,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,
  N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,
  N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,
  N60,N61,N62,N63,N64,N65,N66,T1,N67,T40,N68,T19,N69,T12,N70,N71,N72,T18,N73,N74,
  N75,T33,N76,T27,T20,N77,T21,N78,N79,T28,N80,T39,N81,N82,N83,T53,N84,T47,T41,N85,
  T42,N86,N87,T48,N88,T55,T57,T56,T60,T67,T79,N89,N90,N91,N92,N93,N94,N95,N96,N97,
  N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113;
  reg [1:0] lockIdx;
  reg locked;
  assign T39 = T9 < { 1'b1, 1'b1 };
  assign T53 = T25 < { 1'b1, 1'b1 };

  always @(posedge clk) begin
    if(N91) begin
      lockIdx[1] <= N93;
    end 
  end


  always @(posedge clk) begin
    if(N91) begin
      lockIdx[0] <= N92;
    end 
  end


  always @(posedge clk) begin
    if(N97) begin
      locked <= N98;
    end 
  end

  assign N105 = ~T3[1];
  assign N106 = T3[0] | N105;
  assign N107 = ~N106;
  assign N108 = ~T3[0];
  assign N109 = N108 | T3[1];
  assign N110 = ~N109;
  assign N111 = T3[0] | T3[1];
  assign N112 = ~N111;
  assign T9 = lockIdx + 1'b1;
  assign T25 = lockIdx + 1'b1;
  assign T8 = T9 - 1'b1;
  assign T11 = { 1'b1, 1'b0 } + T9;
  assign T15 = T9 - { 1'b1, 1'b0 };
  assign T17 = 1'b1 + T9;
  assign T36 = T9 - { 1'b1, 1'b1 };
  assign T23 = T25 - { 1'b1, 1'b0 };
  assign T30 = 1'b1 + T25;
  assign T44 = T25 - { 1'b1, 1'b1 };
  assign N71 = N0 & N1;
  assign N0 = ~T8[1];
  assign N1 = ~T8[0];
  assign N72 = N2 & N3;
  assign N2 = ~T11[1];
  assign N3 = ~T11[0];
  assign N74 = N4 & N5;
  assign N4 = ~T15[1];
  assign N5 = ~T15[0];
  assign N75 = N6 & N7;
  assign N6 = ~T17[1];
  assign N7 = ~T17[0];
  assign N82 = N8 & N9;
  assign N8 = ~T36[1];
  assign N9 = ~T36[0];
  assign N83 = N10 & N11;
  assign N10 = ~T9[1];
  assign N11 = ~T9[0];
  assign io_out_bits_user = (N12)? io_in_2_bits_user : 
                            (N13)? T1 : 1'b0;
  assign N12 = T3[1];
  assign N13 = N105;
  assign T1 = (N14)? io_in_1_bits_user : 
              (N15)? io_in_0_bits_user : 1'b0;
  assign N14 = T3[0];
  assign N15 = N108;
  assign T3 = (N16)? lockIdx : 
              (N17)? choice : 1'b0;
  assign N16 = locked;
  assign N17 = N67;
  assign choice = (N18)? T34 : 
                  (N19)? T4 : 1'b0;
  assign N18 = T40;
  assign N19 = N68;
  assign T4 = (N20)? T13 : 
              (N21)? T5 : 1'b0;
  assign N20 = T19;
  assign N21 = N69;
  assign T5 = (N22)? T10 : 
              (N23)? T6 : 1'b0;
  assign N22 = T12;
  assign N23 = N70;
  assign T6 = (N24)? { 1'b0, 1'b0 } : 
              (N25)? { 1'b0, 1'b1 } : 
              (N26)? { 1'b1, 1'b0 } : 1'b0;
  assign N24 = N71;
  assign N25 = T8[0];
  assign N26 = T8[1];
  assign T10 = (N27)? { 1'b0, 1'b0 } : 
               (N28)? { 1'b0, 1'b1 } : 
               (N29)? { 1'b1, 1'b0 } : 1'b0;
  assign N27 = N72;
  assign N28 = T11[0];
  assign N29 = T11[1];
  assign T13 = (N30)? T16 : 
               (N31)? T14 : 1'b0;
  assign N30 = T18;
  assign N31 = N73;
  assign T14 = (N32)? { 1'b0, 1'b0 } : 
               (N33)? { 1'b0, 1'b1 } : 
               (N34)? { 1'b1, 1'b0 } : 1'b0;
  assign N32 = N74;
  assign N33 = T15[0];
  assign N34 = T15[1];
  assign T16 = (N35)? { 1'b0, 1'b0 } : 
               (N36)? { 1'b0, 1'b1 } : 
               (N37)? { 1'b1, 1'b0 } : 1'b0;
  assign N35 = N75;
  assign N36 = T17[0];
  assign N37 = T17[1];
  assign T19 = (N38)? T27 : 
               (N39)? T20 : 1'b0;
  assign N38 = T33;
  assign N39 = N76;
  assign T20 = (N40)? io_in_2_valid : 
               (N41)? T21 : 1'b0;
  assign N40 = T23[1];
  assign N41 = N77;
  assign T21 = (N42)? io_in_1_valid : 
               (N43)? io_in_0_valid : 1'b0;
  assign N42 = T23[0];
  assign N43 = N78;
  assign T27 = (N44)? io_in_2_valid : 
               (N45)? T28 : 1'b0;
  assign N44 = T30[1];
  assign N45 = N79;
  assign T28 = (N46)? io_in_1_valid : 
               (N47)? io_in_0_valid : 1'b0;
  assign N46 = T30[0];
  assign N47 = N80;
  assign T34 = (N48)? T37 : 
               (N49)? T35 : 1'b0;
  assign N48 = T39;
  assign N49 = N81;
  assign T35 = (N50)? { 1'b0, 1'b0 } : 
               (N51)? { 1'b0, 1'b1 } : 
               (N52)? { 1'b1, 1'b0 } : 1'b0;
  assign N50 = N82;
  assign N51 = T36[0];
  assign N52 = T36[1];
  assign T37 = (N53)? { 1'b0, 1'b0 } : 
               (N54)? { 1'b0, 1'b1 } : 
               (N55)? { 1'b1, 1'b0 } : 1'b0;
  assign N53 = N83;
  assign N54 = T9[0];
  assign N55 = T9[1];
  assign T40 = (N56)? T47 : 
               (N57)? T41 : 1'b0;
  assign N56 = T53;
  assign N57 = N84;
  assign T41 = (N58)? io_in_2_valid : 
               (N59)? T42 : 1'b0;
  assign N58 = T44[1];
  assign N59 = N85;
  assign T42 = (N60)? io_in_1_valid : 
               (N61)? io_in_0_valid : 1'b0;
  assign N60 = T44[0];
  assign N61 = N86;
  assign T47 = (N62)? io_in_2_valid : 
               (N63)? T48 : 1'b0;
  assign N62 = T25[1];
  assign N63 = N87;
  assign T48 = (N64)? io_in_1_valid : 
               (N65)? io_in_0_valid : 1'b0;
  assign N64 = T25[0];
  assign N65 = N88;
  assign io_out_bits_id = (N12)? io_in_2_bits_id : 
                          (N13)? T63 : 1'b0;
  assign T63 = (N14)? io_in_1_bits_id : 
               (N15)? io_in_0_bits_id : 1'b0;
  assign io_out_bits_last = (N12)? io_in_2_bits_last : 
                            (N13)? T67 : 1'b0;
  assign T67 = (N14)? io_in_1_bits_last : 
               (N15)? io_in_0_bits_last : 1'b0;
  assign io_out_bits_data = (N12)? io_in_2_bits_data : 
                            (N13)? T71 : 1'b0;
  assign T71 = (N14)? io_in_1_bits_data : 
               (N15)? io_in_0_bits_data : 1'b0;
  assign io_out_bits_resp = (N12)? io_in_2_bits_resp : 
                            (N13)? T75 : 1'b0;
  assign T75 = (N14)? io_in_1_bits_resp : 
               (N15)? io_in_0_bits_resp : 1'b0;
  assign io_out_valid = (N12)? io_in_2_valid : 
                        (N13)? T79 : 1'b0;
  assign T79 = (N14)? io_in_1_valid : 
               (N15)? io_in_0_valid : 1'b0;
  assign N91 = (N66)? 1'b1 : 
               (N100)? 1'b1 : 
               (N90)? 1'b0 : 1'b0;
  assign N66 = reset;
  assign { N93, N92 } = (N66)? { 1'b0, 1'b0 } : 
                        (N100)? choice : 1'b0;
  assign N97 = (N66)? 1'b1 : 
               (N101)? 1'b1 : 
               (N104)? 1'b1 : 
               (N96)? 1'b0 : 1'b0;
  assign N98 = (N66)? 1'b0 : 
               (N101)? 1'b0 : 
               (N104)? 1'b1 : 1'b0;
  assign N67 = ~locked;
  assign N68 = ~T40;
  assign N69 = ~T19;
  assign N70 = ~T12;
  assign T12 = ~N113;
  assign N113 = T9[1] | T9[0];
  assign N73 = ~T18;
  assign T18 = ~T9[1];
  assign N76 = ~T33;
  assign N77 = ~T23[1];
  assign N78 = ~T23[0];
  assign N79 = ~T30[1];
  assign N80 = ~T30[0];
  assign T33 = ~T25[1];
  assign N81 = ~T39;
  assign N84 = ~T53;
  assign N85 = ~T44[1];
  assign N86 = ~T44[0];
  assign N87 = ~T25[1];
  assign N88 = ~T25[0];
  assign T55 = T57 & T56;
  assign T56 = ~locked;
  assign T57 = io_out_ready & io_out_valid;
  assign T60 = T57 & io_out_bits_last;
  assign io_in_0_ready = io_out_ready & N112;
  assign io_in_1_ready = io_out_ready & N110;
  assign io_in_2_ready = io_out_ready & N107;
  assign N89 = T55 | reset;
  assign N90 = ~N89;
  assign N94 = T60 | reset;
  assign N95 = T55 | N94;
  assign N96 = ~N95;
  assign N99 = ~reset;
  assign N100 = T55 & N99;
  assign N101 = T60 & N99;
  assign N102 = ~T60;
  assign N103 = N99 & N102;
  assign N104 = T55 & N103;

endmodule