module LockingArbiter_0
(
  clk,
  reset,
  io_in_1_ready,
  io_in_1_valid,
  io_in_1_bits_addr_beat,
  io_in_1_bits_addr_block,
  io_in_1_bits_client_xact_id,
  io_in_1_bits_voluntary,
  io_in_1_bits_r_type,
  io_in_1_bits_data,
  io_in_0_ready,
  io_in_0_valid,
  io_in_0_bits_addr_beat,
  io_in_0_bits_addr_block,
  io_in_0_bits_client_xact_id,
  io_in_0_bits_voluntary,
  io_in_0_bits_r_type,
  io_in_0_bits_data,
  io_out_ready,
  io_out_valid,
  io_out_bits_addr_beat,
  io_out_bits_addr_block,
  io_out_bits_client_xact_id,
  io_out_bits_voluntary,
  io_out_bits_r_type,
  io_out_bits_data,
  io_chosen
);

  input [1:0] io_in_1_bits_addr_beat;
  input [25:0] io_in_1_bits_addr_block;
  input [5:0] io_in_1_bits_client_xact_id;
  input [2:0] io_in_1_bits_r_type;
  input [127:0] io_in_1_bits_data;
  input [1:0] io_in_0_bits_addr_beat;
  input [25:0] io_in_0_bits_addr_block;
  input [5:0] io_in_0_bits_client_xact_id;
  input [2:0] io_in_0_bits_r_type;
  input [127:0] io_in_0_bits_data;
  output [1:0] io_out_bits_addr_beat;
  output [25:0] io_out_bits_addr_block;
  output [5:0] io_out_bits_client_xact_id;
  output [2:0] io_out_bits_r_type;
  output [127:0] io_out_bits_data;
  input clk;
  input reset;
  input io_in_1_valid;
  input io_in_1_bits_voluntary;
  input io_in_0_valid;
  input io_in_0_bits_voluntary;
  input io_out_ready;
  output io_in_1_ready;
  output io_in_0_ready;
  output io_out_valid;
  output io_out_bits_voluntary;
  output io_chosen;
  wire [1:0] io_out_bits_addr_beat,T17;
  wire [25:0] io_out_bits_addr_block;
  wire [5:0] io_out_bits_client_xact_id;
  wire [2:0] io_out_bits_r_type;
  wire [127:0] io_out_bits_data;
  wire io_in_1_ready,io_in_0_ready,io_out_valid,io_out_bits_voluntary,io_chosen,N0,N1,
  N2,N3,N4,N5,T4,T3,T6,T5,T12,T7,T9,T20,T15,T16,T21,N6,T31,T34,T35,N7,N8,N9,N10,
  N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,
  N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41;
  reg lockIdx,locked;
  reg [1:0] R18;
  assign T16 = T17 == 1'b0;

  always @(posedge clk) begin
    if(N9) begin
      lockIdx <= N10;
    end 
  end


  always @(posedge clk) begin
    if(N14) begin
      locked <= N15;
    end 
  end


  always @(posedge clk) begin
    if(N18) begin
      R18[1] <= N20;
    end 
  end


  always @(posedge clk) begin
    if(N18) begin
      R18[0] <= N19;
    end 
  end

  assign N28 = ~T3;
  assign N29 = ~lockIdx;
  assign N30 = ~io_out_bits_r_type[1];
  assign N31 = N30 | io_out_bits_r_type[2];
  assign N32 = io_out_bits_r_type[0] | N31;
  assign N33 = ~N32;
  assign N34 = io_out_bits_r_type[1] | io_out_bits_r_type[2];
  assign N35 = io_out_bits_r_type[0] | N34;
  assign N36 = ~N35;
  assign N37 = ~io_out_bits_r_type[0];
  assign N38 = io_out_bits_r_type[1] | io_out_bits_r_type[2];
  assign N39 = N37 | N38;
  assign N40 = ~N39;
  assign N41 = ~io_in_0_valid;
  assign T17 = R18 + 1'b1;
  assign io_chosen = (N0)? lockIdx : 
                     (N1)? N41 : 1'b0;
  assign N0 = locked;
  assign N1 = N5;
  assign io_out_bits_data = (N2)? io_in_1_bits_data : 
                            (N3)? io_in_0_bits_data : 1'b0;
  assign N2 = io_chosen;
  assign N3 = N6;
  assign io_out_bits_r_type = (N2)? io_in_1_bits_r_type : 
                              (N3)? io_in_0_bits_r_type : 1'b0;
  assign io_out_bits_voluntary = (N2)? io_in_1_bits_voluntary : 
                                 (N3)? io_in_0_bits_voluntary : 1'b0;
  assign io_out_bits_client_xact_id = (N2)? io_in_1_bits_client_xact_id : 
                                      (N3)? io_in_0_bits_client_xact_id : 1'b0;
  assign io_out_bits_addr_block = (N2)? io_in_1_bits_addr_block : 
                                  (N3)? io_in_0_bits_addr_block : 1'b0;
  assign io_out_bits_addr_beat = (N2)? io_in_1_bits_addr_beat : 
                                 (N3)? io_in_0_bits_addr_beat : 1'b0;
  assign io_out_valid = (N2)? io_in_1_valid : 
                        (N3)? io_in_0_valid : 1'b0;
  assign T31 = (N0)? N29 : 
               (N1)? 1'b1 : 1'b0;
  assign T34 = (N0)? lockIdx : 
               (N1)? T35 : 1'b0;
  assign N9 = (N4)? 1'b1 : 
              (N22)? 1'b1 : 
              (N8)? 1'b0 : 1'b0;
  assign N4 = reset;
  assign N10 = (N4)? 1'b1 : 
               (N22)? N28 : 1'b0;
  assign N14 = (N4)? 1'b1 : 
               (N23)? 1'b1 : 
               (N26)? 1'b1 : 
               (N13)? 1'b0 : 1'b0;
  assign N15 = (N4)? 1'b0 : 
               (N23)? 1'b0 : 
               (N26)? T15 : 1'b0;
  assign N18 = (N4)? 1'b1 : 
               (N27)? 1'b1 : 
               (N17)? 1'b0 : 1'b0;
  assign { N20, N19 } = (N4)? { 1'b0, 1'b0 } : 
                        (N27)? T17 : 1'b0;
  assign N5 = ~locked;
  assign T3 = io_in_0_ready & io_in_0_valid;
  assign T4 = T6 & T5;
  assign T5 = ~locked;
  assign T6 = T12 & T7;
  assign T7 = T9 | N33;
  assign T9 = N36 | N40;
  assign T12 = io_out_valid & io_out_ready;
  assign T15 = ~T16;
  assign T20 = T12 & T21;
  assign T21 = ~T7;
  assign N6 = ~io_chosen;
  assign io_in_0_ready = T31 & io_out_ready;
  assign io_in_1_ready = T34 & io_out_ready;
  assign T35 = ~io_in_0_valid;
  assign N7 = T4 | reset;
  assign N8 = ~N7;
  assign N11 = T20 | reset;
  assign N12 = T6 | N11;
  assign N13 = ~N12;
  assign N16 = T6 | reset;
  assign N17 = ~N16;
  assign N21 = ~reset;
  assign N22 = T4 & N21;
  assign N23 = T20 & N21;
  assign N24 = ~T20;
  assign N25 = N21 & N24;
  assign N26 = T6 & N25;
  assign N27 = T6 & N21;

endmodule