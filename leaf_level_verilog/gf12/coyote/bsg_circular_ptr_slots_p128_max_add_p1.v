module bsg_circular_ptr_slots_p128_max_add_p1
(
  clk,
  reset_i,
  add_i,
  o
);

  input [0:0] add_i;
  output [6:0] o;
  input clk;
  input reset_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12;
  wire [6:0] genblk1_genblk1_ptr_r_p1;
  reg [6:0] o;

  always @(posedge clk) begin
    if(N12) begin
      o[6] <= N9;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      o[5] <= N8;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      o[4] <= N7;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      o[3] <= N6;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      o[2] <= N5;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      o[1] <= N4;
    end 
  end


  always @(posedge clk) begin
    if(N12) begin
      o[0] <= N3;
    end 
  end

  assign genblk1_genblk1_ptr_r_p1 = o + 1'b1;
  assign { N9, N8, N7, N6, N5, N4, N3 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                          (N1)? genblk1_genblk1_ptr_r_p1 : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign N2 = ~reset_i;
  assign N10 = ~add_i[0];
  assign N11 = N10 & N2;
  assign N12 = ~N11;

endmodule