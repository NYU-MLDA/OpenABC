module bsg_mux_one_hot_width_p4_els_p2
(
  data_i,
  sel_one_hot_i,
  data_o
);

  input [7:0] data_i;
  input [1:0] sel_one_hot_i;
  output [3:0] data_o;
  wire [3:0] data_o;
  wire [7:0] data_masked;
  assign data_masked[3] = data_i[3] & sel_one_hot_i[0];
  assign data_masked[2] = data_i[2] & sel_one_hot_i[0];
  assign data_masked[1] = data_i[1] & sel_one_hot_i[0];
  assign data_masked[0] = data_i[0] & sel_one_hot_i[0];
  assign data_masked[7] = data_i[7] & sel_one_hot_i[1];
  assign data_masked[6] = data_i[6] & sel_one_hot_i[1];
  assign data_masked[5] = data_i[5] & sel_one_hot_i[1];
  assign data_masked[4] = data_i[4] & sel_one_hot_i[1];
  assign data_o[0] = data_masked[4] | data_masked[0];
  assign data_o[1] = data_masked[5] | data_masked[1];
  assign data_o[2] = data_masked[6] | data_masked[2];
  assign data_o[3] = data_masked[7] | data_masked[3];

endmodule