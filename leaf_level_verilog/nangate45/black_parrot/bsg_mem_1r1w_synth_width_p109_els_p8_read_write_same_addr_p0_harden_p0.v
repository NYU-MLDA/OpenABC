module bsg_mem_1r1w_synth_width_p109_els_p8_read_write_same_addr_p0_harden_p0
(
  w_clk_i,
  w_reset_i,
  w_v_i,
  w_addr_i,
  w_data_i,
  r_v_i,
  r_addr_i,
  r_data_o
);

  input [2:0] w_addr_i;
  input [108:0] w_data_i;
  input [2:0] r_addr_i;
  output [108:0] r_data_o;
  input w_clk_i;
  input w_reset_i;
  input w_v_i;
  input r_v_i;
  wire [108:0] r_data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53;
  reg [871:0] mem;
  assign r_data_o[108] = (N17)? mem[108] :
                         (N19)? mem[217] :
                         (N21)? mem[326] :
                         (N23)? mem[435] :
                         (N18)? mem[544] :
                         (N20)? mem[653] :
                         (N22)? mem[762] :
                         (N24)? mem[871] : 1'b0;
  assign r_data_o[107] = (N17)? mem[107] :
                         (N19)? mem[216] :
                         (N21)? mem[325] :
                         (N23)? mem[434] :
                         (N18)? mem[543] :
                         (N20)? mem[652] :
                         (N22)? mem[761] :
                         (N24)? mem[870] : 1'b0;
  assign r_data_o[106] = (N17)? mem[106] :
                         (N19)? mem[215] :
                         (N21)? mem[324] :
                         (N23)? mem[433] :
                         (N18)? mem[542] :
                         (N20)? mem[651] :
                         (N22)? mem[760] :
                         (N24)? mem[869] : 1'b0;
  assign r_data_o[105] = (N17)? mem[105] :
                         (N19)? mem[214] :
                         (N21)? mem[323] :
                         (N23)? mem[432] :
                         (N18)? mem[541] :
                         (N20)? mem[650] :
                         (N22)? mem[759] :
                         (N24)? mem[868] : 1'b0;
  assign r_data_o[104] = (N17)? mem[104] :
                         (N19)? mem[213] :
                         (N21)? mem[322] :
                         (N23)? mem[431] :
                         (N18)? mem[540] :
                         (N20)? mem[649] :
                         (N22)? mem[758] :
                         (N24)? mem[867] : 1'b0;
  assign r_data_o[103] = (N17)? mem[103] :
                         (N19)? mem[212] :
                         (N21)? mem[321] :
                         (N23)? mem[430] :
                         (N18)? mem[539] :
                         (N20)? mem[648] :
                         (N22)? mem[757] :
                         (N24)? mem[866] : 1'b0;
  assign r_data_o[102] = (N17)? mem[102] :
                         (N19)? mem[211] :
                         (N21)? mem[320] :
                         (N23)? mem[429] :
                         (N18)? mem[538] :
                         (N20)? mem[647] :
                         (N22)? mem[756] :
                         (N24)? mem[865] : 1'b0;
  assign r_data_o[101] = (N17)? mem[101] :
                         (N19)? mem[210] :
                         (N21)? mem[319] :
                         (N23)? mem[428] :
                         (N18)? mem[537] :
                         (N20)? mem[646] :
                         (N22)? mem[755] :
                         (N24)? mem[864] : 1'b0;
  assign r_data_o[100] = (N17)? mem[100] :
                         (N19)? mem[209] :
                         (N21)? mem[318] :
                         (N23)? mem[427] :
                         (N18)? mem[536] :
                         (N20)? mem[645] :
                         (N22)? mem[754] :
                         (N24)? mem[863] : 1'b0;
  assign r_data_o[99] = (N17)? mem[99] :
                        (N19)? mem[208] :
                        (N21)? mem[317] :
                        (N23)? mem[426] :
                        (N18)? mem[535] :
                        (N20)? mem[644] :
                        (N22)? mem[753] :
                        (N24)? mem[862] : 1'b0;
  assign r_data_o[98] = (N17)? mem[98] :
                        (N19)? mem[207] :
                        (N21)? mem[316] :
                        (N23)? mem[425] :
                        (N18)? mem[534] :
                        (N20)? mem[643] :
                        (N22)? mem[752] :
                        (N24)? mem[861] : 1'b0;
  assign r_data_o[97] = (N17)? mem[97] :
                        (N19)? mem[206] :
                        (N21)? mem[315] :
                        (N23)? mem[424] :
                        (N18)? mem[533] :
                        (N20)? mem[642] :
                        (N22)? mem[751] :
                        (N24)? mem[860] : 1'b0;
  assign r_data_o[96] = (N17)? mem[96] :
                        (N19)? mem[205] :
                        (N21)? mem[314] :
                        (N23)? mem[423] :
                        (N18)? mem[532] :
                        (N20)? mem[641] :
                        (N22)? mem[750] :
                        (N24)? mem[859] : 1'b0;
  assign r_data_o[95] = (N17)? mem[95] :
                        (N19)? mem[204] :
                        (N21)? mem[313] :
                        (N23)? mem[422] :
                        (N18)? mem[531] :
                        (N20)? mem[640] :
                        (N22)? mem[749] :
                        (N24)? mem[858] : 1'b0;
  assign r_data_o[94] = (N17)? mem[94] :
                        (N19)? mem[203] :
                        (N21)? mem[312] :
                        (N23)? mem[421] :
                        (N18)? mem[530] :
                        (N20)? mem[639] :
                        (N22)? mem[748] :
                        (N24)? mem[857] : 1'b0;
  assign r_data_o[93] = (N17)? mem[93] :
                        (N19)? mem[202] :
                        (N21)? mem[311] :
                        (N23)? mem[420] :
                        (N18)? mem[529] :
                        (N20)? mem[638] :
                        (N22)? mem[747] :
                        (N24)? mem[856] : 1'b0;
  assign r_data_o[92] = (N17)? mem[92] :
                        (N19)? mem[201] :
                        (N21)? mem[310] :
                        (N23)? mem[419] :
                        (N18)? mem[528] :
                        (N20)? mem[637] :
                        (N22)? mem[746] :
                        (N24)? mem[855] : 1'b0;
  assign r_data_o[91] = (N17)? mem[91] :
                        (N19)? mem[200] :
                        (N21)? mem[309] :
                        (N23)? mem[418] :
                        (N18)? mem[527] :
                        (N20)? mem[636] :
                        (N22)? mem[745] :
                        (N24)? mem[854] : 1'b0;
  assign r_data_o[90] = (N17)? mem[90] :
                        (N19)? mem[199] :
                        (N21)? mem[308] :
                        (N23)? mem[417] :
                        (N18)? mem[526] :
                        (N20)? mem[635] :
                        (N22)? mem[744] :
                        (N24)? mem[853] : 1'b0;
  assign r_data_o[89] = (N17)? mem[89] :
                        (N19)? mem[198] :
                        (N21)? mem[307] :
                        (N23)? mem[416] :
                        (N18)? mem[525] :
                        (N20)? mem[634] :
                        (N22)? mem[743] :
                        (N24)? mem[852] : 1'b0;
  assign r_data_o[88] = (N17)? mem[88] :
                        (N19)? mem[197] :
                        (N21)? mem[306] :
                        (N23)? mem[415] :
                        (N18)? mem[524] :
                        (N20)? mem[633] :
                        (N22)? mem[742] :
                        (N24)? mem[851] : 1'b0;
  assign r_data_o[87] = (N17)? mem[87] :
                        (N19)? mem[196] :
                        (N21)? mem[305] :
                        (N23)? mem[414] :
                        (N18)? mem[523] :
                        (N20)? mem[632] :
                        (N22)? mem[741] :
                        (N24)? mem[850] : 1'b0;
  assign r_data_o[86] = (N17)? mem[86] :
                        (N19)? mem[195] :
                        (N21)? mem[304] :
                        (N23)? mem[413] :
                        (N18)? mem[522] :
                        (N20)? mem[631] :
                        (N22)? mem[740] :
                        (N24)? mem[849] : 1'b0;
  assign r_data_o[85] = (N17)? mem[85] :
                        (N19)? mem[194] :
                        (N21)? mem[303] :
                        (N23)? mem[412] :
                        (N18)? mem[521] :
                        (N20)? mem[630] :
                        (N22)? mem[739] :
                        (N24)? mem[848] : 1'b0;
  assign r_data_o[84] = (N17)? mem[84] :
                        (N19)? mem[193] :
                        (N21)? mem[302] :
                        (N23)? mem[411] :
                        (N18)? mem[520] :
                        (N20)? mem[629] :
                        (N22)? mem[738] :
                        (N24)? mem[847] : 1'b0;
  assign r_data_o[83] = (N17)? mem[83] :
                        (N19)? mem[192] :
                        (N21)? mem[301] :
                        (N23)? mem[410] :
                        (N18)? mem[519] :
                        (N20)? mem[628] :
                        (N22)? mem[737] :
                        (N24)? mem[846] : 1'b0;
  assign r_data_o[82] = (N17)? mem[82] :
                        (N19)? mem[191] :
                        (N21)? mem[300] :
                        (N23)? mem[409] :
                        (N18)? mem[518] :
                        (N20)? mem[627] :
                        (N22)? mem[736] :
                        (N24)? mem[845] : 1'b0;
  assign r_data_o[81] = (N17)? mem[81] :
                        (N19)? mem[190] :
                        (N21)? mem[299] :
                        (N23)? mem[408] :
                        (N18)? mem[517] :
                        (N20)? mem[626] :
                        (N22)? mem[735] :
                        (N24)? mem[844] : 1'b0;
  assign r_data_o[80] = (N17)? mem[80] :
                        (N19)? mem[189] :
                        (N21)? mem[298] :
                        (N23)? mem[407] :
                        (N18)? mem[516] :
                        (N20)? mem[625] :
                        (N22)? mem[734] :
                        (N24)? mem[843] : 1'b0;
  assign r_data_o[79] = (N17)? mem[79] :
                        (N19)? mem[188] :
                        (N21)? mem[297] :
                        (N23)? mem[406] :
                        (N18)? mem[515] :
                        (N20)? mem[624] :
                        (N22)? mem[733] :
                        (N24)? mem[842] : 1'b0;
  assign r_data_o[78] = (N17)? mem[78] :
                        (N19)? mem[187] :
                        (N21)? mem[296] :
                        (N23)? mem[405] :
                        (N18)? mem[514] :
                        (N20)? mem[623] :
                        (N22)? mem[732] :
                        (N24)? mem[841] : 1'b0;
  assign r_data_o[77] = (N17)? mem[77] :
                        (N19)? mem[186] :
                        (N21)? mem[295] :
                        (N23)? mem[404] :
                        (N18)? mem[513] :
                        (N20)? mem[622] :
                        (N22)? mem[731] :
                        (N24)? mem[840] : 1'b0;
  assign r_data_o[76] = (N17)? mem[76] :
                        (N19)? mem[185] :
                        (N21)? mem[294] :
                        (N23)? mem[403] :
                        (N18)? mem[512] :
                        (N20)? mem[621] :
                        (N22)? mem[730] :
                        (N24)? mem[839] : 1'b0;
  assign r_data_o[75] = (N17)? mem[75] :
                        (N19)? mem[184] :
                        (N21)? mem[293] :
                        (N23)? mem[402] :
                        (N18)? mem[511] :
                        (N20)? mem[620] :
                        (N22)? mem[729] :
                        (N24)? mem[838] : 1'b0;
  assign r_data_o[74] = (N17)? mem[74] :
                        (N19)? mem[183] :
                        (N21)? mem[292] :
                        (N23)? mem[401] :
                        (N18)? mem[510] :
                        (N20)? mem[619] :
                        (N22)? mem[728] :
                        (N24)? mem[837] : 1'b0;
  assign r_data_o[73] = (N17)? mem[73] :
                        (N19)? mem[182] :
                        (N21)? mem[291] :
                        (N23)? mem[400] :
                        (N18)? mem[509] :
                        (N20)? mem[618] :
                        (N22)? mem[727] :
                        (N24)? mem[836] : 1'b0;
  assign r_data_o[72] = (N17)? mem[72] :
                        (N19)? mem[181] :
                        (N21)? mem[290] :
                        (N23)? mem[399] :
                        (N18)? mem[508] :
                        (N20)? mem[617] :
                        (N22)? mem[726] :
                        (N24)? mem[835] : 1'b0;
  assign r_data_o[71] = (N17)? mem[71] :
                        (N19)? mem[180] :
                        (N21)? mem[289] :
                        (N23)? mem[398] :
                        (N18)? mem[507] :
                        (N20)? mem[616] :
                        (N22)? mem[725] :
                        (N24)? mem[834] : 1'b0;
  assign r_data_o[70] = (N17)? mem[70] :
                        (N19)? mem[179] :
                        (N21)? mem[288] :
                        (N23)? mem[397] :
                        (N18)? mem[506] :
                        (N20)? mem[615] :
                        (N22)? mem[724] :
                        (N24)? mem[833] : 1'b0;
  assign r_data_o[69] = (N17)? mem[69] :
                        (N19)? mem[178] :
                        (N21)? mem[287] :
                        (N23)? mem[396] :
                        (N18)? mem[505] :
                        (N20)? mem[614] :
                        (N22)? mem[723] :
                        (N24)? mem[832] : 1'b0;
  assign r_data_o[68] = (N17)? mem[68] :
                        (N19)? mem[177] :
                        (N21)? mem[286] :
                        (N23)? mem[395] :
                        (N18)? mem[504] :
                        (N20)? mem[613] :
                        (N22)? mem[722] :
                        (N24)? mem[831] : 1'b0;
  assign r_data_o[67] = (N17)? mem[67] :
                        (N19)? mem[176] :
                        (N21)? mem[285] :
                        (N23)? mem[394] :
                        (N18)? mem[503] :
                        (N20)? mem[612] :
                        (N22)? mem[721] :
                        (N24)? mem[830] : 1'b0;
  assign r_data_o[66] = (N17)? mem[66] :
                        (N19)? mem[175] :
                        (N21)? mem[284] :
                        (N23)? mem[393] :
                        (N18)? mem[502] :
                        (N20)? mem[611] :
                        (N22)? mem[720] :
                        (N24)? mem[829] : 1'b0;
  assign r_data_o[65] = (N17)? mem[65] :
                        (N19)? mem[174] :
                        (N21)? mem[283] :
                        (N23)? mem[392] :
                        (N18)? mem[501] :
                        (N20)? mem[610] :
                        (N22)? mem[719] :
                        (N24)? mem[828] : 1'b0;
  assign r_data_o[64] = (N17)? mem[64] :
                        (N19)? mem[173] :
                        (N21)? mem[282] :
                        (N23)? mem[391] :
                        (N18)? mem[500] :
                        (N20)? mem[609] :
                        (N22)? mem[718] :
                        (N24)? mem[827] : 1'b0;
  assign r_data_o[63] = (N17)? mem[63] :
                        (N19)? mem[172] :
                        (N21)? mem[281] :
                        (N23)? mem[390] :
                        (N18)? mem[499] :
                        (N20)? mem[608] :
                        (N22)? mem[717] :
                        (N24)? mem[826] : 1'b0;
  assign r_data_o[62] = (N17)? mem[62] :
                        (N19)? mem[171] :
                        (N21)? mem[280] :
                        (N23)? mem[389] :
                        (N18)? mem[498] :
                        (N20)? mem[607] :
                        (N22)? mem[716] :
                        (N24)? mem[825] : 1'b0;
  assign r_data_o[61] = (N17)? mem[61] :
                        (N19)? mem[170] :
                        (N21)? mem[279] :
                        (N23)? mem[388] :
                        (N18)? mem[497] :
                        (N20)? mem[606] :
                        (N22)? mem[715] :
                        (N24)? mem[824] : 1'b0;
  assign r_data_o[60] = (N17)? mem[60] :
                        (N19)? mem[169] :
                        (N21)? mem[278] :
                        (N23)? mem[387] :
                        (N18)? mem[496] :
                        (N20)? mem[605] :
                        (N22)? mem[714] :
                        (N24)? mem[823] : 1'b0;
  assign r_data_o[59] = (N17)? mem[59] :
                        (N19)? mem[168] :
                        (N21)? mem[277] :
                        (N23)? mem[386] :
                        (N18)? mem[495] :
                        (N20)? mem[604] :
                        (N22)? mem[713] :
                        (N24)? mem[822] : 1'b0;
  assign r_data_o[58] = (N17)? mem[58] :
                        (N19)? mem[167] :
                        (N21)? mem[276] :
                        (N23)? mem[385] :
                        (N18)? mem[494] :
                        (N20)? mem[603] :
                        (N22)? mem[712] :
                        (N24)? mem[821] : 1'b0;
  assign r_data_o[57] = (N17)? mem[57] :
                        (N19)? mem[166] :
                        (N21)? mem[275] :
                        (N23)? mem[384] :
                        (N18)? mem[493] :
                        (N20)? mem[602] :
                        (N22)? mem[711] :
                        (N24)? mem[820] : 1'b0;
  assign r_data_o[56] = (N17)? mem[56] :
                        (N19)? mem[165] :
                        (N21)? mem[274] :
                        (N23)? mem[383] :
                        (N18)? mem[492] :
                        (N20)? mem[601] :
                        (N22)? mem[710] :
                        (N24)? mem[819] : 1'b0;
  assign r_data_o[55] = (N17)? mem[55] :
                        (N19)? mem[164] :
                        (N21)? mem[273] :
                        (N23)? mem[382] :
                        (N18)? mem[491] :
                        (N20)? mem[600] :
                        (N22)? mem[709] :
                        (N24)? mem[818] : 1'b0;
  assign r_data_o[54] = (N17)? mem[54] :
                        (N19)? mem[163] :
                        (N21)? mem[272] :
                        (N23)? mem[381] :
                        (N18)? mem[490] :
                        (N20)? mem[599] :
                        (N22)? mem[708] :
                        (N24)? mem[817] : 1'b0;
  assign r_data_o[53] = (N17)? mem[53] :
                        (N19)? mem[162] :
                        (N21)? mem[271] :
                        (N23)? mem[380] :
                        (N18)? mem[489] :
                        (N20)? mem[598] :
                        (N22)? mem[707] :
                        (N24)? mem[816] : 1'b0;
  assign r_data_o[52] = (N17)? mem[52] :
                        (N19)? mem[161] :
                        (N21)? mem[270] :
                        (N23)? mem[379] :
                        (N18)? mem[488] :
                        (N20)? mem[597] :
                        (N22)? mem[706] :
                        (N24)? mem[815] : 1'b0;
  assign r_data_o[51] = (N17)? mem[51] :
                        (N19)? mem[160] :
                        (N21)? mem[269] :
                        (N23)? mem[378] :
                        (N18)? mem[487] :
                        (N20)? mem[596] :
                        (N22)? mem[705] :
                        (N24)? mem[814] : 1'b0;
  assign r_data_o[50] = (N17)? mem[50] :
                        (N19)? mem[159] :
                        (N21)? mem[268] :
                        (N23)? mem[377] :
                        (N18)? mem[486] :
                        (N20)? mem[595] :
                        (N22)? mem[704] :
                        (N24)? mem[813] : 1'b0;
  assign r_data_o[49] = (N17)? mem[49] :
                        (N19)? mem[158] :
                        (N21)? mem[267] :
                        (N23)? mem[376] :
                        (N18)? mem[485] :
                        (N20)? mem[594] :
                        (N22)? mem[703] :
                        (N24)? mem[812] : 1'b0;
  assign r_data_o[48] = (N17)? mem[48] :
                        (N19)? mem[157] :
                        (N21)? mem[266] :
                        (N23)? mem[375] :
                        (N18)? mem[484] :
                        (N20)? mem[593] :
                        (N22)? mem[702] :
                        (N24)? mem[811] : 1'b0;
  assign r_data_o[47] = (N17)? mem[47] :
                        (N19)? mem[156] :
                        (N21)? mem[265] :
                        (N23)? mem[374] :
                        (N18)? mem[483] :
                        (N20)? mem[592] :
                        (N22)? mem[701] :
                        (N24)? mem[810] : 1'b0;
  assign r_data_o[46] = (N17)? mem[46] :
                        (N19)? mem[155] :
                        (N21)? mem[264] :
                        (N23)? mem[373] :
                        (N18)? mem[482] :
                        (N20)? mem[591] :
                        (N22)? mem[700] :
                        (N24)? mem[809] : 1'b0;
  assign r_data_o[45] = (N17)? mem[45] :
                        (N19)? mem[154] :
                        (N21)? mem[263] :
                        (N23)? mem[372] :
                        (N18)? mem[481] :
                        (N20)? mem[590] :
                        (N22)? mem[699] :
                        (N24)? mem[808] : 1'b0;
  assign r_data_o[44] = (N17)? mem[44] :
                        (N19)? mem[153] :
                        (N21)? mem[262] :
                        (N23)? mem[371] :
                        (N18)? mem[480] :
                        (N20)? mem[589] :
                        (N22)? mem[698] :
                        (N24)? mem[807] : 1'b0;
  assign r_data_o[43] = (N17)? mem[43] :
                        (N19)? mem[152] :
                        (N21)? mem[261] :
                        (N23)? mem[370] :
                        (N18)? mem[479] :
                        (N20)? mem[588] :
                        (N22)? mem[697] :
                        (N24)? mem[806] : 1'b0;
  assign r_data_o[42] = (N17)? mem[42] :
                        (N19)? mem[151] :
                        (N21)? mem[260] :
                        (N23)? mem[369] :
                        (N18)? mem[478] :
                        (N20)? mem[587] :
                        (N22)? mem[696] :
                        (N24)? mem[805] : 1'b0;
  assign r_data_o[41] = (N17)? mem[41] :
                        (N19)? mem[150] :
                        (N21)? mem[259] :
                        (N23)? mem[368] :
                        (N18)? mem[477] :
                        (N20)? mem[586] :
                        (N22)? mem[695] :
                        (N24)? mem[804] : 1'b0;
  assign r_data_o[40] = (N17)? mem[40] :
                        (N19)? mem[149] :
                        (N21)? mem[258] :
                        (N23)? mem[367] :
                        (N18)? mem[476] :
                        (N20)? mem[585] :
                        (N22)? mem[694] :
                        (N24)? mem[803] : 1'b0;
  assign r_data_o[39] = (N17)? mem[39] :
                        (N19)? mem[148] :
                        (N21)? mem[257] :
                        (N23)? mem[366] :
                        (N18)? mem[475] :
                        (N20)? mem[584] :
                        (N22)? mem[693] :
                        (N24)? mem[802] : 1'b0;
  assign r_data_o[38] = (N17)? mem[38] :
                        (N19)? mem[147] :
                        (N21)? mem[256] :
                        (N23)? mem[365] :
                        (N18)? mem[474] :
                        (N20)? mem[583] :
                        (N22)? mem[692] :
                        (N24)? mem[801] : 1'b0;
  assign r_data_o[37] = (N17)? mem[37] :
                        (N19)? mem[146] :
                        (N21)? mem[255] :
                        (N23)? mem[364] :
                        (N18)? mem[473] :
                        (N20)? mem[582] :
                        (N22)? mem[691] :
                        (N24)? mem[800] : 1'b0;
  assign r_data_o[36] = (N17)? mem[36] :
                        (N19)? mem[145] :
                        (N21)? mem[254] :
                        (N23)? mem[363] :
                        (N18)? mem[472] :
                        (N20)? mem[581] :
                        (N22)? mem[690] :
                        (N24)? mem[799] : 1'b0;
  assign r_data_o[35] = (N17)? mem[35] :
                        (N19)? mem[144] :
                        (N21)? mem[253] :
                        (N23)? mem[362] :
                        (N18)? mem[471] :
                        (N20)? mem[580] :
                        (N22)? mem[689] :
                        (N24)? mem[798] : 1'b0;
  assign r_data_o[34] = (N17)? mem[34] :
                        (N19)? mem[143] :
                        (N21)? mem[252] :
                        (N23)? mem[361] :
                        (N18)? mem[470] :
                        (N20)? mem[579] :
                        (N22)? mem[688] :
                        (N24)? mem[797] : 1'b0;
  assign r_data_o[33] = (N17)? mem[33] :
                        (N19)? mem[142] :
                        (N21)? mem[251] :
                        (N23)? mem[360] :
                        (N18)? mem[469] :
                        (N20)? mem[578] :
                        (N22)? mem[687] :
                        (N24)? mem[796] : 1'b0;
  assign r_data_o[32] = (N17)? mem[32] :
                        (N19)? mem[141] :
                        (N21)? mem[250] :
                        (N23)? mem[359] :
                        (N18)? mem[468] :
                        (N20)? mem[577] :
                        (N22)? mem[686] :
                        (N24)? mem[795] : 1'b0;
  assign r_data_o[31] = (N17)? mem[31] :
                        (N19)? mem[140] :
                        (N21)? mem[249] :
                        (N23)? mem[358] :
                        (N18)? mem[467] :
                        (N20)? mem[576] :
                        (N22)? mem[685] :
                        (N24)? mem[794] : 1'b0;
  assign r_data_o[30] = (N17)? mem[30] :
                        (N19)? mem[139] :
                        (N21)? mem[248] :
                        (N23)? mem[357] :
                        (N18)? mem[466] :
                        (N20)? mem[575] :
                        (N22)? mem[684] :
                        (N24)? mem[793] : 1'b0;
  assign r_data_o[29] = (N17)? mem[29] :
                        (N19)? mem[138] :
                        (N21)? mem[247] :
                        (N23)? mem[356] :
                        (N18)? mem[465] :
                        (N20)? mem[574] :
                        (N22)? mem[683] :
                        (N24)? mem[792] : 1'b0;
  assign r_data_o[28] = (N17)? mem[28] :
                        (N19)? mem[137] :
                        (N21)? mem[246] :
                        (N23)? mem[355] :
                        (N18)? mem[464] :
                        (N20)? mem[573] :
                        (N22)? mem[682] :
                        (N24)? mem[791] : 1'b0;
  assign r_data_o[27] = (N17)? mem[27] :
                        (N19)? mem[136] :
                        (N21)? mem[245] :
                        (N23)? mem[354] :
                        (N18)? mem[463] :
                        (N20)? mem[572] :
                        (N22)? mem[681] :
                        (N24)? mem[790] : 1'b0;
  assign r_data_o[26] = (N17)? mem[26] :
                        (N19)? mem[135] :
                        (N21)? mem[244] :
                        (N23)? mem[353] :
                        (N18)? mem[462] :
                        (N20)? mem[571] :
                        (N22)? mem[680] :
                        (N24)? mem[789] : 1'b0;
  assign r_data_o[25] = (N17)? mem[25] :
                        (N19)? mem[134] :
                        (N21)? mem[243] :
                        (N23)? mem[352] :
                        (N18)? mem[461] :
                        (N20)? mem[570] :
                        (N22)? mem[679] :
                        (N24)? mem[788] : 1'b0;
  assign r_data_o[24] = (N17)? mem[24] :
                        (N19)? mem[133] :
                        (N21)? mem[242] :
                        (N23)? mem[351] :
                        (N18)? mem[460] :
                        (N20)? mem[569] :
                        (N22)? mem[678] :
                        (N24)? mem[787] : 1'b0;
  assign r_data_o[23] = (N17)? mem[23] :
                        (N19)? mem[132] :
                        (N21)? mem[241] :
                        (N23)? mem[350] :
                        (N18)? mem[459] :
                        (N20)? mem[568] :
                        (N22)? mem[677] :
                        (N24)? mem[786] : 1'b0;
  assign r_data_o[22] = (N17)? mem[22] :
                        (N19)? mem[131] :
                        (N21)? mem[240] :
                        (N23)? mem[349] :
                        (N18)? mem[458] :
                        (N20)? mem[567] :
                        (N22)? mem[676] :
                        (N24)? mem[785] : 1'b0;
  assign r_data_o[21] = (N17)? mem[21] :
                        (N19)? mem[130] :
                        (N21)? mem[239] :
                        (N23)? mem[348] :
                        (N18)? mem[457] :
                        (N20)? mem[566] :
                        (N22)? mem[675] :
                        (N24)? mem[784] : 1'b0;
  assign r_data_o[20] = (N17)? mem[20] :
                        (N19)? mem[129] :
                        (N21)? mem[238] :
                        (N23)? mem[347] :
                        (N18)? mem[456] :
                        (N20)? mem[565] :
                        (N22)? mem[674] :
                        (N24)? mem[783] : 1'b0;
  assign r_data_o[19] = (N17)? mem[19] :
                        (N19)? mem[128] :
                        (N21)? mem[237] :
                        (N23)? mem[346] :
                        (N18)? mem[455] :
                        (N20)? mem[564] :
                        (N22)? mem[673] :
                        (N24)? mem[782] : 1'b0;
  assign r_data_o[18] = (N17)? mem[18] :
                        (N19)? mem[127] :
                        (N21)? mem[236] :
                        (N23)? mem[345] :
                        (N18)? mem[454] :
                        (N20)? mem[563] :
                        (N22)? mem[672] :
                        (N24)? mem[781] : 1'b0;
  assign r_data_o[17] = (N17)? mem[17] :
                        (N19)? mem[126] :
                        (N21)? mem[235] :
                        (N23)? mem[344] :
                        (N18)? mem[453] :
                        (N20)? mem[562] :
                        (N22)? mem[671] :
                        (N24)? mem[780] : 1'b0;
  assign r_data_o[16] = (N17)? mem[16] :
                        (N19)? mem[125] :
                        (N21)? mem[234] :
                        (N23)? mem[343] :
                        (N18)? mem[452] :
                        (N20)? mem[561] :
                        (N22)? mem[670] :
                        (N24)? mem[779] : 1'b0;
  assign r_data_o[15] = (N17)? mem[15] :
                        (N19)? mem[124] :
                        (N21)? mem[233] :
                        (N23)? mem[342] :
                        (N18)? mem[451] :
                        (N20)? mem[560] :
                        (N22)? mem[669] :
                        (N24)? mem[778] : 1'b0;
  assign r_data_o[14] = (N17)? mem[14] :
                        (N19)? mem[123] :
                        (N21)? mem[232] :
                        (N23)? mem[341] :
                        (N18)? mem[450] :
                        (N20)? mem[559] :
                        (N22)? mem[668] :
                        (N24)? mem[777] : 1'b0;
  assign r_data_o[13] = (N17)? mem[13] :
                        (N19)? mem[122] :
                        (N21)? mem[231] :
                        (N23)? mem[340] :
                        (N18)? mem[449] :
                        (N20)? mem[558] :
                        (N22)? mem[667] :
                        (N24)? mem[776] : 1'b0;
  assign r_data_o[12] = (N17)? mem[12] :
                        (N19)? mem[121] :
                        (N21)? mem[230] :
                        (N23)? mem[339] :
                        (N18)? mem[448] :
                        (N20)? mem[557] :
                        (N22)? mem[666] :
                        (N24)? mem[775] : 1'b0;
  assign r_data_o[11] = (N17)? mem[11] :
                        (N19)? mem[120] :
                        (N21)? mem[229] :
                        (N23)? mem[338] :
                        (N18)? mem[447] :
                        (N20)? mem[556] :
                        (N22)? mem[665] :
                        (N24)? mem[774] : 1'b0;
  assign r_data_o[10] = (N17)? mem[10] :
                        (N19)? mem[119] :
                        (N21)? mem[228] :
                        (N23)? mem[337] :
                        (N18)? mem[446] :
                        (N20)? mem[555] :
                        (N22)? mem[664] :
                        (N24)? mem[773] : 1'b0;
  assign r_data_o[9] = (N17)? mem[9] :
                       (N19)? mem[118] :
                       (N21)? mem[227] :
                       (N23)? mem[336] :
                       (N18)? mem[445] :
                       (N20)? mem[554] :
                       (N22)? mem[663] :
                       (N24)? mem[772] : 1'b0;
  assign r_data_o[8] = (N17)? mem[8] :
                       (N19)? mem[117] :
                       (N21)? mem[226] :
                       (N23)? mem[335] :
                       (N18)? mem[444] :
                       (N20)? mem[553] :
                       (N22)? mem[662] :
                       (N24)? mem[771] : 1'b0;
  assign r_data_o[7] = (N17)? mem[7] :
                       (N19)? mem[116] :
                       (N21)? mem[225] :
                       (N23)? mem[334] :
                       (N18)? mem[443] :
                       (N20)? mem[552] :
                       (N22)? mem[661] :
                       (N24)? mem[770] : 1'b0;
  assign r_data_o[6] = (N17)? mem[6] :
                       (N19)? mem[115] :
                       (N21)? mem[224] :
                       (N23)? mem[333] :
                       (N18)? mem[442] :
                       (N20)? mem[551] :
                       (N22)? mem[660] :
                       (N24)? mem[769] : 1'b0;
  assign r_data_o[5] = (N17)? mem[5] :
                       (N19)? mem[114] :
                       (N21)? mem[223] :
                       (N23)? mem[332] :
                       (N18)? mem[441] :
                       (N20)? mem[550] :
                       (N22)? mem[659] :
                       (N24)? mem[768] : 1'b0;
  assign r_data_o[4] = (N17)? mem[4] :
                       (N19)? mem[113] :
                       (N21)? mem[222] :
                       (N23)? mem[331] :
                       (N18)? mem[440] :
                       (N20)? mem[549] :
                       (N22)? mem[658] :
                       (N24)? mem[767] : 1'b0;
  assign r_data_o[3] = (N17)? mem[3] :
                       (N19)? mem[112] :
                       (N21)? mem[221] :
                       (N23)? mem[330] :
                       (N18)? mem[439] :
                       (N20)? mem[548] :
                       (N22)? mem[657] :
                       (N24)? mem[766] : 1'b0;
  assign r_data_o[2] = (N17)? mem[2] :
                       (N19)? mem[111] :
                       (N21)? mem[220] :
                       (N23)? mem[329] :
                       (N18)? mem[438] :
                       (N20)? mem[547] :
                       (N22)? mem[656] :
                       (N24)? mem[765] : 1'b0;
  assign r_data_o[1] = (N17)? mem[1] :
                       (N19)? mem[110] :
                       (N21)? mem[219] :
                       (N23)? mem[328] :
                       (N18)? mem[437] :
                       (N20)? mem[546] :
                       (N22)? mem[655] :
                       (N24)? mem[764] : 1'b0;
  assign r_data_o[0] = (N17)? mem[0] :
                       (N19)? mem[109] :
                       (N21)? mem[218] :
                       (N23)? mem[327] :
                       (N18)? mem[436] :
                       (N20)? mem[545] :
                       (N22)? mem[654] :
                       (N24)? mem[763] : 1'b0;
  assign N50 = w_addr_i[0] & w_addr_i[1];
  assign N33 = N50 & w_addr_i[2];
  assign N51 = N0 & w_addr_i[1];
  assign N0 = ~w_addr_i[0];
  assign N32 = N51 & w_addr_i[2];
  assign N52 = w_addr_i[0] & N1;
  assign N1 = ~w_addr_i[1];
  assign N31 = N52 & w_addr_i[2];
  assign N53 = N2 & N3;
  assign N2 = ~w_addr_i[0];
  assign N3 = ~w_addr_i[1];
  assign N30 = N53 & w_addr_i[2];
  assign N29 = N50 & N4;
  assign N4 = ~w_addr_i[2];
  assign N28 = N51 & N5;
  assign N5 = ~w_addr_i[2];
  assign N27 = N52 & N6;
  assign N6 = ~w_addr_i[2];
  assign N26 = N53 & N7;
  assign N7 = ~w_addr_i[2];
  assign { N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34 } = (N8)? { N33, N33, N32, N32, N31, N31, N30, N30, N29, N29, N28, N28, N27, N27, N26, N26 } :
                                                                                              (N9)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 1'b0;
  assign N8 = w_v_i;
  assign N9 = N25;
  assign N10 = ~r_addr_i[0];
  assign N11 = ~r_addr_i[1];
  assign N12 = N10 & N11;
  assign N13 = N10 & r_addr_i[1];
  assign N14 = r_addr_i[0] & N11;
  assign N15 = r_addr_i[0] & r_addr_i[1];
  assign N16 = ~r_addr_i[2];
  assign N17 = N12 & N16;
  assign N18 = N12 & r_addr_i[2];
  assign N19 = N14 & N16;
  assign N20 = N14 & r_addr_i[2];
  assign N21 = N13 & N16;
  assign N22 = N13 & r_addr_i[2];
  assign N23 = N15 & N16;
  assign N24 = N15 & r_addr_i[2];
  assign N25 = ~w_v_i;

  always @(posedge w_clk_i) begin
    if(N48) begin
      { mem[871:773], mem[763:763] } <= { w_data_i[108:10], w_data_i[0:0] };
    end
    if(N49) begin
      { mem[772:764] } <= { w_data_i[9:1] };
    end
    if(N46) begin
      { mem[762:664], mem[654:654] } <= { w_data_i[108:10], w_data_i[0:0] };
    end
    if(N47) begin
      { mem[663:655] } <= { w_data_i[9:1] };
    end
    if(N44) begin
      { mem[653:555], mem[545:545] } <= { w_data_i[108:10], w_data_i[0:0] };
    end
    if(N45) begin
      { mem[554:546] } <= { w_data_i[9:1] };
    end
    if(N42) begin
      { mem[544:446], mem[436:436] } <= { w_data_i[108:10], w_data_i[0:0] };
    end
    if(N43) begin
      { mem[445:437] } <= { w_data_i[9:1] };
    end
    if(N40) begin
      { mem[435:337], mem[327:327] } <= { w_data_i[108:10], w_data_i[0:0] };
    end
    if(N41) begin
      { mem[336:328] } <= { w_data_i[9:1] };
    end
    if(N38) begin
      { mem[326:228], mem[218:218] } <= { w_data_i[108:10], w_data_i[0:0] };
    end
    if(N39) begin
      { mem[227:219] } <= { w_data_i[9:1] };
    end
    if(N36) begin
      { mem[217:119], mem[109:109] } <= { w_data_i[108:10], w_data_i[0:0] };
    end
    if(N37) begin
      { mem[118:110] } <= { w_data_i[9:1] };
    end
    if(N34) begin
      { mem[108:10], mem[0:0] } <= { w_data_i[108:10], w_data_i[0:0] };
    end
    if(N35) begin
      { mem[9:1] } <= { w_data_i[9:1] };
    end
  end


endmodule