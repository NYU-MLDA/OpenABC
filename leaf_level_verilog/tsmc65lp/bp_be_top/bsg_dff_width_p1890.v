module bsg_dff_width_p1890
(
  clk_i,
  data_i,
  data_o
);

  input [1889:0] data_i;
  output [1889:0] data_o;
  input clk_i;
  reg [1889:0] data_o;

  always @(posedge clk_i) begin
    if(1'b1) begin
      { data_o[1889:0] } <= { data_i[1889:0] };
    end 
  end


endmodule