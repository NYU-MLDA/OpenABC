module bsg_counter_up_down_max_val_p200_init_val_p200
(
  clk_i,
  reset_i,
  up_i,
  down_i,
  count_o
);

  output [7:0] count_o;
  input clk_i;
  input reset_i;
  input up_i;
  input down_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26;
  reg [7:0] count_o;

  always @(posedge clk_i) begin
    if(1'b1) begin
      count_o[7] <= N26;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      count_o[6] <= N25;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      count_o[5] <= N24;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      count_o[4] <= N23;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      count_o[3] <= N22;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      count_o[2] <= N21;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      count_o[1] <= N20;
    end 
  end


  always @(posedge clk_i) begin
    if(1'b1) begin
      count_o[0] <= N19;
    end 
  end

  assign { N10, N9, N8, N7, N6, N5, N4, N3 } = count_o - down_i;
  assign { N18, N17, N16, N15, N14, N13, N12, N11 } = { N10, N9, N8, N7, N6, N5, N4, N3 } + up_i;
  assign { N26, N25, N24, N23, N22, N21, N20, N19 } = (N0)? { 1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0 } : 
                                                      (N1)? { N18, N17, N16, N15, N14, N13, N12, N11 } : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign N2 = ~reset_i;

endmodule