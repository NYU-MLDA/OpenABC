module fifo_v3_DATA_WIDTH2_DEPTH4
(
  clk_i,
  rst_ni,
  flush_i,
  testmode_i,
  full_o,
  empty_o,
  usage_o,
  data_i,
  push_i,
  data_o,
  pop_i
);

  output [1:0] usage_o;
  input [1:0] data_i;
  output [1:0] data_o;
  input clk_i;
  input rst_ni;
  input flush_i;
  input testmode_i;
  input push_i;
  input pop_i;
  output full_o;
  output empty_o;
  wire [1:0] data_o;
  wire full_o,empty_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,
  gate_clock,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,
  N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,
  N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N76,
  N77,N78,N80,N81;
  wire [7:0] mem_n;
  reg [2:2] status_cnt_q;
  reg [1:0] usage_o,read_pointer_q,write_pointer_q;
  reg [7:0] mem_q;
  assign data_o[1] = (N14)? mem_q[1] : 
                     (N16)? mem_q[3] : 
                     (N15)? mem_q[5] : 
                     (N17)? mem_q[7] : 1'b0;
  assign data_o[0] = (N14)? mem_q[0] : 
                     (N16)? mem_q[2] : 
                     (N15)? mem_q[4] : 
                     (N17)? mem_q[6] : 1'b0;

  always @(posedge clk_i or posedge N53) begin
    if(N53) begin
      status_cnt_q[2] <= 1'b0;
    end else if(N68) begin
      status_cnt_q[2] <= N61;
    end 
  end


  always @(posedge clk_i or posedge N53) begin
    if(N53) begin
      usage_o[1] <= 1'b0;
    end else if(N68) begin
      usage_o[1] <= N60;
    end 
  end


  always @(posedge clk_i or posedge N53) begin
    if(N53) begin
      usage_o[0] <= 1'b0;
    end else if(N68) begin
      usage_o[0] <= N59;
    end 
  end


  always @(posedge clk_i or posedge N53) begin
    if(N53) begin
      read_pointer_q[1] <= 1'b0;
    end else if(N70) begin
      read_pointer_q[1] <= N56;
    end 
  end


  always @(posedge clk_i or posedge N53) begin
    if(N53) begin
      read_pointer_q[0] <= 1'b0;
    end else if(N70) begin
      read_pointer_q[0] <= N55;
    end 
  end


  always @(posedge clk_i or posedge N53) begin
    if(N53) begin
      write_pointer_q[1] <= 1'b0;
    end else if(N72) begin
      write_pointer_q[1] <= N58;
    end 
  end


  always @(posedge clk_i or posedge N53) begin
    if(N53) begin
      write_pointer_q[0] <= 1'b0;
    end else if(N72) begin
      write_pointer_q[0] <= N57;
    end 
  end


  always @(posedge clk_i or posedge N53) begin
    if(N53) begin
      mem_q[7] <= 1'b0;
    end else if(N62) begin
      mem_q[7] <= mem_n[7];
    end 
  end


  always @(posedge clk_i or posedge N53) begin
    if(N53) begin
      mem_q[6] <= 1'b0;
    end else if(N62) begin
      mem_q[6] <= mem_n[6];
    end 
  end


  always @(posedge clk_i or posedge N53) begin
    if(N53) begin
      mem_q[5] <= 1'b0;
    end else if(N62) begin
      mem_q[5] <= mem_n[5];
    end 
  end


  always @(posedge clk_i or posedge N53) begin
    if(N53) begin
      mem_q[4] <= 1'b0;
    end else if(N62) begin
      mem_q[4] <= mem_n[4];
    end 
  end


  always @(posedge clk_i or posedge N53) begin
    if(N53) begin
      mem_q[3] <= 1'b0;
    end else if(N62) begin
      mem_q[3] <= mem_n[3];
    end 
  end


  always @(posedge clk_i or posedge N53) begin
    if(N53) begin
      mem_q[2] <= 1'b0;
    end else if(N62) begin
      mem_q[2] <= mem_n[2];
    end 
  end


  always @(posedge clk_i or posedge N53) begin
    if(N53) begin
      mem_q[1] <= 1'b0;
    end else if(N62) begin
      mem_q[1] <= mem_n[1];
    end 
  end


  always @(posedge clk_i or posedge N53) begin
    if(N53) begin
      mem_q[0] <= 1'b0;
    end else if(N62) begin
      mem_q[0] <= mem_n[0];
    end 
  end

  assign N73 = usage_o[1] | status_cnt_q[2];
  assign N74 = usage_o[0] | N73;
  assign empty_o = ~N74;
  assign N76 = ~status_cnt_q[2];
  assign N77 = usage_o[1] | N76;
  assign N78 = usage_o[0] | N77;
  assign full_o = ~N78;
  assign { N44, N43 } = read_pointer_q + 1'b1;
  assign { N47, N46, N45 } = { status_cnt_q[2:2], usage_o } - 1'b1;
  assign { N37, N36 } = write_pointer_q + 1'b1;
  assign { N40, N39, N38 } = { status_cnt_q[2:2], usage_o } + 1'b1;
  assign N23 = write_pointer_q[0] & write_pointer_q[1];
  assign N22 = N0 & write_pointer_q[1];
  assign N0 = ~write_pointer_q[0];
  assign N21 = write_pointer_q[0] & N1;
  assign N1 = ~write_pointer_q[1];
  assign N20 = N2 & N3;
  assign N2 = ~write_pointer_q[0];
  assign N3 = ~write_pointer_q[1];
  assign { N26, N25 } = (N4)? { data_i[0:0], data_i[1:1] } : 
                        (N24)? { mem_q[0:0], mem_q[1:1] } : 1'b0;
  assign N4 = N20;
  assign { N29, N28 } = (N5)? { data_i[0:0], data_i[1:1] } : 
                        (N27)? { mem_q[2:2], mem_q[3:3] } : 1'b0;
  assign N5 = N21;
  assign { N32, N31 } = (N6)? { data_i[0:0], data_i[1:1] } : 
                        (N30)? { mem_q[4:4], mem_q[5:5] } : 1'b0;
  assign N6 = N22;
  assign { N35, N34 } = (N7)? { data_i[0:0], data_i[1:1] } : 
                        (N33)? { mem_q[6:6], mem_q[7:7] } : 1'b0;
  assign N7 = N23;
  assign mem_n = (N8)? { N34, N35, N31, N32, N28, N29, N25, N26 } : 
                 (N19)? mem_q : 1'b0;
  assign N8 = N18;
  assign gate_clock = ~N18;
  assign { N50, N49, N48 } = (N9)? { N47, N46, N45 } : 
                             (N42)? { N40, N39, N38 } : 1'b0;
  assign N9 = N41;
  assign { N56, N55 } = (N10)? { 1'b0, 1'b0 } : 
                        (N11)? { N44, N43 } : 1'b0;
  assign N10 = flush_i;
  assign N11 = N54;
  assign { N58, N57 } = (N10)? { 1'b0, 1'b0 } : 
                        (N11)? { N37, N36 } : 1'b0;
  assign { N61, N60, N59 } = (N10)? { 1'b0, 1'b0, 1'b0 } : 
                             (N11)? { N50, N49, N48 } : 1'b0;
  assign N12 = ~read_pointer_q[0];
  assign N13 = ~read_pointer_q[1];
  assign N14 = N12 & N13;
  assign N15 = N12 & read_pointer_q[1];
  assign N16 = read_pointer_q[0] & N13;
  assign N17 = read_pointer_q[0] & read_pointer_q[1];
  assign N18 = push_i & N78;
  assign N19 = ~N18;
  assign N24 = ~N20;
  assign N27 = ~N21;
  assign N30 = ~N22;
  assign N33 = ~N23;
  assign N41 = pop_i & N74;
  assign N42 = ~N41;
  assign N51 = N81 & N74;
  assign N81 = N80 & N78;
  assign N80 = push_i & pop_i;
  assign N52 = ~N51;
  assign N53 = ~rst_ni;
  assign N54 = ~flush_i;
  assign N62 = ~gate_clock;
  assign N63 = N51 & N54;
  assign N64 = N52 & N54;
  assign N65 = N42 & N64;
  assign N66 = N19 & N65;
  assign N67 = N63 | N66;
  assign N68 = ~N67;
  assign N69 = N42 & N54;
  assign N70 = ~N69;
  assign N71 = N19 & N54;
  assign N72 = ~N71;

endmodule