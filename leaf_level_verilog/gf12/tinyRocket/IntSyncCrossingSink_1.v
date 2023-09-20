module IntSyncCrossingSink_1( // @[:freechips.rocketchip.system.TinyConfig.fir@115314.2]
  input   auto_in_sync_0, // @[:freechips.rocketchip.system.TinyConfig.fir@115317.4]
  input   auto_in_sync_1, // @[:freechips.rocketchip.system.TinyConfig.fir@115317.4]
  output  auto_out_0, // @[:freechips.rocketchip.system.TinyConfig.fir@115317.4]
  output  auto_out_1 // @[:freechips.rocketchip.system.TinyConfig.fir@115317.4]
);
  assign auto_out_0 = auto_in_sync_0; // @[LazyModule.scala 173:49:freechips.rocketchip.system.TinyConfig.fir@115326.4]
  assign auto_out_1 = auto_in_sync_1; // @[LazyModule.scala 173:49:freechips.rocketchip.system.TinyConfig.fir@115326.4]
endmodule