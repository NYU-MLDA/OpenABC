module magcompare2c (LT, GT, GT_in, LT_in);

   input [1:0] LT_in;
   input [1:0] GT_in;
   
   output      LT;
   output      GT;

   // Determine if A < B  using a minimized sum-of-products expression
   assign GT = GT_in[1] | ~LT_in[1]&GT_in[0];

   // Determine if A > B  using a minimized sum-of-products expression
   assign LT = LT_in[1] | !GT_in[1]&LT_in[0];

endmodule