module bsg_dff_en_width_p1
(
  clock_i,
  data_i,
  en_i,
  data_o
);

  input [0:0] data_i;
  output [0:0] data_o;
  input clock_i;
  input en_i;
  reg [0:0] data_o;

  always @(posedge clock_i) begin
    if(en_i) begin
      data_o[0] <= data_i[0];
    end 
  end


endmodule