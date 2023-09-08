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
// File name        :   aes_sbox_n.v
// Function         :   AES Cryptographic Algorithm Core SBox [Negative]
// ----------------------------------------------------------------------
// Author           :   Xie
// Version          ：  v-1.0
// Date				:   2019-1-25
// Email            :   xcrypt@126.com
// ----------------------------------------------------------------------

`timescale 1ns / 1ps

module aes_sbox_n(
    input   [7:0]   din,
    output  [7:0]   dout
    );
	
    reg [7:0] r_dout;
    assign dout = r_dout;
	//
    always@(din) begin
        case(din)
			8'h00 : r_dout = 8'h52;
			8'h01 : r_dout = 8'h09;
			8'h02 : r_dout = 8'h6a;
			8'h03 : r_dout = 8'hd5;
			8'h04 : r_dout = 8'h30;
			8'h05 : r_dout = 8'h36;
			8'h06 : r_dout = 8'ha5;
			8'h07 : r_dout = 8'h38;
			8'h08 : r_dout = 8'hbf;
			8'h09 : r_dout = 8'h40;
			8'h0a : r_dout = 8'ha3;
			8'h0b : r_dout = 8'h9e;
			8'h0c : r_dout = 8'h81;
			8'h0d : r_dout = 8'hf3;
			8'h0e : r_dout = 8'hd7;
			8'h0f : r_dout = 8'hfb;
			8'h10 : r_dout = 8'h7c;
			8'h11 : r_dout = 8'he3;
			8'h12 : r_dout = 8'h39;
			8'h13 : r_dout = 8'h82;
			8'h14 : r_dout = 8'h9b;
			8'h15 : r_dout = 8'h2f;
			8'h16 : r_dout = 8'hff;
			8'h17 : r_dout = 8'h87;
			8'h18 : r_dout = 8'h34;
			8'h19 : r_dout = 8'h8e;
			8'h1a : r_dout = 8'h43;
			8'h1b : r_dout = 8'h44;
			8'h1c : r_dout = 8'hc4;
			8'h1d : r_dout = 8'hde;
			8'h1e : r_dout = 8'he9;
			8'h1f : r_dout = 8'hcb;
			8'h20 : r_dout = 8'h54;
			8'h21 : r_dout = 8'h7b;
			8'h22 : r_dout = 8'h94;
			8'h23 : r_dout = 8'h32;
			8'h24 : r_dout = 8'ha6;
			8'h25 : r_dout = 8'hc2;
			8'h26 : r_dout = 8'h23;
			8'h27 : r_dout = 8'h3d;
			8'h28 : r_dout = 8'hee;
			8'h29 : r_dout = 8'h4c;
			8'h2a : r_dout = 8'h95;
			8'h2b : r_dout = 8'h0b;
			8'h2c : r_dout = 8'h42;
			8'h2d : r_dout = 8'hfa;
			8'h2e : r_dout = 8'hc3;
			8'h2f : r_dout = 8'h4e;
			8'h30 : r_dout = 8'h08;
			8'h31 : r_dout = 8'h2e;
			8'h32 : r_dout = 8'ha1;
			8'h33 : r_dout = 8'h66;
			8'h34 : r_dout = 8'h28;
			8'h35 : r_dout = 8'hd9;
			8'h36 : r_dout = 8'h24;
			8'h37 : r_dout = 8'hb2;
			8'h38 : r_dout = 8'h76;
			8'h39 : r_dout = 8'h5b;
			8'h3a : r_dout = 8'ha2;
			8'h3b : r_dout = 8'h49;
			8'h3c : r_dout = 8'h6d;
			8'h3d : r_dout = 8'h8b;
			8'h3e : r_dout = 8'hd1;
			8'h3f : r_dout = 8'h25;
			8'h40 : r_dout = 8'h72;
			8'h41 : r_dout = 8'hf8;
			8'h42 : r_dout = 8'hf6;
			8'h43 : r_dout = 8'h64;
			8'h44 : r_dout = 8'h86;
			8'h45 : r_dout = 8'h68;
			8'h46 : r_dout = 8'h98;
			8'h47 : r_dout = 8'h16;
			8'h48 : r_dout = 8'hd4;
			8'h49 : r_dout = 8'ha4;
			8'h4a : r_dout = 8'h5c;
			8'h4b : r_dout = 8'hcc;
			8'h4c : r_dout = 8'h5d;
			8'h4d : r_dout = 8'h65;
			8'h4e : r_dout = 8'hb6;
			8'h4f : r_dout = 8'h92;
			8'h50 : r_dout = 8'h6c;
			8'h51 : r_dout = 8'h70;
			8'h52 : r_dout = 8'h48;
			8'h53 : r_dout = 8'h50;
			8'h54 : r_dout = 8'hfd;
			8'h55 : r_dout = 8'hed;
			8'h56 : r_dout = 8'hb9;
			8'h57 : r_dout = 8'hda;
			8'h58 : r_dout = 8'h5e;
			8'h59 : r_dout = 8'h15;
			8'h5a : r_dout = 8'h46;
			8'h5b : r_dout = 8'h57;
			8'h5c : r_dout = 8'ha7;
			8'h5d : r_dout = 8'h8d;
			8'h5e : r_dout = 8'h9d;
			8'h5f : r_dout = 8'h84;
			8'h60 : r_dout = 8'h90;
			8'h61 : r_dout = 8'hd8;
			8'h62 : r_dout = 8'hab;
			8'h63 : r_dout = 8'h00;
			8'h64 : r_dout = 8'h8c;
			8'h65 : r_dout = 8'hbc;
			8'h66 : r_dout = 8'hd3;
			8'h67 : r_dout = 8'h0a;
			8'h68 : r_dout = 8'hf7;
			8'h69 : r_dout = 8'he4;
			8'h6a : r_dout = 8'h58;
			8'h6b : r_dout = 8'h05;
			8'h6c : r_dout = 8'hb8;
			8'h6d : r_dout = 8'hb3;
			8'h6e : r_dout = 8'h45;
			8'h6f : r_dout = 8'h06;
			8'h70 : r_dout = 8'hd0;
			8'h71 : r_dout = 8'h2c;
			8'h72 : r_dout = 8'h1e;
			8'h73 : r_dout = 8'h8f;
			8'h74 : r_dout = 8'hca;
			8'h75 : r_dout = 8'h3f;
			8'h76 : r_dout = 8'h0f;
			8'h77 : r_dout = 8'h02;
			8'h78 : r_dout = 8'hc1;
			8'h79 : r_dout = 8'haf;
			8'h7a : r_dout = 8'hbd;
			8'h7b : r_dout = 8'h03;
			8'h7c : r_dout = 8'h01;
			8'h7d : r_dout = 8'h13;
			8'h7e : r_dout = 8'h8a;
			8'h7f : r_dout = 8'h6b;
			8'h80 : r_dout = 8'h3a;
			8'h81 : r_dout = 8'h91;
			8'h82 : r_dout = 8'h11;
			8'h83 : r_dout = 8'h41;
			8'h84 : r_dout = 8'h4f;
			8'h85 : r_dout = 8'h67;
			8'h86 : r_dout = 8'hdc;
			8'h87 : r_dout = 8'hea;
			8'h88 : r_dout = 8'h97;
			8'h89 : r_dout = 8'hf2;
			8'h8a : r_dout = 8'hcf;
			8'h8b : r_dout = 8'hce;
			8'h8c : r_dout = 8'hf0;
			8'h8d : r_dout = 8'hb4;
			8'h8e : r_dout = 8'he6;
			8'h8f : r_dout = 8'h73;
			8'h90 : r_dout = 8'h96;
			8'h91 : r_dout = 8'hac;
			8'h92 : r_dout = 8'h74;
			8'h93 : r_dout = 8'h22;
			8'h94 : r_dout = 8'he7;
			8'h95 : r_dout = 8'had;
			8'h96 : r_dout = 8'h35;
			8'h97 : r_dout = 8'h85;
			8'h98 : r_dout = 8'he2;
			8'h99 : r_dout = 8'hf9;
			8'h9a : r_dout = 8'h37;
			8'h9b : r_dout = 8'he8;
			8'h9c : r_dout = 8'h1c;
			8'h9d : r_dout = 8'h75;
			8'h9e : r_dout = 8'hdf;
			8'h9f : r_dout = 8'h6e;
			8'ha0 : r_dout = 8'h47;
			8'ha1 : r_dout = 8'hf1;
			8'ha2 : r_dout = 8'h1a;
			8'ha3 : r_dout = 8'h71;
			8'ha4 : r_dout = 8'h1d;
			8'ha5 : r_dout = 8'h29;
			8'ha6 : r_dout = 8'hc5;
			8'ha7 : r_dout = 8'h89;
			8'ha8 : r_dout = 8'h6f;
			8'ha9 : r_dout = 8'hb7;
			8'haa : r_dout = 8'h62;
			8'hab : r_dout = 8'h0e;
			8'hac : r_dout = 8'haa;
			8'had : r_dout = 8'h18;
			8'hae : r_dout = 8'hbe;
			8'haf : r_dout = 8'h1b;
			8'hb0 : r_dout = 8'hfc;
			8'hb1 : r_dout = 8'h56;
			8'hb2 : r_dout = 8'h3e;
			8'hb3 : r_dout = 8'h4b;
			8'hb4 : r_dout = 8'hc6;
			8'hb5 : r_dout = 8'hd2;
			8'hb6 : r_dout = 8'h79;
			8'hb7 : r_dout = 8'h20;
			8'hb8 : r_dout = 8'h9a;
			8'hb9 : r_dout = 8'hdb;
			8'hba : r_dout = 8'hc0;
			8'hbb : r_dout = 8'hfe;
			8'hbc : r_dout = 8'h78;
			8'hbd : r_dout = 8'hcd;
			8'hbe : r_dout = 8'h5a;
			8'hbf : r_dout = 8'hf4;
			8'hc0 : r_dout = 8'h1f;
			8'hc1 : r_dout = 8'hdd;
			8'hc2 : r_dout = 8'ha8;
			8'hc3 : r_dout = 8'h33;
			8'hc4 : r_dout = 8'h88;
			8'hc5 : r_dout = 8'h07;
			8'hc6 : r_dout = 8'hc7;
			8'hc7 : r_dout = 8'h31;
			8'hc8 : r_dout = 8'hb1;
			8'hc9 : r_dout = 8'h12;
			8'hca : r_dout = 8'h10;
			8'hcb : r_dout = 8'h59;
			8'hcc : r_dout = 8'h27;
			8'hcd : r_dout = 8'h80;
			8'hce : r_dout = 8'hec;
			8'hcf : r_dout = 8'h5f;
			8'hd0 : r_dout = 8'h60;
			8'hd1 : r_dout = 8'h51;
			8'hd2 : r_dout = 8'h7f;
			8'hd3 : r_dout = 8'ha9;
			8'hd4 : r_dout = 8'h19;
			8'hd5 : r_dout = 8'hb5;
			8'hd6 : r_dout = 8'h4a;
			8'hd7 : r_dout = 8'h0d;
			8'hd8 : r_dout = 8'h2d;
			8'hd9 : r_dout = 8'he5;
			8'hda : r_dout = 8'h7a;
			8'hdb : r_dout = 8'h9f;
			8'hdc : r_dout = 8'h93;
			8'hdd : r_dout = 8'hc9;
			8'hde : r_dout = 8'h9c;
			8'hdf : r_dout = 8'hef;
			8'he0 : r_dout = 8'ha0;
			8'he1 : r_dout = 8'he0;
			8'he2 : r_dout = 8'h3b;
			8'he3 : r_dout = 8'h4d;
			8'he4 : r_dout = 8'hae;
			8'he5 : r_dout = 8'h2a;
			8'he6 : r_dout = 8'hf5;
			8'he7 : r_dout = 8'hb0;
			8'he8 : r_dout = 8'hc8;
			8'he9 : r_dout = 8'heb;
			8'hea : r_dout = 8'hbb;
			8'heb : r_dout = 8'h3c;
			8'hec : r_dout = 8'h83;
			8'hed : r_dout = 8'h53;
			8'hee : r_dout = 8'h99;
			8'hef : r_dout = 8'h61;
			8'hf0 : r_dout = 8'h17;
			8'hf1 : r_dout = 8'h2b;
			8'hf2 : r_dout = 8'h04;
			8'hf3 : r_dout = 8'h7e;
			8'hf4 : r_dout = 8'hba;
			8'hf5 : r_dout = 8'h77;
			8'hf6 : r_dout = 8'hd6;
			8'hf7 : r_dout = 8'h26;
			8'hf8 : r_dout = 8'he1;
			8'hf9 : r_dout = 8'h69;
			8'hfa : r_dout = 8'h14;
			8'hfb : r_dout = 8'h63;
			8'hfc : r_dout = 8'h55;
			8'hfd : r_dout = 8'h21;
			8'hfe : r_dout = 8'h0c;
			8'hff : r_dout = 8'h7d;
        endcase
    end

endmodule
