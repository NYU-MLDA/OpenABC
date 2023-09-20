module wishbone_debug_master(clk, rst, dmi_addr, dmi_din, dmi_req, dmi_wr, \wb_in.dat , \wb_in.ack , \wb_in.stall , dmi_dout, dmi_ack, \wb_out.adr , \wb_out.dat , \wb_out.sel , \wb_out.cyc , \wb_out.stb , \wb_out.we );
  wire _00_;
  wire _01_;
  wire _02_;
  wire [63:0] _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire [3:0] _08_;
  wire [63:0] _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire [10:0] _13_;
  wire [63:0] _14_;
  wire [10:0] _15_;
  wire _16_;
  wire [10:0] _17_;
  wire [63:0] _18_;
  wire [10:0] _19_;
  wire [63:0] _20_;
  wire [10:0] _21_;
  reg [63:0] _22_;
  reg [10:0] _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  wire _32_;
  wire _33_;
  wire [63:0] _34_;
  reg [63:0] _35_;
  wire _36_;
  wire _37_;
  wire _38_;
  wire [1:0] _39_;
  wire _40_;
  wire _41_;
  wire _42_;
  wire _43_;
  wire [1:0] _44_;
  wire _45_;
  wire _46_;
  wire _47_;
  wire [1:0] _48_;
  wire _49_;
  wire _50_;
  wire [1:0] _51_;
  wire _52_;
  wire _53_;
  wire [1:0] _54_;
  wire _55_;
  reg _56_;
  reg [1:0] _57_;
  reg _58_;
  input clk;
  wire clk;
  wire [63:0] data_latch;
  output dmi_ack;
  wire dmi_ack;
  input [1:0] dmi_addr;
  wire [1:0] dmi_addr;
  input [63:0] dmi_din;
  wire [63:0] dmi_din;
  output [63:0] dmi_dout;
  wire [63:0] dmi_dout;
  input dmi_req;
  wire dmi_req;
  input dmi_wr;
  wire dmi_wr;
  wire do_inc;
  wire [63:0] reg_addr;
  wire [10:0] reg_ctrl;
  wire [63:0] reg_ctrl_out;
  input rst;
  wire rst;
  wire [1:0] state;
  input \wb_in.ack ;
  wire \wb_in.ack ;
  input [63:0] \wb_in.dat ;
  wire [63:0] \wb_in.dat ;
  input \wb_in.stall ;
  wire \wb_in.stall ;
  output [28:0] \wb_out.adr ;
  wire [28:0] \wb_out.adr ;
  output \wb_out.cyc ;
  wire \wb_out.cyc ;
  output [63:0] \wb_out.dat ;
  wire [63:0] \wb_out.dat ;
  output [7:0] \wb_out.sel ;
  wire [7:0] \wb_out.sel ;
  output \wb_out.stb ;
  wire \wb_out.stb ;
  output \wb_out.we ;
  wire \wb_out.we ;
  assign _00_ = dmi_addr == 2'h0;
  assign _01_ = dmi_addr == 2'h1;
  assign _02_ = dmi_addr == 2'h2;
  function [63:0] \5977 ;
    input [63:0] a;
    input [191:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \5977  = b[63:0];
      3'b?1?:
        \5977  = b[127:64];
      3'b1??:
        \5977  = b[191:128];
      default:
        \5977  = a;
    endcase
  endfunction
  assign _03_ = \5977 (64'h0000000000000000, { reg_ctrl_out, data_latch, reg_addr }, { _02_, _01_, _00_ });
  assign _04_ = reg_ctrl[10:9] == 2'h0;
  assign _05_ = reg_ctrl[10:9] == 2'h1;
  assign _06_ = reg_ctrl[10:9] == 2'h2;
  assign _07_ = reg_ctrl[10:9] == 2'h3;
  function [3:0] \6000 ;
    input [3:0] a;
    input [15:0] b;
    input [3:0] s;
    (* parallel_case *)
    casez (s)
      4'b???1:
        \6000  = b[3:0];
      4'b??1?:
        \6000  = b[7:4];
      4'b?1??:
        \6000  = b[11:8];
      4'b1???:
        \6000  = b[15:12];
      default:
        \6000  = a;
    endcase
  endfunction
  assign _08_ = \6000 (4'h8, 16'h8421, { _07_, _06_, _05_, _04_ });
  assign _09_ = reg_addr + { 60'h000000000000000, _08_ };
  assign _10_ = dmi_req & dmi_wr;
  assign _11_ = dmi_addr == 2'h0;
  assign _12_ = dmi_addr == 2'h2;
  assign _13_ = _12_ ? dmi_din[10:0] : reg_ctrl;
  assign _14_ = _16_ ? dmi_din : reg_addr;
  assign _15_ = _11_ ? reg_ctrl : _13_;
  assign _16_ = _10_ & _11_;
  assign _17_ = _10_ ? _15_ : reg_ctrl;
  assign _18_ = do_inc ? _09_ : _14_;
  assign _19_ = do_inc ? reg_ctrl : _17_;
  assign _20_ = rst ? 64'h0000000000000000 : _18_;
  assign _21_ = rst ? 11'h000 : _19_;
  always @(posedge clk)
    _22_ <= _20_;
  always @(posedge clk)
    _23_ <= _21_;
  assign _24_ = dmi_addr != 2'h1;
  assign _25_ = state == 2'h2;
  assign _26_ = _24_ | _25_;
  assign _27_ = _26_ ? dmi_req : 1'h0;
  assign _28_ = state == 2'h1;
  assign _29_ = _28_ ? 1'h1 : 1'h0;
  assign _30_ = state == 2'h1;
  assign _31_ = _30_ & \wb_in.ack ;
  assign _32_ = ~ dmi_wr;
  assign _33_ = _31_ & _32_;
  assign _34_ = _33_ ? \wb_in.dat  : data_latch;
  always @(posedge clk)
    _35_ <= _34_;
  assign _36_ = dmi_addr == 2'h1;
  assign _37_ = dmi_req & _36_;
  assign _38_ = _37_ ? 1'h1 : _56_;
  assign _39_ = _37_ ? 2'h1 : state;
  assign _40_ = state == 2'h0;
  assign _41_ = ~ \wb_in.stall ;
  assign _42_ = _41_ ? 1'h0 : _56_;
  assign _43_ = \wb_in.ack  ? 1'h0 : _42_;
  assign _44_ = \wb_in.ack  ? 2'h2 : state;
  assign _45_ = \wb_in.ack  ? reg_ctrl[8] : do_inc;
  assign _46_ = state == 2'h1;
  assign _47_ = ~ dmi_req;
  assign _48_ = _47_ ? 2'h0 : state;
  assign _49_ = state == 2'h2;
  function [0:0] \6089 ;
    input [0:0] a;
    input [2:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \6089  = b[0:0];
      3'b?1?:
        \6089  = b[1:1];
      3'b1??:
        \6089  = b[2:2];
      default:
        \6089  = a;
    endcase
  endfunction
  assign _50_ = \6089 (1'hx, { _56_, _43_, _38_ }, { _49_, _46_, _40_ });
  function [1:0] \6091 ;
    input [1:0] a;
    input [5:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \6091  = b[1:0];
      3'b?1?:
        \6091  = b[3:2];
      3'b1??:
        \6091  = b[5:4];
      default:
        \6091  = a;
    endcase
  endfunction
  assign _51_ = \6091 (2'hx, { _48_, _44_, _39_ }, { _49_, _46_, _40_ });
  function [0:0] \6094 ;
    input [0:0] a;
    input [2:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \6094  = b[0:0];
      3'b?1?:
        \6094  = b[1:1];
      3'b1??:
        \6094  = b[2:2];
      default:
        \6094  = a;
    endcase
  endfunction
  assign _52_ = \6094 (1'hx, { 1'h0, _45_, do_inc }, { _49_, _46_, _40_ });
  assign _53_ = rst ? 1'h0 : _50_;
  assign _54_ = rst ? 2'h0 : _51_;
  assign _55_ = rst ? 1'h0 : _52_;
  always @(posedge clk)
    _56_ <= _53_;
  always @(posedge clk)
    _57_ <= _54_;
  always @(posedge clk)
    _58_ <= _55_;
  assign reg_addr = _22_;
  assign reg_ctrl_out = { 53'h00000000000000, reg_ctrl };
  assign reg_ctrl = _23_;
  assign data_latch = _35_;
  assign state = _57_;
  assign do_inc = _58_;
  assign dmi_dout = _03_;
  assign dmi_ack = _27_;
  assign \wb_out.adr  = reg_addr[31:3];
  assign \wb_out.dat  = dmi_din;
  assign \wb_out.sel  = reg_ctrl[7:0];
  assign \wb_out.cyc  = _29_;
  assign \wb_out.stb  = _56_;
  assign \wb_out.we  = dmi_wr;
endmodule