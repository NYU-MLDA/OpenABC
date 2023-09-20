module icache_64_8_4_1_4_12_0_5ba93c9db0cff93f52b521d7420e43f6eda2784f(

`ifdef USE_POWER_PINS
  vccd1, vssd1,
`endif
  clk, rst, \i_in.req , \i_in.virt_mode , \i_in.priv_mode , \i_in.big_endian , \i_in.stop_mark , \i_in.predicted , \i_in.pred_ntaken , \i_in.nia , \m_in.tlbld , \m_in.tlbie , \m_in.doall , \m_in.addr , \m_in.pte , stall_in, flush_in, inval_in, \wishbone_in.dat , \wishbone_in.ack , \wishbone_in.stall , \wb_snoop_in.adr , \wb_snoop_in.dat , \wb_snoop_in.sel , \wb_snoop_in.cyc , \wb_snoop_in.stb , \wb_snoop_in.we , \i_out.valid , \i_out.stop_mark , \i_out.fetch_failed , \i_out.nia , \i_out.insn , \i_out.big_endian , \i_out.next_predicted , \i_out.next_pred_ntaken , stall_out, \wishbone_out.adr , \wishbone_out.dat , \wishbone_out.sel , \wishbone_out.cyc , \wishbone_out.stb , \wishbone_out.we , \events.icache_miss , \events.itlb_miss_resolved , log_out);
