module bsg_mux_width_p512_els_p2
(
  data_i,
  sel_i,
  data_o
);

  input [1023:0] data_i;
  input [0:0] sel_i;
  output [511:0] data_o;
  wire [511:0] data_o;
  wire N0,N1;
  assign data_o[511] = (N1)? data_i[511] : 
                       (N0)? data_i[1023] : 1'b0;
  assign N0 = sel_i[0];
  assign data_o[510] = (N1)? data_i[510] : 
                       (N0)? data_i[1022] : 1'b0;
  assign data_o[509] = (N1)? data_i[509] : 
                       (N0)? data_i[1021] : 1'b0;
  assign data_o[508] = (N1)? data_i[508] : 
                       (N0)? data_i[1020] : 1'b0;
  assign data_o[507] = (N1)? data_i[507] : 
                       (N0)? data_i[1019] : 1'b0;
  assign data_o[506] = (N1)? data_i[506] : 
                       (N0)? data_i[1018] : 1'b0;
  assign data_o[505] = (N1)? data_i[505] : 
                       (N0)? data_i[1017] : 1'b0;
  assign data_o[504] = (N1)? data_i[504] : 
                       (N0)? data_i[1016] : 1'b0;
  assign data_o[503] = (N1)? data_i[503] : 
                       (N0)? data_i[1015] : 1'b0;
  assign data_o[502] = (N1)? data_i[502] : 
                       (N0)? data_i[1014] : 1'b0;
  assign data_o[501] = (N1)? data_i[501] : 
                       (N0)? data_i[1013] : 1'b0;
  assign data_o[500] = (N1)? data_i[500] : 
                       (N0)? data_i[1012] : 1'b0;
  assign data_o[499] = (N1)? data_i[499] : 
                       (N0)? data_i[1011] : 1'b0;
  assign data_o[498] = (N1)? data_i[498] : 
                       (N0)? data_i[1010] : 1'b0;
  assign data_o[497] = (N1)? data_i[497] : 
                       (N0)? data_i[1009] : 1'b0;
  assign data_o[496] = (N1)? data_i[496] : 
                       (N0)? data_i[1008] : 1'b0;
  assign data_o[495] = (N1)? data_i[495] : 
                       (N0)? data_i[1007] : 1'b0;
  assign data_o[494] = (N1)? data_i[494] : 
                       (N0)? data_i[1006] : 1'b0;
  assign data_o[493] = (N1)? data_i[493] : 
                       (N0)? data_i[1005] : 1'b0;
  assign data_o[492] = (N1)? data_i[492] : 
                       (N0)? data_i[1004] : 1'b0;
  assign data_o[491] = (N1)? data_i[491] : 
                       (N0)? data_i[1003] : 1'b0;
  assign data_o[490] = (N1)? data_i[490] : 
                       (N0)? data_i[1002] : 1'b0;
  assign data_o[489] = (N1)? data_i[489] : 
                       (N0)? data_i[1001] : 1'b0;
  assign data_o[488] = (N1)? data_i[488] : 
                       (N0)? data_i[1000] : 1'b0;
  assign data_o[487] = (N1)? data_i[487] : 
                       (N0)? data_i[999] : 1'b0;
  assign data_o[486] = (N1)? data_i[486] : 
                       (N0)? data_i[998] : 1'b0;
  assign data_o[485] = (N1)? data_i[485] : 
                       (N0)? data_i[997] : 1'b0;
  assign data_o[484] = (N1)? data_i[484] : 
                       (N0)? data_i[996] : 1'b0;
  assign data_o[483] = (N1)? data_i[483] : 
                       (N0)? data_i[995] : 1'b0;
  assign data_o[482] = (N1)? data_i[482] : 
                       (N0)? data_i[994] : 1'b0;
  assign data_o[481] = (N1)? data_i[481] : 
                       (N0)? data_i[993] : 1'b0;
  assign data_o[480] = (N1)? data_i[480] : 
                       (N0)? data_i[992] : 1'b0;
  assign data_o[479] = (N1)? data_i[479] : 
                       (N0)? data_i[991] : 1'b0;
  assign data_o[478] = (N1)? data_i[478] : 
                       (N0)? data_i[990] : 1'b0;
  assign data_o[477] = (N1)? data_i[477] : 
                       (N0)? data_i[989] : 1'b0;
  assign data_o[476] = (N1)? data_i[476] : 
                       (N0)? data_i[988] : 1'b0;
  assign data_o[475] = (N1)? data_i[475] : 
                       (N0)? data_i[987] : 1'b0;
  assign data_o[474] = (N1)? data_i[474] : 
                       (N0)? data_i[986] : 1'b0;
  assign data_o[473] = (N1)? data_i[473] : 
                       (N0)? data_i[985] : 1'b0;
  assign data_o[472] = (N1)? data_i[472] : 
                       (N0)? data_i[984] : 1'b0;
  assign data_o[471] = (N1)? data_i[471] : 
                       (N0)? data_i[983] : 1'b0;
  assign data_o[470] = (N1)? data_i[470] : 
                       (N0)? data_i[982] : 1'b0;
  assign data_o[469] = (N1)? data_i[469] : 
                       (N0)? data_i[981] : 1'b0;
  assign data_o[468] = (N1)? data_i[468] : 
                       (N0)? data_i[980] : 1'b0;
  assign data_o[467] = (N1)? data_i[467] : 
                       (N0)? data_i[979] : 1'b0;
  assign data_o[466] = (N1)? data_i[466] : 
                       (N0)? data_i[978] : 1'b0;
  assign data_o[465] = (N1)? data_i[465] : 
                       (N0)? data_i[977] : 1'b0;
  assign data_o[464] = (N1)? data_i[464] : 
                       (N0)? data_i[976] : 1'b0;
  assign data_o[463] = (N1)? data_i[463] : 
                       (N0)? data_i[975] : 1'b0;
  assign data_o[462] = (N1)? data_i[462] : 
                       (N0)? data_i[974] : 1'b0;
  assign data_o[461] = (N1)? data_i[461] : 
                       (N0)? data_i[973] : 1'b0;
  assign data_o[460] = (N1)? data_i[460] : 
                       (N0)? data_i[972] : 1'b0;
  assign data_o[459] = (N1)? data_i[459] : 
                       (N0)? data_i[971] : 1'b0;
  assign data_o[458] = (N1)? data_i[458] : 
                       (N0)? data_i[970] : 1'b0;
  assign data_o[457] = (N1)? data_i[457] : 
                       (N0)? data_i[969] : 1'b0;
  assign data_o[456] = (N1)? data_i[456] : 
                       (N0)? data_i[968] : 1'b0;
  assign data_o[455] = (N1)? data_i[455] : 
                       (N0)? data_i[967] : 1'b0;
  assign data_o[454] = (N1)? data_i[454] : 
                       (N0)? data_i[966] : 1'b0;
  assign data_o[453] = (N1)? data_i[453] : 
                       (N0)? data_i[965] : 1'b0;
  assign data_o[452] = (N1)? data_i[452] : 
                       (N0)? data_i[964] : 1'b0;
  assign data_o[451] = (N1)? data_i[451] : 
                       (N0)? data_i[963] : 1'b0;
  assign data_o[450] = (N1)? data_i[450] : 
                       (N0)? data_i[962] : 1'b0;
  assign data_o[449] = (N1)? data_i[449] : 
                       (N0)? data_i[961] : 1'b0;
  assign data_o[448] = (N1)? data_i[448] : 
                       (N0)? data_i[960] : 1'b0;
  assign data_o[447] = (N1)? data_i[447] : 
                       (N0)? data_i[959] : 1'b0;
  assign data_o[446] = (N1)? data_i[446] : 
                       (N0)? data_i[958] : 1'b0;
  assign data_o[445] = (N1)? data_i[445] : 
                       (N0)? data_i[957] : 1'b0;
  assign data_o[444] = (N1)? data_i[444] : 
                       (N0)? data_i[956] : 1'b0;
  assign data_o[443] = (N1)? data_i[443] : 
                       (N0)? data_i[955] : 1'b0;
  assign data_o[442] = (N1)? data_i[442] : 
                       (N0)? data_i[954] : 1'b0;
  assign data_o[441] = (N1)? data_i[441] : 
                       (N0)? data_i[953] : 1'b0;
  assign data_o[440] = (N1)? data_i[440] : 
                       (N0)? data_i[952] : 1'b0;
  assign data_o[439] = (N1)? data_i[439] : 
                       (N0)? data_i[951] : 1'b0;
  assign data_o[438] = (N1)? data_i[438] : 
                       (N0)? data_i[950] : 1'b0;
  assign data_o[437] = (N1)? data_i[437] : 
                       (N0)? data_i[949] : 1'b0;
  assign data_o[436] = (N1)? data_i[436] : 
                       (N0)? data_i[948] : 1'b0;
  assign data_o[435] = (N1)? data_i[435] : 
                       (N0)? data_i[947] : 1'b0;
  assign data_o[434] = (N1)? data_i[434] : 
                       (N0)? data_i[946] : 1'b0;
  assign data_o[433] = (N1)? data_i[433] : 
                       (N0)? data_i[945] : 1'b0;
  assign data_o[432] = (N1)? data_i[432] : 
                       (N0)? data_i[944] : 1'b0;
  assign data_o[431] = (N1)? data_i[431] : 
                       (N0)? data_i[943] : 1'b0;
  assign data_o[430] = (N1)? data_i[430] : 
                       (N0)? data_i[942] : 1'b0;
  assign data_o[429] = (N1)? data_i[429] : 
                       (N0)? data_i[941] : 1'b0;
  assign data_o[428] = (N1)? data_i[428] : 
                       (N0)? data_i[940] : 1'b0;
  assign data_o[427] = (N1)? data_i[427] : 
                       (N0)? data_i[939] : 1'b0;
  assign data_o[426] = (N1)? data_i[426] : 
                       (N0)? data_i[938] : 1'b0;
  assign data_o[425] = (N1)? data_i[425] : 
                       (N0)? data_i[937] : 1'b0;
  assign data_o[424] = (N1)? data_i[424] : 
                       (N0)? data_i[936] : 1'b0;
  assign data_o[423] = (N1)? data_i[423] : 
                       (N0)? data_i[935] : 1'b0;
  assign data_o[422] = (N1)? data_i[422] : 
                       (N0)? data_i[934] : 1'b0;
  assign data_o[421] = (N1)? data_i[421] : 
                       (N0)? data_i[933] : 1'b0;
  assign data_o[420] = (N1)? data_i[420] : 
                       (N0)? data_i[932] : 1'b0;
  assign data_o[419] = (N1)? data_i[419] : 
                       (N0)? data_i[931] : 1'b0;
  assign data_o[418] = (N1)? data_i[418] : 
                       (N0)? data_i[930] : 1'b0;
  assign data_o[417] = (N1)? data_i[417] : 
                       (N0)? data_i[929] : 1'b0;
  assign data_o[416] = (N1)? data_i[416] : 
                       (N0)? data_i[928] : 1'b0;
  assign data_o[415] = (N1)? data_i[415] : 
                       (N0)? data_i[927] : 1'b0;
  assign data_o[414] = (N1)? data_i[414] : 
                       (N0)? data_i[926] : 1'b0;
  assign data_o[413] = (N1)? data_i[413] : 
                       (N0)? data_i[925] : 1'b0;
  assign data_o[412] = (N1)? data_i[412] : 
                       (N0)? data_i[924] : 1'b0;
  assign data_o[411] = (N1)? data_i[411] : 
                       (N0)? data_i[923] : 1'b0;
  assign data_o[410] = (N1)? data_i[410] : 
                       (N0)? data_i[922] : 1'b0;
  assign data_o[409] = (N1)? data_i[409] : 
                       (N0)? data_i[921] : 1'b0;
  assign data_o[408] = (N1)? data_i[408] : 
                       (N0)? data_i[920] : 1'b0;
  assign data_o[407] = (N1)? data_i[407] : 
                       (N0)? data_i[919] : 1'b0;
  assign data_o[406] = (N1)? data_i[406] : 
                       (N0)? data_i[918] : 1'b0;
  assign data_o[405] = (N1)? data_i[405] : 
                       (N0)? data_i[917] : 1'b0;
  assign data_o[404] = (N1)? data_i[404] : 
                       (N0)? data_i[916] : 1'b0;
  assign data_o[403] = (N1)? data_i[403] : 
                       (N0)? data_i[915] : 1'b0;
  assign data_o[402] = (N1)? data_i[402] : 
                       (N0)? data_i[914] : 1'b0;
  assign data_o[401] = (N1)? data_i[401] : 
                       (N0)? data_i[913] : 1'b0;
  assign data_o[400] = (N1)? data_i[400] : 
                       (N0)? data_i[912] : 1'b0;
  assign data_o[399] = (N1)? data_i[399] : 
                       (N0)? data_i[911] : 1'b0;
  assign data_o[398] = (N1)? data_i[398] : 
                       (N0)? data_i[910] : 1'b0;
  assign data_o[397] = (N1)? data_i[397] : 
                       (N0)? data_i[909] : 1'b0;
  assign data_o[396] = (N1)? data_i[396] : 
                       (N0)? data_i[908] : 1'b0;
  assign data_o[395] = (N1)? data_i[395] : 
                       (N0)? data_i[907] : 1'b0;
  assign data_o[394] = (N1)? data_i[394] : 
                       (N0)? data_i[906] : 1'b0;
  assign data_o[393] = (N1)? data_i[393] : 
                       (N0)? data_i[905] : 1'b0;
  assign data_o[392] = (N1)? data_i[392] : 
                       (N0)? data_i[904] : 1'b0;
  assign data_o[391] = (N1)? data_i[391] : 
                       (N0)? data_i[903] : 1'b0;
  assign data_o[390] = (N1)? data_i[390] : 
                       (N0)? data_i[902] : 1'b0;
  assign data_o[389] = (N1)? data_i[389] : 
                       (N0)? data_i[901] : 1'b0;
  assign data_o[388] = (N1)? data_i[388] : 
                       (N0)? data_i[900] : 1'b0;
  assign data_o[387] = (N1)? data_i[387] : 
                       (N0)? data_i[899] : 1'b0;
  assign data_o[386] = (N1)? data_i[386] : 
                       (N0)? data_i[898] : 1'b0;
  assign data_o[385] = (N1)? data_i[385] : 
                       (N0)? data_i[897] : 1'b0;
  assign data_o[384] = (N1)? data_i[384] : 
                       (N0)? data_i[896] : 1'b0;
  assign data_o[383] = (N1)? data_i[383] : 
                       (N0)? data_i[895] : 1'b0;
  assign data_o[382] = (N1)? data_i[382] : 
                       (N0)? data_i[894] : 1'b0;
  assign data_o[381] = (N1)? data_i[381] : 
                       (N0)? data_i[893] : 1'b0;
  assign data_o[380] = (N1)? data_i[380] : 
                       (N0)? data_i[892] : 1'b0;
  assign data_o[379] = (N1)? data_i[379] : 
                       (N0)? data_i[891] : 1'b0;
  assign data_o[378] = (N1)? data_i[378] : 
                       (N0)? data_i[890] : 1'b0;
  assign data_o[377] = (N1)? data_i[377] : 
                       (N0)? data_i[889] : 1'b0;
  assign data_o[376] = (N1)? data_i[376] : 
                       (N0)? data_i[888] : 1'b0;
  assign data_o[375] = (N1)? data_i[375] : 
                       (N0)? data_i[887] : 1'b0;
  assign data_o[374] = (N1)? data_i[374] : 
                       (N0)? data_i[886] : 1'b0;
  assign data_o[373] = (N1)? data_i[373] : 
                       (N0)? data_i[885] : 1'b0;
  assign data_o[372] = (N1)? data_i[372] : 
                       (N0)? data_i[884] : 1'b0;
  assign data_o[371] = (N1)? data_i[371] : 
                       (N0)? data_i[883] : 1'b0;
  assign data_o[370] = (N1)? data_i[370] : 
                       (N0)? data_i[882] : 1'b0;
  assign data_o[369] = (N1)? data_i[369] : 
                       (N0)? data_i[881] : 1'b0;
  assign data_o[368] = (N1)? data_i[368] : 
                       (N0)? data_i[880] : 1'b0;
  assign data_o[367] = (N1)? data_i[367] : 
                       (N0)? data_i[879] : 1'b0;
  assign data_o[366] = (N1)? data_i[366] : 
                       (N0)? data_i[878] : 1'b0;
  assign data_o[365] = (N1)? data_i[365] : 
                       (N0)? data_i[877] : 1'b0;
  assign data_o[364] = (N1)? data_i[364] : 
                       (N0)? data_i[876] : 1'b0;
  assign data_o[363] = (N1)? data_i[363] : 
                       (N0)? data_i[875] : 1'b0;
  assign data_o[362] = (N1)? data_i[362] : 
                       (N0)? data_i[874] : 1'b0;
  assign data_o[361] = (N1)? data_i[361] : 
                       (N0)? data_i[873] : 1'b0;
  assign data_o[360] = (N1)? data_i[360] : 
                       (N0)? data_i[872] : 1'b0;
  assign data_o[359] = (N1)? data_i[359] : 
                       (N0)? data_i[871] : 1'b0;
  assign data_o[358] = (N1)? data_i[358] : 
                       (N0)? data_i[870] : 1'b0;
  assign data_o[357] = (N1)? data_i[357] : 
                       (N0)? data_i[869] : 1'b0;
  assign data_o[356] = (N1)? data_i[356] : 
                       (N0)? data_i[868] : 1'b0;
  assign data_o[355] = (N1)? data_i[355] : 
                       (N0)? data_i[867] : 1'b0;
  assign data_o[354] = (N1)? data_i[354] : 
                       (N0)? data_i[866] : 1'b0;
  assign data_o[353] = (N1)? data_i[353] : 
                       (N0)? data_i[865] : 1'b0;
  assign data_o[352] = (N1)? data_i[352] : 
                       (N0)? data_i[864] : 1'b0;
  assign data_o[351] = (N1)? data_i[351] : 
                       (N0)? data_i[863] : 1'b0;
  assign data_o[350] = (N1)? data_i[350] : 
                       (N0)? data_i[862] : 1'b0;
  assign data_o[349] = (N1)? data_i[349] : 
                       (N0)? data_i[861] : 1'b0;
  assign data_o[348] = (N1)? data_i[348] : 
                       (N0)? data_i[860] : 1'b0;
  assign data_o[347] = (N1)? data_i[347] : 
                       (N0)? data_i[859] : 1'b0;
  assign data_o[346] = (N1)? data_i[346] : 
                       (N0)? data_i[858] : 1'b0;
  assign data_o[345] = (N1)? data_i[345] : 
                       (N0)? data_i[857] : 1'b0;
  assign data_o[344] = (N1)? data_i[344] : 
                       (N0)? data_i[856] : 1'b0;
  assign data_o[343] = (N1)? data_i[343] : 
                       (N0)? data_i[855] : 1'b0;
  assign data_o[342] = (N1)? data_i[342] : 
                       (N0)? data_i[854] : 1'b0;
  assign data_o[341] = (N1)? data_i[341] : 
                       (N0)? data_i[853] : 1'b0;
  assign data_o[340] = (N1)? data_i[340] : 
                       (N0)? data_i[852] : 1'b0;
  assign data_o[339] = (N1)? data_i[339] : 
                       (N0)? data_i[851] : 1'b0;
  assign data_o[338] = (N1)? data_i[338] : 
                       (N0)? data_i[850] : 1'b0;
  assign data_o[337] = (N1)? data_i[337] : 
                       (N0)? data_i[849] : 1'b0;
  assign data_o[336] = (N1)? data_i[336] : 
                       (N0)? data_i[848] : 1'b0;
  assign data_o[335] = (N1)? data_i[335] : 
                       (N0)? data_i[847] : 1'b0;
  assign data_o[334] = (N1)? data_i[334] : 
                       (N0)? data_i[846] : 1'b0;
  assign data_o[333] = (N1)? data_i[333] : 
                       (N0)? data_i[845] : 1'b0;
  assign data_o[332] = (N1)? data_i[332] : 
                       (N0)? data_i[844] : 1'b0;
  assign data_o[331] = (N1)? data_i[331] : 
                       (N0)? data_i[843] : 1'b0;
  assign data_o[330] = (N1)? data_i[330] : 
                       (N0)? data_i[842] : 1'b0;
  assign data_o[329] = (N1)? data_i[329] : 
                       (N0)? data_i[841] : 1'b0;
  assign data_o[328] = (N1)? data_i[328] : 
                       (N0)? data_i[840] : 1'b0;
  assign data_o[327] = (N1)? data_i[327] : 
                       (N0)? data_i[839] : 1'b0;
  assign data_o[326] = (N1)? data_i[326] : 
                       (N0)? data_i[838] : 1'b0;
  assign data_o[325] = (N1)? data_i[325] : 
                       (N0)? data_i[837] : 1'b0;
  assign data_o[324] = (N1)? data_i[324] : 
                       (N0)? data_i[836] : 1'b0;
  assign data_o[323] = (N1)? data_i[323] : 
                       (N0)? data_i[835] : 1'b0;
  assign data_o[322] = (N1)? data_i[322] : 
                       (N0)? data_i[834] : 1'b0;
  assign data_o[321] = (N1)? data_i[321] : 
                       (N0)? data_i[833] : 1'b0;
  assign data_o[320] = (N1)? data_i[320] : 
                       (N0)? data_i[832] : 1'b0;
  assign data_o[319] = (N1)? data_i[319] : 
                       (N0)? data_i[831] : 1'b0;
  assign data_o[318] = (N1)? data_i[318] : 
                       (N0)? data_i[830] : 1'b0;
  assign data_o[317] = (N1)? data_i[317] : 
                       (N0)? data_i[829] : 1'b0;
  assign data_o[316] = (N1)? data_i[316] : 
                       (N0)? data_i[828] : 1'b0;
  assign data_o[315] = (N1)? data_i[315] : 
                       (N0)? data_i[827] : 1'b0;
  assign data_o[314] = (N1)? data_i[314] : 
                       (N0)? data_i[826] : 1'b0;
  assign data_o[313] = (N1)? data_i[313] : 
                       (N0)? data_i[825] : 1'b0;
  assign data_o[312] = (N1)? data_i[312] : 
                       (N0)? data_i[824] : 1'b0;
  assign data_o[311] = (N1)? data_i[311] : 
                       (N0)? data_i[823] : 1'b0;
  assign data_o[310] = (N1)? data_i[310] : 
                       (N0)? data_i[822] : 1'b0;
  assign data_o[309] = (N1)? data_i[309] : 
                       (N0)? data_i[821] : 1'b0;
  assign data_o[308] = (N1)? data_i[308] : 
                       (N0)? data_i[820] : 1'b0;
  assign data_o[307] = (N1)? data_i[307] : 
                       (N0)? data_i[819] : 1'b0;
  assign data_o[306] = (N1)? data_i[306] : 
                       (N0)? data_i[818] : 1'b0;
  assign data_o[305] = (N1)? data_i[305] : 
                       (N0)? data_i[817] : 1'b0;
  assign data_o[304] = (N1)? data_i[304] : 
                       (N0)? data_i[816] : 1'b0;
  assign data_o[303] = (N1)? data_i[303] : 
                       (N0)? data_i[815] : 1'b0;
  assign data_o[302] = (N1)? data_i[302] : 
                       (N0)? data_i[814] : 1'b0;
  assign data_o[301] = (N1)? data_i[301] : 
                       (N0)? data_i[813] : 1'b0;
  assign data_o[300] = (N1)? data_i[300] : 
                       (N0)? data_i[812] : 1'b0;
  assign data_o[299] = (N1)? data_i[299] : 
                       (N0)? data_i[811] : 1'b0;
  assign data_o[298] = (N1)? data_i[298] : 
                       (N0)? data_i[810] : 1'b0;
  assign data_o[297] = (N1)? data_i[297] : 
                       (N0)? data_i[809] : 1'b0;
  assign data_o[296] = (N1)? data_i[296] : 
                       (N0)? data_i[808] : 1'b0;
  assign data_o[295] = (N1)? data_i[295] : 
                       (N0)? data_i[807] : 1'b0;
  assign data_o[294] = (N1)? data_i[294] : 
                       (N0)? data_i[806] : 1'b0;
  assign data_o[293] = (N1)? data_i[293] : 
                       (N0)? data_i[805] : 1'b0;
  assign data_o[292] = (N1)? data_i[292] : 
                       (N0)? data_i[804] : 1'b0;
  assign data_o[291] = (N1)? data_i[291] : 
                       (N0)? data_i[803] : 1'b0;
  assign data_o[290] = (N1)? data_i[290] : 
                       (N0)? data_i[802] : 1'b0;
  assign data_o[289] = (N1)? data_i[289] : 
                       (N0)? data_i[801] : 1'b0;
  assign data_o[288] = (N1)? data_i[288] : 
                       (N0)? data_i[800] : 1'b0;
  assign data_o[287] = (N1)? data_i[287] : 
                       (N0)? data_i[799] : 1'b0;
  assign data_o[286] = (N1)? data_i[286] : 
                       (N0)? data_i[798] : 1'b0;
  assign data_o[285] = (N1)? data_i[285] : 
                       (N0)? data_i[797] : 1'b0;
  assign data_o[284] = (N1)? data_i[284] : 
                       (N0)? data_i[796] : 1'b0;
  assign data_o[283] = (N1)? data_i[283] : 
                       (N0)? data_i[795] : 1'b0;
  assign data_o[282] = (N1)? data_i[282] : 
                       (N0)? data_i[794] : 1'b0;
  assign data_o[281] = (N1)? data_i[281] : 
                       (N0)? data_i[793] : 1'b0;
  assign data_o[280] = (N1)? data_i[280] : 
                       (N0)? data_i[792] : 1'b0;
  assign data_o[279] = (N1)? data_i[279] : 
                       (N0)? data_i[791] : 1'b0;
  assign data_o[278] = (N1)? data_i[278] : 
                       (N0)? data_i[790] : 1'b0;
  assign data_o[277] = (N1)? data_i[277] : 
                       (N0)? data_i[789] : 1'b0;
  assign data_o[276] = (N1)? data_i[276] : 
                       (N0)? data_i[788] : 1'b0;
  assign data_o[275] = (N1)? data_i[275] : 
                       (N0)? data_i[787] : 1'b0;
  assign data_o[274] = (N1)? data_i[274] : 
                       (N0)? data_i[786] : 1'b0;
  assign data_o[273] = (N1)? data_i[273] : 
                       (N0)? data_i[785] : 1'b0;
  assign data_o[272] = (N1)? data_i[272] : 
                       (N0)? data_i[784] : 1'b0;
  assign data_o[271] = (N1)? data_i[271] : 
                       (N0)? data_i[783] : 1'b0;
  assign data_o[270] = (N1)? data_i[270] : 
                       (N0)? data_i[782] : 1'b0;
  assign data_o[269] = (N1)? data_i[269] : 
                       (N0)? data_i[781] : 1'b0;
  assign data_o[268] = (N1)? data_i[268] : 
                       (N0)? data_i[780] : 1'b0;
  assign data_o[267] = (N1)? data_i[267] : 
                       (N0)? data_i[779] : 1'b0;
  assign data_o[266] = (N1)? data_i[266] : 
                       (N0)? data_i[778] : 1'b0;
  assign data_o[265] = (N1)? data_i[265] : 
                       (N0)? data_i[777] : 1'b0;
  assign data_o[264] = (N1)? data_i[264] : 
                       (N0)? data_i[776] : 1'b0;
  assign data_o[263] = (N1)? data_i[263] : 
                       (N0)? data_i[775] : 1'b0;
  assign data_o[262] = (N1)? data_i[262] : 
                       (N0)? data_i[774] : 1'b0;
  assign data_o[261] = (N1)? data_i[261] : 
                       (N0)? data_i[773] : 1'b0;
  assign data_o[260] = (N1)? data_i[260] : 
                       (N0)? data_i[772] : 1'b0;
  assign data_o[259] = (N1)? data_i[259] : 
                       (N0)? data_i[771] : 1'b0;
  assign data_o[258] = (N1)? data_i[258] : 
                       (N0)? data_i[770] : 1'b0;
  assign data_o[257] = (N1)? data_i[257] : 
                       (N0)? data_i[769] : 1'b0;
  assign data_o[256] = (N1)? data_i[256] : 
                       (N0)? data_i[768] : 1'b0;
  assign data_o[255] = (N1)? data_i[255] : 
                       (N0)? data_i[767] : 1'b0;
  assign data_o[254] = (N1)? data_i[254] : 
                       (N0)? data_i[766] : 1'b0;
  assign data_o[253] = (N1)? data_i[253] : 
                       (N0)? data_i[765] : 1'b0;
  assign data_o[252] = (N1)? data_i[252] : 
                       (N0)? data_i[764] : 1'b0;
  assign data_o[251] = (N1)? data_i[251] : 
                       (N0)? data_i[763] : 1'b0;
  assign data_o[250] = (N1)? data_i[250] : 
                       (N0)? data_i[762] : 1'b0;
  assign data_o[249] = (N1)? data_i[249] : 
                       (N0)? data_i[761] : 1'b0;
  assign data_o[248] = (N1)? data_i[248] : 
                       (N0)? data_i[760] : 1'b0;
  assign data_o[247] = (N1)? data_i[247] : 
                       (N0)? data_i[759] : 1'b0;
  assign data_o[246] = (N1)? data_i[246] : 
                       (N0)? data_i[758] : 1'b0;
  assign data_o[245] = (N1)? data_i[245] : 
                       (N0)? data_i[757] : 1'b0;
  assign data_o[244] = (N1)? data_i[244] : 
                       (N0)? data_i[756] : 1'b0;
  assign data_o[243] = (N1)? data_i[243] : 
                       (N0)? data_i[755] : 1'b0;
  assign data_o[242] = (N1)? data_i[242] : 
                       (N0)? data_i[754] : 1'b0;
  assign data_o[241] = (N1)? data_i[241] : 
                       (N0)? data_i[753] : 1'b0;
  assign data_o[240] = (N1)? data_i[240] : 
                       (N0)? data_i[752] : 1'b0;
  assign data_o[239] = (N1)? data_i[239] : 
                       (N0)? data_i[751] : 1'b0;
  assign data_o[238] = (N1)? data_i[238] : 
                       (N0)? data_i[750] : 1'b0;
  assign data_o[237] = (N1)? data_i[237] : 
                       (N0)? data_i[749] : 1'b0;
  assign data_o[236] = (N1)? data_i[236] : 
                       (N0)? data_i[748] : 1'b0;
  assign data_o[235] = (N1)? data_i[235] : 
                       (N0)? data_i[747] : 1'b0;
  assign data_o[234] = (N1)? data_i[234] : 
                       (N0)? data_i[746] : 1'b0;
  assign data_o[233] = (N1)? data_i[233] : 
                       (N0)? data_i[745] : 1'b0;
  assign data_o[232] = (N1)? data_i[232] : 
                       (N0)? data_i[744] : 1'b0;
  assign data_o[231] = (N1)? data_i[231] : 
                       (N0)? data_i[743] : 1'b0;
  assign data_o[230] = (N1)? data_i[230] : 
                       (N0)? data_i[742] : 1'b0;
  assign data_o[229] = (N1)? data_i[229] : 
                       (N0)? data_i[741] : 1'b0;
  assign data_o[228] = (N1)? data_i[228] : 
                       (N0)? data_i[740] : 1'b0;
  assign data_o[227] = (N1)? data_i[227] : 
                       (N0)? data_i[739] : 1'b0;
  assign data_o[226] = (N1)? data_i[226] : 
                       (N0)? data_i[738] : 1'b0;
  assign data_o[225] = (N1)? data_i[225] : 
                       (N0)? data_i[737] : 1'b0;
  assign data_o[224] = (N1)? data_i[224] : 
                       (N0)? data_i[736] : 1'b0;
  assign data_o[223] = (N1)? data_i[223] : 
                       (N0)? data_i[735] : 1'b0;
  assign data_o[222] = (N1)? data_i[222] : 
                       (N0)? data_i[734] : 1'b0;
  assign data_o[221] = (N1)? data_i[221] : 
                       (N0)? data_i[733] : 1'b0;
  assign data_o[220] = (N1)? data_i[220] : 
                       (N0)? data_i[732] : 1'b0;
  assign data_o[219] = (N1)? data_i[219] : 
                       (N0)? data_i[731] : 1'b0;
  assign data_o[218] = (N1)? data_i[218] : 
                       (N0)? data_i[730] : 1'b0;
  assign data_o[217] = (N1)? data_i[217] : 
                       (N0)? data_i[729] : 1'b0;
  assign data_o[216] = (N1)? data_i[216] : 
                       (N0)? data_i[728] : 1'b0;
  assign data_o[215] = (N1)? data_i[215] : 
                       (N0)? data_i[727] : 1'b0;
  assign data_o[214] = (N1)? data_i[214] : 
                       (N0)? data_i[726] : 1'b0;
  assign data_o[213] = (N1)? data_i[213] : 
                       (N0)? data_i[725] : 1'b0;
  assign data_o[212] = (N1)? data_i[212] : 
                       (N0)? data_i[724] : 1'b0;
  assign data_o[211] = (N1)? data_i[211] : 
                       (N0)? data_i[723] : 1'b0;
  assign data_o[210] = (N1)? data_i[210] : 
                       (N0)? data_i[722] : 1'b0;
  assign data_o[209] = (N1)? data_i[209] : 
                       (N0)? data_i[721] : 1'b0;
  assign data_o[208] = (N1)? data_i[208] : 
                       (N0)? data_i[720] : 1'b0;
  assign data_o[207] = (N1)? data_i[207] : 
                       (N0)? data_i[719] : 1'b0;
  assign data_o[206] = (N1)? data_i[206] : 
                       (N0)? data_i[718] : 1'b0;
  assign data_o[205] = (N1)? data_i[205] : 
                       (N0)? data_i[717] : 1'b0;
  assign data_o[204] = (N1)? data_i[204] : 
                       (N0)? data_i[716] : 1'b0;
  assign data_o[203] = (N1)? data_i[203] : 
                       (N0)? data_i[715] : 1'b0;
  assign data_o[202] = (N1)? data_i[202] : 
                       (N0)? data_i[714] : 1'b0;
  assign data_o[201] = (N1)? data_i[201] : 
                       (N0)? data_i[713] : 1'b0;
  assign data_o[200] = (N1)? data_i[200] : 
                       (N0)? data_i[712] : 1'b0;
  assign data_o[199] = (N1)? data_i[199] : 
                       (N0)? data_i[711] : 1'b0;
  assign data_o[198] = (N1)? data_i[198] : 
                       (N0)? data_i[710] : 1'b0;
  assign data_o[197] = (N1)? data_i[197] : 
                       (N0)? data_i[709] : 1'b0;
  assign data_o[196] = (N1)? data_i[196] : 
                       (N0)? data_i[708] : 1'b0;
  assign data_o[195] = (N1)? data_i[195] : 
                       (N0)? data_i[707] : 1'b0;
  assign data_o[194] = (N1)? data_i[194] : 
                       (N0)? data_i[706] : 1'b0;
  assign data_o[193] = (N1)? data_i[193] : 
                       (N0)? data_i[705] : 1'b0;
  assign data_o[192] = (N1)? data_i[192] : 
                       (N0)? data_i[704] : 1'b0;
  assign data_o[191] = (N1)? data_i[191] : 
                       (N0)? data_i[703] : 1'b0;
  assign data_o[190] = (N1)? data_i[190] : 
                       (N0)? data_i[702] : 1'b0;
  assign data_o[189] = (N1)? data_i[189] : 
                       (N0)? data_i[701] : 1'b0;
  assign data_o[188] = (N1)? data_i[188] : 
                       (N0)? data_i[700] : 1'b0;
  assign data_o[187] = (N1)? data_i[187] : 
                       (N0)? data_i[699] : 1'b0;
  assign data_o[186] = (N1)? data_i[186] : 
                       (N0)? data_i[698] : 1'b0;
  assign data_o[185] = (N1)? data_i[185] : 
                       (N0)? data_i[697] : 1'b0;
  assign data_o[184] = (N1)? data_i[184] : 
                       (N0)? data_i[696] : 1'b0;
  assign data_o[183] = (N1)? data_i[183] : 
                       (N0)? data_i[695] : 1'b0;
  assign data_o[182] = (N1)? data_i[182] : 
                       (N0)? data_i[694] : 1'b0;
  assign data_o[181] = (N1)? data_i[181] : 
                       (N0)? data_i[693] : 1'b0;
  assign data_o[180] = (N1)? data_i[180] : 
                       (N0)? data_i[692] : 1'b0;
  assign data_o[179] = (N1)? data_i[179] : 
                       (N0)? data_i[691] : 1'b0;
  assign data_o[178] = (N1)? data_i[178] : 
                       (N0)? data_i[690] : 1'b0;
  assign data_o[177] = (N1)? data_i[177] : 
                       (N0)? data_i[689] : 1'b0;
  assign data_o[176] = (N1)? data_i[176] : 
                       (N0)? data_i[688] : 1'b0;
  assign data_o[175] = (N1)? data_i[175] : 
                       (N0)? data_i[687] : 1'b0;
  assign data_o[174] = (N1)? data_i[174] : 
                       (N0)? data_i[686] : 1'b0;
  assign data_o[173] = (N1)? data_i[173] : 
                       (N0)? data_i[685] : 1'b0;
  assign data_o[172] = (N1)? data_i[172] : 
                       (N0)? data_i[684] : 1'b0;
  assign data_o[171] = (N1)? data_i[171] : 
                       (N0)? data_i[683] : 1'b0;
  assign data_o[170] = (N1)? data_i[170] : 
                       (N0)? data_i[682] : 1'b0;
  assign data_o[169] = (N1)? data_i[169] : 
                       (N0)? data_i[681] : 1'b0;
  assign data_o[168] = (N1)? data_i[168] : 
                       (N0)? data_i[680] : 1'b0;
  assign data_o[167] = (N1)? data_i[167] : 
                       (N0)? data_i[679] : 1'b0;
  assign data_o[166] = (N1)? data_i[166] : 
                       (N0)? data_i[678] : 1'b0;
  assign data_o[165] = (N1)? data_i[165] : 
                       (N0)? data_i[677] : 1'b0;
  assign data_o[164] = (N1)? data_i[164] : 
                       (N0)? data_i[676] : 1'b0;
  assign data_o[163] = (N1)? data_i[163] : 
                       (N0)? data_i[675] : 1'b0;
  assign data_o[162] = (N1)? data_i[162] : 
                       (N0)? data_i[674] : 1'b0;
  assign data_o[161] = (N1)? data_i[161] : 
                       (N0)? data_i[673] : 1'b0;
  assign data_o[160] = (N1)? data_i[160] : 
                       (N0)? data_i[672] : 1'b0;
  assign data_o[159] = (N1)? data_i[159] : 
                       (N0)? data_i[671] : 1'b0;
  assign data_o[158] = (N1)? data_i[158] : 
                       (N0)? data_i[670] : 1'b0;
  assign data_o[157] = (N1)? data_i[157] : 
                       (N0)? data_i[669] : 1'b0;
  assign data_o[156] = (N1)? data_i[156] : 
                       (N0)? data_i[668] : 1'b0;
  assign data_o[155] = (N1)? data_i[155] : 
                       (N0)? data_i[667] : 1'b0;
  assign data_o[154] = (N1)? data_i[154] : 
                       (N0)? data_i[666] : 1'b0;
  assign data_o[153] = (N1)? data_i[153] : 
                       (N0)? data_i[665] : 1'b0;
  assign data_o[152] = (N1)? data_i[152] : 
                       (N0)? data_i[664] : 1'b0;
  assign data_o[151] = (N1)? data_i[151] : 
                       (N0)? data_i[663] : 1'b0;
  assign data_o[150] = (N1)? data_i[150] : 
                       (N0)? data_i[662] : 1'b0;
  assign data_o[149] = (N1)? data_i[149] : 
                       (N0)? data_i[661] : 1'b0;
  assign data_o[148] = (N1)? data_i[148] : 
                       (N0)? data_i[660] : 1'b0;
  assign data_o[147] = (N1)? data_i[147] : 
                       (N0)? data_i[659] : 1'b0;
  assign data_o[146] = (N1)? data_i[146] : 
                       (N0)? data_i[658] : 1'b0;
  assign data_o[145] = (N1)? data_i[145] : 
                       (N0)? data_i[657] : 1'b0;
  assign data_o[144] = (N1)? data_i[144] : 
                       (N0)? data_i[656] : 1'b0;
  assign data_o[143] = (N1)? data_i[143] : 
                       (N0)? data_i[655] : 1'b0;
  assign data_o[142] = (N1)? data_i[142] : 
                       (N0)? data_i[654] : 1'b0;
  assign data_o[141] = (N1)? data_i[141] : 
                       (N0)? data_i[653] : 1'b0;
  assign data_o[140] = (N1)? data_i[140] : 
                       (N0)? data_i[652] : 1'b0;
  assign data_o[139] = (N1)? data_i[139] : 
                       (N0)? data_i[651] : 1'b0;
  assign data_o[138] = (N1)? data_i[138] : 
                       (N0)? data_i[650] : 1'b0;
  assign data_o[137] = (N1)? data_i[137] : 
                       (N0)? data_i[649] : 1'b0;
  assign data_o[136] = (N1)? data_i[136] : 
                       (N0)? data_i[648] : 1'b0;
  assign data_o[135] = (N1)? data_i[135] : 
                       (N0)? data_i[647] : 1'b0;
  assign data_o[134] = (N1)? data_i[134] : 
                       (N0)? data_i[646] : 1'b0;
  assign data_o[133] = (N1)? data_i[133] : 
                       (N0)? data_i[645] : 1'b0;
  assign data_o[132] = (N1)? data_i[132] : 
                       (N0)? data_i[644] : 1'b0;
  assign data_o[131] = (N1)? data_i[131] : 
                       (N0)? data_i[643] : 1'b0;
  assign data_o[130] = (N1)? data_i[130] : 
                       (N0)? data_i[642] : 1'b0;
  assign data_o[129] = (N1)? data_i[129] : 
                       (N0)? data_i[641] : 1'b0;
  assign data_o[128] = (N1)? data_i[128] : 
                       (N0)? data_i[640] : 1'b0;
  assign data_o[127] = (N1)? data_i[127] : 
                       (N0)? data_i[639] : 1'b0;
  assign data_o[126] = (N1)? data_i[126] : 
                       (N0)? data_i[638] : 1'b0;
  assign data_o[125] = (N1)? data_i[125] : 
                       (N0)? data_i[637] : 1'b0;
  assign data_o[124] = (N1)? data_i[124] : 
                       (N0)? data_i[636] : 1'b0;
  assign data_o[123] = (N1)? data_i[123] : 
                       (N0)? data_i[635] : 1'b0;
  assign data_o[122] = (N1)? data_i[122] : 
                       (N0)? data_i[634] : 1'b0;
  assign data_o[121] = (N1)? data_i[121] : 
                       (N0)? data_i[633] : 1'b0;
  assign data_o[120] = (N1)? data_i[120] : 
                       (N0)? data_i[632] : 1'b0;
  assign data_o[119] = (N1)? data_i[119] : 
                       (N0)? data_i[631] : 1'b0;
  assign data_o[118] = (N1)? data_i[118] : 
                       (N0)? data_i[630] : 1'b0;
  assign data_o[117] = (N1)? data_i[117] : 
                       (N0)? data_i[629] : 1'b0;
  assign data_o[116] = (N1)? data_i[116] : 
                       (N0)? data_i[628] : 1'b0;
  assign data_o[115] = (N1)? data_i[115] : 
                       (N0)? data_i[627] : 1'b0;
  assign data_o[114] = (N1)? data_i[114] : 
                       (N0)? data_i[626] : 1'b0;
  assign data_o[113] = (N1)? data_i[113] : 
                       (N0)? data_i[625] : 1'b0;
  assign data_o[112] = (N1)? data_i[112] : 
                       (N0)? data_i[624] : 1'b0;
  assign data_o[111] = (N1)? data_i[111] : 
                       (N0)? data_i[623] : 1'b0;
  assign data_o[110] = (N1)? data_i[110] : 
                       (N0)? data_i[622] : 1'b0;
  assign data_o[109] = (N1)? data_i[109] : 
                       (N0)? data_i[621] : 1'b0;
  assign data_o[108] = (N1)? data_i[108] : 
                       (N0)? data_i[620] : 1'b0;
  assign data_o[107] = (N1)? data_i[107] : 
                       (N0)? data_i[619] : 1'b0;
  assign data_o[106] = (N1)? data_i[106] : 
                       (N0)? data_i[618] : 1'b0;
  assign data_o[105] = (N1)? data_i[105] : 
                       (N0)? data_i[617] : 1'b0;
  assign data_o[104] = (N1)? data_i[104] : 
                       (N0)? data_i[616] : 1'b0;
  assign data_o[103] = (N1)? data_i[103] : 
                       (N0)? data_i[615] : 1'b0;
  assign data_o[102] = (N1)? data_i[102] : 
                       (N0)? data_i[614] : 1'b0;
  assign data_o[101] = (N1)? data_i[101] : 
                       (N0)? data_i[613] : 1'b0;
  assign data_o[100] = (N1)? data_i[100] : 
                       (N0)? data_i[612] : 1'b0;
  assign data_o[99] = (N1)? data_i[99] : 
                      (N0)? data_i[611] : 1'b0;
  assign data_o[98] = (N1)? data_i[98] : 
                      (N0)? data_i[610] : 1'b0;
  assign data_o[97] = (N1)? data_i[97] : 
                      (N0)? data_i[609] : 1'b0;
  assign data_o[96] = (N1)? data_i[96] : 
                      (N0)? data_i[608] : 1'b0;
  assign data_o[95] = (N1)? data_i[95] : 
                      (N0)? data_i[607] : 1'b0;
  assign data_o[94] = (N1)? data_i[94] : 
                      (N0)? data_i[606] : 1'b0;
  assign data_o[93] = (N1)? data_i[93] : 
                      (N0)? data_i[605] : 1'b0;
  assign data_o[92] = (N1)? data_i[92] : 
                      (N0)? data_i[604] : 1'b0;
  assign data_o[91] = (N1)? data_i[91] : 
                      (N0)? data_i[603] : 1'b0;
  assign data_o[90] = (N1)? data_i[90] : 
                      (N0)? data_i[602] : 1'b0;
  assign data_o[89] = (N1)? data_i[89] : 
                      (N0)? data_i[601] : 1'b0;
  assign data_o[88] = (N1)? data_i[88] : 
                      (N0)? data_i[600] : 1'b0;
  assign data_o[87] = (N1)? data_i[87] : 
                      (N0)? data_i[599] : 1'b0;
  assign data_o[86] = (N1)? data_i[86] : 
                      (N0)? data_i[598] : 1'b0;
  assign data_o[85] = (N1)? data_i[85] : 
                      (N0)? data_i[597] : 1'b0;
  assign data_o[84] = (N1)? data_i[84] : 
                      (N0)? data_i[596] : 1'b0;
  assign data_o[83] = (N1)? data_i[83] : 
                      (N0)? data_i[595] : 1'b0;
  assign data_o[82] = (N1)? data_i[82] : 
                      (N0)? data_i[594] : 1'b0;
  assign data_o[81] = (N1)? data_i[81] : 
                      (N0)? data_i[593] : 1'b0;
  assign data_o[80] = (N1)? data_i[80] : 
                      (N0)? data_i[592] : 1'b0;
  assign data_o[79] = (N1)? data_i[79] : 
                      (N0)? data_i[591] : 1'b0;
  assign data_o[78] = (N1)? data_i[78] : 
                      (N0)? data_i[590] : 1'b0;
  assign data_o[77] = (N1)? data_i[77] : 
                      (N0)? data_i[589] : 1'b0;
  assign data_o[76] = (N1)? data_i[76] : 
                      (N0)? data_i[588] : 1'b0;
  assign data_o[75] = (N1)? data_i[75] : 
                      (N0)? data_i[587] : 1'b0;
  assign data_o[74] = (N1)? data_i[74] : 
                      (N0)? data_i[586] : 1'b0;
  assign data_o[73] = (N1)? data_i[73] : 
                      (N0)? data_i[585] : 1'b0;
  assign data_o[72] = (N1)? data_i[72] : 
                      (N0)? data_i[584] : 1'b0;
  assign data_o[71] = (N1)? data_i[71] : 
                      (N0)? data_i[583] : 1'b0;
  assign data_o[70] = (N1)? data_i[70] : 
                      (N0)? data_i[582] : 1'b0;
  assign data_o[69] = (N1)? data_i[69] : 
                      (N0)? data_i[581] : 1'b0;
  assign data_o[68] = (N1)? data_i[68] : 
                      (N0)? data_i[580] : 1'b0;
  assign data_o[67] = (N1)? data_i[67] : 
                      (N0)? data_i[579] : 1'b0;
  assign data_o[66] = (N1)? data_i[66] : 
                      (N0)? data_i[578] : 1'b0;
  assign data_o[65] = (N1)? data_i[65] : 
                      (N0)? data_i[577] : 1'b0;
  assign data_o[64] = (N1)? data_i[64] : 
                      (N0)? data_i[576] : 1'b0;
  assign data_o[63] = (N1)? data_i[63] : 
                      (N0)? data_i[575] : 1'b0;
  assign data_o[62] = (N1)? data_i[62] : 
                      (N0)? data_i[574] : 1'b0;
  assign data_o[61] = (N1)? data_i[61] : 
                      (N0)? data_i[573] : 1'b0;
  assign data_o[60] = (N1)? data_i[60] : 
                      (N0)? data_i[572] : 1'b0;
  assign data_o[59] = (N1)? data_i[59] : 
                      (N0)? data_i[571] : 1'b0;
  assign data_o[58] = (N1)? data_i[58] : 
                      (N0)? data_i[570] : 1'b0;
  assign data_o[57] = (N1)? data_i[57] : 
                      (N0)? data_i[569] : 1'b0;
  assign data_o[56] = (N1)? data_i[56] : 
                      (N0)? data_i[568] : 1'b0;
  assign data_o[55] = (N1)? data_i[55] : 
                      (N0)? data_i[567] : 1'b0;
  assign data_o[54] = (N1)? data_i[54] : 
                      (N0)? data_i[566] : 1'b0;
  assign data_o[53] = (N1)? data_i[53] : 
                      (N0)? data_i[565] : 1'b0;
  assign data_o[52] = (N1)? data_i[52] : 
                      (N0)? data_i[564] : 1'b0;
  assign data_o[51] = (N1)? data_i[51] : 
                      (N0)? data_i[563] : 1'b0;
  assign data_o[50] = (N1)? data_i[50] : 
                      (N0)? data_i[562] : 1'b0;
  assign data_o[49] = (N1)? data_i[49] : 
                      (N0)? data_i[561] : 1'b0;
  assign data_o[48] = (N1)? data_i[48] : 
                      (N0)? data_i[560] : 1'b0;
  assign data_o[47] = (N1)? data_i[47] : 
                      (N0)? data_i[559] : 1'b0;
  assign data_o[46] = (N1)? data_i[46] : 
                      (N0)? data_i[558] : 1'b0;
  assign data_o[45] = (N1)? data_i[45] : 
                      (N0)? data_i[557] : 1'b0;
  assign data_o[44] = (N1)? data_i[44] : 
                      (N0)? data_i[556] : 1'b0;
  assign data_o[43] = (N1)? data_i[43] : 
                      (N0)? data_i[555] : 1'b0;
  assign data_o[42] = (N1)? data_i[42] : 
                      (N0)? data_i[554] : 1'b0;
  assign data_o[41] = (N1)? data_i[41] : 
                      (N0)? data_i[553] : 1'b0;
  assign data_o[40] = (N1)? data_i[40] : 
                      (N0)? data_i[552] : 1'b0;
  assign data_o[39] = (N1)? data_i[39] : 
                      (N0)? data_i[551] : 1'b0;
  assign data_o[38] = (N1)? data_i[38] : 
                      (N0)? data_i[550] : 1'b0;
  assign data_o[37] = (N1)? data_i[37] : 
                      (N0)? data_i[549] : 1'b0;
  assign data_o[36] = (N1)? data_i[36] : 
                      (N0)? data_i[548] : 1'b0;
  assign data_o[35] = (N1)? data_i[35] : 
                      (N0)? data_i[547] : 1'b0;
  assign data_o[34] = (N1)? data_i[34] : 
                      (N0)? data_i[546] : 1'b0;
  assign data_o[33] = (N1)? data_i[33] : 
                      (N0)? data_i[545] : 1'b0;
  assign data_o[32] = (N1)? data_i[32] : 
                      (N0)? data_i[544] : 1'b0;
  assign data_o[31] = (N1)? data_i[31] : 
                      (N0)? data_i[543] : 1'b0;
  assign data_o[30] = (N1)? data_i[30] : 
                      (N0)? data_i[542] : 1'b0;
  assign data_o[29] = (N1)? data_i[29] : 
                      (N0)? data_i[541] : 1'b0;
  assign data_o[28] = (N1)? data_i[28] : 
                      (N0)? data_i[540] : 1'b0;
  assign data_o[27] = (N1)? data_i[27] : 
                      (N0)? data_i[539] : 1'b0;
  assign data_o[26] = (N1)? data_i[26] : 
                      (N0)? data_i[538] : 1'b0;
  assign data_o[25] = (N1)? data_i[25] : 
                      (N0)? data_i[537] : 1'b0;
  assign data_o[24] = (N1)? data_i[24] : 
                      (N0)? data_i[536] : 1'b0;
  assign data_o[23] = (N1)? data_i[23] : 
                      (N0)? data_i[535] : 1'b0;
  assign data_o[22] = (N1)? data_i[22] : 
                      (N0)? data_i[534] : 1'b0;
  assign data_o[21] = (N1)? data_i[21] : 
                      (N0)? data_i[533] : 1'b0;
  assign data_o[20] = (N1)? data_i[20] : 
                      (N0)? data_i[532] : 1'b0;
  assign data_o[19] = (N1)? data_i[19] : 
                      (N0)? data_i[531] : 1'b0;
  assign data_o[18] = (N1)? data_i[18] : 
                      (N0)? data_i[530] : 1'b0;
  assign data_o[17] = (N1)? data_i[17] : 
                      (N0)? data_i[529] : 1'b0;
  assign data_o[16] = (N1)? data_i[16] : 
                      (N0)? data_i[528] : 1'b0;
  assign data_o[15] = (N1)? data_i[15] : 
                      (N0)? data_i[527] : 1'b0;
  assign data_o[14] = (N1)? data_i[14] : 
                      (N0)? data_i[526] : 1'b0;
  assign data_o[13] = (N1)? data_i[13] : 
                      (N0)? data_i[525] : 1'b0;
  assign data_o[12] = (N1)? data_i[12] : 
                      (N0)? data_i[524] : 1'b0;
  assign data_o[11] = (N1)? data_i[11] : 
                      (N0)? data_i[523] : 1'b0;
  assign data_o[10] = (N1)? data_i[10] : 
                      (N0)? data_i[522] : 1'b0;
  assign data_o[9] = (N1)? data_i[9] : 
                     (N0)? data_i[521] : 1'b0;
  assign data_o[8] = (N1)? data_i[8] : 
                     (N0)? data_i[520] : 1'b0;
  assign data_o[7] = (N1)? data_i[7] : 
                     (N0)? data_i[519] : 1'b0;
  assign data_o[6] = (N1)? data_i[6] : 
                     (N0)? data_i[518] : 1'b0;
  assign data_o[5] = (N1)? data_i[5] : 
                     (N0)? data_i[517] : 1'b0;
  assign data_o[4] = (N1)? data_i[4] : 
                     (N0)? data_i[516] : 1'b0;
  assign data_o[3] = (N1)? data_i[3] : 
                     (N0)? data_i[515] : 1'b0;
  assign data_o[2] = (N1)? data_i[2] : 
                     (N0)? data_i[514] : 1'b0;
  assign data_o[1] = (N1)? data_i[1] : 
                     (N0)? data_i[513] : 1'b0;
  assign data_o[0] = (N1)? data_i[0] : 
                     (N0)? data_i[512] : 1'b0;
  assign N1 = ~sel_i[0];

endmodule