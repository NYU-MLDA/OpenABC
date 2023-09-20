module RRArbiter_6
(
  clk,
  reset,
  io_in_3_ready,
  io_in_3_valid,
  io_in_3_bits_resp,
  io_in_3_bits_id,
  io_in_3_bits_user,
  io_in_2_ready,
  io_in_2_valid,
  io_in_2_bits_resp,
  io_in_2_bits_id,
  io_in_2_bits_user,
  io_in_1_ready,
  io_in_1_valid,
  io_in_1_bits_resp,
  io_in_1_bits_id,
  io_in_1_bits_user,
  io_in_0_ready,
  io_in_0_valid,
  io_in_0_bits_resp,
  io_in_0_bits_id,
  io_in_0_bits_user,
  io_out_ready,
  io_out_valid,
  io_out_bits_resp,
  io_out_bits_id,
  io_out_bits_user,
  io_chosen
);

  input [1:0] io_in_3_bits_resp;
  input [5:0] io_in_3_bits_id;
  input [1:0] io_in_2_bits_resp;
  input [5:0] io_in_2_bits_id;
  input [1:0] io_in_1_bits_resp;
  input [5:0] io_in_1_bits_id;
  input [1:0] io_in_0_bits_resp;
  input [5:0] io_in_0_bits_id;
  output [1:0] io_out_bits_resp;
  output [5:0] io_out_bits_id;
  output [1:0] io_chosen;
  input clk;
  input reset;
  input io_in_3_valid;
  input io_in_3_bits_user;
  input io_in_2_valid;
  input io_in_2_bits_user;
  input io_in_1_valid;
  input io_in_1_bits_user;
  input io_in_0_valid;
  input io_in_0_bits_user;
  input io_out_ready;
  output io_in_3_ready;
  output io_in_2_ready;
  output io_in_1_ready;
  output io_in_0_ready;
  output io_out_valid;
  output io_out_bits_user;
  wire [1:0] io_out_bits_resp,io_chosen,T0,T1,T2,T3,T29,T27;
  wire [5:0] io_out_bits_id,T23,T21;
  wire io_in_3_ready,io_in_2_ready,io_in_1_ready,io_in_0_ready,io_out_valid,
  io_out_bits_user,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,T11,N15,T9,N16,T5,N17,
  N18,N19,N20,T6,T8,T10,T12,N21,T17,T14,N22,T35,T33,T39,T52,T40,T41,T44,T42,T43,T47,
  T45,T46,T50,T48,T49,T51,T54,T60,T55,T56,T57,T58,T59,T62,T61,T64,T71,T65,T66,T67,
  T68,T69,T70,T73,T72,T74,T76,T84,T77,T78,T79,T80,T81,T82,T83,T86,T85,T87,T88,N23,
  N24,N25,N26,N27,N28,N29,N30,N31,N32;
  wire [0:0] T4;
  reg [1:0] last_grant;
  assign T6 = last_grant < { 1'b1, 1'b1 };
  assign T43 = last_grant < { 1'b1, 1'b1 };
  assign T51 = last_grant < 1'b0;
  assign T52 = last_grant < 1'b0;
  assign T85 = last_grant < { 1'b1, 1'b1 };

  always @(posedge clk) begin
    if(N25) begin
      last_grant[1] <= N27;
    end 
  end


  always @(posedge clk) begin
    if(N25) begin
      last_grant[0] <= N26;
    end 
  end

  assign io_chosen = (N0)? { 1'b0, 1'b1 } : 
                     (N1)? T0 : 1'b0;
  assign N0 = T11;
  assign N1 = N15;
  assign T0 = (N2)? { 1'b1, 1'b0 } : 
              (N3)? T1 : 1'b0;
  assign N2 = T9;
  assign N3 = N16;
  assign T1 = (N4)? { 1'b1, 1'b1 } : 
              (N5)? T2 : 1'b0;
  assign N4 = T5;
  assign N5 = N17;
  assign T2 = (N6)? { 1'b0, 1'b0 } : 
              (N7)? T3 : 1'b0;
  assign N6 = io_in_0_valid;
  assign N7 = N18;
  assign T3[0] = (N8)? 1'b1 : 
                 (N9)? T4[0] : 1'b0;
  assign N8 = io_in_1_valid;
  assign N9 = T3[1];
  assign io_out_bits_user = (N10)? T17 : 
                            (N11)? T14 : 1'b0;
  assign N10 = io_chosen[1];
  assign N11 = N21;
  assign T14 = (N12)? io_in_1_bits_user : 
               (N13)? io_in_0_bits_user : 1'b0;
  assign N12 = io_chosen[0];
  assign N13 = N22;
  assign T17 = (N12)? io_in_3_bits_user : 
               (N13)? io_in_2_bits_user : 1'b0;
  assign io_out_bits_id = (N10)? T23 : 
                          (N11)? T21 : 1'b0;
  assign T21 = (N12)? io_in_1_bits_id : 
               (N13)? io_in_0_bits_id : 1'b0;
  assign T23 = (N12)? io_in_3_bits_id : 
               (N13)? io_in_2_bits_id : 1'b0;
  assign io_out_bits_resp = (N10)? T29 : 
                            (N11)? T27 : 1'b0;
  assign T27 = (N12)? io_in_1_bits_resp : 
               (N13)? io_in_0_bits_resp : 1'b0;
  assign T29 = (N12)? io_in_3_bits_resp : 
               (N13)? io_in_2_bits_resp : 1'b0;
  assign io_out_valid = (N10)? T35 : 
                        (N11)? T33 : 1'b0;
  assign T33 = (N12)? io_in_1_valid : 
               (N13)? io_in_0_valid : 1'b0;
  assign T35 = (N12)? io_in_3_valid : 
               (N13)? io_in_2_valid : 1'b0;
  assign N25 = (N14)? 1'b1 : 
               (N29)? 1'b1 : 
               (N24)? 1'b0 : 1'b0;
  assign N14 = reset;
  assign { N27, N26 } = (N14)? { 1'b0, 1'b0 } : 
                        (N29)? io_chosen : 1'b0;
  assign N15 = ~T11;
  assign N16 = ~T9;
  assign N17 = ~T5;
  assign N18 = ~io_in_0_valid;
  assign N19 = ~io_in_1_valid;
  assign T3[1] = N19;
  assign N20 = ~io_in_2_valid;
  assign T4[0] = N20;
  assign T5 = io_in_3_valid & T6;
  assign T8 = io_out_ready & io_out_valid;
  assign T9 = io_in_2_valid & T10;
  assign T10 = ~last_grant[1];
  assign T11 = io_in_1_valid & T12;
  assign T12 = ~N30;
  assign N30 = last_grant[1] | last_grant[0];
  assign N21 = ~io_chosen[1];
  assign N22 = ~io_chosen[0];
  assign io_in_0_ready = T39 & io_out_ready;
  assign T39 = T52 | T40;
  assign T40 = ~T41;
  assign T41 = T44 | T42;
  assign T42 = io_in_3_valid & T43;
  assign T44 = T47 | T45;
  assign T45 = io_in_2_valid & T46;
  assign T46 = ~last_grant[1];
  assign T47 = T50 | T48;
  assign T48 = io_in_1_valid & T49;
  assign T49 = ~N31;
  assign N31 = last_grant[1] | last_grant[0];
  assign T50 = io_in_0_valid & T51;
  assign io_in_1_ready = T54 & io_out_ready;
  assign T54 = T60 | T55;
  assign T55 = ~T56;
  assign T56 = T57 | io_in_0_valid;
  assign T57 = T58 | T42;
  assign T58 = T59 | T45;
  assign T59 = T50 | T48;
  assign T60 = T62 & T61;
  assign T61 = ~N32;
  assign N32 = last_grant[1] | last_grant[0];
  assign T62 = ~T50;
  assign io_in_2_ready = T64 & io_out_ready;
  assign T64 = T71 | T65;
  assign T65 = ~T66;
  assign T66 = T67 | io_in_1_valid;
  assign T67 = T68 | io_in_0_valid;
  assign T68 = T69 | T42;
  assign T69 = T70 | T45;
  assign T70 = T50 | T48;
  assign T71 = T73 & T72;
  assign T72 = ~last_grant[1];
  assign T73 = ~T74;
  assign T74 = T50 | T48;
  assign io_in_3_ready = T76 & io_out_ready;
  assign T76 = T84 | T77;
  assign T77 = ~T78;
  assign T78 = T79 | io_in_2_valid;
  assign T79 = T80 | io_in_1_valid;
  assign T80 = T81 | io_in_0_valid;
  assign T81 = T82 | T42;
  assign T82 = T83 | T45;
  assign T83 = T50 | T48;
  assign T84 = T86 & T85;
  assign T86 = ~T87;
  assign T87 = T88 | T45;
  assign T88 = T50 | T48;
  assign N23 = T8 | reset;
  assign N24 = ~N23;
  assign N28 = ~reset;
  assign N29 = T8 & N28;

endmodule