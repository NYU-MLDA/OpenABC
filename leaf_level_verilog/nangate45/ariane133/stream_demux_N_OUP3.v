module stream_demux_N_OUP3
(
  inp_valid_i,
  inp_ready_o,
  oup_sel_i,
  oup_valid_o,
  oup_ready_i
);

  input [1:0] oup_sel_i;
  output [2:0] oup_valid_o;
  input [2:0] oup_ready_i;
  input inp_valid_i;
  output inp_ready_o;
  wire [2:0] oup_valid_o;
  wire inp_ready_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14;
  assign N10 = N0 & oup_sel_i[1];
  assign N0 = ~oup_sel_i[0];
  assign N9 = oup_sel_i[0] & N1;
  assign N1 = ~oup_sel_i[1];
  assign N14 = N2 & N3;
  assign N2 = ~oup_sel_i[0];
  assign N3 = ~oup_sel_i[1];
  assign oup_valid_o[0] = (N4)? inp_valid_i : 
                          (N11)? 1'b0 : 1'b0;
  assign N4 = N14;
  assign oup_valid_o[1] = (N5)? inp_valid_i : 
                          (N12)? 1'b0 : 1'b0;
  assign N5 = N9;
  assign oup_valid_o[2] = (N6)? inp_valid_i : 
                          (N13)? 1'b0 : 1'b0;
  assign N6 = N10;
  assign inp_ready_o = (N4)? oup_ready_i[0] : 
                       (N7)? oup_ready_i[1] : 
                       (N8)? oup_ready_i[2] : 1'b0;
  assign N7 = oup_sel_i[0];
  assign N8 = oup_sel_i[1];
  assign N11 = ~N14;
  assign N12 = ~N9;
  assign N13 = ~N10;

endmodule