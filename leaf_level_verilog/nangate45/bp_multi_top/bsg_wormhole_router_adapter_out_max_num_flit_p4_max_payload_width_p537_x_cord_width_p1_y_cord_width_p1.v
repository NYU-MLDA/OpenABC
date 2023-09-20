module bsg_wormhole_router_adapter_out_max_num_flit_p4_max_payload_width_p537_x_cord_width_p1_y_cord_width_p1
(
  clk_i,
  reset_i,
  data_i,
  v_i,
  ready_o,
  data_o,
  v_o,
  ready_i
);

  input [135:0] data_i;
  output [540:0] data_o;
  input clk_i;
  input reset_i;
  input v_i;
  input ready_i;
  output ready_o;
  output v_o;
  wire ready_o,v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,we,clear,N14,N15,N16,
  N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,
  N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,
  N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,
  N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,
  N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,
  N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,
  N129,N130,N131,N132,N133,N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,
  N145,N146,N147,N148,N149,N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,N160,
  N161,N162,N163,N164,N165,N166,N167,N168,N169,N170,N171,N172,N173,N174,N175,N176,
  N177,N178,N179,N180,N181,N182,N183,N184,N185,N186,N187,N188,N189,N190,N191,N192,
  N193,N194,N195,N196,N197,N198,N199,N200,N201,N202,N203,N204,N205,N206,N207,N208,
  N209,N210,N211,N212,N213,N214,N215,N216;
  wire [1:0] state_n,count_n;
  reg [540:0] data_o;
  reg [1:0] state_r,count_r;
  assign N16 = N14 & N15;
  assign N17 = state_r[1] | N15;
  assign N19 = N14 | state_r[0];
  assign N21 = state_r[1] & state_r[0];
  assign N29 = data_o[3:2] == count_r;
  assign N215 = data_i[2] | data_i[3];
  assign N216 = ~N215;
  assign { N25, N24 } = count_r + 1'b1;
  assign { N28, N27 } = count_r + 1'b1;
  assign N38 = count_r[0] & count_r[1];
  assign N37 = N0 & count_r[1];
  assign N0 = ~count_r[0];
  assign N36 = count_r[0] & N1;
  assign N1 = ~count_r[1];
  assign N35 = N2 & N3;
  assign N2 = ~count_r[0];
  assign N3 = ~count_r[1];
  assign N30 = ~N29;
  assign ready_o = (N4)? 1'b1 :
                   (N5)? 1'b1 :
                   (N6)? 1'b0 :
                   (N7)? 1'b0 : 1'b0;
  assign N4 = N16;
  assign N5 = N18;
  assign N6 = N20;
  assign N7 = N21;
  assign state_n = (N4)? { N216, N215 } :
                   (N5)? { N29, N30 } :
                   (N6)? { 1'b0, 1'b0 } :
                   (N7)? { 1'b0, 1'b0 } : 1'b0;
  assign we = (N4)? v_i :
              (N5)? v_i :
              (N6)? ready_i :
              (N7)? 1'b0 : 1'b0;
  assign count_n = (N4)? { N25, N24 } :
                   (N5)? { N28, N27 } :
                   (N6)? { 1'b0, 1'b0 } : 1'b0;
  assign v_o = (N4)? 1'b0 :
               (N5)? 1'b0 :
               (N6)? 1'b1 :
               (N7)? 1'b0 : 1'b0;
  assign clear = (N4)? 1'b0 :
                 (N5)? 1'b0 :
                 (N6)? ready_i :
                 (N7)? 1'b0 : 1'b0;
  assign { N182, N181, N180, N179, N178, N177, N41, N39 } = (N8)? { 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 } :
                                                            (N9)? { N38, N38, N37, N37, N36, N36, N35, N35 } : 1'b0;
  assign N8 = clear;
  assign N9 = N34;
  assign { N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N40 } = (N8)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } :
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   (N9)? data_i : 1'b0;
  assign { N190, N189, N188, N187, N186, N185, N184, N183 } = (N10)? { N182, N181, N180, N179, N178, N177, N41, N39 } :
                                                              (N11)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N10 = we;
  assign N11 = N33;
  assign { N192, N191 } = (N12)? { 1'b0, 1'b0 } :
                          (N13)? state_n : 1'b0;
  assign N12 = reset_i;
  assign N13 = N32;
  assign { N194, N193 } = (N12)? { 1'b0, 1'b0 } :
                          (N13)? count_n : 1'b0;
  assign { N202, N201, N200, N199, N198, N197, N196, N195 } = (N12)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } :
                                                              (N13)? { N190, N189, N188, N187, N186, N185, N184, N183 } : 1'b0;
  assign N14 = ~state_r[1];
  assign N15 = ~state_r[0];
  assign N18 = ~N17;
  assign N20 = ~N19;
  assign N22 = N16;
  assign N23 = ~v_i;
  assign N26 = N18;
  assign N31 = ~ready_i;
  assign N32 = ~reset_i;
  assign N33 = ~we;
  assign N34 = ~clear;
  assign N203 = N16 & N32;
  assign N204 = N23 & N203;
  assign N205 = N18 & N32;
  assign N206 = N23 & N205;
  assign N207 = N204 | N206;
  assign N208 = N20 & N32;
  assign N209 = N31 & N208;
  assign N210 = N207 | N209;
  assign N211 = ~N210;
  assign N212 = N21 & N32;
  assign N213 = N210 | N212;
  assign N214 = ~N213;

  always @(posedge clk_i) begin
    if(N201) begin
      { data_o[540:442], data_o[408:408] } <= { N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N40 };
    end
    if(N202) begin
      { data_o[441:409] } <= { N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42 };
    end
    if(N199) begin
      { data_o[407:309], data_o[272:272] } <= { N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N40 };
    end
    if(N200) begin
      { data_o[308:273] } <= { N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42 };
    end
    if(N197) begin
      { data_o[271:173], data_o[136:136] } <= { N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N40 };
    end
    if(N198) begin
      { data_o[172:137] } <= { N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42 };
    end
    if(N195) begin
      { data_o[135:37], data_o[0:0] } <= { N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N40 };
    end
    if(N196) begin
      { data_o[36:1] } <= { N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42 };
    end
    if(N211) begin
      { state_r[1:0] } <= { N192, N191 };
    end
    if(N214) begin
      { count_r[1:0] } <= { N194, N193 };
    end
  end


endmodule