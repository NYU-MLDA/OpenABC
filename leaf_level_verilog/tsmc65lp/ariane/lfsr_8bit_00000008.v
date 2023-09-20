module lfsr_8bit_00000008
(
  clk_i,
  rst_ni,
  en_i,
  refill_way_oh,
  refill_way_bin
);

  output [7:0] refill_way_oh;
  output [2:0] refill_way_bin;
  input clk_i;
  input rst_ni;
  input en_i;
  wire [7:0] refill_way_oh;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24;
  reg [7:3] shift_q;
  reg [2:0] refill_way_bin;

  always @(posedge clk_i or posedge N13) begin
    if(N13) begin
      shift_q[7] <= 1'b0;
    end else if(en_i) begin
      shift_q[7] <= shift_q[6];
    end 
  end


  always @(posedge clk_i or posedge N13) begin
    if(N13) begin
      shift_q[6] <= 1'b0;
    end else if(en_i) begin
      shift_q[6] <= shift_q[5];
    end 
  end


  always @(posedge clk_i or posedge N13) begin
    if(N13) begin
      shift_q[5] <= 1'b0;
    end else if(en_i) begin
      shift_q[5] <= shift_q[4];
    end 
  end


  always @(posedge clk_i or posedge N13) begin
    if(N13) begin
      shift_q[4] <= 1'b0;
    end else if(en_i) begin
      shift_q[4] <= shift_q[3];
    end 
  end


  always @(posedge clk_i or posedge N13) begin
    if(N13) begin
      shift_q[3] <= 1'b0;
    end else if(en_i) begin
      shift_q[3] <= refill_way_bin[2];
    end 
  end


  always @(posedge clk_i or posedge N13) begin
    if(N13) begin
      refill_way_bin[2] <= 1'b0;
    end else if(en_i) begin
      refill_way_bin[2] <= refill_way_bin[1];
    end 
  end


  always @(posedge clk_i or posedge N13) begin
    if(N13) begin
      refill_way_bin[1] <= 1'b0;
    end else if(en_i) begin
      refill_way_bin[1] <= refill_way_bin[0];
    end 
  end


  always @(posedge clk_i or posedge N13) begin
    if(N13) begin
      refill_way_bin[0] <= 1'b0;
    end else if(en_i) begin
      refill_way_bin[0] <= N12;
    end 
  end

  assign N14 = refill_way_bin[0] & refill_way_bin[1];
  assign refill_way_oh[7] = N14 & refill_way_bin[2];
  assign N15 = N0 & refill_way_bin[1];
  assign N0 = ~refill_way_bin[0];
  assign refill_way_oh[6] = N15 & refill_way_bin[2];
  assign N16 = refill_way_bin[0] & N1;
  assign N1 = ~refill_way_bin[1];
  assign refill_way_oh[5] = N16 & refill_way_bin[2];
  assign N17 = N2 & N3;
  assign N2 = ~refill_way_bin[0];
  assign N3 = ~refill_way_bin[1];
  assign refill_way_oh[4] = N17 & refill_way_bin[2];
  assign N18 = refill_way_bin[0] & refill_way_bin[1];
  assign refill_way_oh[3] = N18 & N4;
  assign N4 = ~refill_way_bin[2];
  assign N19 = N5 & refill_way_bin[1];
  assign N5 = ~refill_way_bin[0];
  assign refill_way_oh[2] = N19 & N6;
  assign N6 = ~refill_way_bin[2];
  assign N20 = refill_way_bin[0] & N7;
  assign N7 = ~refill_way_bin[1];
  assign refill_way_oh[1] = N20 & N8;
  assign N8 = ~refill_way_bin[2];
  assign N21 = N9 & N10;
  assign N9 = ~refill_way_bin[0];
  assign N10 = ~refill_way_bin[1];
  assign refill_way_oh[0] = N21 & N11;
  assign N11 = ~refill_way_bin[2];
  assign N12 = ~N24;
  assign N24 = N23 ^ refill_way_bin[1];
  assign N23 = N22 ^ refill_way_bin[2];
  assign N22 = shift_q[7] ^ shift_q[3];
  assign N13 = ~rst_ni;

endmodule