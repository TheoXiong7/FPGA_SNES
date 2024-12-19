// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Dec 12 19:37:29 2024
// Host        : ECEB-3070-01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/karans4/Desktop/project_8_1.xpr/project_8/project_8.gen/sources_1/ip/CGRAM/CGRAM_sim_netlist.v
// Design      : CGRAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "CGRAM,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module CGRAM
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [7:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.0361 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "CGRAM.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  CGRAM_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20064)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
