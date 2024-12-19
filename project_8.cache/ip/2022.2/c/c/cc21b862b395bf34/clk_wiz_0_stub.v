// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Dec 13 16:23:28 2024
// Host        : beeeebopppp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ clk_wiz_0_stub.v
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(SNES_MCLK, VGA_clk, VGAx5_clk, CLK_AUDIO, reset, 
  locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="SNES_MCLK,VGA_clk,VGAx5_clk,CLK_AUDIO,reset,locked,clk_in1" */;
  output SNES_MCLK;
  output VGA_clk;
  output VGAx5_clk;
  output CLK_AUDIO;
  input reset;
  output locked;
  input clk_in1;
endmodule
