module dcache_64_4_1_2_2_12_0(

`ifdef USE_POWER_PINS
  vccd1, vssd1,
`endif
  clk, rst, \d_in.valid , \d_in.hold , \d_in.load , \d_in.dcbz , \d_in.nc , \d_in.reserve , \d_in.atomic , \d_in.atomic_last , \d_in.virt_mode , \d_in.priv_mode , \d_in.addr , \d_in.data , \d_in.byte_sel , \m_in.valid , \m_in.tlbie , \m_in.doall , \m_in.tlbld , \m_in.addr , \m_in.pte , \snoop_in.adr , \snoop_in.dat , \snoop_in.sel , \snoop_in.cyc , \snoop_in.stb , \snoop_in.we , \wishbone_in.dat , \wishbone_in.ack , \wishbone_in.stall , \d_out.valid , \d_out.data , \d_out.store_done , \d_out.error , \d_out.cache_paradox , \m_out.stall , \m_out.done , \m_out.err , \m_out.data , stall_out, \wishbone_out.adr , \wishbone_out.dat , \wishbone_out.sel , \wishbone_out.cyc , \wishbone_out.stb , \wishbone_out.we , \events.load_miss , \events.store_miss , \events.dcache_refill , \events.dtlb_miss , \events.dtlb_miss_resolved , log_out);
