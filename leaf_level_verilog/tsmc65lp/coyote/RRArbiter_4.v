module RRArbiter_4
(
  clk,
  reset,
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
  input io_in_2_valid;
  input io_in_2_bits_user;
  input io_in_1_valid;
  input io_in_1_bits_user;
  input io_in_0_valid;
  input io_in_0_bits_user;
  input io_out_ready;
  output io_in_2_ready;
  output io_in_1_ready;
  output io_in_0_ready;
  output io_out_valid;
  output io_out_bits_user;
  wire [1:0] io_out_bits_resp,io_chosen,T0,T1,T2,T19;
  wire [5:0] io_out_bits_id,T15;
  wire io_in_2_ready,io_in_1_ready,io_in_0_ready,io_out_valid,io_out_bits_user,N0,N1,
  N2,N3,N4,N5,N6,N7,N8,N9,N10,T7,N11,T3,N12,N13,N14,T4,T6,T8,N15,T10,N16,T23,T27,
  T37,T28,T29,T32,T30,T31,T35,T33,T34,T36,T39,T44,T40,T41,T42,T43,T46,T45,T48,T54,
  T49,T50,T51,T52,T53,T56,T55,T57,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26;
  reg [1:0] last_grant;
  assign T36 = last_grant < 1'b0;
  assign T37 = last_grant < 1'b0;

  always @(posedge clk) begin
    if(N19) begin
      last_grant[1] <= N21;
    end 
  end


  always @(posedge clk) begin
    if(N19) begin
      last_grant[0] <= N20;
    end 
  end

  assign io_chosen = (N0)? { 1'b0, 1'b1 } : 
                     (N1)? T0 : 1'b0;
  assign N0 = T7;
  assign N1 = N11;
  assign T0 = (N2)? { 1'b1, 1'b0 } : 
              (N3)? T1 : 1'b0;
  assign N2 = T3;
  assign N3 = N12;
  assign T1 = (N4)? { 1'b0, 1'b0 } : 
              (N5)? T2 : 1'b0;
  assign N4 = io_in_0_valid;
  assign N5 = N13;
  assign io_out_bits_user = (N6)? io_in_2_bits_user : 
                            (N7)? T10 : 1'b0;
  assign N6 = io_chosen[1];
  assign N7 = N15;
  assign T10 = (N8)? io_in_1_bits_user : 
               (N9)? io_in_0_bits_user : 1'b0;
  assign N8 = io_chosen[0];
  assign N9 = N16;
  assign io_out_bits_id = (N6)? io_in_2_bits_id : 
                          (N7)? T15 : 1'b0;
  assign T15 = (N8)? io_in_1_bits_id : 
               (N9)? io_in_0_bits_id : 1'b0;
  assign io_out_bits_resp = (N6)? io_in_2_bits_resp : 
                            (N7)? T19 : 1'b0;
  assign T19 = (N8)? io_in_1_bits_resp : 
               (N9)? io_in_0_bits_resp : 1'b0;
  assign io_out_valid = (N6)? io_in_2_valid : 
                        (N7)? T23 : 1'b0;
  assign T23 = (N8)? io_in_1_valid : 
               (N9)? io_in_0_valid : 1'b0;
  assign N19 = (N10)? 1'b1 : 
               (N23)? 1'b1 : 
               (N18)? 1'b0 : 1'b0;
  assign N10 = reset;
  assign { N21, N20 } = (N10)? { 1'b0, 1'b0 } : 
                        (N23)? io_chosen : 1'b0;
  assign N11 = ~T7;
  assign N12 = ~T3;
  assign N13 = ~io_in_0_valid;
  assign N14 = ~io_in_1_valid;
  assign T2[0] = io_in_1_valid;
  assign T2[1] = N14;
  assign T3 = io_in_2_valid & T4;
  assign T4 = ~last_grant[1];
  assign T6 = io_out_ready & io_out_valid;
  assign T7 = io_in_1_valid & T8;
  assign T8 = ~N24;
  assign N24 = last_grant[1] | last_grant[0];
  assign N15 = ~io_chosen[1];
  assign N16 = ~io_chosen[0];
  assign io_in_0_ready = T27 & io_out_ready;
  assign T27 = T37 | T28;
  assign T28 = ~T29;
  assign T29 = T32 | T30;
  assign T30 = io_in_2_valid & T31;
  assign T31 = ~last_grant[1];
  assign T32 = T35 | T33;
  assign T33 = io_in_1_valid & T34;
  assign T34 = ~N25;
  assign N25 = last_grant[1] | last_grant[0];
  assign T35 = io_in_0_valid & T36;
  assign io_in_1_ready = T39 & io_out_ready;
  assign T39 = T44 | T40;
  assign T40 = ~T41;
  assign T41 = T42 | io_in_0_valid;
  assign T42 = T43 | T30;
  assign T43 = T35 | T33;
  assign T44 = T46 & T45;
  assign T45 = ~N26;
  assign N26 = last_grant[1] | last_grant[0];
  assign T46 = ~T35;
  assign io_in_2_ready = T48 & io_out_ready;
  assign T48 = T54 | T49;
  assign T49 = ~T50;
  assign T50 = T51 | io_in_1_valid;
  assign T51 = T52 | io_in_0_valid;
  assign T52 = T53 | T30;
  assign T53 = T35 | T33;
  assign T54 = T56 & T55;
  assign T55 = ~last_grant[1];
  assign T56 = ~T57;
  assign T57 = T35 | T33;
  assign N17 = T6 | reset;
  assign N18 = ~N17;
  assign N22 = ~reset;
  assign N23 = T6 & N22;

endmodule