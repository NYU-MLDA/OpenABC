module bsg_circular_ptr_slots_p4_max_add_p1
(
  clk,
  reset_i,
  add_i,
  o
);

  input [0:0] add_i;
  output [1:0] o;
  input clk;
  input reset_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7;
  wire [1:0] genblk1_genblk1_ptr_r_p1;
  reg [1:0] o;

  always @(posedge clk) begin
    if(N7) begin
      o[1] <= N4;
    end 
  end


  always @(posedge clk) begin
    if(N7) begin
      o[0] <= N3;
    end 
  end

  assign genblk1_genblk1_ptr_r_p1 = o + 1'b1;
  assign { N4, N3 } = (N0)? { 1'b0, 1'b0 } : 
                      (N1)? genblk1_genblk1_ptr_r_p1 : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign N2 = ~reset_i;
  assign N5 = ~add_i[0];
  assign N6 = N5 & N2;
  assign N7 = ~N6;

endmodule