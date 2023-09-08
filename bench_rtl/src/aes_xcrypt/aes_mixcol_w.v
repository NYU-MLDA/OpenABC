/*                                                                      
Copyright 2019 XCrypt Studio                
																	 
Licensed under the Apache License, Version 2.0 (the "License");         
you may not use this file except in compliance with the License.        
You may obtain a copy of the License at                                 
																	 
 http://www.apache.org/licenses/LICENSE-2.0                          
																	 
Unless required by applicable law or agreed to in writing, software    
distributed under the License is distributed on an "AS IS" BASIS,       
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and     
limitations under the License.                                          
*/  

// -------------------------------------------------------------------------------------------------
// File name        :   aes_mixcol_w.v
// Function         :   AES Cryptographic Algorithm Core [MixColumn-word]
// -------------------------------------------------------------------------------------------------
// Author           :   Xie
// Version          ：  v-1.0
// Date				:   2019-2-1
// Email            :   xcrypt@126.com
// -------------------------------------------------------------------------------------------------
module aes_mixcol_w(
	input	[31:0]	i_din,
	output 	[31:0]	o_dout_x,
	output 	[31:0]	o_dout_y);

	wire [7:0]	s_a,s_b,s_c,s_d;
	wire [7:0]	s_x1,s_x2,s_x3,s_x4;
	wire [7:0]	s_y1,s_y2,s_y3,s_y4;
	
	assign s_a = i_din[31:24];
	assign s_b = i_din[23:16];
	assign s_c = i_din[15:8];
	assign s_d = i_din[7:0];
	
	aes_mixcol_b u_bm1 (.i_a(s_a), .i_b(s_b), .i_c(s_c), .i_d(s_d), .o_x(s_x1), .o_y(s_y1));
	aes_mixcol_b u_bm2 (.i_a(s_b), .i_b(s_c), .i_c(s_d), .i_d(s_a), .o_x(s_x2), .o_y(s_y2));
	aes_mixcol_b u_bm3 (.i_a(s_c), .i_b(s_d), .i_c(s_a), .i_d(s_b), .o_x(s_x3), .o_y(s_y3));
	aes_mixcol_b u_bm4 (.i_a(s_d), .i_b(s_a), .i_c(s_b), .i_d(s_c), .o_x(s_x4), .o_y(s_y4));
		
	assign o_dout_x = {s_x1,s_x2,s_x3,s_x4};
	assign o_dout_y = {s_y1,s_y2,s_y3,s_y4};
	
endmodule
