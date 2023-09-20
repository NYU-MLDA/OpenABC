module cmp_and_mux_ID_BITS8_INTPRIORITY_BITS4
(
  a_id,
  a_priority,
  b_id,
  b_priority,
  out_id,
  out_priority
);

  input [7:0] a_id;
  input [3:0] a_priority;
  input [7:0] b_id;
  input [3:0] b_priority;
  output [7:0] out_id;
  output [3:0] out_priority;
  wire [7:0] out_id;
  wire [3:0] out_priority;
  wire N0,N1,a_is_lt_b,N2;
  assign a_is_lt_b = a_priority < b_priority;
  assign out_id = (N0)? b_id :
                  (N1)? a_id : 1'b0;
  assign N0 = a_is_lt_b;
  assign N1 = N2;
  assign out_priority = (N0)? b_priority :
                        (N1)? a_priority : 1'b0;
  assign N2 = ~a_is_lt_b;

endmodule