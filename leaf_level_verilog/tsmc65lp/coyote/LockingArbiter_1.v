module LockingArbiter_1
(
  clk,
  reset,
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

  input [25:0] io_in_2_bits_addr_block;
  input [5:0] io_in_2_bits_client_xact_id;
  input [1:0] io_in_2_bits_addr_beat;
  input [2:0] io_in_2_bits_a_type;
  input [16:0] io_in_2_bits_union;
  input [127:0] io_in_2_bits_data;
  input [25:0] io_in_1_bits_addr_block;
  input [5:0] io_in_1_bits_client_xact_id;
  input [1:0] io_in_1_bits_addr_beat;
  input [2:0] io_in_1_bits_a_type;
  input [16:0] io_in_1_bits_union;
  input [127:0] io_in_1_bits_data;
  input [25:0] io_in_0_bits_addr_block;
  input [5:0] io_in_0_bits_client_xact_id;
  input [1:0] io_in_0_bits_addr_beat;
  input [2:0] io_in_0_bits_a_type;
  input [16:0] io_in_0_bits_union;
  input [127:0] io_in_0_bits_data;
  output [25:0] io_out_bits_addr_block;
  output [5:0] io_out_bits_client_xact_id;
  output [1:0] io_out_bits_addr_beat;
  output [2:0] io_out_bits_a_type;
  output [16:0] io_out_bits_union;
  output [127:0] io_out_bits_data;
  output [1:0] io_chosen;
  input clk;
  input reset;
  input io_in_2_valid;
  input io_in_2_bits_is_builtin_type;
  input io_in_1_valid;
  input io_in_1_bits_is_builtin_type;
  input io_in_0_valid;
  input io_in_0_bits_is_builtin_type;
  input io_out_ready;
  output io_in_2_ready;
  output io_in_1_ready;
  output io_in_0_ready;
  output io_out_valid;
  output io_out_bits_is_builtin_type;
  wire [25:0] io_out_bits_addr_block,T48;
  wire [5:0] io_out_bits_client_xact_id,T44;
  wire [1:0] io_out_bits_addr_beat,io_chosen,choose,T1,T3,T4,T17,T40;
  wire [2:0] io_out_bits_a_type,T32;
  wire [16:0] io_out_bits_union,T28;
  wire [127:0] io_out_bits_data,T23;
  wire io_in_2_ready,io_in_1_ready,io_in_0_ready,io_out_valid,
  io_out_bits_is_builtin_type,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,T7,T6,N14,T5,N15,T9,T8,T12,T10,
  T20,T15,T16,T21,N16,N17,T36,T52,T56,T59,T60,T63,T64,T65,N18,N19,N20,N21,N22,N23,
  N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,
  N44,N45,N46,N47,N48,N49,N50,N51,N52;
  reg [1:0] lockIdx,R18;
  reg locked;
  assign T16 = T17 == 1'b0;

  always @(posedge clk) begin
    if(N20) begin
      lockIdx[1] <= N22;
    end 
  end


  always @(posedge clk) begin
    if(N20) begin
      lockIdx[0] <= N21;
    end 
  end


  always @(posedge clk) begin
    if(N26) begin
      locked <= N27;
    end 
  end


  always @(posedge clk) begin
    if(N30) begin
      R18[1] <= N32;
    end 
  end


  always @(posedge clk) begin
    if(N30) begin
      R18[0] <= N31;
    end 
  end

  assign N40 = ~lockIdx[1];
  assign N41 = lockIdx[0] | N40;
  assign N42 = ~N41;
  assign N43 = lockIdx[0] | lockIdx[1];
  assign N44 = ~N43;
  assign N45 = ~lockIdx[0];
  assign N46 = N45 | lockIdx[1];
  assign N47 = ~N46;
  assign N48 = ~io_out_bits_a_type[1];
  assign N49 = ~io_out_bits_a_type[0];
  assign N50 = N48 | io_out_bits_a_type[2];
  assign N51 = N49 | N50;
  assign N52 = ~N51;
  assign T17 = R18 + 1'b1;
  assign io_chosen = (N0)? lockIdx : 
                     (N1)? choose : 1'b0;
  assign N0 = locked;
  assign N1 = N11;
  assign choose = (N2)? { 1'b0, 1'b0 } : 
                  (N3)? T1 : 1'b0;
  assign N2 = io_in_0_valid;
  assign N3 = N12;
  assign T3 = (N4)? { 1'b0, 1'b0 } : 
              (N5)? T4 : 1'b0;
  assign N4 = T6;
  assign N5 = N14;
  assign io_out_bits_data = (N6)? io_in_2_bits_data : 
                            (N7)? T23 : 1'b0;
  assign N6 = io_chosen[1];
  assign N7 = N16;
  assign T23 = (N8)? io_in_1_bits_data : 
               (N9)? io_in_0_bits_data : 1'b0;
  assign N8 = io_chosen[0];
  assign N9 = N17;
  assign io_out_bits_union = (N6)? io_in_2_bits_union : 
                             (N7)? T28 : 1'b0;
  assign T28 = (N8)? io_in_1_bits_union : 
               (N9)? io_in_0_bits_union : 1'b0;
  assign io_out_bits_a_type = (N6)? io_in_2_bits_a_type : 
                              (N7)? T32 : 1'b0;
  assign T32 = (N8)? io_in_1_bits_a_type : 
               (N9)? io_in_0_bits_a_type : 1'b0;
  assign io_out_bits_is_builtin_type = (N6)? io_in_2_bits_is_builtin_type : 
                                       (N7)? T36 : 1'b0;
  assign T36 = (N8)? io_in_1_bits_is_builtin_type : 
               (N9)? io_in_0_bits_is_builtin_type : 1'b0;
  assign io_out_bits_addr_beat = (N6)? io_in_2_bits_addr_beat : 
                                 (N7)? T40 : 1'b0;
  assign T40 = (N8)? io_in_1_bits_addr_beat : 
               (N9)? io_in_0_bits_addr_beat : 1'b0;
  assign io_out_bits_client_xact_id = (N6)? io_in_2_bits_client_xact_id : 
                                      (N7)? T44 : 1'b0;
  assign T44 = (N8)? io_in_1_bits_client_xact_id : 
               (N9)? io_in_0_bits_client_xact_id : 1'b0;
  assign io_out_bits_addr_block = (N6)? io_in_2_bits_addr_block : 
                                  (N7)? T48 : 1'b0;
  assign T48 = (N8)? io_in_1_bits_addr_block : 
               (N9)? io_in_0_bits_addr_block : 1'b0;
  assign io_out_valid = (N6)? io_in_2_valid : 
                        (N7)? T52 : 1'b0;
  assign T52 = (N8)? io_in_1_valid : 
               (N9)? io_in_0_valid : 1'b0;
  assign T56 = (N0)? N44 : 
               (N1)? 1'b1 : 1'b0;
  assign T59 = (N0)? N47 : 
               (N1)? T60 : 1'b0;
  assign T63 = (N0)? N42 : 
               (N1)? T64 : 1'b0;
  assign N20 = (N10)? 1'b1 : 
               (N34)? 1'b1 : 
               (N19)? 1'b0 : 1'b0;
  assign N10 = reset;
  assign { N22, N21 } = (N10)? { 1'b1, 1'b0 } : 
                        (N34)? T3 : 1'b0;
  assign N26 = (N10)? 1'b1 : 
               (N35)? 1'b1 : 
               (N38)? 1'b1 : 
               (N25)? 1'b0 : 1'b0;
  assign N27 = (N10)? 1'b0 : 
               (N35)? 1'b0 : 
               (N38)? T15 : 1'b0;
  assign N30 = (N10)? 1'b1 : 
               (N39)? 1'b1 : 
               (N29)? 1'b0 : 1'b0;
  assign { N32, N31 } = (N10)? { 1'b0, 1'b0 } : 
                        (N39)? T17 : 1'b0;
  assign N11 = ~locked;
  assign N12 = ~io_in_0_valid;
  assign N13 = ~io_in_1_valid;
  assign T1[0] = io_in_1_valid;
  assign T1[1] = N13;
  assign N14 = ~T6;
  assign N15 = ~T5;
  assign T4[0] = T5;
  assign T4[1] = N15;
  assign T5 = io_in_1_ready & io_in_1_valid;
  assign T6 = io_in_0_ready & io_in_0_valid;
  assign T7 = T9 & T8;
  assign T8 = ~locked;
  assign T9 = T12 & T10;
  assign T10 = io_out_bits_is_builtin_type & N52;
  assign T12 = io_out_valid & io_out_ready;
  assign T15 = ~T16;
  assign T20 = T12 & T21;
  assign T21 = ~T10;
  assign N16 = ~io_chosen[1];
  assign N17 = ~io_chosen[0];
  assign io_in_0_ready = T56 & io_out_ready;
  assign io_in_1_ready = T59 & io_out_ready;
  assign T60 = ~io_in_0_valid;
  assign io_in_2_ready = T63 & io_out_ready;
  assign T64 = ~T65;
  assign T65 = io_in_0_valid | io_in_1_valid;
  assign N18 = T7 | reset;
  assign N19 = ~N18;
  assign N23 = T20 | reset;
  assign N24 = T9 | N23;
  assign N25 = ~N24;
  assign N28 = T9 | reset;
  assign N29 = ~N28;
  assign N33 = ~reset;
  assign N34 = T7 & N33;
  assign N35 = T20 & N33;
  assign N36 = ~T20;
  assign N37 = N33 & N36;
  assign N38 = T9 & N37;
  assign N39 = T9 & N33;

endmodule