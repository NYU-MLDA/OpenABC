module LockingRRArbiter_4
(
  clk,
  reset,
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

  input [25:0] io_in_1_bits_addr_block;
  input [3:0] io_in_1_bits_client_xact_id;
  input [1:0] io_in_1_bits_addr_beat;
  input [2:0] io_in_1_bits_a_type;
  input [16:0] io_in_1_bits_union;
  input [127:0] io_in_1_bits_data;
  input [25:0] io_in_0_bits_addr_block;
  input [3:0] io_in_0_bits_client_xact_id;
  input [1:0] io_in_0_bits_addr_beat;
  input [2:0] io_in_0_bits_a_type;
  input [16:0] io_in_0_bits_union;
  input [127:0] io_in_0_bits_data;
  output [25:0] io_out_bits_addr_block;
  output [3:0] io_out_bits_client_xact_id;
  output [1:0] io_out_bits_addr_beat;
  output [2:0] io_out_bits_a_type;
  output [16:0] io_out_bits_union;
  output [127:0] io_out_bits_data;
  input clk;
  input reset;
  input io_in_1_valid;
  input io_in_1_bits_is_builtin_type;
  input io_in_0_valid;
  input io_in_0_bits_is_builtin_type;
  input io_out_ready;
  output io_in_1_ready;
  output io_in_0_ready;
  output io_out_valid;
  output io_out_bits_is_builtin_type;
  output io_chosen;
  wire [25:0] io_out_bits_addr_block;
  wire [3:0] io_out_bits_client_xact_id;
  wire [1:0] io_out_bits_addr_beat,T19;
  wire [2:0] io_out_bits_a_type;
  wire [16:0] io_out_bits_union;
  wire [127:0] io_out_bits_data;
  wire io_in_1_ready,io_in_0_ready,io_out_valid,io_out_bits_is_builtin_type,io_chosen,
  N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,choose,T2,N10,T3,T5,T9,T8,T11,T10,T14,T12,T22,T17,
  T18,T23,N11,T34,T35,T42,T36,T37,T40,T38,T39,T41,T45,T46,T50,T47,T48,T49,T52,T51,
  N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,
  N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45;
  reg last_grant,lockIdx,locked;
  reg [1:0] R20;
  assign T18 = T19 == 1'b0;
  assign T41 = N0 & 1'b0;
  assign N0 = ~last_grant;
  assign T42 = N1 & 1'b0;
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
      R20[1] <= N29;
    end 
  end


  always @(posedge clk) begin
    if(N27) begin
      R20[0] <= N28;
    end 
  end

  assign N38 = ~T8;
  assign N39 = ~lockIdx;
  assign N40 = ~io_out_bits_a_type[1];
  assign N41 = ~io_out_bits_a_type[0];
  assign N42 = N40 | io_out_bits_a_type[2];
  assign N43 = N41 | N42;
  assign N44 = ~N43;
  assign N45 = ~io_in_0_valid;
  assign T19 = R20 + 1'b1;
  assign io_chosen = (N2)? lockIdx : 
                     (N3)? choose : 1'b0;
  assign N2 = locked;
  assign N3 = N9;
  assign choose = (N4)? 1'b1 : 
                  (N5)? N45 : 1'b0;
  assign N4 = T2;
  assign N5 = N10;
  assign io_out_bits_data = (N6)? io_in_1_bits_data : 
                            (N7)? io_in_0_bits_data : 1'b0;
  assign N6 = io_chosen;
  assign N7 = N11;
  assign io_out_bits_union = (N6)? io_in_1_bits_union : 
                             (N7)? io_in_0_bits_union : 1'b0;
  assign io_out_bits_a_type = (N6)? io_in_1_bits_a_type : 
                              (N7)? io_in_0_bits_a_type : 1'b0;
  assign io_out_bits_is_builtin_type = (N6)? io_in_1_bits_is_builtin_type : 
                                       (N7)? io_in_0_bits_is_builtin_type : 1'b0;
  assign io_out_bits_addr_beat = (N6)? io_in_1_bits_addr_beat : 
                                 (N7)? io_in_0_bits_addr_beat : 1'b0;
  assign io_out_bits_client_xact_id = (N6)? io_in_1_bits_client_xact_id : 
                                      (N7)? io_in_0_bits_client_xact_id : 1'b0;
  assign io_out_bits_addr_block = (N6)? io_in_1_bits_addr_block : 
                                  (N7)? io_in_0_bits_addr_block : 1'b0;
  assign io_out_valid = (N6)? io_in_1_valid : 
                        (N7)? io_in_0_valid : 1'b0;
  assign T34 = (N2)? N39 : 
               (N3)? T35 : 1'b0;
  assign T45 = (N2)? lockIdx : 
               (N3)? T46 : 1'b0;
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
               (N36)? T17 : 1'b0;
  assign N27 = (N8)? 1'b1 : 
               (N37)? 1'b1 : 
               (N26)? 1'b0 : 1'b0;
  assign { N29, N28 } = (N8)? { 1'b0, 1'b0 } : 
                        (N37)? T19 : 1'b0;
  assign N9 = ~locked;
  assign N10 = ~T2;
  assign T2 = io_in_1_valid & T3;
  assign T3 = ~last_grant;
  assign T5 = io_out_ready & io_out_valid;
  assign T8 = io_in_0_ready & io_in_0_valid;
  assign T9 = T11 & T10;
  assign T10 = ~locked;
  assign T11 = T14 & T12;
  assign T12 = io_out_bits_is_builtin_type & N44;
  assign T14 = io_out_valid & io_out_ready;
  assign T17 = ~T18;
  assign T22 = T14 & T23;
  assign T23 = ~T12;
  assign N11 = ~io_chosen;
  assign io_in_0_ready = T34 & io_out_ready;
  assign T35 = T42 | T36;
  assign T36 = ~T37;
  assign T37 = T40 | T38;
  assign T38 = io_in_1_valid & T39;
  assign T39 = ~last_grant;
  assign T40 = io_in_0_valid & T41;
  assign io_in_1_ready = T45 & io_out_ready;
  assign T46 = T50 | T47;
  assign T47 = ~T48;
  assign T48 = T49 | io_in_0_valid;
  assign T49 = T40 | T38;
  assign T50 = T52 & T51;
  assign T51 = ~last_grant;
  assign T52 = ~T40;
  assign N12 = T5 | reset;
  assign N13 = ~N12;
  assign N16 = T9 | reset;
  assign N17 = ~N16;
  assign N20 = T22 | reset;
  assign N21 = T11 | N20;
  assign N22 = ~N21;
  assign N25 = T11 | reset;
  assign N26 = ~N25;
  assign N30 = ~reset;
  assign N31 = T5 & N30;
  assign N32 = T9 & N30;
  assign N33 = T22 & N30;
  assign N34 = ~T22;
  assign N35 = N30 & N34;
  assign N36 = T11 & N35;
  assign N37 = T11 & N30;

endmodule