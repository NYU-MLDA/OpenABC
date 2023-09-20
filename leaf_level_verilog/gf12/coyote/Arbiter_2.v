module Arbiter_2
(
  io_in_3_ready,
  io_in_3_valid,
  io_in_3_bits_way_en,
  io_in_3_bits_addr,
  io_in_2_ready,
  io_in_2_valid,
  io_in_2_bits_way_en,
  io_in_2_bits_addr,
  io_in_1_ready,
  io_in_1_valid,
  io_in_1_bits_way_en,
  io_in_1_bits_addr,
  io_in_0_ready,
  io_in_0_valid,
  io_in_0_bits_way_en,
  io_in_0_bits_addr,
  io_out_ready,
  io_out_valid,
  io_out_bits_way_en,
  io_out_bits_addr,
  io_chosen
);

  input [3:0] io_in_3_bits_way_en;
  input [11:0] io_in_3_bits_addr;
  input [3:0] io_in_2_bits_way_en;
  input [11:0] io_in_2_bits_addr;
  input [3:0] io_in_1_bits_way_en;
  input [11:0] io_in_1_bits_addr;
  input [3:0] io_in_0_bits_way_en;
  input [11:0] io_in_0_bits_addr;
  output [3:0] io_out_bits_way_en;
  output [11:0] io_out_bits_addr;
  output [1:0] io_chosen;
  input io_in_3_valid;
  input io_in_2_valid;
  input io_in_1_valid;
  input io_in_0_valid;
  input io_out_ready;
  output io_in_3_ready;
  output io_in_2_ready;
  output io_in_1_ready;
  output io_in_0_ready;
  output io_out_valid;
  wire [3:0] io_out_bits_way_en,T12,T10;
  wire [11:0] io_out_bits_addr,T6,T3;
  wire [1:0] io_chosen,T0;
  wire io_in_3_ready,io_in_2_ready,io_in_1_ready,io_in_0_ready,io_out_valid,N0,N1,N2,
  N3,N4,N5,N6,N7,io_out_ready,N8,N9,N10,N11,N12,T18,T16,T22,T24,T25,T27,T28,T29;
  wire [0:0] T1;
  assign io_in_0_ready = io_out_ready;
  assign io_chosen = (N0)? { 1'b0, 1'b0 } : 
                     (N1)? T0 : 1'b0;
  assign N0 = io_in_0_valid;
  assign N1 = N8;
  assign T0[0] = (N2)? 1'b1 : 
                 (N3)? T1[0] : 1'b0;
  assign N2 = io_in_1_valid;
  assign N3 = T0[1];
  assign io_out_bits_addr = (N4)? T6 : 
                            (N5)? T3 : 1'b0;
  assign N4 = io_chosen[1];
  assign N5 = N11;
  assign T3 = (N6)? io_in_1_bits_addr : 
              (N7)? io_in_0_bits_addr : 1'b0;
  assign N6 = io_chosen[0];
  assign N7 = N12;
  assign T6 = (N6)? io_in_3_bits_addr : 
              (N7)? io_in_2_bits_addr : 1'b0;
  assign io_out_bits_way_en = (N4)? T12 : 
                              (N5)? T10 : 1'b0;
  assign T10 = (N6)? io_in_1_bits_way_en : 
               (N7)? io_in_0_bits_way_en : 1'b0;
  assign T12 = (N6)? io_in_3_bits_way_en : 
               (N7)? io_in_2_bits_way_en : 1'b0;
  assign io_out_valid = (N4)? T18 : 
                        (N5)? T16 : 1'b0;
  assign T16 = (N6)? io_in_1_valid : 
               (N7)? io_in_0_valid : 1'b0;
  assign T18 = (N6)? io_in_3_valid : 
               (N7)? io_in_2_valid : 1'b0;
  assign N8 = ~io_in_0_valid;
  assign N9 = ~io_in_1_valid;
  assign T0[1] = N9;
  assign N10 = ~io_in_2_valid;
  assign T1[0] = N10;
  assign N11 = ~io_chosen[1];
  assign N12 = ~io_chosen[0];
  assign io_in_1_ready = T22 & io_out_ready;
  assign T22 = ~io_in_0_valid;
  assign io_in_2_ready = T24 & io_out_ready;
  assign T24 = ~T25;
  assign T25 = io_in_0_valid | io_in_1_valid;
  assign io_in_3_ready = T27 & io_out_ready;
  assign T27 = ~T28;
  assign T28 = T29 | io_in_2_valid;
  assign T29 = io_in_0_valid | io_in_1_valid;

endmodule