`ifdef USE_POWER_PINS
  inout vccd1;
  inout vssd1;
`endif
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire [3:0] _014_;
  wire [1:0] _015_;
  wire [142:0] _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire [63:0] _023_;
  wire _024_;
  wire [73:0] _025_;
  wire [63:0] _026_;
  wire [11:0] _027_;
  wire _028_;
  wire _029_;
  wire [150:0] _030_;
  wire _031_;
  reg [150:0] _032_;
  reg _033_;
  reg [150:0] _034_ = 151'hxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire [1:0] _044_;
  reg [1:0] _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire [63:0] _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire [55:0] _066_;
  wire [5:0] _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire [3:0] _076_;
  wire [3:0] _077_;
  reg [3:0] _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  reg _087_;
  wire [1:0] _088_;
  wire [1:0] _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  reg _096_;
  reg [47:0] _097_;
  reg [1:0] _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire [1:0] _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire [1:0] _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire [1:0] _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  wire _150_;
  wire _151_;
  wire _152_;
  wire _153_;
  wire [2:0] _154_;
  wire _155_;
  wire _156_;
  wire _157_;
  wire _158_;
  wire _159_;
  wire _160_;
  wire _161_;
  wire _162_;
  wire _163_;
  wire _164_;
  wire _165_;
  wire _166_;
  wire _167_;
  wire _168_;
  wire _169_;
  wire _170_;
  wire _171_;
  wire _172_;
  wire _173_;
  wire _174_;
  wire _175_;
  wire _176_;
  wire [2:0] _177_;
  wire [2:0] _178_;
  wire [2:0] _179_;
  wire [2:0] _180_;
  wire _181_;
  wire [4:0] _182_;
  wire [4:0] _183_;
  wire _184_;
  wire _185_;
  wire _186_;
  wire _187_;
  wire _188_;
  wire _189_;
  wire _190_;
  wire _191_;
  wire _192_;
  wire _193_;
  wire _194_;
  wire _195_;
  wire [58:0] _196_;
  wire _197_;
  wire [57:0] _198_;
  wire [58:0] _199_;
  wire _200_;
  wire [57:0] _201_;
  reg [58:0] _202_;
  wire _203_;
  wire [63:0] _204_;
  wire _205_;
  wire [63:0] _206_;
  wire [7:0] _207_;
  wire [63:0] _208_;
  wire _209_;
  wire _210_;
  wire _211_;
  wire _212_;
  wire [7:0] _213_;
  wire _214_;
  wire _215_;
  wire _216_;
  wire [1:0] _217_;
  wire [1:0] _218_;
  wire [1:0] _219_;
  wire _220_;
  wire _221_;
  wire _222_;
  wire [7:0] _223_;
  wire _224_;
  wire _225_;
  wire _226_;
  wire [1:0] _227_;
  wire [1:0] _228_;
  wire [1:0] _229_;
  wire _230_;
  wire _231_;
  wire _232_;
  wire [7:0] _233_;
  wire _234_;
  wire _235_;
  wire _236_;
  wire [1:0] _237_;
  wire [1:0] _238_;
  wire [1:0] _239_;
  wire _240_;
  wire _241_;
  wire _242_;
  wire [7:0] _243_;
  wire _244_;
  wire _245_;
  wire _246_;
  wire [1:0] _247_;
  wire [1:0] _248_;
  wire [1:0] _249_;
  wire _250_;
  wire _251_;
  wire _252_;
  wire [7:0] _253_;
  wire _254_;
  wire _255_;
  wire _256_;
  wire [1:0] _257_;
  wire [1:0] _258_;
  wire [1:0] _259_;
  wire _260_;
  wire _261_;
  wire _262_;
  wire [7:0] _263_;
  wire _264_;
  wire _265_;
  wire _266_;
  wire [1:0] _267_;
  wire [1:0] _268_;
  wire [1:0] _269_;
  wire _270_;
  wire _271_;
  wire _272_;
  wire [7:0] _273_;
  wire _274_;
  wire _275_;
  wire _276_;
  wire [1:0] _277_;
  wire [1:0] _278_;
  wire [1:0] _279_;
  wire _280_;
  wire _281_;
  wire _282_;
  wire [7:0] _283_;
  wire _284_;
  wire _285_;
  wire _286_;
  wire [1:0] _287_;
  wire [1:0] _288_;
  wire [1:0] _289_;
  wire _290_;
  wire _291_;
  wire _292_;
  wire [7:0] _293_;
  wire _294_;
  wire _295_;
  wire _296_;
  wire _297_;
  wire _298_;
  wire _299_;
  wire _300_;
  wire _301_;
  wire _302_;
  wire _303_;
  wire _304_;
  wire _305_;
  wire [1:0] _306_;
  wire _307_;
  wire _308_;
  wire _309_;
  reg _310_;
  reg [196:0] _311_;
  reg _312_;
  reg [2:0] _313_;
  wire _314_;
  wire _315_;
  wire _316_;
  wire _317_;
  wire _318_;
  wire _319_;
  wire _320_;
  wire _321_;
  wire _322_;
  wire _323_;
  wire _324_;
  wire _325_;
  wire [1:0] _326_;
  wire _327_;
  wire [63:0] _328_;
  wire [63:0] _329_;
  wire _330_;
  wire _331_;
  wire _332_;
  wire _333_;
  wire _334_;
  wire [7:0] _335_;
  wire _336_;
  wire _337_;
  wire _338_;
  wire _339_;
  wire _340_;
  wire _341_;
  wire _342_;
  wire _343_;
  wire _344_;
  wire [134:0] _345_;
  wire [2:0] _346_;
  wire _347_;
  wire _348_;
  wire _349_;
  wire _350_;
  wire _351_;
  wire _352_;
  wire _353_;
  wire _354_;
  wire _355_;
  wire _356_;
  wire _357_;
  wire _358_;
  wire [1:0] _359_;
  wire _360_;
  wire _361_;
  wire _362_;
  wire [2:0] _363_;
  wire _364_;
  wire _365_;
  wire _366_;
  wire _367_;
  wire _368_;
  wire _369_;
  wire _370_;
  wire _371_;
  wire _372_;
  wire _373_;
  wire _374_;
  wire [1:0] _375_;
  wire _376_;
  wire _377_;
  wire _378_;
  wire _379_;
  wire _380_;
  wire _381_;
  wire [2:0] _382_;
  wire _383_;
  wire _384_;
  wire _385_;
  wire _386_;
  wire _387_;
  wire _388_;
  wire _389_;
  wire _390_;
  wire _391_;
  wire [2:0] _392_;
  wire [28:0] _393_;
  wire _394_;
  wire [2:0] _395_;
  wire _396_;
  wire _397_;
  wire _398_;
  wire _399_;
  wire _400_;
  wire _401_;
  wire _402_;
  wire _403_;
  wire _404_;
  wire _405_;
  wire _406_;
  wire _407_;
  wire _408_;
  wire _409_;
  wire _410_;
  wire [1:0] _411_;
  wire _412_;
  wire [1:0] _413_;
  wire _414_;
  wire _415_;
  wire [2:0] _416_;
  wire [3:0] _417_;
  wire _418_;
  wire _419_;
  wire _420_;
  wire _421_;
  wire [4:0] _422_;
  wire _423_;
  wire _424_;
  wire _425_;
  wire _426_;
  wire _427_;
  wire _428_;
  wire [2:0] _429_;
  wire [2:0] _430_;
  wire [2:0] _431_;
  wire [2:0] _432_;
  wire _433_;
  wire [4:0] _434_;
  wire [71:0] _435_;
  wire _436_;
  wire _437_;
  wire _438_;
  wire _439_;
  wire _440_;
  wire _441_;
  wire _442_;
  wire _443_;
  wire _444_;
  wire _445_;
  wire _446_;
  wire _447_;
  wire _448_;
  wire _449_;
  wire [4:0] _450_;
  wire _451_;
  wire _452_;
  wire _453_;
  wire _454_;
  wire _455_;
  wire [5:0] _456_;
  wire _457_;
  wire _458_;
  wire _459_;
  wire _460_;
  wire _461_;
  wire _462_;
  wire _463_;
  wire _464_;
  wire [1:0] _465_;
  wire [1:0] _466_;
  wire _467_;
  wire [1:0] _468_;
  wire _469_;
  wire _470_;
  wire _471_;
  wire _472_;
  wire _473_;
  wire _474_;
  wire _475_;
  wire _476_;
  wire [1:0] _477_;
  wire _478_;
  wire [1:0] _479_;
  wire _480_;
  wire _481_;
  wire _482_;
  wire [3:0] _483_;
  wire _484_;
  wire _485_;
  wire _486_;
  wire _487_;
  wire [1:0] _488_;
  wire _489_;
  wire _490_;
  wire _491_;
  wire _492_;
  wire [4:0] _493_;
  wire [23:0] _494_;
  wire [63:0] _495_;
  wire [7:0] _496_;
  wire _497_;
  wire _498_;
  wire _499_;
  wire [47:0] _500_;
  wire [4:0] _501_;
  wire [1:0] _502_;
  wire [2:0] _503_;
  wire _504_;
  wire _505_;
  wire _506_;
  wire _507_;
  wire _508_;
  wire _509_;
  wire _510_;
  wire _511_;
  wire [2:0] _512_;
  wire _513_;
  wire _514_;
  wire _515_;
  wire _516_;
  wire _517_;
  wire _518_;
  wire [132:0] _519_;
  wire [132:0] _520_;
  wire _521_;
  wire _522_;
  wire _523_;
  wire [3:0] _524_;
  wire _525_;
  wire [134:0] _526_;
  wire [1:0] _527_;
  wire [2:0] _528_;
  wire [29:0] _529_;
  wire [71:0] _530_;
  wire [1:0] _531_;
  wire [71:0] _532_;
  wire _533_;
  wire _534_;
  wire [2:0] _535_;
  wire _536_;
  wire _537_;
  reg [3:0] _538_;
  reg _539_;
  reg [134:0] _540_;
  reg [181:0] _541_;
  reg _542_;
  reg [3:0] _543_;
  wire [203:0] _544_;
  wire [101:0] _545_;
  wire [255:0] _546_;
  wire [127:0] _547_;
  wire [191:0] _548_;
  wire [47:0] _549_;
  wire [191:0] _550_;
  wire [47:0] _551_;
  wire [1:0] _552_;
  wire [63:0] _553_;
  wire _554_;
  wire _555_;
  wire _556_;
  wire _557_;
  wire _558_;
  wire _559_;
  wire _560_;
  wire _561_;
  wire _562_;
  wire _563_;
  wire _564_;
  wire _565_;
  wire _566_;
  wire _567_;
  wire _568_;
  wire _569_;
  wire [50:0] _570_;
  wire [50:0] _571_;
  wire _572_;
  wire [63:0] _573_;
  wire [63:0] _574_;
  wire _575_;
  wire _576_;
  wire _577_;
  wire _578_;
  wire _579_;
  wire _580_;
  wire _581_;
  wire _582_;
  wire _583_;
  wire _584_;
  wire _585_;
  wire _586_;
  wire _587_;
  wire _588_;
  wire _589_;
  wire _590_;
  wire _591_;
  wire _592_;
  wire _593_;
  wire _594_;
  wire _595_;
  wire _596_;
  wire _597_;
  wire _598_;
  wire _599_;
  wire _600_;
  wire _601_;
  wire _602_;
  wire _603_;
  wire _604_;
  wire _605_;
  wire _606_;
  wire _607_;
  wire _608_;
  wire _609_;
  wire _610_;
  wire _611_;
  wire _612_;
  wire _613_;
  wire _614_;
  wire _615_;
  wire _616_;
  wire _617_;
  wire _618_;
  wire _619_;
  wire _620_;
  wire _621_;
  wire _622_;
  wire _623_;
  wire _624_;
  wire _625_;
  wire _626_;
  wire _627_;
  wire _628_;
  wire _629_;
  wire _630_;
  wire _631_;
  wire _632_;
  wire _633_;
  wire _634_;
  wire _635_;
  wire _636_;
  wire _637_;
  wire _638_;
  wire _639_;
  wire _640_;
  wire _641_;
  wire _642_;
  wire _643_;
  wire _644_;
  wire _645_;
  wire _646_;
  wire _647_;
  wire _648_;
  wire _649_;
  wire _650_;
  wire _651_;
  wire _652_;
  wire _653_;
  wire _654_;
  wire _655_;
  wire _656_;
  wire access_ok;
  wire [63:0] cache_out;
  wire [47:0] cache_tag_set;
  wire [3:0] cache_valids;
  wire cancel_store;
  wire clear_rsrv;
  input clk;
  wire clk;
  input [63:0] \d_in.addr ;
  wire [63:0] \d_in.addr ;
  input \d_in.atomic ;
  wire \d_in.atomic ;
  input \d_in.atomic_last ;
  wire \d_in.atomic_last ;
  input [7:0] \d_in.byte_sel ;
  wire [7:0] \d_in.byte_sel ;
  input [63:0] \d_in.data ;
  wire [63:0] \d_in.data ;
  input \d_in.dcbz ;
  wire \d_in.dcbz ;
  input \d_in.hold ;
  wire \d_in.hold ;
  input \d_in.load ;
  wire \d_in.load ;
  input \d_in.nc ;
  wire \d_in.nc ;
  input \d_in.priv_mode ;
  wire \d_in.priv_mode ;
  input \d_in.reserve ;
  wire \d_in.reserve ;
  input \d_in.valid ;
  wire \d_in.valid ;
  input \d_in.virt_mode ;
  wire \d_in.virt_mode ;
  output \d_out.cache_paradox ;
  wire \d_out.cache_paradox ;
  output [63:0] \d_out.data ;
  wire [63:0] \d_out.data ;
  output \d_out.error ;
  wire \d_out.error ;
  output \d_out.store_done ;
  wire \d_out.store_done ;
  output \d_out.valid ;
  wire \d_out.valid ;
  wire [3:0] dtlb_valids;
  wire [4:0] early_req_row;
  wire [4:0] ev;
  output \events.dcache_refill ;
  wire \events.dcache_refill ;
  output \events.dtlb_miss ;
  wire \events.dtlb_miss ;
  output \events.dtlb_miss_resolved ;
  wire \events.dtlb_miss_resolved ;
  output \events.load_miss ;
  wire \events.load_miss ;
  output \events.store_miss ;
  wire \events.store_miss ;
  output [19:0] log_out;
  wire [19:0] log_out;
  input [63:0] \m_in.addr ;
  wire [63:0] \m_in.addr ;
  input \m_in.doall ;
  wire \m_in.doall ;
  input [63:0] \m_in.pte ;
  wire [63:0] \m_in.pte ;
  input \m_in.tlbie ;
  wire \m_in.tlbie ;
  input \m_in.tlbld ;
  wire \m_in.tlbld ;
  input \m_in.valid ;
  wire \m_in.valid ;
  output [63:0] \m_out.data ;
  wire [63:0] \m_out.data ;
  output \m_out.done ;
  wire \m_out.done ;
  output \m_out.err ;
  wire \m_out.err ;
  output \m_out.stall ;
  wire \m_out.stall ;
  wire \maybe_tlb_plrus.tlb_plrus:1.tlb_plru_acc ;
  wire \maybe_tlb_plrus.tlb_plrus:1.tlb_plru_acc_en ;
  wire \maybe_tlb_plrus.tlb_plrus:1.tlb_plru_out ;
  wire \maybe_tlb_plrus.tlb_plrus:2.tlb_plru_acc ;
  wire \maybe_tlb_plrus.tlb_plrus:2.tlb_plru_acc_en ;
  wire \maybe_tlb_plrus.tlb_plrus:2.tlb_plru_out ;
  wire [5:0] perm_attr;
  wire perm_ok;
  wire [63:0] pte;
  wire [150:0] r0;
  wire r0_full;
  wire r0_stall;
  wire r0_valid;
  wire [520:0] r1;
  wire [55:0] ra;
  wire [63:0] ram_wr_data;
  wire [7:0] ram_wr_select;
  wire \rams:1.do_read ;
  wire [63:0] \rams:1.dout ;
  wire [4:0] \rams:1.rd_addr ;
  wire [4:0] \rams:1.wr_addr ;
  wire [7:0] \rams:1.wr_sel_m ;
  wire rc_ok;
  wire req_go;
  wire [1:0] req_index;
  wire [2:0] req_op;
  wire [4:0] req_row;
  wire req_same_tag;
  wire [58:0] reservation;
  input rst;
  wire rst;
  wire set_rsrv;
  input [28:0] \snoop_in.adr ;
  wire [28:0] \snoop_in.adr ;
  input \snoop_in.cyc ;
  wire \snoop_in.cyc ;
  input [63:0] \snoop_in.dat ;
  wire [63:0] \snoop_in.dat ;
  input [7:0] \snoop_in.sel ;
  wire [7:0] \snoop_in.sel ;
  input \snoop_in.stb ;
  wire \snoop_in.stb ;
  input \snoop_in.we ;
  wire \snoop_in.we ;
  wire [1:0] snoop_index;
  wire [47:0] snoop_tag_set;
  wire snoop_valid;
  wire [47:0] snoop_wrtag;
  wire [150:0] \stage_0.r ;
  output stall_out;
  wire stall_out;
  wire tlb_hit;
  wire tlb_hit_way;
  wire tlb_miss;
  wire [1:0] tlb_plru_victim;
  wire [127:0] tlb_pte_way;
  wire tlb_req_index;
  wire [101:0] tlb_tag_way;
  wire [1:0] tlb_valid_way;
  wire use_forward2;
  wire use_forward_rl;
  wire use_forward_st;
  wire valid_ra;
  input \wishbone_in.ack ;
  wire \wishbone_in.ack ;
  input [63:0] \wishbone_in.dat ;
  wire [63:0] \wishbone_in.dat ;
  input \wishbone_in.stall ;
  wire \wishbone_in.stall ;
  output [28:0] \wishbone_out.adr ;
  wire [28:0] \wishbone_out.adr ;
  output \wishbone_out.cyc ;
  wire \wishbone_out.cyc ;
  output [63:0] \wishbone_out.dat ;
  wire [63:0] \wishbone_out.dat ;
  output [7:0] \wishbone_out.sel ;
  wire [7:0] \wishbone_out.sel ;
  output \wishbone_out.stb ;
  wire \wishbone_out.stb ;
  output \wishbone_out.we ;
  wire \wishbone_out.we ;
  (* ram_style = "distributed" *)
  reg [47:0] cache_tags [3:0];
  always @(posedge clk) begin
    if (_537_)
      cache_tags[r1[498:497]] <= r1[491:444];
  end
  reg [47:0] _672_;
  reg [47:0] _673_;
  always @(posedge clk) begin
    _672_ <= cache_tags[_089_];
    _673_ <= cache_tags[\snoop_in.adr [4:3]];
  end
  assign _551_ = _672_;
  assign _549_ = _673_;
  (* ram_style = "distributed" *)
  reg [127:0] dtlb_ptes [1:0];
  always @(posedge clk) begin
    if (_086_)
      dtlb_ptes[tlb_req_index] <= { _574_, _573_ };
  end
  reg [127:0] _674_;
  always @(posedge clk) begin
    if (_042_) begin
      _674_ <= dtlb_ptes[_041_];
    end
  end
  assign _547_ = _674_;
  (* ram_style = "distributed" *)
  reg [101:0] dtlb_tags [1:0];
  always @(posedge clk) begin
    if (_082_)
      dtlb_tags[tlb_req_index] <= { _571_, _570_ };
  end
  reg [101:0] _675_;
  always @(posedge clk) begin
    if (_042_) begin
      _675_ <= dtlb_tags[_041_];
    end
  end
  assign _545_ = _675_;
  assign _000_ = _104_[0] ? cache_valids[1] : cache_valids[0];
  assign _001_ = _114_[0] ? cache_valids[1] : cache_valids[0];
  assign _002_ = _127_[0] ? cache_valids[1] : cache_valids[0];
  assign _003_ = _154_[0] ? r1[503] : r1[502];
  assign _004_ = _154_[0] ? r1[507] : r1[506];
  assign _005_ = _104_[0] ? cache_valids[3] : cache_valids[2];
  assign _006_ = _114_[0] ? cache_valids[3] : cache_valids[2];
  assign _007_ = _127_[0] ? cache_valids[3] : cache_valids[2];
  assign _008_ = _154_[0] ? r1[505] : r1[504];
  assign _009_ = _154_[0] ? r1[509] : r1[508];
  assign _589_ = _104_[1] ? _005_ : _000_;
  assign _590_ = _114_[1] ? _006_ : _001_;
  assign _594_ = _127_[1] ? _007_ : _002_;
  assign _595_ = _154_[1] ? _008_ : _003_;
  assign _596_ = _154_[1] ? _009_ : _004_;
  assign _010_ = \m_in.tlbie  | \m_in.tlbld ;
  assign _011_ = ~ _010_;
  assign _012_ = \m_in.valid  ? 1'h1 : \d_in.valid ;
  assign _013_ = \m_in.valid  ? \stage_0.r [1] : \d_in.hold ;
  assign _014_ = \m_in.valid  ? { 3'h0, _011_ } : { \d_in.reserve , \d_in.nc , \d_in.dcbz , \d_in.load  };
  assign _015_ = \m_in.valid  ? \stage_0.r [7:6] : { \d_in.atomic_last , \d_in.atomic  };
  assign _016_ = \m_in.valid  ? { 2'h3, \m_in.tlbld , \m_in.doall , \m_in.tlbie , 8'hff, \m_in.pte , \m_in.addr , 2'h2 } : { 5'h00, \d_in.byte_sel , 64'h0000000000000000, \d_in.addr , \d_in.priv_mode , \d_in.virt_mode  };
  assign _017_ = ~ r1[0];
  assign _018_ = ~ \d_in.hold ;
  assign _019_ = _017_ & _018_;
  assign _020_ = ~ r0_full;
  assign _021_ = _019_ | _020_;
  assign _022_ = ~ r0[150];
  assign _023_ = _022_ ? \d_in.data  : r0[137:74];
  assign _024_ = _022_ ? r0[0] : r0[150];
  assign _025_ = _021_ ? { _016_[65:0], _015_, _014_, _013_, _012_ } : r0[73:0];
  assign _026_ = _021_ ? _016_[129:66] : _023_;
  assign _027_ = _021_ ? _016_[141:130] : r0[149:138];
  assign _028_ = _021_ ? _016_[142] : _024_;
  assign _029_ = _021_ ? _012_ : r0_full;
  assign _030_ = rst ? r0 : { _028_, _027_, _026_, _025_ };
  assign _031_ = rst ? 1'h0 : _029_;
  always @(posedge clk)
    _032_ <= _030_;
  always @(posedge clk)
    _033_ <= _031_;
  always @(posedge clk)
    _034_ <= { _016_, _015_, _014_, _013_, _012_ };
  assign _035_ = r1[0] | \d_in.hold ;
  assign _036_ = r0_full & _035_;
  assign _037_ = ~ r1[0];
  assign _038_ = r0_full & _037_;
  assign _039_ = ~ \d_in.hold ;
  assign _040_ = _038_ & _039_;
  assign _041_ = \m_in.valid  ? \m_in.addr [12] : \d_in.addr [12];
  assign _042_ = ~ r0_stall;
  assign _043_ = 1'h1 - _041_;
  assign _044_ = _042_ ? _552_ : tlb_valid_way;
  always @(posedge clk)
    _045_ <= _044_;
  assign _047_ = { 31'h00000000, r1[143] } == 32'd0;
  assign _048_ = _047_ ? r1[141] : 1'h0;
  assign _050_ = { 31'h00000000, r1[143] } == 32'd1;
  assign _051_ = _050_ ? r1[141] : 1'h0;
  assign _052_ = tlb_tag_way[50:0] == r0[73:23];
  assign _053_ = tlb_valid_way[0] & _052_;
  assign _054_ = _053_ ? 1'h1 : 1'h0;
  assign _055_ = tlb_tag_way[101:51] == r0[73:23];
  assign _056_ = tlb_valid_way[1] & _055_;
  assign _057_ = _056_ ? 1'h1 : 1'h0;
  assign _058_ = _056_ ? 1'h1 : _054_;
  assign _059_ = _058_ & r0_valid;
  assign _060_ = tlb_hit ? _553_ : 64'h0000000000000000;
  assign _061_ = ~ r0[8];
  assign _062_ = tlb_hit | _061_;
  assign _063_ = r0_valid & r0[8];
  assign _064_ = ~ tlb_hit;
  assign _065_ = _063_ & _064_;
  assign _066_ = r0[8] ? { pte[55:12], r0[21:13], 3'h0 } : { r0[65:13], 3'h0 };
  assign _067_ = r0[8] ? { pte[1], pte[2], pte[3], pte[5], pte[7], pte[8] } : 6'h3b;
  assign _068_ = r0_valid & r0[146];
  assign _069_ = r0_valid & r0[148];
  assign _070_ = _068_ & r0[147];
  assign _071_ = rst | _070_;
  assign _072_ = 1'h1 - tlb_req_index;
  assign _073_ = 1'h1 - tlb_req_index;
  assign _074_ = tlb_hit ? tlb_hit_way : _568_;
  assign _075_ = 1'h1 - tlb_req_index;
  assign _076_ = _068_ ? { _567_, _565_, _563_, _561_ } : { _588_, _586_, _584_, _582_ };
  assign _077_ = _071_ ? 4'h0 : _076_;
  always @(posedge clk)
    _078_ <= _077_;
  assign _079_ = ~ _071_;
  assign _080_ = ~ _068_;
  assign _081_ = _079_ & _080_;
  assign _082_ = _069_ & _081_;
  assign _083_ = ~ _071_;
  assign _084_ = ~ _068_;
  assign _085_ = _083_ & _084_;
  assign _086_ = _069_ & _085_;
  always @(posedge clk)
    _087_ <= _069_;
  assign _088_ = \m_in.valid  ? \m_in.addr [7:6] : \d_in.addr [7:6];
  assign _089_ = r0_stall ? req_index : _088_;
  assign _090_ = ~ \wishbone_in.stall ;
  assign _091_ = r1[441] & _090_;
  assign _092_ = ~ _091_;
  assign _093_ = \snoop_in.cyc  & \snoop_in.stb ;
  assign _094_ = _093_ & \snoop_in.we ;
  assign _095_ = _092_ ? _094_ : 1'h0;
  always @(posedge clk)
    _096_ <= _095_;
  always @(posedge clk)
    _097_ <= { 24'h000000, \snoop_in.adr [28:5] };
  always @(posedge clk)
    _098_ <= \snoop_in.adr [4:3];
  assign _099_ = r0[146] | r0[148];
  assign _100_ = ~ _099_;
  assign _101_ = r0_valid & _100_;
  assign _102_ = ~ r1[516];
  assign _103_ = _101_ & _102_;
  assign _104_ = 2'h3 - req_index;
  assign _105_ = _103_ & _589_;
  assign _106_ = cache_tag_set == { tlb_pte_way[55:12], r0[21:18] };
  assign _107_ = _105_ & _106_;
  assign _108_ = _107_ & tlb_valid_way[0];
  assign _109_ = _108_ ? 1'h1 : 1'h0;
  assign _110_ = { tlb_pte_way[55:12], r0[21:18] } == r1[491:444];
  assign _111_ = _110_ ? 1'h1 : 1'h0;
  assign _112_ = { tlb_pte_way[55:12], r0[21:18] } == r1[255:208];
  assign _113_ = _112_ ? 1'h1 : 1'h0;
  assign _114_ = 2'h3 - req_index;
  assign _115_ = _103_ & _590_;
  assign _116_ = cache_tag_set == { tlb_pte_way[119:76], r0[21:18] };
  assign _117_ = _115_ & _116_;
  assign _118_ = _117_ & tlb_valid_way[1];
  assign _119_ = _118_ ? 1'h1 : 1'h0;
  assign _120_ = { tlb_pte_way[119:76], r0[21:18] } == r1[491:444];
  assign _121_ = _120_ ? 1'h1 : 1'h0;
  assign _122_ = { tlb_pte_way[119:76], r0[21:18] } == r1[255:208];
  assign _123_ = _122_ ? 1'h1 : 1'h0;
  assign _124_ = tlb_hit ? _591_ : 1'h0;
  assign _125_ = tlb_hit ? _592_ : 1'h0;
  assign _126_ = tlb_hit ? _593_ : 1'h0;
  assign _127_ = 2'h3 - req_index;
  assign _128_ = _103_ & _594_;
  assign _129_ = cache_tag_set == r0[65:18];
  assign _130_ = _128_ & _129_;
  assign _131_ = _130_ ? 1'h1 : 1'h0;
  assign _132_ = r0[65:18] == r1[491:444];
  assign _133_ = _132_ ? 1'h1 : 1'h0;
  assign _134_ = r0[65:18] == r1[255:208];
  assign _135_ = _134_ ? 1'h1 : 1'h0;
  assign _136_ = r0[8] ? _124_ : _131_;
  assign _137_ = r0[8] ? _125_ : _133_;
  assign _138_ = r0[8] ? _126_ : _135_;
  assign _139_ = { 27'h0000000, r1[496:492] } == { 27'h0000000, req_row };
  assign _140_ = _139_ & _137_;
  assign _141_ = r1[335:334] == 2'h1;
  assign _142_ = _141_ & \wishbone_in.ack ;
  assign _143_ = _142_ ? 1'h1 : 1'h0;
  assign _144_ = _140_ ? r1[337] : 1'h0;
  assign _145_ = _140_ ? _143_ : 1'h0;
  assign _146_ = { 27'h0000000, r1[269:265] } == { 27'h0000000, req_row };
  assign _147_ = _146_ & _138_;
  assign _148_ = _147_ ? r1[264] : 1'h0;
  assign _149_ = r1[335:334] == 2'h1;
  assign _150_ = { 30'h00000000, req_index } == { 30'h00000000, r1[498:497] };
  assign _151_ = _149_ & _150_;
  assign _152_ = _151_ & _137_;
  assign _153_ = ~ r0[2];
  assign _154_ = 3'h7 - req_row[2:0];
  assign _155_ = _153_ | _597_;
  assign _156_ = _155_ | use_forward_rl;
  assign _157_ = _152_ ? _156_ : _136_;
  assign _158_ = r0[2] | perm_attr[1];
  assign _159_ = perm_attr[0] & _158_;
  assign _160_ = ~ perm_attr[3];
  assign _161_ = r0[9] | _160_;
  assign _162_ = r0[2] & perm_attr[4];
  assign _163_ = perm_attr[5] | _162_;
  assign _164_ = _161_ & _163_;
  assign _165_ = valid_ra & perm_ok;
  assign _166_ = _165_ & rc_ok;
  assign _167_ = r0[4] | perm_attr[2];
  assign _168_ = ~ access_ok;
  assign _169_ = { r0[2], _167_, _157_ } == 3'h5;
  assign _170_ = { r0[2], _167_, _157_ } == 3'h4;
  assign _171_ = { r0[2], _167_, _157_ } == 3'h6;
  assign _172_ = { r0[2], _167_, _157_ } == 3'h1;
  assign _173_ = { r0[2], _167_, _157_ } == 3'h0;
  assign _174_ = { r0[2], _167_, _157_ } == 3'h2;
  assign _175_ = { r0[2], _167_, _157_ } == 3'h3;
  assign _176_ = { r0[2], _167_, _157_ } == 3'h7;
  function [2:0] \24606 ;
    input [2:0] a;
    input [23:0] b;
    input [7:0] s;
    (* parallel_case *)
    casez (s)
      8'b???????1:
        \24606  = b[2:0];
      8'b??????1?:
        \24606  = b[5:3];
      8'b?????1??:
        \24606  = b[8:6];
      8'b????1???:
        \24606  = b[11:9];
      8'b???1????:
        \24606  = b[14:12];
      8'b??1?????:
        \24606  = b[17:15];
      8'b?1??????:
        \24606  = b[20:18];
      8'b1???????:
        \24606  = b[23:21];
      default:
        \24606  = a;
    endcase
  endfunction
  assign _177_ = \24606 (3'h0, 24'h27fd63, { _176_, _175_, _174_, _173_, _172_, _171_, _170_, _169_ });
  assign _178_ = cancel_store ? 3'h2 : _177_;
  assign _179_ = _168_ ? 3'h1 : _178_;
  assign _180_ = _103_ ? _179_ : 3'h0;
  assign _181_ = ~ r0_stall;
  assign _182_ = \m_in.valid  ? \m_in.addr [7:3] : \d_in.addr [7:3];
  assign _183_ = _181_ ? _182_ : req_row;
  assign _184_ = r0_valid & r0[5];
  assign _185_ = ~ reservation[0];
  assign _186_ = r0[73:16] != reservation[58:1];
  assign _187_ = _185_ | _186_;
  assign _188_ = _187_ ? 1'h1 : 1'h0;
  assign _189_ = r0[2] ? 1'h0 : _188_;
  assign _190_ = r0[2] ? r0[7] : 1'h0;
  assign _191_ = r0[2] ? 1'h0 : r0[7];
  assign _192_ = _184_ ? _189_ : 1'h0;
  assign _193_ = _184_ ? _190_ : 1'h0;
  assign _194_ = _184_ ? _191_ : 1'h0;
  assign _195_ = r0_valid & access_ok;
  assign _196_ = set_rsrv ? { r0[73:16], 1'h1 } : reservation;
  assign _197_ = clear_rsrv ? 1'h0 : _196_[0];
  assign _198_ = clear_rsrv ? reservation[58:1] : _196_[58:1];
  assign _199_ = _195_ ? { _198_, _197_ } : reservation;
  assign _200_ = rst ? 1'h0 : _199_[0];
  assign _201_ = rst ? reservation[58:1] : _199_[58:1];
  always @(posedge clk)
    _202_ <= { _201_, _200_ };
  assign _203_ = ~ r1[520];
  assign _204_ = r1[337] ? r1[126:63] : _206_;
  assign _205_ = ~ r1[336];
  assign _206_ = _205_ ? \wishbone_in.dat  : 64'h0000000000000000;
  assign _207_ = r1[337] ? r1[134:127] : 8'hff;
  assign _209_ = r1[335:334] == 2'h1;
  assign _210_ = _209_ & \wishbone_in.ack ;
  assign _211_ = r1[337] | _210_;
  assign _212_ = 1'h1 & _211_;
  assign _213_ = _212_ ? ram_wr_select : 8'h00;
  assign _214_ = r1[0] | use_forward_rl;
  assign _215_ = use_forward_st & r1[127];
  assign _216_ = use_forward2 & r1[256];
  assign _217_ = _216_ ? 2'h2 : 2'h3;
  assign _218_ = _215_ ? 2'h1 : _217_;
  assign _219_ = _214_ ? { 1'h0, r1[336] } : _218_;
  assign _220_ = _219_ == 2'h0;
  assign _221_ = _219_ == 2'h1;
  assign _222_ = _219_ == 2'h2;
  function [7:0] \24797 ;
    input [7:0] a;
    input [23:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \24797  = b[7:0];
      3'b?1?:
        \24797  = b[15:8];
      3'b1??:
        \24797  = b[23:16];
      default:
        \24797  = a;
    endcase
  endfunction
  assign _223_ = \24797 (cache_out[7:0], { r1[151:144], r1[70:63], \wishbone_in.dat [7:0] }, { _222_, _221_, _220_ });
  assign _224_ = r1[0] | use_forward_rl;
  assign _225_ = use_forward_st & r1[128];
  assign _226_ = use_forward2 & r1[257];
  assign _227_ = _226_ ? 2'h2 : 2'h3;
  assign _228_ = _225_ ? 2'h1 : _227_;
  assign _229_ = _224_ ? { 1'h0, r1[336] } : _228_;
  assign _230_ = _229_ == 2'h0;
  assign _231_ = _229_ == 2'h1;
  assign _232_ = _229_ == 2'h2;
  function [7:0] \24824 ;
    input [7:0] a;
    input [23:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \24824  = b[7:0];
      3'b?1?:
        \24824  = b[15:8];
      3'b1??:
        \24824  = b[23:16];
      default:
        \24824  = a;
    endcase
  endfunction
  assign _233_ = \24824 (cache_out[15:8], { r1[159:152], r1[78:71], \wishbone_in.dat [15:8] }, { _232_, _231_, _230_ });
  assign _234_ = r1[0] | use_forward_rl;
  assign _235_ = use_forward_st & r1[129];
  assign _236_ = use_forward2 & r1[258];
  assign _237_ = _236_ ? 2'h2 : 2'h3;
  assign _238_ = _235_ ? 2'h1 : _237_;
  assign _239_ = _234_ ? { 1'h0, r1[336] } : _238_;
  assign _240_ = _239_ == 2'h0;
  assign _241_ = _239_ == 2'h1;
  assign _242_ = _239_ == 2'h2;
  function [7:0] \24851 ;
    input [7:0] a;
    input [23:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \24851  = b[7:0];
      3'b?1?:
        \24851  = b[15:8];
      3'b1??:
        \24851  = b[23:16];
      default:
        \24851  = a;
    endcase
  endfunction
  assign _243_ = \24851 (cache_out[23:16], { r1[167:160], r1[86:79], \wishbone_in.dat [23:16] }, { _242_, _241_, _240_ });
  assign _244_ = r1[0] | use_forward_rl;
  assign _245_ = use_forward_st & r1[130];
  assign _246_ = use_forward2 & r1[259];
  assign _247_ = _246_ ? 2'h2 : 2'h3;
  assign _248_ = _245_ ? 2'h1 : _247_;
  assign _249_ = _244_ ? { 1'h0, r1[336] } : _248_;
  assign _250_ = _249_ == 2'h0;
  assign _251_ = _249_ == 2'h1;
  assign _252_ = _249_ == 2'h2;
  function [7:0] \24878 ;
    input [7:0] a;
    input [23:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \24878  = b[7:0];
      3'b?1?:
        \24878  = b[15:8];
      3'b1??:
        \24878  = b[23:16];
      default:
        \24878  = a;
    endcase
  endfunction
  assign _253_ = \24878 (cache_out[31:24], { r1[175:168], r1[94:87], \wishbone_in.dat [31:24] }, { _252_, _251_, _250_ });
  assign _254_ = r1[0] | use_forward_rl;
  assign _255_ = use_forward_st & r1[131];
  assign _256_ = use_forward2 & r1[260];
  assign _257_ = _256_ ? 2'h2 : 2'h3;
  assign _258_ = _255_ ? 2'h1 : _257_;
  assign _259_ = _254_ ? { 1'h0, r1[336] } : _258_;
  assign _260_ = _259_ == 2'h0;
  assign _261_ = _259_ == 2'h1;
  assign _262_ = _259_ == 2'h2;
  function [7:0] \24905 ;
    input [7:0] a;
    input [23:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \24905  = b[7:0];
      3'b?1?:
        \24905  = b[15:8];
      3'b1??:
        \24905  = b[23:16];
      default:
        \24905  = a;
    endcase
  endfunction
  assign _263_ = \24905 (cache_out[39:32], { r1[183:176], r1[102:95], \wishbone_in.dat [39:32] }, { _262_, _261_, _260_ });
  assign _264_ = r1[0] | use_forward_rl;
  assign _265_ = use_forward_st & r1[132];
  assign _266_ = use_forward2 & r1[261];
  assign _267_ = _266_ ? 2'h2 : 2'h3;
  assign _268_ = _265_ ? 2'h1 : _267_;
  assign _269_ = _264_ ? { 1'h0, r1[336] } : _268_;
  assign _270_ = _269_ == 2'h0;
  assign _271_ = _269_ == 2'h1;
  assign _272_ = _269_ == 2'h2;
  function [7:0] \24932 ;
    input [7:0] a;
    input [23:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \24932  = b[7:0];
      3'b?1?:
        \24932  = b[15:8];
      3'b1??:
        \24932  = b[23:16];
      default:
        \24932  = a;
    endcase
  endfunction
  assign _273_ = \24932 (cache_out[47:40], { r1[191:184], r1[110:103], \wishbone_in.dat [47:40] }, { _272_, _271_, _270_ });
  assign _274_ = r1[0] | use_forward_rl;
  assign _275_ = use_forward_st & r1[133];
  assign _276_ = use_forward2 & r1[262];
  assign _277_ = _276_ ? 2'h2 : 2'h3;
  assign _278_ = _275_ ? 2'h1 : _277_;
  assign _279_ = _274_ ? { 1'h0, r1[336] } : _278_;
  assign _280_ = _279_ == 2'h0;
  assign _281_ = _279_ == 2'h1;
  assign _282_ = _279_ == 2'h2;
  function [7:0] \24959 ;
    input [7:0] a;
    input [23:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \24959  = b[7:0];
      3'b?1?:
        \24959  = b[15:8];
      3'b1??:
        \24959  = b[23:16];
      default:
        \24959  = a;
    endcase
  endfunction
  assign _283_ = \24959 (cache_out[55:48], { r1[199:192], r1[118:111], \wishbone_in.dat [55:48] }, { _282_, _281_, _280_ });
  assign _284_ = r1[0] | use_forward_rl;
  assign _285_ = use_forward_st & r1[134];
  assign _286_ = use_forward2 & r1[263];
  assign _287_ = _286_ ? 2'h2 : 2'h3;
  assign _288_ = _285_ ? 2'h1 : _287_;
  assign _289_ = _284_ ? { 1'h0, r1[336] } : _288_;
  assign _290_ = _289_ == 2'h0;
  assign _291_ = _289_ == 2'h1;
  assign _292_ = _289_ == 2'h2;
  function [7:0] \24986 ;
    input [7:0] a;
    input [23:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \24986  = b[7:0];
      3'b?1?:
        \24986  = b[15:8];
      3'b1??:
        \24986  = b[23:16];
      default:
        \24986  = a;
    endcase
  endfunction
  assign _293_ = \24986 (cache_out[63:56], { r1[207:200], r1[126:119], \wishbone_in.dat [63:56] }, { _292_, _291_, _290_ });
  assign _294_ = r1[335:334] == 2'h1;
  assign _295_ = _294_ & \wishbone_in.ack ;
  assign _296_ = _295_ ? 1'h1 : r1[337];
  assign _297_ = req_op == 3'h3;
  assign _298_ = _297_ ? 1'h1 : 1'h0;
  assign _299_ = req_op == 3'h3;
  assign _300_ = req_op == 3'h6;
  assign _301_ = _299_ | _300_;
  assign _302_ = _301_ ? 1'h1 : 1'h0;
  assign _303_ = req_op == 3'h1;
  assign _304_ = ~ r0[149];
  assign _305_ = _303_ ? _304_ : 1'h0;
  assign _306_ = _303_ ? { access_ok, r0[149] } : 2'h0;
  assign _307_ = req_op == 3'h2;
  assign _308_ = _307_ ? 1'h1 : 1'h0;
  assign _309_ = r0_valid ? r0[149] : r1[1];
  always @(posedge clk)
    _310_ <= _309_;
  always @(posedge clk)
    _311_ <= { _293_, _283_, _273_, _263_, _253_, _243_, _233_, _223_, r1[496:492], _296_, ram_wr_select, r1[491:444], ram_wr_data, tlb_req_index, tlb_hit_way, tlb_hit, _302_, req_index, _298_ };
  always @(posedge clk)
    _312_ <= _305_;
  always @(posedge clk)
    _313_ <= { _308_, _306_ };
  assign _314_ = r0[146] | r0[148];
  assign _315_ = r0_valid & _314_;
  assign _316_ = req_op == 3'h3;
  assign _317_ = req_op == 3'h2;
  assign _318_ = _316_ | _317_;
  assign _319_ = ~ r0[149];
  assign _320_ = _322_ ? 1'h1 : 1'h0;
  assign _321_ = _319_ ? _315_ : 1'h1;
  assign _322_ = _318_ & _319_;
  assign _323_ = _318_ ? _321_ : _315_;
  assign _324_ = snoop_tag_set == snoop_wrtag;
  assign _325_ = snoop_valid & _324_;
  assign _326_ = 2'h3 - snoop_index;
  assign _327_ = r1[338] ? 1'h0 : r1[338];
  assign _328_ = r0[150] ? r0[137:74] : \d_in.data ;
  assign _329_ = r0[3] ? 64'h0000000000000000 : _328_;
  assign _330_ = ~ r0[4];
  assign _331_ = r0[2] & _330_;
  assign _332_ = ~ perm_attr[2];
  assign _333_ = _331_ & _332_;
  assign _334_ = r0[3] | _333_;
  assign _335_ = _334_ ? 8'hff : r0[145:138];
  assign _336_ = req_op == 3'h4;
  assign _337_ = req_op == 3'h5;
  assign _338_ = _336_ | _337_;
  assign _339_ = req_op == 3'h7;
  assign _340_ = _338_ | _339_;
  assign _341_ = req_op == 3'h6;
  assign _342_ = _340_ | _341_;
  assign _343_ = _342_ ? 1'h1 : r1[0];
  assign _344_ = r1[0] ? r1[0] : _343_;
  assign _345_ = r1[0] ? r1[136:2] : { r0[149], req_same_tag, _335_, _329_, ra, r0[3], req_go, req_op };
  assign _346_ = _345_[10:8] - 3'h1;
  assign _347_ = _345_[2:0] == 3'h3;
  assign _348_ = _345_[2:0] == 3'h4;
  assign _349_ = _345_[2:0] == 3'h5;
  assign _350_ = ~ _345_[4];
  assign _351_ = ~ _345_[134];
  assign _352_ = _364_ ? 1'h1 : _320_;
  assign _353_ = _351_ ? _323_ : 1'h1;
  assign _354_ = _345_[2:0] == 3'h6;
  assign _355_ = _360_ ? 1'h1 : 1'h0;
  assign _356_ = _345_[2:0] == 3'h7;
  assign _357_ = _356_ ? 1'h1 : _327_;
  assign _358_ = _350_ ? 1'h0 : _344_;
  assign _359_ = _350_ ? 2'h2 : 2'h1;
  assign _360_ = _350_ & _354_;
  assign _361_ = _350_ ? _327_ : _357_;
  assign _362_ = _350_ ? 1'h1 : 1'h0;
  assign _363_ = _350_ ? 3'h1 : r1[512:510];
  assign _364_ = _350_ & _351_;
  assign _365_ = _350_ ? _353_ : _323_;
  assign _366_ = _345_[2:0] == 3'h7;
  assign _367_ = _366_ ? 1'h1 : 1'h0;
  assign _368_ = _345_[2:0] == 3'h6;
  assign _369_ = _345_[2:0] == 3'h7;
  assign _370_ = _368_ | _369_;
  assign _371_ = _345_[2:0] == 3'h0;
  assign _372_ = _345_[2:0] == 3'h1;
  assign _373_ = _345_[2:0] == 3'h2;
  function [0:0] \25305 ;
    input [0:0] a;
    input [6:0] b;
    input [6:0] s;
    (* parallel_case *)
    casez (s)
      7'b??????1:
        \25305  = b[0:0];
      7'b?????1?:
        \25305  = b[1:1];
      7'b????1??:
        \25305  = b[2:2];
      7'b???1???:
        \25305  = b[3:3];
      7'b??1????:
        \25305  = b[4:4];
      7'b?1?????:
        \25305  = b[5:5];
      7'b1??????:
        \25305  = b[6:6];
      default:
        \25305  = a;
    endcase
  endfunction
  assign _374_ = \25305 (1'hx, { _344_, _344_, _344_, _358_, _344_, _344_, _344_ }, { _373_, _372_, _371_, _370_, _349_, _348_, _347_ });
  function [1:0] \25308 ;
    input [1:0] a;
    input [13:0] b;
    input [6:0] s;
    (* parallel_case *)
    casez (s)
      7'b??????1:
        \25308  = b[1:0];
      7'b?????1?:
        \25308  = b[3:2];
      7'b????1??:
        \25308  = b[5:4];
      7'b???1???:
        \25308  = b[7:6];
      7'b??1????:
        \25308  = b[9:8];
      7'b?1?????:
        \25308  = b[11:10];
      7'b1??????:
        \25308  = b[13:12];
      default:
        \25308  = a;
    endcase
  endfunction
  assign _375_ = \25308 (2'hx, { r1[335:334], r1[335:334], r1[335:334], _359_, 4'hd, r1[335:334] }, { _373_, _372_, _371_, _370_, _349_, _348_, _347_ });
  function [0:0] \25310 ;
    input [0:0] a;
    input [6:0] b;
    input [6:0] s;
    (* parallel_case *)
    casez (s)
      7'b??????1:
        \25310  = b[0:0];
      7'b?????1?:
        \25310  = b[1:1];
      7'b????1??:
        \25310  = b[2:2];
      7'b???1???:
        \25310  = b[3:3];
      7'b??1????:
        \25310  = b[4:4];
      7'b?1?????:
        \25310  = b[5:5];
      7'b1??????:
        \25310  = b[6:6];
      default:
        \25310  = a;
    endcase
  endfunction
  assign _376_ = \25310 (1'hx, { 3'h0, _355_, 3'h0 }, { _373_, _372_, _371_, _370_, _349_, _348_, _347_ });
  function [0:0] \25312 ;
    input [0:0] a;
    input [6:0] b;
    input [6:0] s;
    (* parallel_case *)
    casez (s)
      7'b??????1:
        \25312  = b[0:0];
      7'b?????1?:
        \25312  = b[1:1];
      7'b????1??:
        \25312  = b[2:2];
      7'b???1???:
        \25312  = b[3:3];
      7'b??1????:
        \25312  = b[4:4];
      7'b?1?????:
        \25312  = b[5:5];
      7'b1??????:
        \25312  = b[6:6];
      default:
        \25312  = a;
    endcase
  endfunction
  assign _377_ = \25312 (1'hx, { _327_, _327_, _327_, _361_, _327_, 1'h1, _327_ }, { _373_, _372_, _371_, _370_, _349_, _348_, _347_ });
  function [0:0] \25314 ;
    input [0:0] a;
    input [6:0] b;
    input [6:0] s;
    (* parallel_case *)
    casez (s)
      7'b??????1:
        \25314  = b[0:0];
      7'b?????1?:
        \25314  = b[1:1];
      7'b????1??:
        \25314  = b[2:2];
      7'b???1???:
        \25314  = b[3:3];
      7'b??1????:
        \25314  = b[4:4];
      7'b?1?????:
        \25314  = b[5:5];
      7'b1??????:
        \25314  = b[6:6];
      default:
        \25314  = a;
    endcase
  endfunction
  assign _378_ = \25314 (1'hx, { 3'h0, _362_, 3'h0 }, { _373_, _372_, _371_, _370_, _349_, _348_, _347_ });
  function [0:0] \25317 ;
    input [0:0] a;
    input [6:0] b;
    input [6:0] s;
    (* parallel_case *)
    casez (s)
      7'b??????1:
        \25317  = b[0:0];
      7'b?????1?:
        \25317  = b[1:1];
      7'b????1??:
        \25317  = b[2:2];
      7'b???1???:
        \25317  = b[3:3];
      7'b??1????:
        \25317  = b[4:4];
      7'b?1?????:
        \25317  = b[5:5];
      7'b1??????:
        \25317  = b[6:6];
      default:
        \25317  = a;
    endcase
  endfunction
  assign _379_ = \25317 (1'hx, { r1[441], r1[441], r1[441], 3'h7, r1[441] }, { _373_, _372_, _371_, _370_, _349_, _348_, _347_ });
  function [0:0] \25320 ;
    input [0:0] a;
    input [6:0] b;
    input [6:0] s;
    (* parallel_case *)
    casez (s)
      7'b??????1:
        \25320  = b[0:0];
      7'b?????1?:
        \25320  = b[1:1];
      7'b????1??:
        \25320  = b[2:2];
      7'b???1???:
        \25320  = b[3:3];
      7'b??1????:
        \25320  = b[4:4];
      7'b?1?????:
        \25320  = b[5:5];
      7'b1??????:
        \25320  = b[6:6];
      default:
        \25320  = a;
    endcase
  endfunction
  assign _380_ = \25320 (1'hx, { r1[442], r1[442], r1[442], 3'h7, r1[442] }, { _373_, _372_, _371_, _370_, _349_, _348_, _347_ });
  function [0:0] \25323 ;
    input [0:0] a;
    input [6:0] b;
    input [6:0] s;
    (* parallel_case *)
    casez (s)
      7'b??????1:
        \25323  = b[0:0];
      7'b?????1?:
        \25323  = b[1:1];
      7'b????1??:
        \25323  = b[2:2];
      7'b???1???:
        \25323  = b[3:3];
      7'b??1????:
        \25323  = b[4:4];
      7'b?1?????:
        \25323  = b[5:5];
      7'b1??????:
        \25323  = b[6:6];
      default:
        \25323  = a;
    endcase
  endfunction
  assign _381_ = \25323 (1'hx, { r1[443], r1[443], r1[443], 3'h4, r1[443] }, { _373_, _372_, _371_, _370_, _349_, _348_, _347_ });
  function [2:0] \25326 ;
    input [2:0] a;
    input [20:0] b;
    input [6:0] s;
    (* parallel_case *)
    casez (s)
      7'b??????1:
        \25326  = b[2:0];
      7'b?????1?:
        \25326  = b[5:3];
      7'b????1??:
        \25326  = b[8:6];
      7'b???1???:
        \25326  = b[11:9];
      7'b??1????:
        \25326  = b[14:12];
      7'b?1?????:
        \25326  = b[17:15];
      7'b1??????:
        \25326  = b[20:18];
      default:
        \25326  = a;
    endcase
  endfunction
  assign _382_ = \25326 (3'hx, { r1[512:510], r1[512:510], r1[512:510], _363_, r1[512:510], r1[512:510], r1[512:510] }, { _373_, _372_, _371_, _370_, _349_, _348_, _347_ });
  function [0:0] \25328 ;
    input [0:0] a;
    input [6:0] b;
    input [6:0] s;
    (* parallel_case *)
    casez (s)
      7'b??????1:
        \25328  = b[0:0];
      7'b?????1?:
        \25328  = b[1:1];
      7'b????1??:
        \25328  = b[2:2];
      7'b???1???:
        \25328  = b[3:3];
      7'b??1????:
        \25328  = b[4:4];
      7'b?1?????:
        \25328  = b[5:5];
      7'b1??????:
        \25328  = b[6:6];
      default:
        \25328  = a;
    endcase
  endfunction
  assign _383_ = \25328 (1'hx, { _320_, _320_, _320_, _352_, _320_, _320_, _320_ }, { _373_, _372_, _371_, _370_, _349_, _348_, _347_ });
  function [0:0] \25330 ;
    input [0:0] a;
    input [6:0] b;
    input [6:0] s;
    (* parallel_case *)
    casez (s)
      7'b??????1:
        \25330  = b[0:0];
      7'b?????1?:
        \25330  = b[1:1];
      7'b????1??:
        \25330  = b[2:2];
      7'b???1???:
        \25330  = b[3:3];
      7'b??1????:
        \25330  = b[4:4];
      7'b?1?????:
        \25330  = b[5:5];
      7'b1??????:
        \25330  = b[6:6];
      default:
        \25330  = a;
    endcase
  endfunction
  assign _384_ = \25330 (1'hx, { _323_, _323_, _323_, _365_, _323_, _323_, _323_ }, { _373_, _372_, _371_, _370_, _349_, _348_, _347_ });
  function [0:0] \25332 ;
    input [0:0] a;
    input [6:0] b;
    input [6:0] s;
    (* parallel_case *)
    casez (s)
      7'b??????1:
        \25332  = b[0:0];
      7'b?????1?:
        \25332  = b[1:1];
      7'b????1??:
        \25332  = b[2:2];
      7'b???1???:
        \25332  = b[3:3];
      7'b??1????:
        \25332  = b[4:4];
      7'b?1?????:
        \25332  = b[5:5];
      7'b1??????:
        \25332  = b[6:6];
      default:
        \25332  = a;
    endcase
  endfunction
  assign _385_ = \25332 (1'hx, 7'h02, { _373_, _372_, _371_, _370_, _349_, _348_, _347_ });
  function [0:0] \25334 ;
    input [0:0] a;
    input [6:0] b;
    input [6:0] s;
    (* parallel_case *)
    casez (s)
      7'b??????1:
        \25334  = b[0:0];
      7'b?????1?:
        \25334  = b[1:1];
      7'b????1??:
        \25334  = b[2:2];
      7'b???1???:
        \25334  = b[3:3];
      7'b??1????:
        \25334  = b[4:4];
      7'b?1?????:
        \25334  = b[5:5];
      7'b1??????:
        \25334  = b[6:6];
      default:
        \25334  = a;
    endcase
  endfunction
  assign _386_ = \25334 (1'hx, { 3'h0, _367_, 3'h0 }, { _373_, _372_, _371_, _370_, _349_, _348_, _347_ });
  assign _387_ = r1[335:334] == 2'h0;
  assign _388_ = ~ \wishbone_in.stall ;
  assign _389_ = _388_ & r1[442];
  assign _390_ = r1[342:340] == r1[501:499];
  assign _391_ = _394_ ? 1'h0 : r1[442];
  assign _392_ = r1[342:340] + 3'h1;
  assign _393_ = _389_ ? { r1[368:343], _392_ } : r1[368:340];
  assign _394_ = _389_ & _390_;
  assign _395_ = 3'h7 - r1[494:492];
  assign _396_ = r1[0] & r1[135];
  assign _397_ = r1[336] & _345_[4];
  assign _398_ = r1[4:2] == 3'h4;
  assign _399_ = _397_ | _398_;
  assign _400_ = _396_ & _399_;
  assign _401_ = { 27'h0000000, r1[496:492] } == { 27'h0000000, r1[14:10] };
  assign _402_ = _400_ & _401_;
  assign _403_ = ~ r1[1];
  assign _404_ = _423_ ? 1'h1 : _320_;
  assign _405_ = _403_ ? _323_ : 1'h1;
  assign _406_ = _418_ ? 1'h0 : _344_;
  assign _407_ = _420_ ? 1'h1 : 1'h0;
  assign _408_ = _402_ & _403_;
  assign _409_ = _424_ ? _405_ : _323_;
  assign _410_ = r1[494:492] == r1[501:499];
  assign _411_ = 2'h3 - r1[498:497];
  assign _412_ = ~ r1[336];
  assign _413_ = _419_ ? 2'h0 : r1[335:334];
  assign _414_ = _421_ ? 1'h0 : r1[441];
  assign _415_ = _425_ ? _412_ : 1'h0;
  assign _416_ = r1[494:492] + 3'h1;
  assign _417_ = \wishbone_in.ack  ? { _625_, _623_, _621_, _619_ } : { _611_, _609_, _607_, _605_ };
  assign _418_ = \wishbone_in.ack  & _402_;
  assign _419_ = \wishbone_in.ack  & _410_;
  assign _420_ = \wishbone_in.ack  & _402_;
  assign _421_ = \wishbone_in.ack  & _410_;
  assign _422_ = \wishbone_in.ack  ? { r1[496:495], _416_ } : r1[496:492];
  assign _423_ = \wishbone_in.ack  & _408_;
  assign _424_ = \wishbone_in.ack  & _402_;
  assign _425_ = \wishbone_in.ack  & _410_;
  assign _426_ = r1[335:334] == 2'h1;
  assign _427_ = ~ r1[442];
  assign _428_ = r1[513] != r1[514];
  assign _429_ = r1[512:510] + 3'h1;
  assign _430_ = r1[512:510] - 3'h1;
  assign _431_ = r1[513] ? _429_ : _430_;
  assign _432_ = _428_ ? _431_ : r1[512:510];
  assign _433_ = ~ \wishbone_in.stall ;
  assign _434_ = _345_[3] ? _345_[12:8] : r1[344:340];
  assign _435_ = _457_ ? _345_[132:61] : r1[440:369];
  assign _436_ = _432_ < 3'h7;
  assign _437_ = _436_ & _345_[133];
  assign _438_ = ~ _345_[4];
  assign _439_ = _437_ & _438_;
  assign _440_ = _345_[2:0] == 3'h7;
  assign _441_ = _345_[2:0] == 3'h6;
  assign _442_ = _440_ | _441_;
  assign _443_ = _439_ & _442_;
  assign _444_ = _345_[2:0] == 3'h6;
  assign _445_ = _455_ ? 1'h1 : 1'h0;
  assign _446_ = _454_ ? 1'h0 : _344_;
  assign _447_ = _443_ & _444_;
  assign _448_ = _443_ ? 1'h1 : 1'h0;
  assign _449_ = _443_ ? 1'h1 : 1'h0;
  assign _450_ = _459_ ? _345_[12:8] : r1[496:492];
  assign _451_ = _460_ ? 1'h1 : 1'h0;
  assign _452_ = _461_ ? 1'h1 : _320_;
  assign _453_ = _443_ ? 1'h0 : 1'h1;
  assign _454_ = _433_ & _443_;
  assign _455_ = _433_ & _447_;
  assign _456_ = _433_ ? { _434_, _448_ } : { r1[344:340], 1'h0 };
  assign _457_ = _433_ & _345_[3];
  assign _458_ = _433_ ? _449_ : r1[442];
  assign _459_ = _433_ & _443_;
  assign _460_ = _433_ & _443_;
  assign _461_ = _433_ & _443_;
  assign _462_ = _433_ ? _453_ : _427_;
  assign _463_ = _432_ == 3'h1;
  assign _464_ = _462_ & _463_;
  assign _465_ = _467_ ? 2'h0 : r1[335:334];
  assign _466_ = _464_ ? 2'h0 : { _458_, r1[441] };
  assign _467_ = \wishbone_in.ack  & _464_;
  assign _468_ = \wishbone_in.ack  ? _466_ : { _458_, r1[441] };
  assign _469_ = \wishbone_in.ack  ? 1'h1 : 1'h0;
  assign _470_ = r1[335:334] == 2'h2;
  assign _471_ = ~ \wishbone_in.stall ;
  assign _472_ = _471_ ? 1'h0 : r1[442];
  assign _473_ = ~ r1[1];
  assign _474_ = _480_ ? 1'h1 : _320_;
  assign _475_ = _473_ ? _323_ : 1'h1;
  assign _476_ = \wishbone_in.ack  ? 1'h0 : _344_;
  assign _477_ = \wishbone_in.ack  ? 2'h0 : r1[335:334];
  assign _478_ = \wishbone_in.ack  ? 1'h1 : 1'h0;
  assign _479_ = \wishbone_in.ack  ? 2'h0 : { _472_, r1[441] };
  assign _480_ = \wishbone_in.ack  & _473_;
  assign _481_ = \wishbone_in.ack  ? _475_ : _323_;
  assign _482_ = r1[335:334] == 2'h3;
  function [3:0] \25630 ;
    input [3:0] a;
    input [15:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25630  = b[3:0];
      4'b??1?:
        \25630  = b[7:4];
      4'b?1??:
        \25630  = b[11:8];
      4'b1???:
        \25630  = b[15:12];
      default:
        \25630  = a;
    endcase
  endfunction
  assign _483_ = \25630 (4'hx, { _611_, _609_, _607_, _605_, _611_, _609_, _607_, _605_, _417_, _611_, _609_, _607_, _605_ }, { _482_, _470_, _426_, _387_ });
  function [0:0] \25632 ;
    input [0:0] a;
    input [3:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25632  = b[0:0];
      4'b??1?:
        \25632  = b[1:1];
      4'b?1??:
        \25632  = b[2:2];
      4'b1???:
        \25632  = b[3:3];
      default:
        \25632  = a;
    endcase
  endfunction
  assign _484_ = \25632 (1'hx, { _476_, _446_, _406_, _374_ }, { _482_, _470_, _426_, _387_ });
  assign _485_ = _342_ ? req_same_tag : r1[135];
  assign _486_ = r1[0] ? r1[135] : _485_;
  function [0:0] \25639 ;
    input [0:0] a;
    input [3:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25639  = b[0:0];
      4'b??1?:
        \25639  = b[1:1];
      4'b?1??:
        \25639  = b[2:2];
      4'b1???:
        \25639  = b[3:3];
      default:
        \25639  = a;
    endcase
  endfunction
  assign _487_ = \25639 (1'hx, { _486_, _486_, _486_, 1'h1 }, { _482_, _470_, _426_, _387_ });
  function [1:0] \25641 ;
    input [1:0] a;
    input [7:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25641  = b[1:0];
      4'b??1?:
        \25641  = b[3:2];
      4'b?1??:
        \25641  = b[5:4];
      4'b1???:
        \25641  = b[7:6];
      default:
        \25641  = a;
    endcase
  endfunction
  assign _488_ = \25641 (2'hx, { _477_, _465_, _413_, _375_ }, { _482_, _470_, _426_, _387_ });
  function [0:0] \25644 ;
    input [0:0] a;
    input [3:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25644  = b[0:0];
      4'b??1?:
        \25644  = b[1:1];
      4'b?1??:
        \25644  = b[2:2];
      4'b1???:
        \25644  = b[3:3];
      default:
        \25644  = a;
    endcase
  endfunction
  assign _489_ = \25644 (1'hx, { r1[336], r1[336], r1[336], _345_[4] }, { _482_, _470_, _426_, _387_ });
  function [0:0] \25646 ;
    input [0:0] a;
    input [3:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25646  = b[0:0];
      4'b??1?:
        \25646  = b[1:1];
      4'b?1??:
        \25646  = b[2:2];
      4'b1???:
        \25646  = b[3:3];
      default:
        \25646  = a;
    endcase
  endfunction
  assign _490_ = \25646 (1'hx, { 1'h0, _445_, 1'h0, _376_ }, { _482_, _470_, _426_, _387_ });
  function [0:0] \25648 ;
    input [0:0] a;
    input [3:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25648  = b[0:0];
      4'b??1?:
        \25648  = b[1:1];
      4'b?1??:
        \25648  = b[2:2];
      4'b1???:
        \25648  = b[3:3];
      default:
        \25648  = a;
    endcase
  endfunction
  assign _491_ = \25648 (1'hx, { _327_, _327_, _327_, _377_ }, { _482_, _470_, _426_, _387_ });
  function [0:0] \25651 ;
    input [0:0] a;
    input [3:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25651  = b[0:0];
      4'b??1?:
        \25651  = b[1:1];
      4'b?1??:
        \25651  = b[2:2];
      4'b1???:
        \25651  = b[3:3];
      default:
        \25651  = a;
    endcase
  endfunction
  assign _492_ = \25651 (1'hx, { _478_, _456_[0], _407_, _378_ }, { _482_, _470_, _426_, _387_ });
  function [4:0] \25657 ;
    input [4:0] a;
    input [19:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25657  = b[4:0];
      4'b??1?:
        \25657  = b[9:5];
      4'b?1??:
        \25657  = b[14:10];
      4'b1???:
        \25657  = b[19:15];
      default:
        \25657  = a;
    endcase
  endfunction
  assign _493_ = \25657 (5'hxx, { r1[344:340], _456_[5:1], _393_[4:0], _345_[12:8] }, { _482_, _470_, _426_, _387_ });
  function [23:0] \25662 ;
    input [23:0] a;
    input [95:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25662  = b[23:0];
      4'b??1?:
        \25662  = b[47:24];
      4'b?1??:
        \25662  = b[71:48];
      4'b1???:
        \25662  = b[95:72];
      default:
        \25662  = a;
    endcase
  endfunction
  assign _494_ = \25662 (24'hxxxxxx, { r1[368:345], r1[368:345], _393_[28:5], _345_[36:13] }, { _482_, _470_, _426_, _387_ });
  function [63:0] \25666 ;
    input [63:0] a;
    input [255:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25666  = b[63:0];
      4'b??1?:
        \25666  = b[127:64];
      4'b?1??:
        \25666  = b[191:128];
      4'b1???:
        \25666  = b[255:192];
      default:
        \25666  = a;
    endcase
  endfunction
  assign _495_ = \25666 (64'hxxxxxxxxxxxxxxxx, { r1[432:369], _435_[63:0], r1[432:369], _345_[124:61] }, { _482_, _470_, _426_, _387_ });
  function [7:0] \25670 ;
    input [7:0] a;
    input [31:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25670  = b[7:0];
      4'b??1?:
        \25670  = b[15:8];
      4'b?1??:
        \25670  = b[23:16];
      4'b1???:
        \25670  = b[31:24];
      default:
        \25670  = a;
    endcase
  endfunction
  assign _496_ = \25670 (8'hxx, { r1[440:433], _435_[71:64], r1[440:433], _345_[132:125] }, { _482_, _470_, _426_, _387_ });
  function [0:0] \25674 ;
    input [0:0] a;
    input [3:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25674  = b[0:0];
      4'b??1?:
        \25674  = b[1:1];
      4'b?1??:
        \25674  = b[2:2];
      4'b1???:
        \25674  = b[3:3];
      default:
        \25674  = a;
    endcase
  endfunction
  assign _497_ = \25674 (1'hx, { _479_[0], _468_[0], _414_, _379_ }, { _482_, _470_, _426_, _387_ });
  function [0:0] \25678 ;
    input [0:0] a;
    input [3:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25678  = b[0:0];
      4'b??1?:
        \25678  = b[1:1];
      4'b?1??:
        \25678  = b[2:2];
      4'b1???:
        \25678  = b[3:3];
      default:
        \25678  = a;
    endcase
  endfunction
  assign _498_ = \25678 (1'hx, { _479_[1], _468_[1], _391_, _380_ }, { _482_, _470_, _426_, _387_ });
  function [0:0] \25681 ;
    input [0:0] a;
    input [3:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25681  = b[0:0];
      4'b??1?:
        \25681  = b[1:1];
      4'b?1??:
        \25681  = b[2:2];
      4'b1???:
        \25681  = b[3:3];
      default:
        \25681  = a;
    endcase
  endfunction
  assign _499_ = \25681 (1'hx, { r1[443], r1[443], r1[443], _381_ }, { _482_, _470_, _426_, _387_ });
  function [47:0] \25684 ;
    input [47:0] a;
    input [191:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25684  = b[47:0];
      4'b??1?:
        \25684  = b[95:48];
      4'b?1??:
        \25684  = b[143:96];
      4'b1???:
        \25684  = b[191:144];
      default:
        \25684  = a;
    endcase
  endfunction
  assign _500_ = \25684 (48'hxxxxxxxxxxxx, { r1[491:444], r1[491:444], r1[491:444], _345_[60:13] }, { _482_, _470_, _426_, _387_ });
  function [4:0] \25687 ;
    input [4:0] a;
    input [19:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25687  = b[4:0];
      4'b??1?:
        \25687  = b[9:5];
      4'b?1??:
        \25687  = b[14:10];
      4'b1???:
        \25687  = b[19:15];
      default:
        \25687  = a;
    endcase
  endfunction
  assign _501_ = \25687 (5'hxx, { r1[496:492], _450_, _422_, _345_[12:8] }, { _482_, _470_, _426_, _387_ });
  function [1:0] \25690 ;
    input [1:0] a;
    input [7:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25690  = b[1:0];
      4'b??1?:
        \25690  = b[3:2];
      4'b?1??:
        \25690  = b[5:4];
      4'b1???:
        \25690  = b[7:6];
      default:
        \25690  = a;
    endcase
  endfunction
  assign _502_ = \25690 (2'hx, { r1[498:497], r1[498:497], r1[498:497], _345_[12:11] }, { _482_, _470_, _426_, _387_ });
  function [2:0] \25693 ;
    input [2:0] a;
    input [11:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25693  = b[2:0];
      4'b??1?:
        \25693  = b[5:3];
      4'b?1??:
        \25693  = b[8:6];
      4'b1???:
        \25693  = b[11:9];
      default:
        \25693  = a;
    endcase
  endfunction
  assign _503_ = \25693 (3'hx, { r1[501:499], r1[501:499], r1[501:499], _346_ }, { _482_, _470_, _426_, _387_ });
  function [0:0] \25697 ;
    input [0:0] a;
    input [3:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25697  = b[0:0];
      4'b??1?:
        \25697  = b[1:1];
      4'b?1??:
        \25697  = b[2:2];
      4'b1???:
        \25697  = b[3:3];
      default:
        \25697  = a;
    endcase
  endfunction
  assign _504_ = \25697 (1'hx, { r1[502], r1[502], _642_, 1'h0 }, { _482_, _470_, _426_, _387_ });
  function [0:0] \25701 ;
    input [0:0] a;
    input [3:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25701  = b[0:0];
      4'b??1?:
        \25701  = b[1:1];
      4'b?1??:
        \25701  = b[2:2];
      4'b1???:
        \25701  = b[3:3];
      default:
        \25701  = a;
    endcase
  endfunction
  assign _505_ = \25701 (1'hx, { r1[503], r1[503], _644_, 1'h0 }, { _482_, _470_, _426_, _387_ });
  function [0:0] \25705 ;
    input [0:0] a;
    input [3:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25705  = b[0:0];
      4'b??1?:
        \25705  = b[1:1];
      4'b?1??:
        \25705  = b[2:2];
      4'b1???:
        \25705  = b[3:3];
      default:
        \25705  = a;
    endcase
  endfunction
  assign _506_ = \25705 (1'hx, { r1[504], r1[504], _646_, 1'h0 }, { _482_, _470_, _426_, _387_ });
  function [0:0] \25709 ;
    input [0:0] a;
    input [3:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25709  = b[0:0];
      4'b??1?:
        \25709  = b[1:1];
      4'b?1??:
        \25709  = b[2:2];
      4'b1???:
        \25709  = b[3:3];
      default:
        \25709  = a;
    endcase
  endfunction
  assign _507_ = \25709 (1'hx, { r1[505], r1[505], _648_, 1'h0 }, { _482_, _470_, _426_, _387_ });
  function [0:0] \25713 ;
    input [0:0] a;
    input [3:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25713  = b[0:0];
      4'b??1?:
        \25713  = b[1:1];
      4'b?1??:
        \25713  = b[2:2];
      4'b1???:
        \25713  = b[3:3];
      default:
        \25713  = a;
    endcase
  endfunction
  assign _508_ = \25713 (1'hx, { r1[506], r1[506], _650_, 1'h0 }, { _482_, _470_, _426_, _387_ });
  function [0:0] \25717 ;
    input [0:0] a;
    input [3:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25717  = b[0:0];
      4'b??1?:
        \25717  = b[1:1];
      4'b?1??:
        \25717  = b[2:2];
      4'b1???:
        \25717  = b[3:3];
      default:
        \25717  = a;
    endcase
  endfunction
  assign _509_ = \25717 (1'hx, { r1[507], r1[507], _652_, 1'h0 }, { _482_, _470_, _426_, _387_ });
  function [0:0] \25721 ;
    input [0:0] a;
    input [3:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25721  = b[0:0];
      4'b??1?:
        \25721  = b[1:1];
      4'b?1??:
        \25721  = b[2:2];
      4'b1???:
        \25721  = b[3:3];
      default:
        \25721  = a;
    endcase
  endfunction
  assign _510_ = \25721 (1'hx, { r1[508], r1[508], _654_, 1'h0 }, { _482_, _470_, _426_, _387_ });
  function [0:0] \25725 ;
    input [0:0] a;
    input [3:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25725  = b[0:0];
      4'b??1?:
        \25725  = b[1:1];
      4'b?1??:
        \25725  = b[2:2];
      4'b1???:
        \25725  = b[3:3];
      default:
        \25725  = a;
    endcase
  endfunction
  assign _511_ = \25725 (1'hx, { r1[509], r1[509], _656_, 1'h0 }, { _482_, _470_, _426_, _387_ });
  function [2:0] \25728 ;
    input [2:0] a;
    input [11:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25728  = b[2:0];
      4'b??1?:
        \25728  = b[5:3];
      4'b?1??:
        \25728  = b[8:6];
      4'b1???:
        \25728  = b[11:9];
      default:
        \25728  = a;
    endcase
  endfunction
  assign _512_ = \25728 (3'hx, { r1[512:510], _432_, r1[512:510], _382_ }, { _482_, _470_, _426_, _387_ });
  function [0:0] \25730 ;
    input [0:0] a;
    input [3:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25730  = b[0:0];
      4'b??1?:
        \25730  = b[1:1];
      4'b?1??:
        \25730  = b[2:2];
      4'b1???:
        \25730  = b[3:3];
      default:
        \25730  = a;
    endcase
  endfunction
  assign _513_ = \25730 (1'hx, { 1'h0, _451_, 2'h0 }, { _482_, _470_, _426_, _387_ });
  function [0:0] \25732 ;
    input [0:0] a;
    input [3:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25732  = b[0:0];
      4'b??1?:
        \25732  = b[1:1];
      4'b?1??:
        \25732  = b[2:2];
      4'b1???:
        \25732  = b[3:3];
      default:
        \25732  = a;
    endcase
  endfunction
  assign _514_ = \25732 (1'hx, { 1'h0, _469_, 2'h0 }, { _482_, _470_, _426_, _387_ });
  function [0:0] \25734 ;
    input [0:0] a;
    input [3:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25734  = b[0:0];
      4'b??1?:
        \25734  = b[1:1];
      4'b?1??:
        \25734  = b[2:2];
      4'b1???:
        \25734  = b[3:3];
      default:
        \25734  = a;
    endcase
  endfunction
  assign _515_ = \25734 (1'hx, { _474_, _452_, _404_, _383_ }, { _482_, _470_, _426_, _387_ });
  function [0:0] \25736 ;
    input [0:0] a;
    input [3:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25736  = b[0:0];
      4'b??1?:
        \25736  = b[1:1];
      4'b?1??:
        \25736  = b[2:2];
      4'b1???:
        \25736  = b[3:3];
      default:
        \25736  = a;
    endcase
  endfunction
  assign _516_ = \25736 (1'hx, { _481_, _323_, _409_, _384_ }, { _482_, _470_, _426_, _387_ });
  assign _517_ = _342_ ? r0[149] : r1[136];
  assign _518_ = r1[0] ? r1[136] : _517_;
  assign _519_ = _342_ ? { _335_, _329_, ra, r0[3], req_go, req_op } : r1[134:2];
  assign _520_ = r1[0] ? r1[134:2] : _519_;
  function [0:0] \25748 ;
    input [0:0] a;
    input [3:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25748  = b[0:0];
      4'b??1?:
        \25748  = b[1:1];
      4'b?1??:
        \25748  = b[2:2];
      4'b1???:
        \25748  = b[3:3];
      default:
        \25748  = a;
    endcase
  endfunction
  assign _521_ = \25748 (1'hx, { 3'h0, _385_ }, { _482_, _470_, _426_, _387_ });
  function [0:0] \25750 ;
    input [0:0] a;
    input [3:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25750  = b[0:0];
      4'b??1?:
        \25750  = b[1:1];
      4'b?1??:
        \25750  = b[2:2];
      4'b1???:
        \25750  = b[3:3];
      default:
        \25750  = a;
    endcase
  endfunction
  assign _522_ = \25750 (1'hx, { 3'h0, _386_ }, { _482_, _470_, _426_, _387_ });
  function [0:0] \25752 ;
    input [0:0] a;
    input [3:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \25752  = b[0:0];
      4'b??1?:
        \25752  = b[1:1];
      4'b?1??:
        \25752  = b[2:2];
      4'b1???:
        \25752  = b[3:3];
      default:
        \25752  = a;
    endcase
  endfunction
  assign _523_ = \25752 (1'hx, { 2'h0, _415_, 1'h0 }, { _482_, _470_, _426_, _387_ });
  assign _524_ = rst ? 4'h0 : _483_;
  assign _525_ = rst ? 1'h0 : _484_;
  assign _526_ = rst ? r1[136:2] : { _518_, _487_, _520_ };
  assign _527_ = rst ? 2'h0 : _488_;
  assign _528_ = rst ? r1[338:336] : { _491_, _490_, _489_ };
  assign _529_ = rst ? 30'h00000000 : { _494_, _493_, _492_ };
  assign _530_ = rst ? r1[440:369] : { _496_, _495_ };
  assign _531_ = rst ? 2'h0 : { _498_, _497_ };
  assign _532_ = rst ? r1[514:443] : { _514_, _513_, _512_, _511_, _510_, _509_, _508_, _507_, _506_, _505_, _504_, _503_, _502_, _501_, _500_, _499_ };
  assign _533_ = rst ? 1'h0 : _515_;
  assign _534_ = rst ? 1'h0 : _516_;
  assign _535_ = rst ? 3'h0 : { _523_, _522_, _521_ };
  assign _536_ = ~ rst;
  assign _537_ = r1[338] & _536_;
  always @(posedge clk)
    _538_ <= _524_;
  always @(posedge clk)
    _539_ <= _525_;
  always @(posedge clk)
    _540_ <= _526_;
  always @(posedge clk)
    _541_ <= { _533_, _532_, _531_, _530_, _529_, _528_, _527_ };
  always @(posedge clk)
    _542_ <= _534_;
  always @(posedge clk)
    _543_ <= { tlb_miss, _535_ };
  assign _552_ = _043_ ? dtlb_valids[3:2] : dtlb_valids[1:0];
  assign _553_ = _057_ ? tlb_pte_way[127:64] : tlb_pte_way[63:0];
  assign _554_ = ~ _072_;
  assign _555_ = ~ tlb_hit_way;
  assign _556_ = _554_ & _555_;
  assign _557_ = _554_ & tlb_hit_way;
  assign _558_ = _072_ & _555_;
  assign _559_ = _072_ & tlb_hit_way;
  assign _560_ = _556_ & tlb_hit;
  assign _561_ = _560_ ? 1'h0 : dtlb_valids[0];
  assign _562_ = _557_ & tlb_hit;
  assign _563_ = _562_ ? 1'h0 : dtlb_valids[1];
  assign _564_ = _558_ & tlb_hit;
  assign _565_ = _564_ ? 1'h0 : dtlb_valids[2];
  assign _566_ = _559_ & tlb_hit;
  assign _567_ = _566_ ? 1'h0 : dtlb_valids[3];
  assign _568_ = _073_ ? tlb_plru_victim[1] : tlb_plru_victim[0];
  assign _569_ = ~ _074_;
  assign _570_ = _569_ ? r0[73:23] : tlb_tag_way[50:0];
  assign _571_ = _074_ ? r0[73:23] : tlb_tag_way[101:51];
  assign _572_ = ~ _074_;
  assign _573_ = _572_ ? r0[137:74] : tlb_pte_way[63:0];
  assign _574_ = _074_ ? r0[137:74] : tlb_pte_way[127:64];
  assign _575_ = ~ _075_;
  assign _576_ = ~ _074_;
  assign _577_ = _575_ & _576_;
  assign _578_ = _575_ & _074_;
  assign _579_ = _075_ & _576_;
  assign _580_ = _075_ & _074_;
  assign _581_ = _577_ & _069_;
  assign _582_ = _581_ ? 1'h1 : dtlb_valids[0];
  assign _583_ = _578_ & _069_;
  assign _584_ = _583_ ? 1'h1 : dtlb_valids[1];
  assign _585_ = _579_ & _069_;
  assign _586_ = _585_ ? 1'h1 : dtlb_valids[2];
  assign _587_ = _580_ & _069_;
  assign _588_ = _587_ ? 1'h1 : dtlb_valids[3];
  assign _591_ = tlb_hit_way ? _119_ : _109_;
  assign _592_ = tlb_hit_way ? _121_ : _111_;
  assign _593_ = tlb_hit_way ? _123_ : _113_;
  assign _597_ = _154_[2] ? _596_ : _595_;
  assign _598_ = ~ _326_[1];
  assign _599_ = ~ _326_[0];
  assign _600_ = _598_ & _599_;
  assign _601_ = _598_ & _326_[0];
  assign _602_ = _326_[1] & _599_;
  assign _603_ = _326_[1] & _326_[0];
  assign _604_ = _600_ & _325_;
  assign _605_ = _604_ ? 1'h0 : cache_valids[0];
  assign _606_ = _601_ & _325_;
  assign _607_ = _606_ ? 1'h0 : cache_valids[1];
  assign _608_ = _602_ & _325_;
  assign _609_ = _608_ ? 1'h0 : cache_valids[2];
  assign _610_ = _603_ & _325_;
  assign _611_ = _610_ ? 1'h0 : cache_valids[3];
  assign _612_ = ~ _411_[1];
  assign _613_ = ~ _411_[0];
  assign _614_ = _612_ & _613_;
  assign _615_ = _612_ & _411_[0];
  assign _616_ = _411_[1] & _613_;
  assign _617_ = _411_[1] & _411_[0];
  assign _618_ = _614_ & _410_;
  assign _619_ = _618_ ? 1'h1 : _605_;
  assign _620_ = _615_ & _410_;
  assign _621_ = _620_ ? 1'h1 : _607_;
  assign _622_ = _616_ & _410_;
  assign _623_ = _622_ ? 1'h1 : _609_;
  assign _624_ = _617_ & _410_;
  assign _625_ = _624_ ? 1'h1 : _611_;
  assign _626_ = ~ _395_[2];
  assign _627_ = ~ _395_[1];
  assign _628_ = _626_ & _627_;
  assign _629_ = _626_ & _395_[1];
  assign _630_ = _395_[2] & _627_;
  assign _631_ = _395_[2] & _395_[1];
  assign _632_ = ~ _395_[0];
  assign _633_ = _628_ & _632_;
  assign _634_ = _628_ & _395_[0];
  assign _635_ = _629_ & _632_;
  assign _636_ = _629_ & _395_[0];
  assign _637_ = _630_ & _632_;
  assign _638_ = _630_ & _395_[0];
  assign _639_ = _631_ & _632_;
  assign _640_ = _631_ & _395_[0];
  assign _641_ = _633_ & \wishbone_in.ack ;
  assign _642_ = _641_ ? 1'h1 : r1[502];
  assign _643_ = _634_ & \wishbone_in.ack ;
  assign _644_ = _643_ ? 1'h1 : r1[503];
  assign _645_ = _635_ & \wishbone_in.ack ;
  assign _646_ = _645_ ? 1'h1 : r1[504];
  assign _647_ = _636_ & \wishbone_in.ack ;
  assign _648_ = _647_ ? 1'h1 : r1[505];
  assign _649_ = _637_ & \wishbone_in.ack ;
  assign _650_ = _649_ ? 1'h1 : r1[506];
  assign _651_ = _638_ & \wishbone_in.ack ;
  assign _652_ = _651_ ? 1'h1 : r1[507];
  assign _653_ = _639_ & \wishbone_in.ack ;
  assign _654_ = _653_ ? 1'h1 : r1[508];
  assign _655_ = _640_ & \wishbone_in.ack ;
  assign _656_ = _655_ ? 1'h1 : r1[509];
  plru_1 \maybe_tlb_plrus.tlb_plrus:1.tlb_plru  (
    .acc(\maybe_tlb_plrus.tlb_plrus:1.tlb_plru_acc ),
    .acc_en(\maybe_tlb_plrus.tlb_plrus:1.tlb_plru_acc_en ),
    .clk(clk),
    .lru(_046_),
    .rst(rst)
  );
  plru_1 \maybe_tlb_plrus.tlb_plrus:2.tlb_plru  (
    .acc(\maybe_tlb_plrus.tlb_plrus:2.tlb_plru_acc ),
    .acc_en(\maybe_tlb_plrus.tlb_plrus:2.tlb_plru_acc_en ),
    .clk(clk),
    .lru(_049_),
    .rst(rst)
  );
  cache_ram_5_64_1489f923c4dca729178b3e3233458550d8dddf29 \rams:1.way  (
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .clk(clk),
    .rd_addr(\rams:1.rd_addr ),
    .rd_data(_208_),
    .rd_en(\rams:1.do_read ),
    .wr_addr(\rams:1.wr_addr ),
    .wr_data(ram_wr_data),
    .wr_sel(\rams:1.wr_sel_m )
  );
  assign cache_tag_set = _551_;
  assign cache_valids = _538_;
  assign dtlb_valids = _078_;
  assign r0 = _032_;
  assign r0_full = _033_;
  assign r1 = { _313_, _542_, _312_, _541_, _311_, _540_, _310_, _539_ };
  assign ev = { _087_, _543_ };
  assign reservation = _202_;
  assign req_index = r0[17:16];
  assign req_row = r0[17:13];
  assign req_op = _180_;
  assign req_same_tag = _137_;
  assign req_go = _103_;
  assign early_req_row = _183_;
  assign cancel_store = _192_;
  assign set_rsrv = _193_;
  assign clear_rsrv = _194_;
  assign r0_valid = _040_;
  assign r0_stall = _036_;
  assign use_forward_st = _144_;
  assign use_forward_rl = _145_;
  assign use_forward2 = _148_;
  assign cache_out = \rams:1.dout ;
  assign ram_wr_data = _204_;
  assign ram_wr_select = _207_;
  assign tlb_tag_way = _545_;
  assign tlb_pte_way = _547_;
  assign tlb_valid_way = _045_;
  assign tlb_req_index = r0[22];
  assign tlb_hit = _059_;
  assign tlb_hit_way = _057_;
  assign pte = _060_;
  assign ra = _066_;
  assign valid_ra = _062_;
  assign perm_attr = _067_;
  assign rc_ok = _159_;
  assign perm_ok = _164_;
  assign access_ok = _166_;
  assign tlb_miss = _065_;
  assign tlb_plru_victim = { \maybe_tlb_plrus.tlb_plrus:1.tlb_plru_out , \maybe_tlb_plrus.tlb_plrus:2.tlb_plru_out  };
  assign snoop_tag_set = _549_;
  assign snoop_valid = _096_;
  assign snoop_wrtag = _097_;
  assign snoop_index = _098_;
  assign \stage_0.r  = _034_;
  assign \maybe_tlb_plrus.tlb_plrus:1.tlb_plru_acc  = r1[142];
  assign \maybe_tlb_plrus.tlb_plrus:1.tlb_plru_acc_en  = _048_;
  assign \maybe_tlb_plrus.tlb_plrus:1.tlb_plru_out  = _046_;
  assign \maybe_tlb_plrus.tlb_plrus:2.tlb_plru_acc  = r1[142];
  assign \maybe_tlb_plrus.tlb_plrus:2.tlb_plru_acc_en  = _051_;
  assign \maybe_tlb_plrus.tlb_plrus:2.tlb_plru_out  = _049_;
  assign \rams:1.do_read  = 1'h1;
  assign \rams:1.rd_addr  = early_req_row;
  assign \rams:1.wr_addr  = r1[496:492];
  assign \rams:1.wr_sel_m  = _213_;
  assign \rams:1.dout  = _208_;
  assign \d_out.valid  = r1[515];
  assign \d_out.data  = r1[333:270];
  assign \d_out.store_done  = _203_;
  assign \d_out.error  = r1[516];
  assign \d_out.cache_paradox  = r1[519];
  assign \m_out.stall  = 1'h0;
  assign \m_out.done  = r1[517];
  assign \m_out.err  = r1[518];
  assign \m_out.data  = r1[333:270];
  assign stall_out = r0_stall;
  assign \wishbone_out.adr  = r1[368:340];
  assign \wishbone_out.dat  = r1[432:369];
  assign \wishbone_out.sel  = r1[440:433];
  assign \wishbone_out.cyc  = r1[441];
  assign \wishbone_out.stb  = r1[442];
  assign \wishbone_out.we  = r1[443];
  assign \events.load_miss  = ev[0];
  assign \events.store_miss  = ev[1];
  assign \events.dcache_refill  = ev[2];
  assign \events.dtlb_miss  = ev[3];
  assign \events.dtlb_miss_resolved  = ev[4];
  assign log_out = 20'hzzzzz;
endmodule