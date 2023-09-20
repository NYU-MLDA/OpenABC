module xics_icp(clk, rst, \wb_in.adr , \wb_in.dat , \wb_in.sel , \wb_in.cyc , \wb_in.stb , \wb_in.we , \ics_in.src , \ics_in.pri , \wb_out.dat , \wb_out.ack , \wb_out.stall , core_irq_out);
  reg _00_;
  reg [73:0] _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire [7:0] _06_;
  wire [7:0] _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire [23:0] _14_;
  wire [7:0] _15_;
  wire _16_;
  wire [31:0] _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire [31:0] _21_;
  wire _22_;
  wire [23:0] _23_;
  wire [7:0] _24_;
  wire _25_;
  wire [23:0] _26_;
  wire [7:0] _27_;
  wire [7:0] _28_;
  wire [7:0] _29_;
  wire [7:0] _30_;
  wire _31_;
  wire _32_;
  wire [73:0] _33_;
  input clk;
  wire clk;
  output core_irq_out;
  wire core_irq_out;
  input [7:0] \ics_in.pri ;
  wire [7:0] \ics_in.pri ;
  input [3:0] \ics_in.src ;
  wire [3:0] \ics_in.src ;
  wire [73:0] r;
  wire [73:0] r_next;
  input rst;
  wire rst;
  input [29:0] \wb_in.adr ;
  wire [29:0] \wb_in.adr ;
  input \wb_in.cyc ;
  wire \wb_in.cyc ;
  input [31:0] \wb_in.dat ;
  wire [31:0] \wb_in.dat ;
  input [3:0] \wb_in.sel ;
  wire [3:0] \wb_in.sel ;
  input \wb_in.stb ;
  wire \wb_in.stb ;
  input \wb_in.we ;
  wire \wb_in.we ;
  output \wb_out.ack ;
  wire \wb_out.ack ;
  output [31:0] \wb_out.dat ;
  wire [31:0] \wb_out.dat ;
  output \wb_out.stall ;
  wire \wb_out.stall ;
  always @(posedge clk)
    _00_ <= r[40];
  always @(posedge clk)
    _01_ <= r_next;
  assign _02_ = \wb_in.cyc  & \wb_in.stb ;
  assign _03_ = { \wb_in.adr [5:0], 2'h0 } == 8'h00;
  assign _04_ = { \wb_in.adr [5:0], 2'h0 } == 8'h04;
  assign _05_ = { \wb_in.adr [5:0], 2'h0 } == 8'h0c;
  function [7:0] \2970 ;
    input [7:0] a;
    input [23:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \2970  = b[7:0];
      3'b?1?:
        \2970  = b[15:8];
      3'b1??:
        \2970  = b[23:16];
      default:
        \2970  = a;
    endcase
  endfunction
  assign _06_ = \2970 (r[31:24], { r[31:24], \wb_in.dat [7:0], \wb_in.dat [7:0] }, { _05_, _04_, _03_ });
  function [7:0] \2972 ;
    input [7:0] a;
    input [23:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \2972  = b[7:0];
      3'b?1?:
        \2972  = b[15:8];
      3'b1??:
        \2972  = b[23:16];
      default:
        \2972  = a;
    endcase
  endfunction
  assign _07_ = \2972 (r[39:32], { \wb_in.dat [7:0], r[39:32], r[39:32] }, { _05_, _04_, _03_ });
  assign _08_ = { \wb_in.adr [5:0], 2'h0 } == 8'h00;
  assign _09_ = \wb_in.sel  == 4'hf;
  assign _10_ = _09_ ? 1'h1 : 1'h0;
  assign _11_ = { \wb_in.adr [5:0], 2'h0 } == 8'h04;
  assign _12_ = { \wb_in.adr [5:0], 2'h0 } == 8'h0c;
  function [0:0] \2997 ;
    input [0:0] a;
    input [2:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \2997  = b[0:0];
      3'b?1?:
        \2997  = b[1:1];
      3'b1??:
        \2997  = b[2:2];
      default:
        \2997  = a;
    endcase
  endfunction
  assign _13_ = \2997 (1'h0, { 1'h0, _10_, 1'h0 }, { _12_, _11_, _08_ });
  function [23:0] \3001 ;
    input [23:0] a;
    input [71:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \3001  = b[23:0];
      3'b?1?:
        \3001  = b[47:24];
      3'b1??:
        \3001  = b[71:48];
      default:
        \3001  = a;
    endcase
  endfunction
  assign _14_ = \3001 (24'h000000, { 24'h000000, r[23:0], r[23:0] }, { _12_, _11_, _08_ });
  function [7:0] \3005 ;
    input [7:0] a;
    input [23:0] b;
    input [2:0] s;
    (* parallel_case *)
    casez (s)
      3'b??1:
        \3005  = b[7:0];
      3'b?1?:
        \3005  = b[15:8];
      3'b1??:
        \3005  = b[23:16];
      default:
        \3005  = a;
    endcase
  endfunction
  assign _15_ = \3005 (8'h00, { r[39:24], r[31:24] }, { _12_, _11_, _08_ });
  assign _16_ = \wb_in.we  ? 1'h0 : _13_;
  assign _17_ = \wb_in.we  ? 32'd0 : { _15_, _14_ };
  assign _18_ = _02_ & \wb_in.we ;
  assign _19_ = _02_ ? 1'h1 : 1'h0;
  assign _20_ = _02_ ? _16_ : 1'h0;
  assign _21_ = _02_ ? _17_ : 32'd0;
  assign _22_ = \ics_in.pri  != 8'hff;
  assign _23_ = _22_ ? { 20'h00001, \ics_in.src  } : 24'h000000;
  assign _24_ = _22_ ? \ics_in.pri  : 8'hff;
  assign _25_ = r[39:32] < _24_;
  assign _26_ = _25_ ? 24'h000002 : _23_;
  assign _27_ = _25_ ? r[39:32] : _24_;
  assign _28_ = _18_ ? _06_ : r[31:24];
  assign _29_ = _20_ ? _27_ : _28_;
  assign _30_ = _18_ ? _07_ : r[39:32];
  assign _31_ = _27_ < _29_;
  assign _32_ = _31_ ? 1'h1 : 1'h0;
  assign _33_ = rst ? 74'h000000000ff00000000 : { _19_, _21_[7:0], _21_[15:8], _21_[23:16], _21_[31:24], _32_, _30_, _29_, _26_ };
  assign r = _01_;
  assign r_next = _33_;
  assign \wb_out.dat  = r[72:41];
  assign \wb_out.ack  = r[73];
  assign \wb_out.stall  = 1'h0;
  assign core_irq_out = _00_;
endmodule