`ifdef USE_POWER_PINS
  inout vccd1;
  inout vssd1;
`endif
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire [48:0] _004_;
  wire [48:0] _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire [48:0] _010_;
  wire [48:0] _011_;
  wire [63:0] _012_;
  wire _013_;
  wire [63:0] _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire [1:0] _018_;
  wire [1:0] _019_;
  wire _020_;
  wire [1:0] _021_;
  wire _022_;
  wire _023_;
  wire [55:0] _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire [1:0] _030_;
  wire [1:0] _031_;
  wire _032_;
  wire _033_;
  wire [1:0] _034_;
  wire [1:0] _035_;
  wire [3:0] _036_;
  wire [3:0] _037_;
  reg [3:0] _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire [1:0] _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire [2:0] _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire [1:0] _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire [64:0] _074_;
  wire _075_;
  reg [66:0] _076_;
  wire _077_;
  wire _078_;
  wire [1:0] _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire [1:0] _083_;
  wire [3:0] _084_;
  wire _085_;
  wire [2:0] _086_;
  wire [30:0] _087_;
  wire [1:0] _088_;
  wire [59:0] _089_;
  wire _090_;
  wire _091_;
  wire [1:0] _092_;
  wire [1:0] _093_;
  wire [1:0] _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire [2:0] _099_;
  wire [28:0] _100_;
  wire _101_;
  wire [1:0] _102_;
  wire _103_;
  wire [2:0] _104_;
  wire _105_;
  wire _106_;
  wire [1:0] _107_;
  wire _108_;
  wire _109_;
  wire [1:0] _110_;
  wire _111_;
  wire [2:0] _112_;
  wire [3:0] _113_;
  wire _114_;
  wire _115_;
  wire [4:0] _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire [1:0] _121_;
  wire _122_;
  wire [2:0] _123_;
  wire [4:0] _124_;
  wire _125_;
  wire [195:0] _126_;
  wire [3:0] _127_;
  wire [1:0] _128_;
  wire [28:0] _129_;
  wire _130_;
  wire _131_;
  wire [1:0] _132_;
  wire [4:0] _133_;
  wire [52:0] _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire [195:0] _143_;
  wire [3:0] _144_;
  wire [30:0] _145_;
  wire [71:0] _146_;
  wire [1:0] _147_;
  wire _148_;
  wire [67:0] _149_;
  wire _150_;
  wire [1:0] _151_;
  wire _152_;
  wire _153_;
  wire _154_;
  wire _155_;
  wire _156_;
  wire _157_;
  wire _158_;
  wire _159_;
  wire _160_;
  reg [195:0] _161_;
  reg [3:0] _162_;
  reg [174:0] _163_;
  reg _164_;
  reg [1:0] _165_;
  reg _166_;
  wire [255:0] _167_;
  wire [63:0] _168_;
  wire [199:0] _169_;
  wire [49:0] _170_;
  wire _171_;
  wire _172_;
  wire _173_;
  wire _174_;
  wire _175_;
  wire _176_;
  wire _177_;
  wire _178_;
  wire _179_;
  wire _180_;
  wire _181_;
  wire _182_;
  wire _183_;
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
  wire _196_;
  wire _197_;
  wire _198_;
  wire _199_;
  wire [48:0] _200_;
  wire [31:0] _201_;
  wire [48:0] _202_;
  wire _203_;
  wire _204_;
  wire _205_;
  wire _206_;
  wire _207_;
  wire _208_;
  wire _209_;
  wire _210_;
  wire _211_;
  wire _212_;
  wire _213_;
  wire _214_;
  wire _215_;
  wire _216_;
  wire _217_;
  wire _218_;
  wire _219_;
  wire _220_;
  wire _221_;
  wire _222_;
  wire _223_;
  wire [48:0] _224_;
  wire _225_;
  wire [48:0] _226_;
  wire _227_;
  wire [48:0] _228_;
  wire _229_;
  wire [48:0] _230_;
  wire _231_;
  wire _232_;
  wire _233_;
  wire _234_;
  wire _235_;
  wire _236_;
  wire _237_;
  wire _238_;
  wire _239_;
  wire _240_;
  wire _241_;
  wire _242_;
  wire _243_;
  wire _244_;
  wire _245_;
  wire _246_;
  wire _247_;
  wire _248_;
  wire _249_;
  wire _250_;
  wire _251_;
  wire _252_;
  wire _253_;
  wire _254_;
  wire _255_;
  wire _256_;
  wire _257_;
  wire _258_;
  wire _259_;
  wire _260_;
  wire _261_;
  wire _262_;
  wire _263_;
  wire _264_;
  wire _265_;
  wire _266_;
  wire _267_;
  wire _268_;
  wire _269_;
  wire _270_;
  wire _271_;
  wire _272_;
  wire _273_;
  wire _274_;
  wire _275_;
  wire _276_;
  wire _277_;
  wire _278_;
  wire _279_;
  wire _280_;
  wire _281_;
  wire _282_;
  wire _283_;
  wire _284_;
  wire _285_;
  wire _286_;
  wire _287_;
  wire _288_;
  wire _289_;
  wire access_ok;
  wire [63:0] cache_out;
  (* ram_style = "distributed" *)
  wire [195:0] cache_tags;
  wire [3:0] cache_valids;
  input clk;
  wire clk;
  wire eaa_priv;
  output \events.icache_miss ;
  wire \events.icache_miss ;
  output \events.itlb_miss_resolved ;
  wire \events.itlb_miss_resolved ;
  input flush_in;
  wire flush_in;
  input \i_in.big_endian ;
  wire \i_in.big_endian ;
  input [63:0] \i_in.nia ;
  wire [63:0] \i_in.nia ;
  input \i_in.pred_ntaken ;
  wire \i_in.pred_ntaken ;
  input \i_in.predicted ;
  wire \i_in.predicted ;
  input \i_in.priv_mode ;
  wire \i_in.priv_mode ;
  input \i_in.req ;
  wire \i_in.req ;
  input \i_in.stop_mark ;
  wire \i_in.stop_mark ;
  input \i_in.virt_mode ;
  wire \i_in.virt_mode ;
  output \i_out.big_endian ;
  wire \i_out.big_endian ;
  output \i_out.fetch_failed ;
  wire \i_out.fetch_failed ;
  output [31:0] \i_out.insn ;
  wire [31:0] \i_out.insn ;
  output \i_out.next_pred_ntaken ;
  wire \i_out.next_pred_ntaken ;
  output \i_out.next_predicted ;
  wire \i_out.next_predicted ;
  output [63:0] \i_out.nia ;
  wire [63:0] \i_out.nia ;
  output \i_out.stop_mark ;
  wire \i_out.stop_mark ;
  output \i_out.valid ;
  wire \i_out.valid ;
  input inval_in;
  wire inval_in;
  wire [3:0] itlb_valids;
  output [53:0] log_out;
  wire [53:0] log_out;
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
  wire priv_fault;
  wire [241:0] r;
  wire ra_valid;
  wire \rams:1.do_read ;
  wire \rams:1.do_write ;
  wire [63:0] \rams:1.dout ;
  wire [4:0] \rams:1.rd_addr ;
  wire [4:0] \rams:1.wr_addr ;
  wire [63:0] \rams:1.wr_dat ;
  wire [7:0] \rams:1.wr_sel ;
  wire [55:0] real_addr;
  wire [1:0] req_index;
  wire req_is_hit;
  wire req_is_miss;
  wire [55:0] req_raddr;
  wire [4:0] req_row;
  wire [48:0] req_tag;
  input rst;
  wire rst;
  wire snoop_hits;
  wire [1:0] snoop_index;
  wire snoop_valid;
  input stall_in;
  wire stall_in;
  output stall_out;
  wire stall_out;
  wire [1:0] tlb_req_index;
  input [28:0] \wb_snoop_in.adr ;
  wire [28:0] \wb_snoop_in.adr ;
  input \wb_snoop_in.cyc ;
  wire \wb_snoop_in.cyc ;
  input [63:0] \wb_snoop_in.dat ;
  wire [63:0] \wb_snoop_in.dat ;
  input [7:0] \wb_snoop_in.sel ;
  wire [7:0] \wb_snoop_in.sel ;
  input \wb_snoop_in.stb ;
  wire \wb_snoop_in.stb ;
  input \wb_snoop_in.we ;
  wire \wb_snoop_in.we ;
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
  reg [63:0] itlb_ptes [3:0];
  always @(posedge clk) begin
    if (_046_)
      itlb_ptes[_031_] <= \m_in.pte ;
  end
  assign _168_ = itlb_ptes[tlb_req_index];
  (* ram_style = "distributed" *)
  reg [49:0] itlb_tags [3:0];
  always @(posedge clk) begin
    if (_042_)
      itlb_tags[_031_] <= \m_in.addr [63:14];
  end
  assign _170_ = itlb_tags[tlb_req_index];
  assign _000_ = _021_[0] ? itlb_valids[1] : itlb_valids[0];
  assign _001_ = _047_[0] ? cache_valids[1] : cache_valids[0];
  assign _002_ = _052_[0] ? r[234] : r[233];
  assign _003_ = _052_[0] ? r[238] : r[237];
  assign _004_ = _056_[0] ? cache_tags[97:49] : cache_tags[48:0];
  assign _005_ = _079_[0] ? cache_tags[97:49] : cache_tags[48:0];
  assign _006_ = _021_[0] ? itlb_valids[3] : itlb_valids[2];
  assign _007_ = _047_[0] ? cache_valids[3] : cache_valids[2];
  assign _008_ = _052_[0] ? r[236] : r[235];
  assign _009_ = _052_[0] ? r[240] : r[239];
  assign _010_ = _056_[0] ? cache_tags[195:147] : cache_tags[146:98];
  assign _011_ = _079_[0] ? cache_tags[195:147] : cache_tags[146:98];
  assign _171_ = _021_[1] ? _006_ : _000_;
  assign _196_ = _047_[1] ? _007_ : _001_;
  assign _197_ = _052_[1] ? _008_ : _002_;
  assign _198_ = _052_[1] ? _009_ : _003_;
  assign _200_ = _056_[1] ? _010_ : _004_;
  assign _202_ = _079_[1] ? _011_ : _005_;
  assign _013_ = ~ r[228];
  assign _014_ = _013_ ? \wishbone_in.dat  : { \wishbone_in.dat [39:32], \wishbone_in.dat [47:40], \wishbone_in.dat [55:48], \wishbone_in.dat [63:56], \wishbone_in.dat [7:0], \wishbone_in.dat [15:8], \wishbone_in.dat [23:16], \wishbone_in.dat [31:24] };
  assign _015_ = ~ stall_in;
  assign _016_ = \wishbone_in.ack  & 1'h1;
  assign _017_ = _016_ ? 1'h1 : 1'h0;
  assign _018_ = \i_in.nia [13:12] ^ \i_in.nia [15:14];
  assign _019_ = _018_ ^ \i_in.nia [17:16];
  assign _020_ = _170_ == \i_in.nia [63:14];
  assign _021_ = 2'h3 - tlb_req_index;
  assign _022_ = _020_ ? _171_ : 1'h0;
  assign _023_ = \i_in.virt_mode  ? _168_[3] : 1'h1;
  assign _024_ = \i_in.virt_mode  ? { _168_[55:12], \i_in.nia [11:0] } : \i_in.nia [55:0];
  assign _025_ = \i_in.virt_mode  ? _022_ : 1'h1;
  assign _026_ = ~ \i_in.priv_mode ;
  assign _027_ = eaa_priv & _026_;
  assign _028_ = ~ priv_fault;
  assign _029_ = ra_valid & _028_;
  assign _030_ = \m_in.addr [13:12] ^ \m_in.addr [15:14];
  assign _031_ = _030_ ^ \m_in.addr [17:16];
  assign _032_ = \m_in.tlbie  & \m_in.doall ;
  assign _033_ = rst | _032_;
  assign _034_ = 2'h3 - _031_;
  assign _035_ = 2'h3 - _031_;
  assign _036_ = \m_in.tlbie  ? { _181_, _180_, _179_, _178_ } : { _195_, _193_, _191_, _189_ };
  assign _037_ = _033_ ? 4'h0 : _036_;
  always @(posedge clk)
    _038_ <= _037_;
  assign _039_ = ~ _033_;
  assign _040_ = ~ \m_in.tlbie ;
  assign _041_ = _039_ & _040_;
  assign _042_ = \m_in.tlbld  & _041_;
  assign _043_ = ~ _033_;
  assign _044_ = ~ \m_in.tlbie ;
  assign _045_ = _043_ & _044_;
  assign _046_ = \m_in.tlbld  & _045_;
  assign _047_ = 2'h3 - req_index;
  assign _048_ = r[68:67] == 2'h3;
  assign _049_ = { 30'h00000000, req_index } == { 30'h00000000, r[174:173] };
  assign _050_ = _048_ & _049_;
  assign _051_ = _050_ & 1'h1;
  assign _052_ = 3'h7 - req_row[2:0];
  assign _053_ = _051_ & _199_;
  assign _054_ = _196_ | _053_;
  assign _055_ = \i_in.req  & _054_;
  assign _056_ = 2'h3 - req_index;
  assign _057_ = _200_ == req_tag;
  assign _058_ = _057_ ? 1'h1 : 1'h0;
  assign _059_ = _055_ ? _058_ : 1'h0;
  assign _060_ = \i_in.req  & access_ok;
  assign _061_ = ~ flush_in;
  assign _062_ = _060_ & _061_;
  assign _063_ = ~ rst;
  assign _064_ = _062_ & _063_;
  assign _065_ = ~ _059_;
  assign _066_ = _064_ ? _059_ : 1'h0;
  assign _067_ = _064_ ? _065_ : 1'h0;
  assign _068_ = _059_ & access_ok;
  assign _069_ = ~ _068_;
  assign _070_ = rst | flush_in;
  assign _071_ = _070_ ? 1'h0 : r[65];
  assign _072_ = stall_in ? _071_ : req_is_hit;
  assign _073_ = ~ stall_in;
  assign _074_ = _073_ ? { \i_in.stop_mark , \i_in.nia  } : r[64:0];
  assign _075_ = _073_ ? \i_in.big_endian  : r[66];
  always @(posedge clk)
    _076_ <= { _075_, _072_, _074_ };
  assign _077_ = \wb_snoop_in.cyc  & \wb_snoop_in.stb ;
  assign _078_ = _077_ & \wb_snoop_in.we ;
  assign _079_ = 2'h3 - \wb_snoop_in.adr [4:3];
  assign _080_ = { 1'h0, _202_[47:0] } == { 25'h0000000, \wb_snoop_in.adr [28:5] };
  assign _081_ = _080_ ? 1'h1 : 1'h0;
  assign _082_ = snoop_valid & snoop_hits;
  assign _083_ = 2'h3 - snoop_index;
  assign _084_ = inval_in ? 4'h0 : { _216_, _214_, _212_, _210_ };
  assign _085_ = inval_in ? 1'h0 : r[229];
  assign _086_ = req_raddr[5:3] - 3'h1;
  assign _087_ = req_is_miss ? { req_raddr[31:3], 2'h2 } : r[97:67];
  assign _088_ = req_is_miss ? 2'h3 : r[171:170];
  assign _089_ = req_is_miss ? { _086_, 1'h1, req_tag, req_raddr[7:3], req_index } : { r[232:230], _085_, r[228:173] };
  assign _090_ = r[68:67] == 2'h0;
  assign _091_ = r[68:67] == 2'h2;
  assign _092_ = 2'h3 - req_index;
  assign _093_ = 2'h3 - r[174:173];
  assign _094_ = _091_ ? 2'h3 : r[68:67];
  assign _095_ = ~ \wishbone_in.stall ;
  assign _096_ = _095_ & r[171];
  assign _097_ = r[71:69] == r[232:230];
  assign _098_ = _101_ ? 1'h0 : r[171];
  assign _099_ = r[71:69] + 3'h1;
  assign _100_ = _096_ ? { r[97:72], _099_ } : r[97:69];
  assign _101_ = _096_ & _097_;
  assign _102_ = inval_in ? 2'h1 : _094_;
  assign _103_ = inval_in ? 1'h0 : _098_;
  assign _104_ = 3'h7 - r[177:175];
  assign _105_ = ~ inval_in;
  assign _106_ = r[177:175] == r[232:230];
  assign _107_ = 2'h3 - r[174:173];
  assign _108_ = ~ inval_in;
  assign _109_ = r[229] & _108_;
  assign _110_ = _114_ ? 2'h0 : _102_;
  assign _111_ = _115_ ? 1'h0 : r[170];
  assign _112_ = r[177:175] + 3'h1;
  assign _113_ = \wishbone_in.ack  ? { _258_, _256_, _254_, _252_ } : { _244_, _242_, _240_, _238_ };
  assign _114_ = \wishbone_in.ack  & _106_;
  assign _115_ = \wishbone_in.ack  & _106_;
  assign _116_ = \wishbone_in.ack  ? { r[179:178], _112_ } : r[179:175];
  assign _117_ = r[68:67] == 2'h2;
  assign _118_ = r[68:67] == 2'h3;
  assign _119_ = _117_ | _118_;
  assign _120_ = r[177:175] == r[71:69];
  assign _121_ = _120_ ? 2'h0 : r[68:67];
  assign _122_ = _120_ ? 1'h0 : r[170];
  assign _123_ = r[177:175] + 3'h1;
  assign _124_ = \wishbone_in.ack  ? { r[179:178], _123_ } : r[179:175];
  assign _125_ = r[68:67] == 2'h1;
  function [195:0] \7012 ;
    input [195:0] a;
    input [587:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \7012  = b[195:0];
      3'b?1?:
        \7012  = b[391:196];
      3'b1??:
        \7012  = b[587:392];
      default:
        \7012  = a;
    endcase
  endfunction
  assign _126_ = \7012 (196'hxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, { cache_tags, _230_, _228_, _226_, _224_, cache_tags }, { _125_, _119_, _090_ });
  function [3:0] \7014 ;
    input [3:0] a;
    input [11:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \7014  = b[3:0];
      3'b?1?:
        \7014  = b[7:4];
      3'b1??:
        \7014  = b[11:8];
      default:
        \7014  = a;
    endcase
  endfunction
  assign _127_ = \7014 (4'hx, { _084_, _113_, _084_ }, { _125_, _119_, _090_ });
  function [1:0] \7017 ;
    input [1:0] a;
    input [5:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \7017  = b[1:0];
      3'b?1?:
        \7017  = b[3:2];
      3'b1??:
        \7017  = b[5:4];
      default:
        \7017  = a;
    endcase
  endfunction
  assign _128_ = \7017 (2'hx, { _121_, _110_, _087_[1:0] }, { _125_, _119_, _090_ });
  function [28:0] \7021 ;
    input [28:0] a;
    input [86:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \7021  = b[28:0];
      3'b?1?:
        \7021  = b[57:29];
      3'b1??:
        \7021  = b[86:58];
      default:
        \7021  = a;
    endcase
  endfunction
  assign _129_ = \7021 (29'hxxxxxxxx, { r[97:69], _100_, _087_[30:2] }, { _125_, _119_, _090_ });
  function [0:0] \7024 ;
    input [0:0] a;
    input [2:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \7024  = b[0:0];
      3'b?1?:
        \7024  = b[1:1];
      3'b1??:
        \7024  = b[2:2];
      default:
        \7024  = a;
    endcase
  endfunction
  assign _130_ = \7024 (1'hx, { _122_, _111_, _088_[0] }, { _125_, _119_, _090_ });
  function [0:0] \7028 ;
    input [0:0] a;
    input [2:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \7028  = b[0:0];
      3'b?1?:
        \7028  = b[1:1];
      3'b1??:
        \7028  = b[2:2];
      default:
        \7028  = a;
    endcase
  endfunction
  assign _131_ = \7028 (1'hx, { r[171], _103_, _088_[1] }, { _125_, _119_, _090_ });
  function [1:0] \7032 ;
    input [1:0] a;
    input [5:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \7032  = b[1:0];
      3'b?1?:
        \7032  = b[3:2];
      3'b1??:
        \7032  = b[5:4];
      default:
        \7032  = a;
    endcase
  endfunction
  assign _132_ = \7032 (2'hx, { r[174:173], r[174:173], _089_[1:0] }, { _125_, _119_, _090_ });
  function [4:0] \7035 ;
    input [4:0] a;
    input [14:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \7035  = b[4:0];
      3'b?1?:
        \7035  = b[9:5];
      3'b1??:
        \7035  = b[14:10];
      default:
        \7035  = a;
    endcase
  endfunction
  assign _133_ = \7035 (5'hxx, { _124_, _116_, _089_[6:2] }, { _125_, _119_, _090_ });
  function [52:0] \7041 ;
    input [52:0] a;
    input [158:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \7041  = b[52:0];
      3'b?1?:
        \7041  = b[105:53];
      3'b1??:
        \7041  = b[158:106];
      default:
        \7041  = a;
    endcase
  endfunction
  assign _134_ = \7041 (53'hxxxxxxxxxxxxxx, { r[232:230], _085_, r[228:180], r[232:230], _085_, r[228:180], _089_[59:7] }, { _125_, _119_, _090_ });
  function [0:0] \7045 ;
    input [0:0] a;
    input [2:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \7045  = b[0:0];
      3'b?1?:
        \7045  = b[1:1];
      3'b1??:
        \7045  = b[2:2];
      default:
        \7045  = a;
    endcase
  endfunction
  assign _135_ = \7045 (1'hx, { r[233], _275_, 1'h0 }, { _125_, _119_, _090_ });
  function [0:0] \7049 ;
    input [0:0] a;
    input [2:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \7049  = b[0:0];
      3'b?1?:
        \7049  = b[1:1];
      3'b1??:
        \7049  = b[2:2];
      default:
        \7049  = a;
    endcase
  endfunction
  assign _136_ = \7049 (1'hx, { r[234], _277_, 1'h0 }, { _125_, _119_, _090_ });
  function [0:0] \7053 ;
    input [0:0] a;
    input [2:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \7053  = b[0:0];
      3'b?1?:
        \7053  = b[1:1];
      3'b1??:
        \7053  = b[2:2];
      default:
        \7053  = a;
    endcase
  endfunction
  assign _137_ = \7053 (1'hx, { r[235], _279_, 1'h0 }, { _125_, _119_, _090_ });
  function [0:0] \7057 ;
    input [0:0] a;
    input [2:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \7057  = b[0:0];
      3'b?1?:
        \7057  = b[1:1];
      3'b1??:
        \7057  = b[2:2];
      default:
        \7057  = a;
    endcase
  endfunction
  assign _138_ = \7057 (1'hx, { r[236], _281_, 1'h0 }, { _125_, _119_, _090_ });
  function [0:0] \7061 ;
    input [0:0] a;
    input [2:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \7061  = b[0:0];
      3'b?1?:
        \7061  = b[1:1];
      3'b1??:
        \7061  = b[2:2];
      default:
        \7061  = a;
    endcase
  endfunction
  assign _139_ = \7061 (1'hx, { r[237], _283_, 1'h0 }, { _125_, _119_, _090_ });
  function [0:0] \7065 ;
    input [0:0] a;
    input [2:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \7065  = b[0:0];
      3'b?1?:
        \7065  = b[1:1];
      3'b1??:
        \7065  = b[2:2];
      default:
        \7065  = a;
    endcase
  endfunction
  assign _140_ = \7065 (1'hx, { r[238], _285_, 1'h0 }, { _125_, _119_, _090_ });
  function [0:0] \7069 ;
    input [0:0] a;
    input [2:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \7069  = b[0:0];
      3'b?1?:
        \7069  = b[1:1];
      3'b1??:
        \7069  = b[2:2];
      default:
        \7069  = a;
    endcase
  endfunction
  assign _141_ = \7069 (1'hx, { r[239], _287_, 1'h0 }, { _125_, _119_, _090_ });
  function [0:0] \7073 ;
    input [0:0] a;
    input [2:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \7073  = b[0:0];
      3'b?1?:
        \7073  = b[1:1];
      3'b1??:
        \7073  = b[2:2];
      default:
        \7073  = a;
    endcase
  endfunction
  assign _142_ = \7073 (1'hx, { r[240], _289_, 1'h0 }, { _125_, _119_, _090_ });
  assign _143_ = rst ? cache_tags : _126_;
  assign _144_ = rst ? 4'h0 : _127_;
  assign _145_ = rst ? 31'h00000000 : { _129_, _128_ };
  assign _146_ = rst ? 72'hff0000000000000000 : r[169:98];
  assign _147_ = rst ? 2'h0 : { _131_, _130_ };
  assign _148_ = rst ? 1'h0 : r[172];
  assign _149_ = rst ? r[240:173] : { _142_, _141_, _140_, _139_, _138_, _137_, _136_, _135_, _134_, _133_, _132_ };
  assign _150_ = rst ? 1'h0 : _078_;
  assign _151_ = rst ? 2'h0 : \wb_snoop_in.adr [4:3];
  assign _152_ = rst ? 1'h0 : _081_;
  assign _153_ = rst | flush_in;
  assign _154_ = _153_ | \m_in.tlbld ;
  assign _155_ = ~ access_ok;
  assign _156_ = \i_in.req  & _155_;
  assign _157_ = ~ stall_in;
  assign _158_ = _156_ & _157_;
  assign _159_ = _158_ ? 1'h1 : r[241];
  assign _160_ = _154_ ? 1'h0 : _159_;
  always @(posedge clk)
    _161_ <= _143_;
  always @(posedge clk)
    _162_ <= _144_;
  always @(posedge clk)
    _163_ <= { _160_, _149_, _148_, _147_, _146_, _145_ };
  always @(posedge clk)
    _164_ <= _150_;
  always @(posedge clk)
    _165_ <= _151_;
  always @(posedge clk)
    _166_ <= _152_;
  assign _172_ = ~ _034_[1];
  assign _173_ = ~ _034_[0];
  assign _174_ = _172_ & _173_;
  assign _175_ = _172_ & _034_[0];
  assign _176_ = _034_[1] & _173_;
  assign _177_ = _034_[1] & _034_[0];
  assign _178_ = _174_ ? 1'h0 : itlb_valids[0];
  assign _179_ = _175_ ? 1'h0 : itlb_valids[1];
  assign _180_ = _176_ ? 1'h0 : itlb_valids[2];
  assign _181_ = _177_ ? 1'h0 : itlb_valids[3];
  assign _182_ = ~ _035_[1];
  assign _183_ = ~ _035_[0];
  assign _184_ = _182_ & _183_;
  assign _185_ = _182_ & _035_[0];
  assign _186_ = _035_[1] & _183_;
  assign _187_ = _035_[1] & _035_[0];
  assign _188_ = _184_ & \m_in.tlbld ;
  assign _189_ = _188_ ? 1'h1 : itlb_valids[0];
  assign _190_ = _185_ & \m_in.tlbld ;
  assign _191_ = _190_ ? 1'h1 : itlb_valids[1];
  assign _192_ = _186_ & \m_in.tlbld ;
  assign _193_ = _192_ ? 1'h1 : itlb_valids[2];
  assign _194_ = _187_ & \m_in.tlbld ;
  assign _195_ = _194_ ? 1'h1 : itlb_valids[3];
  assign _199_ = _052_[2] ? _198_ : _197_;
  assign _201_ = r[2] ? cache_out[63:32] : cache_out[31:0];
  assign _203_ = ~ _083_[1];
  assign _204_ = ~ _083_[0];
  assign _205_ = _203_ & _204_;
  assign _206_ = _203_ & _083_[0];
  assign _207_ = _083_[1] & _204_;
  assign _208_ = _083_[1] & _083_[0];
  assign _209_ = _205_ & _082_;
  assign _210_ = _209_ ? 1'h0 : cache_valids[0];
  assign _211_ = _206_ & _082_;
  assign _212_ = _211_ ? 1'h0 : cache_valids[1];
  assign _213_ = _207_ & _082_;
  assign _214_ = _213_ ? 1'h0 : cache_valids[2];
  assign _215_ = _208_ & _082_;
  assign _216_ = _215_ ? 1'h0 : cache_valids[3];
  assign _217_ = ~ _093_[1];
  assign _218_ = ~ _093_[0];
  assign _219_ = _217_ & _218_;
  assign _220_ = _217_ & _093_[0];
  assign _221_ = _093_[1] & _218_;
  assign _222_ = _093_[1] & _093_[0];
  assign _223_ = _219_ & _091_;
  assign _224_ = _223_ ? r[228:180] : cache_tags[48:0];
  assign _225_ = _220_ & _091_;
  assign _226_ = _225_ ? r[228:180] : cache_tags[97:49];
  assign _227_ = _221_ & _091_;
  assign _228_ = _227_ ? r[228:180] : cache_tags[146:98];
  assign _229_ = _222_ & _091_;
  assign _230_ = _229_ ? r[228:180] : cache_tags[195:147];
  assign _231_ = ~ _092_[1];
  assign _232_ = ~ _092_[0];
  assign _233_ = _231_ & _232_;
  assign _234_ = _231_ & _092_[0];
  assign _235_ = _092_[1] & _232_;
  assign _236_ = _092_[1] & _092_[0];
  assign _237_ = _233_ & _091_;
  assign _238_ = _237_ ? 1'h0 : _084_[0];
  assign _239_ = _234_ & _091_;
  assign _240_ = _239_ ? 1'h0 : _084_[1];
  assign _241_ = _235_ & _091_;
  assign _242_ = _241_ ? 1'h0 : _084_[2];
  assign _243_ = _236_ & _091_;
  assign _244_ = _243_ ? 1'h0 : _084_[3];
  assign _245_ = ~ _107_[1];
  assign _246_ = ~ _107_[0];
  assign _247_ = _245_ & _246_;
  assign _248_ = _245_ & _107_[0];
  assign _249_ = _107_[1] & _246_;
  assign _250_ = _107_[1] & _107_[0];
  assign _251_ = _247_ & _106_;
  assign _252_ = _251_ ? _109_ : _238_;
  assign _253_ = _248_ & _106_;
  assign _254_ = _253_ ? _109_ : _240_;
  assign _255_ = _249_ & _106_;
  assign _256_ = _255_ ? _109_ : _242_;
  assign _257_ = _250_ & _106_;
  assign _258_ = _257_ ? _109_ : _244_;
  assign _259_ = ~ _104_[2];
  assign _260_ = ~ _104_[1];
  assign _261_ = _259_ & _260_;
  assign _262_ = _259_ & _104_[1];
  assign _263_ = _104_[2] & _260_;
  assign _264_ = _104_[2] & _104_[1];
  assign _265_ = ~ _104_[0];
  assign _266_ = _261_ & _265_;
  assign _267_ = _261_ & _104_[0];
  assign _268_ = _262_ & _265_;
  assign _269_ = _262_ & _104_[0];
  assign _270_ = _263_ & _265_;
  assign _271_ = _263_ & _104_[0];
  assign _272_ = _264_ & _265_;
  assign _273_ = _264_ & _104_[0];
  assign _274_ = _266_ & \wishbone_in.ack ;
  assign _275_ = _274_ ? _105_ : r[233];
  assign _276_ = _267_ & \wishbone_in.ack ;
  assign _277_ = _276_ ? _105_ : r[234];
  assign _278_ = _268_ & \wishbone_in.ack ;
  assign _279_ = _278_ ? _105_ : r[235];
  assign _280_ = _269_ & \wishbone_in.ack ;
  assign _281_ = _280_ ? _105_ : r[236];
  assign _282_ = _270_ & \wishbone_in.ack ;
  assign _283_ = _282_ ? _105_ : r[237];
  assign _284_ = _271_ & \wishbone_in.ack ;
  assign _285_ = _284_ ? _105_ : r[238];
  assign _286_ = _272_ & \wishbone_in.ack ;
  assign _287_ = _286_ ? _105_ : r[239];
  assign _288_ = _273_ & \wishbone_in.ack ;
  assign _289_ = _288_ ? _105_ : r[240];
  cache_ram_5_64_1489f923c4dca729178b3e3233458550d8dddf29 \rams:1.way  (
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .clk(clk),
    .rd_addr(\rams:1.rd_addr ),
    .rd_data(_012_),
    .rd_en(\rams:1.do_read ),
    .wr_addr(\rams:1.wr_addr ),
    .wr_data(\rams:1.wr_dat ),
    .wr_sel(\rams:1.wr_sel )
  );
  assign cache_tags = _161_;
  assign cache_valids = _162_;
  assign itlb_valids = _038_;
  assign eaa_priv = _023_;
  assign r = { _163_, _076_ };
  assign req_index = \i_in.nia [7:6];
  assign req_row = \i_in.nia [7:3];
  assign req_tag = { \i_in.big_endian , real_addr[55:8] };
  assign req_is_hit = _066_;
  assign req_is_miss = _067_;
  assign req_raddr = { real_addr[55:3], 3'h0 };
  assign tlb_req_index = _019_;
  assign real_addr = _024_;
  assign ra_valid = _025_;
  assign priv_fault = _027_;
  assign access_ok = _029_;
  assign cache_out = \rams:1.dout ;
  assign snoop_valid = _164_;
  assign snoop_index = _165_;
  assign snoop_hits = _166_;
  assign \rams:1.do_read  = _015_;
  assign \rams:1.do_write  = _017_;
  assign \rams:1.rd_addr  = req_row;
  assign \rams:1.wr_addr  = r[179:175];
  assign \rams:1.dout  = _012_;
  assign \rams:1.wr_sel  = { \rams:1.do_write , \rams:1.do_write , \rams:1.do_write , \rams:1.do_write , \rams:1.do_write , \rams:1.do_write , \rams:1.do_write , \rams:1.do_write  };
  assign \rams:1.wr_dat  = _014_;
  assign \i_out.valid  = r[65];
  assign \i_out.stop_mark  = r[64];
  assign \i_out.fetch_failed  = r[241];
  assign \i_out.nia  = r[63:0];
  assign \i_out.insn  = _201_;
  assign \i_out.big_endian  = r[66];
  assign \i_out.next_predicted  = \i_in.predicted ;
  assign \i_out.next_pred_ntaken  = \i_in.pred_ntaken ;
  assign stall_out = _069_;
  assign \wishbone_out.adr  = r[97:69];
  assign \wishbone_out.dat  = r[161:98];
  assign \wishbone_out.sel  = r[169:162];
  assign \wishbone_out.cyc  = r[170];
  assign \wishbone_out.stb  = r[171];
  assign \wishbone_out.we  = r[172];
  assign \events.icache_miss  = 1'hz;
  assign \events.itlb_miss_resolved  = 1'hz;
  assign log_out = 54'hzzzzzzzzzzzzzz;
endmodule