module bsg_swap_width_p128
(
  data_i,
  swap_i,
  data_o
);

  input [255:0] data_i;
  output [255:0] data_o;
  input swap_i;
  wire [255:0] data_o;
  wire N0,N1,N2;
  assign data_o = (N0)? { data_i[127:0], data_i[255:128] } :
                  (N1)? data_i : 1'b0;
  assign N0 = swap_i;
  assign N1 = N2;
  assign N2 = ~swap_i;

endmodule