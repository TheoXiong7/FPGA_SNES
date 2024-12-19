// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Dec 12 19:37:29 2024
// Host        : ECEB-3070-01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/karans4/Desktop/project_8_1.xpr/project_8/project_8.gen/sources_1/ip/CGRAM/CGRAM_stub.v
// Design      : CGRAM
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *)
module CGRAM(clka, ena, wea, addra, dina, douta, clkb, enb, web, addrb, 
  dinb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[7:0],dina[15:0],douta[15:0],clkb,enb,web[0:0],addrb[7:0],dinb[15:0],doutb[15:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [7:0]addra;
  input [15:0]dina;
  output [15:0]douta;
  input clkb;
  input enb;
  input [0:0]web;
  input [7:0]addrb;
  input [15:0]dinb;
  output [15:0]doutb;
endmodule
