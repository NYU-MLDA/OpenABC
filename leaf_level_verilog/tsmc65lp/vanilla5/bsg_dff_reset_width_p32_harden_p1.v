module bsg_dff_reset_width_p32_harden_p1
(
  clock_i,
  data_i,
  reset_i,
  data_o
);

  input [31:0] data_i;
  output [31:0] data_o;
  input clock_i;
  input reset_i;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34;
  reg [31:0] data_o;

  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[31] <= N34;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[30] <= N33;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[29] <= N32;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[28] <= N31;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[27] <= N30;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[26] <= N29;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[25] <= N28;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[24] <= N27;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[23] <= N26;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[22] <= N25;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[21] <= N24;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[20] <= N23;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[19] <= N22;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[18] <= N21;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[17] <= N20;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[16] <= N19;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[15] <= N18;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[14] <= N17;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[13] <= N16;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[12] <= N15;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[11] <= N14;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[10] <= N13;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[9] <= N12;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[8] <= N11;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[7] <= N10;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[6] <= N9;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[5] <= N8;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[4] <= N7;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[3] <= N6;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[2] <= N5;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[1] <= N4;
    end 
  end


  always @(posedge clock_i) begin
    if(1'b1) begin
      data_o[0] <= N3;
    end 
  end

  assign { N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                       (N1)? data_i : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign N2 = ~reset_i;

endmodule