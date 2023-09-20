module bsg_mux_one_hot_width_p1_els_p2
(
  data_i,
  sel_one_hot_i,
  data_o
);

  input [1:0] data_i;
  input [1:0] sel_one_hot_i;
  output [0:0] data_o;
  wire [0:0] data_o;
  wire [1:0] data_masked;
  assign data_masked[0] = data_i[0] & sel_one_hot_i[0];
  assign data_masked[1] = data_i[1] & sel_one_hot_i[1];
  assign data_o[0] = data_masked[1] | data_masked[0];

endmodule