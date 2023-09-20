module bsg_dff_reset_en_width_p10_harden_p1
(
  clock_i,
  reset_i,
  en_i,
  data_i,
  data_o
);

  input [9:0] data_i;
  output [9:0] data_o;
  input clock_i;
  input reset_i;
  input en_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15;
  reg [9:0] data_o;

  always @(posedge clock_i) begin
    if(N3) begin
      data_o[9] <= N13;
    end 
  end


  always @(posedge clock_i) begin
    if(N3) begin
      data_o[8] <= N12;
    end 
  end


  always @(posedge clock_i) begin
    if(N3) begin
      data_o[7] <= N11;
    end 
  end


  always @(posedge clock_i) begin
    if(N3) begin
      data_o[6] <= N10;
    end 
  end


  always @(posedge clock_i) begin
    if(N3) begin
      data_o[5] <= N9;
    end 
  end


  always @(posedge clock_i) begin
    if(N3) begin
      data_o[4] <= N8;
    end 
  end


  always @(posedge clock_i) begin
    if(N3) begin
      data_o[3] <= N7;
    end 
  end


  always @(posedge clock_i) begin
    if(N3) begin
      data_o[2] <= N6;
    end 
  end


  always @(posedge clock_i) begin
    if(N3) begin
      data_o[1] <= N5;
    end 
  end


  always @(posedge clock_i) begin
    if(N3) begin
      data_o[0] <= N4;
    end 
  end

  assign N3 = (N0)? 1'b1 : 
              (N15)? 1'b1 : 
              (N2)? 1'b0 : 1'b0;
  assign N0 = reset_i;
  assign { N13, N12, N11, N10, N9, N8, N7, N6, N5, N4 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                          (N15)? data_i : 1'b0;
  assign N1 = en_i | reset_i;
  assign N2 = ~N1;
  assign N14 = ~reset_i;
  assign N15 = en_i & N14;

endmodule