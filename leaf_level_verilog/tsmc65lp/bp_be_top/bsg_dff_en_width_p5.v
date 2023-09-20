module bsg_dff_en_width_p5
(
  clk_i,
  data_i,
  en_i,
  data_o
);

  input [4:0] data_i;
  output [4:0] data_o;
  input clk_i;
  input en_i;
  reg [4:0] data_o;

  always @(posedge clk_i) begin
    if(en_i) begin
      { data_o[4:0] } <= { data_i[4:0] };
    end 
  end


endmodule