module LockingRRArbiter_1
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
  wire [1:0] io_out_bits_addr_beat,T22;
  wire [25:0] io_out_bits_addr_block;
  wire [5:0] io_out_bits_client_xact_id;
  wire [2:0] io_out_bits_r_type;
  wire [127:0] io_out_bits_data;
  wire io_in_1_ready,io_in_0_ready,io_out_valid,io_out_bits_voluntary,io_chosen,N0,N1,
  N2,N3,N4,N5,N6,N7,N8,N9,choose,T2,N10,T3,T5,T9,T8,T11,T10,T17,T12,T14,T25,T20,
  T21,T26,N11,T36,T37,T44,T38,T39,T42,T40,T41,T43,T47,T48,T52,T49,T50,T51,T54,T53,
  N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,
  N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51;
  reg last_grant,lockIdx,locked;
  reg [1:0] R23;
  assign T21 = T22 == 1'b0;
  assign T43 = N0 & 1'b0;
  assign N0 = ~last_grant;
  assign T44 = N1 & 1'b0;
  assign N1 = ~last_grant;

  always @(posedge clk) begin
    if(N14) begin
      last_grant <= N15;
    end 
  end


  always @(posedge clk) begin
    if(N18) begin
      lockIdx <= N19;
    end 
  end


  always @(posedge clk) begin
    if(N23) begin
      locked <= N24;
    end 
  end


  always @(posedge clk) begin
    if(N27) begin
      R23[1] <= N29;
    end 
  end


  always @(posedge clk) begin
    if(N27) begin
      R23[0] <= N28;
    end 
  end

  assign N38 = ~T8;
  assign N39 = ~lockIdx;
  assign N40 = ~io_out_bits_r_type[1];
  assign N41 = N40 | io_out_bits_r_type[2];
  assign N42 = io_out_bits_r_type[0] | N41;
  assign N43 = ~N42;
  assign N44 = io_out_bits_r_type[1] | io_out_bits_r_type[2];
  assign N45 = io_out_bits_r_type[0] | N44;
  assign N46 = ~N45;
  assign N47 = ~io_out_bits_r_type[0];
  assign N48 = io_out_bits_r_type[1] | io_out_bits_r_type[2];
  assign N49 = N47 | N48;
  assign N50 = ~N49;
  assign N51 = ~io_in_0_valid;
  assign T22 = R23 + 1'b1;
  assign io_chosen = (N2)? lockIdx : 
                     (N3)? choose : 1'b0;
  assign N2 = locked;
  assign N3 = N9;
  assign choose = (N4)? 1'b1 : 
                  (N5)? N51 : 1'b0;
  assign N4 = T2;
  assign N5 = N10;
  assign io_out_bits_data = (N6)? io_in_1_bits_data : 
                            (N7)? io_in_0_bits_data : 1'b0;
  assign N6 = io_chosen;
  assign N7 = N11;
  assign io_out_bits_r_type = (N6)? io_in_1_bits_r_type : 
                              (N7)? io_in_0_bits_r_type : 1'b0;
  assign io_out_bits_voluntary = (N6)? io_in_1_bits_voluntary : 
                                 (N7)? io_in_0_bits_voluntary : 1'b0;
  assign io_out_bits_client_xact_id = (N6)? io_in_1_bits_client_xact_id : 
                                      (N7)? io_in_0_bits_client_xact_id : 1'b0;
  assign io_out_bits_addr_block = (N6)? io_in_1_bits_addr_block : 
                                  (N7)? io_in_0_bits_addr_block : 1'b0;
  assign io_out_bits_addr_beat = (N6)? io_in_1_bits_addr_beat : 
                                 (N7)? io_in_0_bits_addr_beat : 1'b0;
  assign io_out_valid = (N6)? io_in_1_valid : 
                        (N7)? io_in_0_valid : 1'b0;
  assign T36 = (N2)? N39 : 
               (N3)? T37 : 1'b0;
  assign T47 = (N2)? lockIdx : 
               (N3)? T48 : 1'b0;
  assign N14 = (N8)? 1'b1 : 
               (N31)? 1'b1 : 
               (N13)? 1'b0 : 1'b0;
  assign N8 = reset;
  assign N15 = (N8)? 1'b0 : 
               (N31)? io_chosen : 1'b0;
  assign N18 = (N8)? 1'b1 : 
               (N32)? 1'b1 : 
               (N17)? 1'b0 : 1'b0;
  assign N19 = (N8)? 1'b1 : 
               (N32)? N38 : 1'b0;
  assign N23 = (N8)? 1'b1 : 
               (N33)? 1'b1 : 
               (N36)? 1'b1 : 
               (N22)? 1'b0 : 1'b0;
  assign N24 = (N8)? 1'b0 : 
               (N33)? 1'b0 : 
               (N36)? T20 : 1'b0;
  assign N27 = (N8)? 1'b1 : 
               (N37)? 1'b1 : 
               (N26)? 1'b0 : 1'b0;
  assign { N29, N28 } = (N8)? { 1'b0, 1'b0 } : 
                        (N37)? T22 : 1'b0;
  assign N9 = ~locked;
  assign N10 = ~T2;
  assign T2 = io_in_1_valid & T3;
  assign T3 = ~last_grant;
  assign T5 = io_out_ready & io_out_valid;
  assign T8 = io_in_0_ready & io_in_0_valid;
  assign T9 = T11 & T10;
  assign T10 = ~locked;
  assign T11 = T17 & T12;
  assign T12 = T14 | N43;
  assign T14 = N46 | N50;
  assign T17 = io_out_valid & io_out_ready;
  assign T20 = ~T21;
  assign T25 = T17 & T26;
  assign T26 = ~T12;
  assign N11 = ~io_chosen;
  assign io_in_0_ready = T36 & io_out_ready;
  assign T37 = T44 | T38;
  assign T38 = ~T39;
  assign T39 = T42 | T40;
  assign T40 = io_in_1_valid & T41;
  assign T41 = ~last_grant;
  assign T42 = io_in_0_valid & T43;
  assign io_in_1_ready = T47 & io_out_ready;
  assign T48 = T52 | T49;
  assign T49 = ~T50;
  assign T50 = T51 | io_in_0_valid;
  assign T51 = T42 | T40;
  assign T52 = T54 & T53;
  assign T53 = ~last_grant;
  assign T54 = ~T42;
  assign N12 = T5 | reset;
  assign N13 = ~N12;
  assign N16 = T9 | reset;
  assign N17 = ~N16;
  assign N20 = T25 | reset;
  assign N21 = T11 | N20;
  assign N22 = ~N21;
  assign N25 = T11 | reset;
  assign N26 = ~N25;
  assign N30 = ~reset;
  assign N31 = T5 & N30;
  assign N32 = T9 & N30;
  assign N33 = T25 & N30;
  assign N34 = ~T25;
  assign N35 = N30 & N34;
  assign N36 = T11 & N35;
  assign N37 = T11 & N30;

endmodule