module bsg_dff_en_width_p32
(
  clock_i,
  data_i,
  en_i,
  data_o
);

  input [31:0] data_i;
  output [31:0] data_o;
  input clock_i;
  input en_i;
  reg [31:0] data_o;

  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[31] <= data_i[31];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[30] <= data_i[30];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[29] <= data_i[29];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[28] <= data_i[28];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[27] <= data_i[27];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[26] <= data_i[26];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[25] <= data_i[25];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[24] <= data_i[24];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[23] <= data_i[23];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[22] <= data_i[22];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[21] <= data_i[21];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[20] <= data_i[20];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[19] <= data_i[19];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[18] <= data_i[18];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[17] <= data_i[17];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[16] <= data_i[16];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[15] <= data_i[15];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[14] <= data_i[14];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[13] <= data_i[13];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[12] <= data_i[12];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[11] <= data_i[11];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[10] <= data_i[10];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[9] <= data_i[9];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[8] <= data_i[8];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[7] <= data_i[7];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[6] <= data_i[6];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[5] <= data_i[5];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[4] <= data_i[4];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[3] <= data_i[3];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[2] <= data_i[2];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[1] <= data_i[1];
    end 
  end


  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[0] <= data_i[0];
    end 
  end


endmodule