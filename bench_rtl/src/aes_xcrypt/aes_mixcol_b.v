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
                                                                 
// ----------------------------------------------------------------------
// File name        :   aes_mixcol_b.v
// Function         :   AES Cryptographic Algorithm Core [MixColumn-byte]
// ----------------------------------------------------------------------
// Author           :   Xie
// Version          ：  v-1.0
// Date				:   2019-2-1
// Email            :   xcrypt@126.com
// ----------------------------------------------------------------------

module aes_mixcol_b(
	input	[7:0]	i_a,
	input	[7:0]	i_b,
	input	[7:0]	i_c,
	input 	[7:0]	i_d,
	output 	[7:0]	o_x,
	output 	[7:0]	o_y);

	wire 	[7:0] 	s_w1,s_w2,s_w3,s_w4;
	wire 	[7:0]	s_w5,s_w6,s_w7,s_w8;
	
	function [7:0] xtime;
	  input [7:0] in;
	  reg [3:0] xtime_t;
	  begin
		xtime[7:5] = in[6:4];
		xtime_t[3] = in[7];
		xtime_t[2] = in[7];
		xtime_t[1] = 0;
		xtime_t[0] = in[7];
		xtime[4:1] =xtime_t^in[3:0];
		xtime[0] = in[7];
	  end
	endfunction

	assign s_w1 = i_a ^i_b;
	assign s_w2 = i_a ^i_c;
	assign s_w3 = i_c ^i_d;
	assign s_w4 = xtime(s_w1);
	assign s_w5 = xtime(s_w3);
	assign s_w6 = s_w2 ^s_w4 ^s_w5;
	assign s_w7 = xtime(s_w6);
	assign s_w8 = xtime(s_w7);

	assign o_x = i_b^s_w3^s_w4;
	assign o_y = s_w8^o_x;

endmodule
