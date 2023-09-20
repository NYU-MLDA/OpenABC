module Arbiter_0
(
  io_in_4_ready,
  io_in_4_valid,
  io_in_4_bits_idx,
  io_in_3_ready,
  io_in_3_valid,
  io_in_3_bits_idx,
  io_in_2_ready,
  io_in_2_valid,
  io_in_2_bits_idx,
  io_in_1_ready,
  io_in_1_valid,
  io_in_1_bits_idx,
  io_in_0_ready,
  io_in_0_valid,
  io_in_0_bits_idx,
  io_out_ready,
  io_out_valid,
  io_out_bits_idx,
  io_chosen
);

  input [5:0] io_in_4_bits_idx;
  input [5:0] io_in_3_bits_idx;
  input [5:0] io_in_2_bits_idx;
  input [5:0] io_in_1_bits_idx;
  input [5:0] io_in_0_bits_idx;
  output [5:0] io_out_bits_idx;
  output [2:0] io_chosen;
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
  wire [5:0] io_out_bits_idx,T4,T8,T5;
  wire [2:0] io_chosen,T0,T1;
  wire io_in_4_ready,io_in_3_ready,io_in_2_ready,io_in_1_ready,io_in_0_ready,
  io_out_valid,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,io_out_ready,N12,N13,N14,N15,N16,N17,
  N18,T13,T16,T14,T21,T23,T24,T26,T27,T28,T30,T31,T32,T33;
  wire [2:1] T2;
  assign io_in_0_ready = io_out_ready;
  assign io_chosen = (N0)? { 1'b0, 1'b0, 1'b0 } : 
                     (N1)? T0 : 1'b0;
  assign N0 = io_in_0_valid;
  assign N1 = N12;
  assign T0 = (N2)? { 1'b0, 1'b0, 1'b1 } : 
              (N3)? T1 : 1'b0;
  assign N2 = io_in_1_valid;
  assign N3 = N13;
  assign T1 = (N4)? { 1'b0, 1'b1, 1'b0 } : 
              (N5)? { T2, T2[1:1] } : 1'b0;
  assign N4 = io_in_2_valid;
  assign N5 = N14;
  assign io_out_bits_idx = (N6)? io_in_4_bits_idx : 
                           (N7)? T4 : 1'b0;
  assign N6 = io_chosen[2];
  assign N7 = N16;
  assign T4 = (N8)? T8 : 
              (N9)? T5 : 1'b0;
  assign N8 = io_chosen[1];
  assign N9 = N17;
  assign T5 = (N10)? io_in_1_bits_idx : 
              (N11)? io_in_0_bits_idx : 1'b0;
  assign N10 = io_chosen[0];
  assign N11 = N18;
  assign T8 = (N10)? io_in_3_bits_idx : 
              (N11)? io_in_2_bits_idx : 1'b0;
  assign io_out_valid = (N6)? io_in_4_valid : 
                        (N7)? T13 : 1'b0;
  assign T13 = (N8)? T16 : 
               (N9)? T14 : 1'b0;
  assign T14 = (N10)? io_in_1_valid : 
               (N11)? io_in_0_valid : 1'b0;
  assign T16 = (N10)? io_in_3_valid : 
               (N11)? io_in_2_valid : 1'b0;
  assign N12 = ~io_in_0_valid;
  assign N13 = ~io_in_1_valid;
  assign N14 = ~io_in_2_valid;
  assign N15 = ~io_in_3_valid;
  assign T2[1] = io_in_3_valid;
  assign T2[2] = N15;
  assign N16 = ~io_chosen[2];
  assign N17 = ~io_chosen[1];
  assign N18 = ~io_chosen[0];
  assign io_in_1_ready = T21 & io_out_ready;
  assign T21 = ~io_in_0_valid;
  assign io_in_2_ready = T23 & io_out_ready;
  assign T23 = ~T24;
  assign T24 = io_in_0_valid | io_in_1_valid;
  assign io_in_3_ready = T26 & io_out_ready;
  assign T26 = ~T27;
  assign T27 = T28 | io_in_2_valid;
  assign T28 = io_in_0_valid | io_in_1_valid;
  assign io_in_4_ready = T30 & io_out_ready;
  assign T30 = ~T31;
  assign T31 = T32 | io_in_3_valid;
  assign T32 = T33 | io_in_2_valid;
  assign T33 = io_in_0_valid | io_in_1_valid;

endmodule