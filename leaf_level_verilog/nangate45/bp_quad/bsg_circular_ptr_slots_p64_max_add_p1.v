module bsg_circular_ptr_slots_p64_max_add_p1
(
  clk,
  reset_i,
  add_i,
  o,
  n_o
);

  input [0:0] add_i;
  output [5:0] o;
  output [5:0] n_o;
  input clk;
  input reset_i;
  wire [5:0] o,n_o,genblk1_genblk1_ptr_r_p1;
  wire N0,N1,N2;
  reg o_5_sv2v_reg,o_4_sv2v_reg,o_3_sv2v_reg,o_2_sv2v_reg,o_1_sv2v_reg,o_0_sv2v_reg;
  assign o[5] = o_5_sv2v_reg;
  assign o[4] = o_4_sv2v_reg;
  assign o[3] = o_3_sv2v_reg;
  assign o[2] = o_2_sv2v_reg;
  assign o[1] = o_1_sv2v_reg;
  assign o[0] = o_0_sv2v_reg;

  always @(posedge clk) begin
    if(reset_i) begin
      o_5_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      o_5_sv2v_reg <= n_o[5];
    end 
  end


  always @(posedge clk) begin
    if(reset_i) begin
      o_4_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      o_4_sv2v_reg <= n_o[4];
    end 
  end


  always @(posedge clk) begin
    if(reset_i) begin
      o_3_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      o_3_sv2v_reg <= n_o[3];
    end 
  end


  always @(posedge clk) begin
    if(reset_i) begin
      o_2_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      o_2_sv2v_reg <= n_o[2];
    end 
  end


  always @(posedge clk) begin
    if(reset_i) begin
      o_1_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      o_1_sv2v_reg <= n_o[1];
    end 
  end


  always @(posedge clk) begin
    if(reset_i) begin
      o_0_sv2v_reg <= 1'b0;
    end else if(1'b1) begin
      o_0_sv2v_reg <= n_o[0];
    end 
  end

  assign genblk1_genblk1_ptr_r_p1 = o + 1'b1;
  assign n_o = (N0)? genblk1_genblk1_ptr_r_p1 : 
               (N1)? o : 1'b0;
  assign N0 = add_i[0];
  assign N1 = N2;
  assign N2 = ~add_i[0];

endmodule