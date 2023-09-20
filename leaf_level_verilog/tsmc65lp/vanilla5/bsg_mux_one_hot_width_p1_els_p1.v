module bsg_mux_one_hot_width_p1_els_p1
(
  data_i,
  sel_one_hot_i,
  data_o
);

  input [0:0] data_i;
  input [0:0] sel_one_hot_i;
  output [0:0] data_o;
  wire [0:0] data_o;
  assign data_o[0] = data_i[0] & sel_one_hot_i[0];

endmodule