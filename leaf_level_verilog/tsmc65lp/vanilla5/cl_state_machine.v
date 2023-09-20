module cl_state_machine
(
  instruction_i,
  state_i,
  net_pc_write_cmd_idle_i,
  stall_i,
  state_o
);

  input [31:0] instruction_i;
  input [1:0] state_i;
  output [1:0] state_o;
  input net_pc_write_cmd_idle_i;
  input stall_i;
  wire [1:0] state_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11;
  assign N6 = N4 & N5;
  assign N7 = state_i[1] | N5;
  assign N9 = state_i[1] & state_i[0];
  assign N10 = N4 | state_i[0];
  assign state_o = (N0)? { 1'b0, net_pc_write_cmd_idle_i } : 
                   (N1)? { 1'b0, 1'b1 } : 
                   (N2)? { 1'b1, 1'b1 } : 
                   (N3)? { 1'b1, 1'b1 } : 1'b0;
  assign N0 = N6;
  assign N1 = N8;
  assign N2 = N9;
  assign N3 = N11;
  assign N4 = ~state_i[1];
  assign N5 = ~state_i[0];
  assign N8 = ~N7;
  assign N11 = ~N10;

endmodule