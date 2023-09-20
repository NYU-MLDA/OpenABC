module Queue_16
(
  clk,
  reset,
  io_enq_ready,
  io_enq_valid,
  io_enq_bits_header_src,
  io_enq_bits_header_dst,
  io_enq_bits_payload_manager_xact_id,
  io_deq_ready,
  io_deq_valid,
  io_deq_bits_header_src,
  io_deq_bits_header_dst,
  io_deq_bits_payload_manager_xact_id,
  io_count
);

  input [2:0] io_enq_bits_header_src;
  input [2:0] io_enq_bits_header_dst;
  input [3:0] io_enq_bits_payload_manager_xact_id;
  output [2:0] io_deq_bits_header_src;
  output [2:0] io_deq_bits_header_dst;
  output [3:0] io_deq_bits_payload_manager_xact_id;
  output [1:0] io_count;
  input clk;
  input reset;
  input io_enq_valid;
  input io_deq_ready;
  output io_enq_ready;
  output io_deq_valid;
  wire [2:0] io_deq_bits_header_src,io_deq_bits_header_dst;
  wire [3:0] io_deq_bits_payload_manager_xact_id;
  wire [1:0] io_count;
  wire io_enq_ready,io_deq_valid,N0,N1,N2,N3,N4,do_deq,T3,do_enq,T6,ptr_match,T9,N5,
  empty,T19,full,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N21,N22,N23,N24,
  N25,N26;
  reg R1,N20,maybe_full;
  reg [19:0] ram;
  assign N0 = N20 ^ R1;
  assign ptr_match = ~N0;
  assign T9 = do_enq ^ do_deq;
  assign io_deq_bits_header_src[2] = (N5)? ram[9] : 
                                     (N1)? ram[19] : 1'b0;
  assign N1 = R1;
  assign io_deq_bits_header_src[1] = (N5)? ram[8] : 
                                     (N1)? ram[18] : 1'b0;
  assign io_deq_bits_header_src[0] = (N5)? ram[7] : 
                                     (N1)? ram[17] : 1'b0;
  assign io_deq_bits_header_dst[2] = (N5)? ram[6] : 
                                     (N1)? ram[16] : 1'b0;
  assign io_deq_bits_header_dst[1] = (N5)? ram[5] : 
                                     (N1)? ram[15] : 1'b0;
  assign io_deq_bits_header_dst[0] = (N5)? ram[4] : 
                                     (N1)? ram[14] : 1'b0;
  assign io_deq_bits_payload_manager_xact_id[3] = (N5)? ram[3] : 
                                                  (N1)? ram[13] : 1'b0;
  assign io_deq_bits_payload_manager_xact_id[2] = (N5)? ram[2] : 
                                                  (N1)? ram[12] : 1'b0;
  assign io_deq_bits_payload_manager_xact_id[1] = (N5)? ram[1] : 
                                                  (N1)? ram[11] : 1'b0;
  assign io_deq_bits_payload_manager_xact_id[0] = (N5)? ram[0] : 
                                                  (N1)? ram[10] : 1'b0;

  always @(posedge clk) begin
    if(N8) begin
      R1 <= N9;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      N20 <= N13;
    end 
  end


  always @(posedge clk) begin
    if(N16) begin
      maybe_full <= N17;
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[19] <= io_enq_bits_header_src[2];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[18] <= io_enq_bits_header_src[1];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[17] <= io_enq_bits_header_src[0];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[16] <= io_enq_bits_header_dst[2];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[15] <= io_enq_bits_header_dst[1];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[14] <= io_enq_bits_header_dst[0];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[13] <= io_enq_bits_payload_manager_xact_id[3];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[12] <= io_enq_bits_payload_manager_xact_id[2];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[11] <= io_enq_bits_payload_manager_xact_id[1];
    end 
  end


  always @(posedge clk) begin
    if(N22) begin
      ram[10] <= io_enq_bits_payload_manager_xact_id[0];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[9] <= io_enq_bits_header_src[2];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[8] <= io_enq_bits_header_src[1];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[7] <= io_enq_bits_header_src[0];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[6] <= io_enq_bits_header_dst[2];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[5] <= io_enq_bits_header_dst[1];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[4] <= io_enq_bits_header_dst[0];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[3] <= io_enq_bits_payload_manager_xact_id[3];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[2] <= io_enq_bits_payload_manager_xact_id[2];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[1] <= io_enq_bits_payload_manager_xact_id[1];
    end 
  end


  always @(posedge clk) begin
    if(N21) begin
      ram[0] <= io_enq_bits_payload_manager_xact_id[0];
    end 
  end

  assign io_count[0] = N20 ^ R1;
  assign T3 = R1 ^ 1'b1;
  assign T6 = N20 ^ 1'b1;
  assign N19 = ~N20;
  assign N8 = (N2)? 1'b1 : 
              (N24)? 1'b1 : 
              (N7)? 1'b0 : 1'b0;
  assign N2 = reset;
  assign N9 = (N2)? 1'b0 : 
              (N24)? T3 : 1'b0;
  assign N12 = (N2)? 1'b1 : 
               (N25)? 1'b1 : 
               (N11)? 1'b0 : 1'b0;
  assign N13 = (N2)? 1'b0 : 
               (N25)? T6 : 1'b0;
  assign N16 = (N2)? 1'b1 : 
               (N26)? 1'b1 : 
               (N15)? 1'b0 : 1'b0;
  assign N17 = (N2)? 1'b0 : 
               (N26)? do_enq : 1'b0;
  assign { N22, N21 } = (N3)? { N20, N19 } : 
                        (N4)? { 1'b0, 1'b0 } : 1'b0;
  assign N3 = do_enq;
  assign N4 = N18;
  assign do_deq = io_deq_ready & io_deq_valid;
  assign do_enq = io_enq_ready & io_enq_valid;
  assign io_count[1] = maybe_full & ptr_match;
  assign N5 = ~R1;
  assign io_deq_valid = ~empty;
  assign empty = ptr_match & T19;
  assign T19 = ~maybe_full;
  assign io_enq_ready = ~full;
  assign full = ptr_match & maybe_full;
  assign N6 = do_deq | reset;
  assign N7 = ~N6;
  assign N10 = do_enq | reset;
  assign N11 = ~N10;
  assign N14 = T9 | reset;
  assign N15 = ~N14;
  assign N18 = ~do_enq;
  assign N23 = ~reset;
  assign N24 = do_deq & N23;
  assign N25 = do_enq & N23;
  assign N26 = T9 & N23;

endmodule