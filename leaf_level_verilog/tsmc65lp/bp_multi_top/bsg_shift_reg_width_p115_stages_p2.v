module bsg_shift_reg_width_p115_stages_p2
(
  clk,
  reset_i,
  valid_i,
  data_i,
  valid_o,
  data_o
);

  input [114:0] data_i;
  output [114:0] data_o;
  input clk;
  input reset_i;
  input valid_i;
  output valid_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,
  N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,
  N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,
  N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149,
  N150,N151,N152,N153,N154,N155,N156,N157,N158,N159,N160,N161,N162,N163,N164,N165,
  N166,N167,N168,N169,N170,N171,N172,N173,N174,N175,N176,N177,N178,N179,N180,N181,
  N182,N183,N184,N185,N186,N187,N188,N189,N190,N191,N192,N193,N194,N195,N196,N197,
  N198,N199,N200,N201,N202,N203,N204,N205,N206,N207,N208,N209,N210,N211,N212,N213,
  N214,N215,N216,N217,N218,N219,N220,N221,N222,N223,N224,N225,N226,N227,N228,N229,
  N230,N231,N232,N233,N234;
  reg valid_o,shift_r_0__115_,shift_r_0__114_,shift_r_0__113_,shift_r_0__112_,
  shift_r_0__111_,shift_r_0__110_,shift_r_0__109_,shift_r_0__108_,shift_r_0__107_,
  shift_r_0__106_,shift_r_0__105_,shift_r_0__104_,shift_r_0__103_,shift_r_0__102_,
  shift_r_0__101_,shift_r_0__100_,shift_r_0__99_,shift_r_0__98_,shift_r_0__97_,
  shift_r_0__96_,shift_r_0__95_,shift_r_0__94_,shift_r_0__93_,shift_r_0__92_,shift_r_0__91_,
  shift_r_0__90_,shift_r_0__89_,shift_r_0__88_,shift_r_0__87_,shift_r_0__86_,
  shift_r_0__85_,shift_r_0__84_,shift_r_0__83_,shift_r_0__82_,shift_r_0__81_,
  shift_r_0__80_,shift_r_0__79_,shift_r_0__78_,shift_r_0__77_,shift_r_0__76_,shift_r_0__75_,
  shift_r_0__74_,shift_r_0__73_,shift_r_0__72_,shift_r_0__71_,shift_r_0__70_,
  shift_r_0__69_,shift_r_0__68_,shift_r_0__67_,shift_r_0__66_,shift_r_0__65_,
  shift_r_0__64_,shift_r_0__63_,shift_r_0__62_,shift_r_0__61_,shift_r_0__60_,shift_r_0__59_,
  shift_r_0__58_,shift_r_0__57_,shift_r_0__56_,shift_r_0__55_,shift_r_0__54_,
  shift_r_0__53_,shift_r_0__52_,shift_r_0__51_,shift_r_0__50_,shift_r_0__49_,
  shift_r_0__48_,shift_r_0__47_,shift_r_0__46_,shift_r_0__45_,shift_r_0__44_,shift_r_0__43_,
  shift_r_0__42_,shift_r_0__41_,shift_r_0__40_,shift_r_0__39_,shift_r_0__38_,
  shift_r_0__37_,shift_r_0__36_,shift_r_0__35_,shift_r_0__34_,shift_r_0__33_,
  shift_r_0__32_,shift_r_0__31_,shift_r_0__30_,shift_r_0__29_,shift_r_0__28_,shift_r_0__27_,
  shift_r_0__26_,shift_r_0__25_,shift_r_0__24_,shift_r_0__23_,shift_r_0__22_,
  shift_r_0__21_,shift_r_0__20_,shift_r_0__19_,shift_r_0__18_,shift_r_0__17_,
  shift_r_0__16_,shift_r_0__15_,shift_r_0__14_,shift_r_0__13_,shift_r_0__12_,shift_r_0__11_,
  shift_r_0__10_,shift_r_0__9_,shift_r_0__8_,shift_r_0__7_,shift_r_0__6_,
  shift_r_0__5_,shift_r_0__4_,shift_r_0__3_,shift_r_0__2_,shift_r_0__1_,shift_r_0__0_;
  reg [114:0] data_o;
  assign { N234, N233, N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3 } = (N0)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } :
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      (N1)? { shift_r_0__115_, shift_r_0__114_, shift_r_0__113_, shift_r_0__112_, shift_r_0__111_, shift_r_0__110_, shift_r_0__109_, shift_r_0__108_, shift_r_0__107_, shift_r_0__106_, shift_r_0__105_, shift_r_0__104_, shift_r_0__103_, shift_r_0__102_, shift_r_0__101_, shift_r_0__100_, shift_r_0__99_, shift_r_0__98_, shift_r_0__97_, shift_r_0__96_, shift_r_0__95_, shift_r_0__94_, shift_r_0__93_, shift_r_0__92_, shift_r_0__91_, shift_r_0__90_, shift_r_0__89_, shift_r_0__88_, shift_r_0__87_, shift_r_0__86_, shift_r_0__85_, shift_r_0__84_, shift_r_0__83_, shift_r_0__82_, shift_r_0__81_, shift_r_0__80_, shift_r_0__79_, shift_r_0__78_, shift_r_0__77_, shift_r_0__76_, shift_r_0__75_, shift_r_0__74_, shift_r_0__73_, shift_r_0__72_, shift_r_0__71_, shift_r_0__70_, shift_r_0__69_, shift_r_0__68_, shift_r_0__67_, shift_r_0__66_, shift_r_0__65_, shift_r_0__64_, shift_r_0__63_, shift_r_0__62_, shift_r_0__61_, shift_r_0__60_, shift_r_0__59_, shift_r_0__58_, shift_r_0__57_, shift_r_0__56_, shift_r_0__55_, shift_r_0__54_, shift_r_0__53_, shift_r_0__52_, shift_r_0__51_, shift_r_0__50_, shift_r_0__49_, shift_r_0__48_, shift_r_0__47_, shift_r_0__46_, shift_r_0__45_, shift_r_0__44_, shift_r_0__43_, shift_r_0__42_, shift_r_0__41_, shift_r_0__40_, shift_r_0__39_, shift_r_0__38_, shift_r_0__37_, shift_r_0__36_, shift_r_0__35_, shift_r_0__34_, shift_r_0__33_, shift_r_0__32_, shift_r_0__31_, shift_r_0__30_, shift_r_0__29_, shift_r_0__28_, shift_r_0__27_, shift_r_0__26_, shift_r_0__25_, shift_r_0__24_, shift_r_0__23_, shift_r_0__22_, shift_r_0__21_, shift_r_0__20_, shift_r_0__19_, shift_r_0__18_, shift_r_0__17_, shift_r_0__16_, shift_r_0__15_, shift_r_0__14_, shift_r_0__13_, shift_r_0__12_, shift_r_0__11_, shift_r_0__10_, shift_r_0__9_, shift_r_0__8_, shift_r_0__7_, shift_r_0__6_, shift_r_0__5_, shift_r_0__4_, shift_r_0__3_, shift_r_0__2_, shift_r_0__1_, shift_r_0__0_, valid_i, data_i } : 1'b0;
  assign N0 = reset_i;
  assign N1 = N2;
  assign N2 = ~reset_i;

  always @(posedge clk) begin
    if(1'b1) begin
      valid_o <= N234;
      { data_o[114:0] } <= { N233, N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119 };
      shift_r_0__115_ <= N118;
      shift_r_0__114_ <= N117;
      shift_r_0__113_ <= N116;
      shift_r_0__112_ <= N115;
      shift_r_0__111_ <= N114;
      shift_r_0__110_ <= N113;
      shift_r_0__109_ <= N112;
      shift_r_0__108_ <= N111;
      shift_r_0__107_ <= N110;
      shift_r_0__106_ <= N109;
      shift_r_0__105_ <= N108;
      shift_r_0__104_ <= N107;
      shift_r_0__103_ <= N106;
      shift_r_0__102_ <= N105;
      shift_r_0__101_ <= N104;
      shift_r_0__100_ <= N103;
      shift_r_0__99_ <= N102;
      shift_r_0__98_ <= N101;
      shift_r_0__97_ <= N100;
      shift_r_0__96_ <= N99;
      shift_r_0__95_ <= N98;
      shift_r_0__94_ <= N97;
      shift_r_0__93_ <= N96;
      shift_r_0__92_ <= N95;
      shift_r_0__91_ <= N94;
      shift_r_0__90_ <= N93;
      shift_r_0__89_ <= N92;
      shift_r_0__88_ <= N91;
      shift_r_0__87_ <= N90;
      shift_r_0__86_ <= N89;
      shift_r_0__85_ <= N88;
      shift_r_0__84_ <= N87;
      shift_r_0__83_ <= N86;
      shift_r_0__82_ <= N85;
      shift_r_0__81_ <= N84;
      shift_r_0__80_ <= N83;
      shift_r_0__79_ <= N82;
      shift_r_0__78_ <= N81;
      shift_r_0__77_ <= N80;
      shift_r_0__76_ <= N79;
      shift_r_0__75_ <= N78;
      shift_r_0__74_ <= N77;
      shift_r_0__73_ <= N76;
      shift_r_0__72_ <= N75;
      shift_r_0__71_ <= N74;
      shift_r_0__70_ <= N73;
      shift_r_0__69_ <= N72;
      shift_r_0__68_ <= N71;
      shift_r_0__67_ <= N70;
      shift_r_0__66_ <= N69;
      shift_r_0__65_ <= N68;
      shift_r_0__64_ <= N67;
      shift_r_0__63_ <= N66;
      shift_r_0__62_ <= N65;
      shift_r_0__61_ <= N64;
      shift_r_0__60_ <= N63;
      shift_r_0__59_ <= N62;
      shift_r_0__58_ <= N61;
      shift_r_0__57_ <= N60;
      shift_r_0__56_ <= N59;
      shift_r_0__55_ <= N58;
      shift_r_0__54_ <= N57;
      shift_r_0__53_ <= N56;
      shift_r_0__52_ <= N55;
      shift_r_0__51_ <= N54;
      shift_r_0__50_ <= N53;
      shift_r_0__49_ <= N52;
      shift_r_0__48_ <= N51;
      shift_r_0__47_ <= N50;
      shift_r_0__46_ <= N49;
      shift_r_0__45_ <= N48;
      shift_r_0__44_ <= N47;
      shift_r_0__43_ <= N46;
      shift_r_0__42_ <= N45;
      shift_r_0__41_ <= N44;
      shift_r_0__40_ <= N43;
      shift_r_0__39_ <= N42;
      shift_r_0__38_ <= N41;
      shift_r_0__37_ <= N40;
      shift_r_0__36_ <= N39;
      shift_r_0__35_ <= N38;
      shift_r_0__34_ <= N37;
      shift_r_0__33_ <= N36;
      shift_r_0__32_ <= N35;
      shift_r_0__31_ <= N34;
      shift_r_0__30_ <= N33;
      shift_r_0__29_ <= N32;
      shift_r_0__28_ <= N31;
      shift_r_0__27_ <= N30;
      shift_r_0__26_ <= N29;
      shift_r_0__25_ <= N28;
      shift_r_0__24_ <= N27;
      shift_r_0__23_ <= N26;
      shift_r_0__22_ <= N25;
      shift_r_0__21_ <= N24;
      shift_r_0__20_ <= N23;
      shift_r_0__19_ <= N22;
      shift_r_0__18_ <= N21;
      shift_r_0__17_ <= N20;
      shift_r_0__16_ <= N19;
      shift_r_0__15_ <= N18;
      shift_r_0__14_ <= N17;
      shift_r_0__13_ <= N16;
      shift_r_0__12_ <= N15;
      shift_r_0__11_ <= N14;
      shift_r_0__10_ <= N13;
      shift_r_0__9_ <= N12;
      shift_r_0__8_ <= N11;
      shift_r_0__7_ <= N10;
      shift_r_0__6_ <= N9;
      shift_r_0__5_ <= N8;
      shift_r_0__4_ <= N7;
      shift_r_0__3_ <= N6;
      shift_r_0__2_ <= N5;
      shift_r_0__1_ <= N4;
      shift_r_0__0_ <= N3;
    end
  end


endmodule