// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Dec 12 19:37:28 2024
// Host        : ECEB-3070-01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ CGRAM_sim_netlist.v
// Design      : CGRAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "CGRAM,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20176)
`pragma protect data_block
wambfpD6wuahDFDXpA2GqNaJnMG7PDVBINY87WY33yd5VEwC2XGCSt2YuIHUWb0ZdzPD/AQLvxnV
LwwqVGkOip2xNJ4AbNNgUfuk0IwLcthd57T+vhaL94NBAauM9C3jdgritZbgNnOIm8mo83i4zQr0
K3JiJARX9EBSs7GinkSyciz/Zam5cbXZQPNsYYwOsBFUG5/45XHsXDiSG49zvYgLPRCfzHdAxuHn
fJIv4OvPTalONuiuXt8lwODlXsNk94xVkvSAw6dvgWy8V9XtQLPOSPwiHr0+moCIj3nVBYKMJFOQ
0gdn6Q3Yz5etYyhd22+WnPAOVnOq3sR+AHCp09bubt2x80B3w+EKXSUK83ihszQBW+7CiSMlzH/U
IuyCZS3e8bHpak9361mLuRsUXfM7A107ZypgW6vAJtBpI3hCyWRzyhKAk89VJPmY5yF2KRKqj+B5
AIkwvIw40jTjn/NKfGOk/k4k/L38vZvZoc+kcohkTLfNHhQ553YojoL2pFu85zdfT/yMFAbNyyok
aRQ9VHkC1YWEqAtQORB8A5vE6hxzgFcNrMcIZxRDAA35ZRYpzaRI62eBQK+ATjoE5/ioLNdsuaas
l35o94fYGyjfldI+Cd3bDXJr6rIredbicgLDY1PkOW5VA1GsMxQqd1WKbeWzPYGcppScKWIIii56
wKlV8UXo7Khf8ij7KJ40XXdVqShniEgcCqTRsAcEaj9C1ySyrdyOUb0j+g1Z+NA6Qq3cjhdaM0PM
5UctBbvqG9o3sN3l/dbC+JWesp1+duqglTCvtLA9pqe0EHkYnsZCJT74xbl9mY+ZYWPx5mTa0Q2b
nrCN4Am+cUZ7ZEKnR6nftA+HoTEJaZrY7wh0g97WooLbasfY/Xq8I9cudry0P1AA1i8IejdAHyXG
e0F/7vRuJduu66dGqI0qEcwLg6vu7uo1mBNmManQvstPhOtOXBh09hn2H2NHs+siDa+KU2Vr7W1O
uWr9XPi71RDf54dASA6tMdw7Me75Ela/gYOcfKtEH0Cr8yPJ82M5AcVV+AMNNdWqw1sKnCWDJmJ2
6wRsfcIDTFncS5UEqjPjbSdbD6gqnvqFvBwEhCer2UCVyznUj+/7qRqs36mszxVMU262RTdUdwIC
wLPRNbdQFNUC2Fn+1EkL2nJayoW60h7VG3XbZF0YJYMl7THC74iIMa+WUPhO182YmbsEJLVVgJcE
5dFVTmeYbrsSzUdmX8D9MKKpOqgALuy+kvU3EpZuEBXOjKPr2h3EzzcRKfWrGLFNpPZaBWBVognF
GzmLboi7ZSsivrNvJ0Bb0W/irhRVP37LMvvvxpqBn/KLQPX6XmktwOYtV7SW0wWq20SvBF4Oe6VL
R7zWCQbhj57EuXbBWxL3UrHdsUBwQw36j44veUc0o0BI5WC0Iu2syGa9xQNx4cupTrmEji0cD6S0
aHPxAx6nbMCJG1mfOfJ/O5BIE0gwSkaMU9G86So/T9jy8EJ6gCvGjSXCNXOy/fA2LRbWsJolo5DQ
StMy0m9ToAef0wQrCq46lgMZMVFD+Eo273zIOmcxNJTkDbwRpYM9uQXEQa4w1ROI3kOzM18Ge4MM
OKBRu36c5Xhr7dvP193m99tZ4FmteXu1bfp1mCdjOnQE7+7ggRhJSSZ31R99HUcG6etkMldx+4Sd
Qewzs9qDacPQIn4cCU0Uowsua/8b26f4HxUWsHow9xJYtX5LEept+MwOZkjThnHk4AQfDaE+Vf8M
aOUojYGiRqEEubiLJdjREGL9oBeuyk+nIwkrleZRBqicjoLEFHSevbfjUCQO/SX1nqxUyE2p2rDP
vg/o3G1/gFELEEZ2xDINjXO++7eNskkOsKEhy7GNM3iT3cV/CKq0UsSEb4BQlBVp3xHM5COnzusR
hOaAWhZSgexoGe9/f1afZkbwE+yBxO01BBdJSwO//BATSIMdQ71A5u1B71xleq1f/7DkCLgMHmPC
+EhpXh41K0C0eDmudWpGaUyV00uMs83wEdv3/BO4dd1fDbFYDuI9qxXX1pTTr5+vDuDzJIv1f8UL
I3FTA183mPzum9RYOmici9Y6Eb5+C20ZP0T6BGkB0/pjhRA6v5HYATbW1xtUmusIpOQz/6HIV2hB
IjW1gBI1SCHTDOsNFfCsQj6936Kg9KC+/DV2uWxjmWQpj9BbWVrYoThMopJD2lBFoB+d8ulYNJnO
lXSY2Iglfu6Lk4QDfFnzgpbWLLng1YPfXRTapHPdBvrXl/GmOd0HpOYOnyX7p8bys9S9MQb4WLgB
892zAoCesXYTO3LS5WUsMaNJnRAv+bRv3mIrbVIrYJx/oegkkPFwF4+/oIGiOOXNQ5PnpvAc6Vy3
XNuu3Be/ZM70Xq4IZCZK+bhrUZl08hoqiTFqlLm0jWNhu2/N3fqhyizjpe/cWPmNvxX4Kzr3hzJ3
pxcNvu9ZJB25IBk2XZjrYwHrysvCE1Pie4ZhiG00UfUGF1v3GdrR8SjHFHa9v/N1YmguIC6rSLdz
itNpJNSeAOlmOqKgYgye8vVJw6OPVj+h9BamnReJjBUU1u+kOEucS0AjdYvIcf00aj2a5rBkzWJ/
q5TMjCKjs5wmfh488sSXSCiHhJaSGK5QGZGR4575mvcFW8fqx3nz2cEdyrYGY676VhnAXp3cjKvB
3mGCoLI12k/CZkHQWH4fLsb7CbQKN9QHc1Yqk/p8KVD0m/rGXcFpRH6cEjsfVNcydiClVHu1hyU4
whFMjrBSdLFDO8iuZzJhLgZpBIzd7TSb1xfhP00WphDeL14gGYfjTPOqbMH8G/qUpbbvd/dFi8T4
0YTNkC9vcnmwQBQS2PjufJs+aaDolA9bs3XkWGtc59/nYXJClCLdlN9wsYCAroqRnIPQv/cJxWPc
dG/FXWIHi/E/iqK5Dq1P7JWy4cISupiS6mIklTcEhVJElw0XuBW+RDXM3vbpNhVRdxOMbcETumbp
EO0KrXd6SVfuLc4ZDRmUE5tWFaiQlrIe784OdYxh8AWJB8dAdBua3gwpplEyrd4KUkv7BRJSajxx
usHsu7r1hRVFa0jpZtl4AqA9rQGUrPxte19myGfBny28h/95kGN96FdNwAcwW2o5VTbSSVX//xbw
6izdSpCtk0nhQnR4c4bI4mdX89DOxVtqFjcydc18OoTWrgJFDna3b6fSn7+iYMpvq0YScJIvdxDV
6CJnr4c2yqmDE6UQaOFZfcfTIQwRIoyLHoKAybG6ZpS3cK7xrwf6Z5O04n9PNDeVMsplKnkgvCkX
5/BANMvMoSwoW68BEPw92OsKiadWX5Q5vCSSj9KQN5jl1gLUt9MWtCt53DajB3vSJcz2u3Eh303a
vO/jOLNxQ+V4TvgWR4hgPBVG/Zs3QURUSmCxH1lGZgVYvNTidROz8dn9C7mAfJFy8v5E848v+OpQ
57IltDoWd6KgaTUxc3EYX/4X5XfGSPi87ifXy3FD8d/EeZkvcTJxkjenj6dlzzIqXct46s4pRXE0
bbCuBwbzFSIBxbBHLQYyasBjiGQngx60PfhhY2wH/Ok92xtviHWX+14nOQtwhkPVm/YyYL+zjVUD
9SA9OUpemzTO4HTrL5fIOUqzcfVfP9+1o+xdsSXwckq3i8RRbCvZx9cYcAlY62k6QVJSG3ldgdwE
m+8UFbiEWjyFJVHE9LXV7cftXX7/Cd1Ui9lGF81lbGOYFrGpORgveIWWCUng0T0yCM9sT34grhZ0
HWpwVs6egZ19SbOzCJzvv1B3NURZty4Pu20WAjPpEpTz7C40+WAuimWhmOZGxIYmpBg+VLrJO3Dl
DrOpnUR6tYEGJuTdcblgp2TASwFasmBmONumtKVlrO8+fohWc0JAvIhgGxyX02eNVgh77N1XVCLG
5K/FZFC/+cPKuVarJ7x6qERNqxbZKr7nwgIgMycrSMvrnAO0dMOre0d3hR+TLThlP3BJSpikr6BG
IFppzOybgFvoREund6OM0+0Egro8o3ENO/b1SiGJK29g+ejVeyFvSszwX9KQam+HdM0GczoUerN1
d+yTq9KnarhaV/Asy4+NKSPagNfLi0U7WM7bBuN1h1Fu0GPD6roaNgSgBowfkd/Ai6k2QteUAQ3E
RKI7s5FSDZcNhy3kltKX2ZB4DaObSptx3oyWwzSZYNRD+/JZ+WMTwdPK/FApcA71KQsjisPQloeH
8UzVDL1dREDtMMQ4/O05illRPf5WbrPUSP8U1z2XQDuR6ui+DaPYLcZ+0nsvdwBVWvDzfaPgMRJD
dtoyjfBtgGJEIIYmYL8USwuK3Wgi2muPNvFvC/blH0c7OYoH+q6tkoahKDjbeTc6RDIDVTHD0Fez
UFyzMUGzFPCUZRJOd9QGxvzii2GpNhAsv1uHCejsTv3WJPGZ/AbgMrz00uBFZWUiHvYZjP1cMEfm
YwtpLC5FDqKJjRtrQ9nMWvtBKMSJdo5dT8qejHVyKUQ7Sgl1X3KSgVIZhTzo0NMGEObgbuVNLaRJ
b9pUPgf+olHcLyWIYlFFNsQCYhOkD+E9eo107aqAhWuS19SuYF+A6XpL3nxn18/nRd3rAZTPJaX0
XZbrJQ/9lG/X93CvV3opelSgAz/aqU6aE2AtTld9uyTCaiPQAu7Lr+da22T1PU71og8zC6NoLWKO
ku3yw7OQpr40Yg5VOhOoHTTmCPjofeb3ldHQosDlBeFUByYF7O76gd2wDg8wquRuXpktf/1kFm2C
3QPgz30TvvVFRAk5rv8tP460JpdiaTycLkRDqve+CQp+aY86IK+2d2McP9xbfgZYoDwWwewJUAKM
xnhnuuKBDz9w5HWBvotxVf90QWyLz5u0z9ONgql08PH8CwqSaVudcq3uGb1lDxxaPZ7XCHq2lxxV
HeGx2WDmG1GQq6W4g117wF0TD2Ho8iRE+zz3SsXlfnAdHXwNMe2g9nyUHhtTPN57BkC0To+LRPgC
Q/zoxU9ucq2ksgfIa6PONMSbeLZ1+FlasW/6HAHCl7HZeBrnRknU3u4iNOqp8u3oJ5+b70QZMJVM
bIl3TavOPUx9+htCHO2MiANgBGsp5VxJN9B1Q3HKreRt2b0Hljk1Es3s5cu5t59s6Ea+c3SCRWBa
02QJtW7SqY/1iKtLBT/ltMsCVb2EmFBkO2wpsDKGAa1jY7TVt1vo1AOgqyZTGIVeUS7ZZUvWIE5k
j7WraPzzmDTz94PgSaYVYQkmGub5RlYOjfHHJW5p5qY9xAcFDeaQi0NDQ60CO2f9VTq3Pk5DKdQY
jSCLozUpDN85x2uP/by6CSphiyRRrjCsEA6RiIfJG5dF503oOlAEBwbvyLrPq/Tntyq1k+TJanW6
KP/3/ziHuUvuX1EjMQlR7jn4tm894YDIimHfdzNxRPeTqspu6f92hBT1HqVOS2DqYn/xmoYBIec6
/ydM2I/K2IZ64v6rHDKysJG86qkdPzf8JYW4JfrlsEk+ps3+0+VRvc7ahq6/2t5GrRs5VASQORDA
R8xtkW+R+wKiBRpjREr8UgK0bE1D3rwm5tDySl7lTRVE+n2w1+ozFWphkzTxG79rWF5moeSI5Mlz
1LsQ4Rz15T0171EmnUUY0ps5/eQ/jFSfPuu13X755nqrbSFsBQGjgntgZWhxHfm95xMhNUufkcBg
poRnrIjMcsTAvK3HesiRzXooib6m+B1SpSFYgDsGyJYLwINA+eSbkZ4FXQqd1FGRaDSW1xdpG5NH
7Rsru/Esa15239Zp5JAtvja1BNNgxXFtv7bX9xKHvvDZ2wVL2n+Nw2r1lsXo6FiKL1ysMw6ZXhwS
bCSNQHez71RAuDhOOsSDkJxLbCVZQgS0gnOZhxUOXXIdHke5RZ0QlT0cm43VkMq8rR+cRGsu06N/
z8qltMYmRr50r5SIB9S9dZ7K2I2ZitqlURXIRHntXaL7RLo6DInetjDwDTVg9gpuHi86ySJEoRMy
6nnzYU+vJbiqbq4Q+46ipZkVfhjkXFmt/Zt6nPwBhiIoOuTHSwZnxkf1N+pCBu21V5yMvyUtFi+t
uyavc/SD7vQde2u6kcm593OT5gCrRP/aowxHqptNhrUhurEu6M9AQAzKaEiUOoSKGZTCaJ8ADI/l
Q+C+dTp1YI022VqBmHIuUAVq71nNwfWSWWs4/ixqjSoipjAsQSQekM6Vdk8Rjxs5dnFh59zjXRZx
5u3rcn+ilBiZdVo6SkSo7ecVJubVUvjjnOUksAu91X7PY/JmXgZuKqQN8avQQVBM1/wdpfVTDH7t
TTjUkTB/ODqf1vuc5ShrAzZH531O1MvgVh17gRY1S5sOXPb9oqN4++0xUnSfA96S2II+FYWJ+8J4
dhd/bhkp/+R8yrEiQ7VNzpEpAwMiYjggzhGo86Rlym1XcV0JVUWgso310AOmejFnzKdjFJHm37vk
yNo46g0SbCvrHe21q1oI72Uzd9tJZIqgaMxRqAjo6ZMk/vVFZWnE/uBkN0YPHjDhmyZlcRQxm+a3
AUj/tDwJFVRi169vsFOd6MK0z7wmvPzwm5B2yD5YLFSrf7rA0R0kDqQ6/cnCO2QrNJKoq2PRJizS
lUICHxd0aEseVEaQwD5zdqq4zFIIWVtmoM8kxFh/pqKaa4BoNxhvRmi0SJuFYdvuJeqEJc6DJAAp
rUdPARky7l7KgYck+sfQZW+FODNRXeyPO7HOA/ZQWfcZ62Tz+C1On+CMueJC6RX61nfblh2cdy0q
70UMTERrA5BD6/e3Qu98fa2UudCMKSZ6oG4suJhh0fmuRcmYc94IavMyCrFv6XDC+kP1H/iVgjq+
FICSz0/zDC7M5fOlMWHPpWFtrWv5xVl+GvlBhU9Ze0ZfkUghHe4wvA8AVJJP/HCKcsZsyi0b3+Vg
ejJDbGY+uEz43d1R7/bRsrOSKW9Tsh6qHxTKQyUI7WPlHxezAobrVxzJ6d9fX49bP1FoqLNrKz7j
37PvtTdeHj/PO4m+DdpwLfOdNOIUij8BN2yremXInFHoMBmgFCdCuVGJjB30QimRnllgYNStQAUW
6k/bhMbXhQ7qKcuoU5luZhrgVmz6ebGaxlK5MdgtYObEeC8YttxEeUSGEkCXr+wNtjcdris8lq06
5OpIII66yhejTH53lorfTyfZHjvcCVtM2QzTSPFU+HQtlNRsmish9/369a8dEaqbPre36UzeWomu
VO0W+iYryn7IZeY5sWLrZ+hl9gyc3VYAu65P6Tf9Ek/0aUKLqjnKu4cqDphuNLG7pjNtKEV0a+Fw
z0h3QnaxQc1yqjQv9hWbr5O8VgpgeN8YLjsNtbVTHqVZekjp46cSEdDsnUz8/LpEyVQOEQ0yBt+9
XCer+OapRyuojIwYt698pRVbLgmBQwWU6wudJVhGb9zAZlfBV6FfWLEKJteOo+qGVyxQgKAeGlwg
iwfZqTar1EhRH3F6SUoE2u0L0Hgpt3PKvyEkdAL9S50Wy0XB1KC9RZ3Yuui8zDZO6gNGqTLp2axh
h6ip4vqTTmjBoPN9ktjUyztUboPYkxqAYbfW2BSNJqwEN0n/2iGSXm9JuO0CeaKRZDMoSSDxYcp8
6om4JX89FMWzt16U0WZRGn8yaCUvP39zk5gRhDkRpZDy3hGamaQvabCdf6K3AVpvwL6EYcTj7xBG
BUYWEq8kyC0Bnv6eV563zFS5NlU5vboCb7p7RxTdUPvEqHPBIZmRI4dDmTa70YL5gd/zp3ZT6yvn
Vs3stHOAuF59g06ZKra/KyqxPb/yvqLJyAm04R3jxH29UCoh4tTam8ViEVjFC6CYNeURPLaCTGcZ
AZyxvb2dEKT7JqJRHu+OMgDr3sOEb0Hd0A4+C3aRxjI05ZLVZoRyN7OnJFePiXGOPSX9XJz8vUCk
hFNTxUDdjgZNwupaKeVi+cHVMMgQWTGy0Zp7XW/IFILAysJq6LjgQNO2qDZLudnhfI/PFk4p62RA
U0BBfL7fq8+GSX4WmI3M5DmH7r+ieHpMFHvLaBIBNMLrnd+s0Y01wAj433+CTKVvv0OfmsLnvfmh
mqwbs+GzPviD/JaJHTxfoE34wo8WfUU/UPs873y7cMwx/i8dt84YZo8smX/2CkTj5YEuXO9ELaHN
hCFdd9sX/uHJ69tDtKt+keHJ3RM1JlqchakTFVgj6tz4PQtTqHKX4p46Z7HR5iI7ZJ12mBfhYRbY
jZmWWBEUhHoXWnxUHSmw4xKoYHXr+KW7msSKFIZ3lwrGzY1NdoFP74qhco/E+nMo+vhOhdp/6vZE
gyfModOVhIj+3gtu5J1VanyTZ1cag9wPEURFT10icNAuhld4qk0hv5+DvvxoFQ1xl/Vff09nmdwL
aqogrIG7LmdQMn7T8s0pJEEAAjAfteB3mApjvM8aOiQisR9MochhvN7GKTW7per6Guor67uyHQS8
1R0jW0qsdTs/eLvUAoLaxaE3D1cauiF8bRh9PkTAXFcizUFwupEq9xnfFuFaEYkktS3iWytmbkJ4
PzpwT9Y8Iv83lo3ydIy1Bo372q/RvjNdnByQ/d4CWHrYGG1QotIu0WH8imNa2EfgpmZkKdgnJpKY
GCqZAqDgojLKMLAzApHxU+Vz0qYqtrM/fQthSzzvHAL09A1z0F3L/EEUCx7TkKRsDcFScpR/vY9S
hP7/VOWUQNclrBzua2zHBtyN/y70mxCXNYjkZ7MlWFmmob1MiejPyd07RbrT7zMXDG3asrbLU1wq
E8qgN5R4IdwVL/2sSRWRUbvDsVMQXbSEHRH5MuH9AVGF8fkIzvFX5zOJylmiW6iW5Q22i93uNlSx
05jq7bzkuivkFlJetdlMfPZQIYPOKmHGeU/zRsfMy6eWvbM67ezOqBHfzxcbJIx1oC+Tcd6qY565
xjoi5B3R3LGWqQ+XD9q1FUk3lWCdwywdkKAdZYxm9zL7VopqQxG0LspNNkC3IEQTLXQAgSdqRSxG
3ZYmgKC6I5RDWT5bC+WZPVZXN1i/9ZFAfiE+fM+yyqD8kLP+K5F0BG8rXyoflCdclhyat6QyiRXT
lXSUAW8E7SaDDbbFQgLee+ZCk5Q6eyCK+Jm60avWrhLb+A7G43LGpJkgPIPnkEzYHI9mVkGtMVg4
rIShrkUZaa+dPbtbDUACPtoHScSpJrtWhLO5IJwAfVx6Z/m47VW3TjfOBAGKHz05cxIljQdYgopk
IkwnqaGOTtcWREbIUHL2YMRhebUhKnXsVfWntRL8r71ibqmN6oug8YsUI1DMYYnxONQFL6jlz01Z
mVT5ki1vg/Tx2mPoLuEqPBbGC4lWg2HNxMQQHir7al/jRLLw82oz+5fYDNP8gRCRVKnmlyvSaN7h
ga3DRXMlpoH61iZ7hG8ZKtKo0WDFSysETGtUVsZoa/Wu/RoSojnqBdU0PWMxdcQx2AEEsgIiKqp8
JJ7lODooBrrWI87FoKieZGLPuIrV+tMY5Dwd7QuJOukczh5tznj/yK8VK+BaevePZHWWP+RZYcAA
e+njzl5MR9tdU87+nJaGA1fimJBDE6QTowWgY5fQ1v5Q2Fwh+ZkslPvqeMyzc5Le/B/vsiAnuDpM
lGI4jxaFEHZH9dIwdFLzqINHWFjqyko/SamFexHENg1CF4F3q4hrQT0d7EsonUsQHUxICPINK/8v
C87jr5USWaH5OD6JBrwImxhuvNVlDe2v9qjtn4N+qhcnKyqwg/tkYGsTBaRecUBmeOJlqd8Jvyck
8ZCGtVTunjRO7WnvK/fR1VRRHO+ajVvs4FkzQih3zjBCLUvT/9bKIJf177WHO5Wq53tZoz0jKtdq
kEsSxVOBS8PDjYkKwR1Lry1lY5jbJadkQedhYoIARo/v+HxMKh0b0ceBU4aIXmlbW+ib0M4wAycf
SBdsH4dIJ2wfCsYoVx2+8T/cY4rGyyyL2iSUvNW3kPz/B9BAX6L63nXH31zXT/3AyyUg9r5ehFiu
eFIWJ9D5Bf7w0nC8+LuEDuXVOHtVXuag/BWBqyXWmtA9nqzYpXKKpBJfn1rFDlCmST+lwy1aOkjG
rUUIqpqFy/HEsMseWVdY2FjascbEM3qw3PNQn8wEmxHDmFcyKLkfnymlG7no2kJkWjNOEVb5iRqi
2L/iQ73WpY3wI87vvWKDT55OXIjKZFsrEx6QPxNsD93FeJkPebINsj6Y1xEGOTE2L6qiL0wVezZ4
XPc1b/yn2idZiKjkEDJXuQWbtfeszvsUdRQB/lnhTlbxVk/TLkBqxN3FqhyfFAld4MlfpDOB5yHa
NnntNkzs+BDlxNTPcSmx9AmORsG3f0bUOnAM7gDPR/XX62Brz8H7+C1Wqn7B2QTQvVkWeFixrx4B
Rn721Zv7T+dbsJ5nKhUdMdoAv4aaGrpKMrcI80X2RSFSN9pti6MujzwcLaRrc+TMUsfTaQM7wuAW
ZLsHLielLvkJnVB6gq0v4R2a1XOYCTl8ThAXC1ME8ZPBkeUg2oU20rJJbQi7Od52Uphugj9bilBH
r8/o3vANILNCRhcNHYL4jdjbTIHEPHgz65iqTniHoLe8nysZGek60o8Tu1md0y2RXPWzKsy5H+Bv
kVNkBDeBWfuhjraKUS3VaKLH2tf4SLl6nM0u7WuHsWXo0kYBvlah355+ztp6uFt/QVnYtq8ou4NT
MC+lE3WAnWiYjDtI9PkIUh3/ezfQky5XjXE9F0/v4QcQT0jTebPovFvzzTjbQgd77mAujoARmHCG
3H9ZqcNT+EvlRPnbcksg4tVCDsZ/Hc+h9dC44P0w1xtYm9R9OdygahocNDaRyhhdCxwEaUkYyLx4
jQL/n1IZUnBUsEq9idgbthXA4aFsKjVF8qh6rjTCagXUJkrsnW0jCjYJan6fZHiqLMjhV6C3OYVd
OUVa1YdvN36COqA1iWcH1zzRpN8Mh98yox6BImn1ZwVGTWhsFhk0OmolykGQ7R3OD604oSJ6PwFu
qqRFQtI33kQAurq2viaSNiCnmUO+ACjk+wegQ2wn8moWbbgH8YRf2GHeuiIoMyP1nsJPa1rcALQZ
o62w6/2AfTlQc/ccWNQFOKXtkSihnMqbxw2QbFnTfmmzMTNQdUEgOXFMcWNdSVRzfdcqGWXOiyjs
A70xnb3r5dLeEwAMfemhSZDzKqkIUCNJrMb7IffYIPEfSh1qCkCixmfQFy0ezfLUOqXxs4T71nY9
MSznmnRxuZT0DV1pHDBh9krRafxky67UbDDedcgLUIb0mC1NSpqMkhdjF7322SaREHy5MpMNmU73
z8+WhG72De4NH0mNK8Zfw9OHvWDxZVR3NCGsQ20tsKdvcNkxoBjUs8I+kU9+bTfIS9a/JbAF1cCu
PXUVOF9KzJXMyKyTJHOeybyRJGYQfvphpoQ7DijAe/NLqm++Xpab41B6xCO/i+BSsNz0ODkaDQqP
Npv1gnOEY3mWBUcopeEOQFPZVmJ8B+sOtq0IxG1+ES8bujoKWeOZ+9ZlXJMINSc/5Ap1TUk+9w/b
g4Zy8fBSzRSi1091/5kfzWJw3aM+1UiBYKlJFvXcKWkGCf18PDZhggecD/E629253H9dEyuSkrEH
oEHrpgZ5p1yCE7ERKDqeUMEPosNKsgAsyGqpgP8/AfMO56TOfA/VEK6amTMY0W2mr4mZkawLkiVQ
WT+lzNWZ206ZQv4O9HYCbO3q7BE3OeE4S0WmYvjcwf7YJ3FVogfErAAQUnohWjWvst6oMIB9Zqtd
ijhy6/2VPMhrAiQnNhtQs38iqGF2Ety+0Oo6lBUJ0N9fJ0T33hgnisyK40rBA1v32ZRAa3GPEJ0h
TSandyFnuq9liBu217E57FjGN46LE8ZUmYG3bbNLjaWB41nTvbhjwxqeaT4mQBYgXtnnyA0YI1Tx
RrRDNj+gE23V1YU383z3MB6PoAy79+iphkYaQOLbWjpb3BK6QyJux0B6OgevhlD+eVS9P079Nd+P
xHCfJL+5wANpiVa52l20TgygEJTJ5h8hkZwLRYmflJv6pngUKawxdaC6KNYhLutG1BDZJplvkHxx
ZDrpiI+cPQ+bH2Wtj22z7zQjroy3iVumcU/EOd3TaxKOn2N1/lWC4qZGbMb52OQLfNRtq2J4aU1v
OUgDiX0KlxZ1R2QQrg9YaIHD2u9KEOU0yQ1UFxIjFj5orJBFxLAHDmdYvxoAN4qw91Rif5/G7URK
mY06UoyuzGUyO2Jnbfgpocn9HYPtUIdXQU72mm2L68+ArTO61yd5VAhC2196yVV1EMpIyD0JER7z
QTeF19dukMB8P4JQ5MUOIAYn+9OnB7Vp1CYPz80A9piW9Q6IUmIhePsuWeKAjkYBPibvmQxIpDzo
U4jl/LVFRHmpfKZwRJr2L8eHOXKTJ4WG1sUkR/kYePJUc7HXD6eut+Q2QqWOrlZH0BMpIJqm5ovG
5OTzUTwRR7x63xH4XJX2i+zxf7CZVsuL3NDOiQdCfORdT2WLIbfdtjWlqZm3YdMsPpHEX5PIfXin
vivCk3zWqiLUkS9QoNIRRDFjl0q177TXhI4acGAfl8ZX/CbNKeouEnRayiaN9xxEo6IaeP+OH2bX
cp6lUHDavim1bFpJ2CQDgtxpU5WpiU4xk6CsoQpAr2pnWVuFODxnArPfKmhi+4fJQ8JeB3mGendr
iTFawPxij7iRDgaKRIvSBKP0krqUrC6VmnBVhcNczh/Ay4cl1ZarTLusfsTQC45exB6j+HjxIV3p
kZR71hT9KMTg5/byV7komKaMUDMHg0iPhl6lcMEftRUh9Hhy89Nj7tzUNZhLz51jQldSia9CqDQd
bG/v4vKbKDHKhT+IoNm6jSPZIM81ofFRK8SGBoIMXdTa3EYV8X/7kZp5K4pFWPXWZkNUq09qXWhl
YQssNPoOzzzyguxAtsUn+UsoZXPY4o3r04RseyyYy+CsCHfA5cyJLFXoIuuXK8ulcnLg/frEhA05
QzGr+Goz2jG6aJaXQdUJKmcZH6UFYryRpmy4yWOc4yTFXF3c2CbHYJNI4u0vdbHKTOPru/vEwKRV
5nAMR+SXUG3w/8cxhoISmW9WPT2GrgQ/KVcP4qt5aDCmmgZsgOl4wa+8KddJRcHSbR+nDRRypDvK
AIb+j6q1w94RsUL+5CRNUeVgnoNuriTE7oM5sRvnfe141jRCYLykVORtMOe9Kpv7haU+pPHTay5q
cjncjokRyhidSvoFlY9lM83gXtcx0LWanZwmgco9mrjm+YZj81CAN2OcqxuKgyAb62NenqWtWe1w
MWo2UqvRRX/1XAhRLwzSVvLg0O1IMBFR/PZNIJgvx3Jm1l1dbatYw8OTeEFGyM4wggY3DATyr50E
PEVDZdx2rmJh4HZsU8SJbh+U9fRQp/pSdVknjqM8RJ0Dge+lwbHOSBj24vb6kCusuE1F5AXGTUZv
E+BcrSiMAc+xePYBuuc2Q/7B3sAig+e/2Bou4RobEye9M96O9aefPTkcRC5Cu1og4OdcqkvokBdV
ZK8vUqb8FxHmWTY8/QIF4dkInKW+ZqRjgoxHy8s6nj+dbwWEYzG07tolEKcyF8MKeThkM1Ai918P
/zVfsE3vy1XwUilmVHNiGYBB1x9HkFQ+lrasWvXzC2Gt1cEwCulzeJzXGiCTWQzaCD1i9kffqjbC
9XaWujZzrA3UCk5cn05KJc/yAeoQ9xei8tmCXdfpaQGea49ir2fldvinPp+BwO3gvhIR5DvUIhdj
BnHBg3kpyvlgMNH+z1VimWCXVKFAUvueLrOpPKnTv8HHSFStZqC4TiAIy+98mDEyGa8t2vlUJVgK
iurj3sJaMl3Nl7KQ4w3Y0hAXWOnBlNOYt0ld/OkcQRAlB2AjJeky9VwlD6hbYR0jOZzNBKxd1buG
X9cTB47nPZ43ZdfPo+T4cZyFUDgbEAz7zm/vGAxPd0PHX3ogPYYILhdAjy5r5TteM6ne81HRMmt2
vzVyuGx0WhKAESW5SymP/2A72OxMOnx7YmHe2KKvSNCpO8wbkctyecMLMgv8bh3nx+pEX2+L35j+
IpVpL37+gYfLtEm1XkxqjjYBv62CpDvs4CaizkEgJh/bdOJs+QCURn2Gotlhu8dWDmOvlE+Bhn2a
uAqaHdiYSadJcjffiiCECgIP+gxdpfVe0LiIfV7WZkfuzqI/jm8kQgNq6NIGpQeQvr3Zh06E8TGS
bUO0kA2uEpicdGeSZAkND3UtlEyHUb4JTAq6kvXLp2XwI50MpXZJ5ZfePL/0oY9rQbZ5bi2ctGAO
roQQoXtOd4VZ8wHmPxWV/ap53Z6oCOvX3P10cACY2KAShpvK2bxGQtJskRs2wZb9FUxdmOB3B95G
esNeea9Vp4YHp32pHqveBfppjNW/nLswZC4reuuEN6wk0g98gHQxFrzbQwD0XgxW9tVSkt6ojukT
t8l2ODo3DppnC70pjdY6sum2WD1Pe/IGVMJ2HsJlsEZbPQmMAk2Np1B0Ql4ymEUdPOYhyjm6RFSj
TX7IFF9WiudCJIk2GXTpia32jZ3YJ6549jtfuYdfOra0l9fjkf71h79rwd/dAAOgRS5doj2jDD+X
Yo+tmihZH6hRO5ZNN4uUSD4n1dzKe0pFLe4zV63I9kYHpMEfRbDQlFC2yy4tfgRsgkHbYrOfc6vx
PhS+Nu+NwIkhcsuPkE1iBBkUmopG/Yhs4bQKJYV3RZGiUMKxPWUICtdP/d2wqwDqt2h1DNWCFX5E
WS+1rlpY5zrQU764dk3keUVo0Etl1i1F+n9KFbM6Pgdnyvt+G7uck980mErEq0jRzIwXxFRkP4nf
NRrx57rgzgai43iVFIepD6KAw53LzZorv0r4kNtun+WnK4NGQJ4m5rR1JyeT86JmV5rtPFRVrMZ/
edGGMYzJCqM115mi1f8pT3Ja5gzH1JcMhuq+vEvOB+LqMpLS597SxWhxtlScRUVva9YLUiD4ZuCU
FDL0Rgd2ZthY7cU9N2zWVzuO+5E0TKiZ+UvNae6+Vb8l3F1a284gr5wJ9fXnt82R+A9JV1bgqddI
dptzBpZES6xSw+qHgEnuUBdOcPy4rwnuoy/vdpBFL5FaaF7zbZkIBn3OOjYhLEl3NsIxzAhQMeS2
ve1M/vZuw6vBgF8hu0SsLlvHJLIVcr05ErXzQpBEbzy2pdWHcALhUvurWODTT9RXoimF+Y7NcTdF
C23Q+pJAkSwC9WTHQzpWe1JqqRDZg+SrRgSfr4ANJn+sqfsyskcA6f6ZIRbPSaeKBh5knHvjvIqX
mA6kBbp5Pec7cJ5EC52c0Q1sdmJgkbg6GmBH5PnRC68rsWo9SY2Lb7hgU4vBp9jaMkuZuiKPHX/r
9N3em/JaDCVbgWL8dTRG2HiacEY7fK4acn9KjO/FalrwcXs3QfptkXXzY1u2lMJ7lHqYhZ8VDRY2
fgnxg8OxEm18bss4EaRmdBO2jV0uWvWZNNw475dm4il1AaKAPDt35FwYCqOyM8rVtu45kjHjKGou
1hHhDwy/3i42twaXVHATaNouIzA+AZNyq5xdFnnZ6EGXeVDxCm4GvNDMry2OrN1EYWisB2XkqjQ1
aWY2bhTtQBEWy6hz9jJEjBTzv5sY8qt00NsInUEV/dFjpqAM0G6b1PcyWp/ZowGPuhqnxZbTgNE2
MDMVmM//VtOoF1rtxrJnO9zuIQNmEn4cJJeZDGM/dbskiglREFqPVJDQ/wEfocigyNQK68j/sSow
coT1+uwWGHjrH+82xlmwVqLabocC5IjEyCtRhkYh/msoh28yQiiNUCJ12KxVqjmzy3r/EyPUTbGB
uK5VlhhTmbiIueh5U3l7ii8De/Z3OYmiai/mWNw9C9u7qhP9PpSwPPLGu+RY18LbiSeuhwXnOKti
L36rCZGES+IbLKGY5P0yr2v+gd7Rbml4oXR/zMokIjN/aWEW0vukZ+M6YbABJAwTstcsDhLeBZAK
dPD/yxfd/aHYHcJE9iCaDcAvVgNKOdkc98iG7CeNF0lOp5Ym6gNd7GL1K0eVAk/geOj4yBiAKSvr
TVHoSMfbdqauPHQVvgSelmt9puALLCztnUvxjD/00P57SRNImavIfP4tvM907d/KofCfwADrYzRo
/OpPYVLwCz5/knwPewCTk0byWf0VkixcNT+SwDQEff0nLmHcEEutwlEa5v7V2rOptcoYW7k6Ux62
tMfrR1PpxqnAFJJbUE0Wyq9gnqx6VOQ1uEQ2WFHnOTMYryCvq80GGK2T3NmDFbNRIVvhjZhHgSu4
EOMX39xWiWjcMjPhe+FgAhUseBez4CUyufW4+MT1pHD/7xWXZuwFu6sr4VS3LtGSVXRClFlFZsyn
tuU4U3Ll8jMG7HKx5lTlUBcRD1KnpreWzwoOEWne+6/ujwaCA8jaw320vmkFyusVxJt8MDy64UHR
WmM2OEzMxewoXQgTbn8WgVm6K//PSTMXyMOJl8Z/zQSnlmJN/AqnDPR9zHOO9T/Xz7XZL9d0yUWQ
6MpoiUdSxlkWWEPbGKKAGv1rok/GGB0OiqIkI8A2ukKq8r8vhwfNOBGr73LStlSdH0Vs0I0Zz8ML
zqRkZ2Opl4qp201VAsCy/DgVpG0LklJxVuDkYs9F+TyyQet8AnHn0sV0KoFK95iacwGLxpIMxfby
7zRHIbXZgBWWn5oQdGkheL2TGQI5DOGgM61xBFdA5+MVEjRtX9W5lh3qsbhDSlsU+WsHdNOwhvr2
sx/EDOclMR7xIydInHTHu4HqFGDuegNAdCRtTuMVYc7xVx+JHBOKL+B0l1dr1gRiNcTtGbERVoQw
8lXK/HpCBBuPP8bPVhclTmx9VZI6Z122UR+3kUWQBj/7X183x3PJ8852OdzZkp5R7JpdHci/eBL1
31Prg9nYKTlR0TJp/iVkflYPLmON09xM1YJ9MWeHk84hiJAvBBSL489ljNHA82zM6HP7V51kpSbX
O2moO7sPb/ERV+t5c57tly9Ma5TlT185sw3aWceKoJEtJMEeW0lm+rjZKu57KFVKPVNEpE9ylFyb
Nc1UF/IOwyH/Lq8z5Dz9TJVkW18gBgEuL/B8+SbaEkAsyKt2Q/L1H1Jp3JUofvNQMM8nM/M6CoVL
H7rR3grHYTf0vikdRWwYCe1Ty0K91G+yg/fEY7erw9H7c1PhnGJLUo9wNd/Dk/GxjOkUtXpSc/F3
4bISXHsWmSs8qhbmfec8tk+fCx5Rl87XZbd30ZmSvY/w45SVCiFvJGQTEeSAAmXlQLwBfHeyOnMH
Mp+RWVWh2BiyNsuubDf2KmU9lzGZYCAxajlSmiy84ukS/ZnNOjhdYN4X8V1NS4F/5wACf+7hj/gQ
9lNr3Ga+ZfggT9jRPf3Jl4+zIoVUuqDsyAzfynyg3S8OOqNYlemUxt8OOJmY8TKif6u4E7dEMB7c
xBOmB2JWi5LKHm5ugOJ9fQ0frO/2E08IXwKzgtbgP6puiNBGCcKsd5UEfSxVGxhPzh0lLzIzp5Rj
r83fKvdmS1/w26n7Fx3EYAOwJeAWYhbZ4nX4E/AOzhqAvP9P5FXoT+iWW8KS8yA/fXJXupsAIv98
psH/hObEbfIzfS6KJe0wjCrB2LZnyhQ1NcgCAqnJ/sZ57zwLeBRID0nzgnzF+ENL8DuKxW+cs08E
R639klte8QpqG95NIKbf85rknFBMKl4Jwg90WMweGwIJmYFev+zcCC6wOiWELZa6XqZZDSeQIh9b
VCKRQpSBlDmpnw32r2roipgYQE/lwcsQ8UzuIXRP75ebMS0vxRVcTNVwwjnCui5Q8xjNqss6nQu5
2hhyR/jtOCXLiiEy/1hOvgu5Avy+jY7Kwckw9N1S7/hVo702/XEFEIHW+dRl8XBOp43LoyGSYv2L
3IFWCFnhb7N7K2176SklMDJ0EMn90onSq9i4/YI8/CJ46d4U0WrWbW290KriY/kFR2kEkZhdAoMV
fy2M0oIeg3u/vXTedcTO7ROFNWXjDK3YH5VaOXCYD4NgVnbmb47r6gNQq3sVb4KlMFY5nowqdXuy
EWo9U7Xv3xKQKUkgWPRs49FpdTUnNT2GRtmm2hp2Da3hq96Zg9wG499Y2I3y8TCm6r9DxJGN0tSZ
y/hV2vv9YBTNPXi16K/rrmipl/7LZKDW/H/tqAz8AgFh7TkDyUeci17e5G9a7K18wrOkvnmvVt9H
nW10cHqnTkRtLj0M2vVNcD4mLqk1wmta4TrVYWiK2ZY2MIphgnddRSH5dz1qCOfmZiW2jBb+sVK9
1aey1ydr2fO5tXjKwwvCDgSMQqa8JoQoINwhzv6WZ1oQtercIXrHwmZJd2UQURG8N2oyoPAnea19
DPq3g1zdztVpw7AVJdEeUzLR6U5DVoHK4DSA1yFaAhRtccaWzKS6smvmwwo2pqDPaWKQZo0a9Ys9
EzXid6Rsw4Cf4MdGGYYXh2BwrpDjO76+4Bkg1SXHZF0G+80kbfVb3S6OSj404ZwQGPcSVrtyEHxK
qOcF9mkwh8TXixwJAj4lIwJEbEANZFodMbwsQkZRTzY0ym2jqj9L0NrPyBAF4yQ0b3f9lC/o3Ucs
sMieu+de9+nssdU0y52tjnEDoz7HsyzaB82GfshiKFsBXWBUTZqvkwjZcIRVk7pffnVZ+HQbTcU1
umnl1mdAwlXKecUiynqLXlBjhYCmZmix8S6lOG35VXjzvzxm7F5DiLSmEbLTuzm5ijofv6JUwFiT
GF8MofhO2eirbjrx8gRUCWJnrS4CxYA457WShjCJ1DVfRcNlHSZz/NAnq/B5JA7J/eMAlsk0Grlg
c4onW/qLVhD7guyWfsOrZQFNYhhVWQ6mh/TAy7a9NgU4YegzJizgdo+7j/ITDBihkkJfKxOVy1qB
oXPw76SMANIE5l2Vt0vm4I3BxnUvWUsnU+OmTlytMwnNxjO7a5+WThA9oOYFHXPRNdOCXZqYH81f
hoya9AFkOPJ4lX3B7QuGpZ0hXM0rA3VQd9MMmaGOaH5Rev4LHf6GD9F/tgdldCGEk1VzcAE2VjXa
W5N7GSS74LtwUwiUZD6IcU6bIeRNXnNIbTGS3jneXlz9cGZ7SWZ5n16RMvR/h5Mquxz7V3E9/AOf
bK1kQPibVgtis7Bkf+9pXVotM15CyTCb7nPcR4R1k90jcYzaQpe0icn29pDOiAOzTIJrzGa4e6yZ
C3lXqg0gms0fWF1RCMZDTW9X/LKCIe6/6XwsJK1XNFLO0usCYmCcj4FAN9OeAqmgG0IqqgM8VcRP
8PBJiDM7m5TXNPEM6ObGYBl5wjKW2KrvQdoNgcckUXRuWtTnVQEnVS0xqn0n0m0oJGxyvqki3pYF
zuvsIJ8ob4r0Gk7WCxQtD8o4gdWUK2GEpHI/dCJyVIDoP8609I3X6WV/5l5FpYf9/W/VbI6L3jyf
lHg+dXM/zfM9oDo9oM82dxTbo8Xrldme8fJGp3Sc0+qx2sGlL/QM1912Fu0sXSbBlSu/FyKysmOR
QRVNzyKVPnT8RLkN6tyRlp+9k1b/Auv7yPG4hSHGbfiaB5scYJLmc/QArAfM+u80t5GP1ZxEWumN
E6bcs0qKyBEHUo8vOExwNyevzcjRjAzCiVOxELv/HahUKcXHWqPkDdI6QKuafJMxGSe9cgdIgZEr
pAcNX1r9gzmIE3EttrykXhLXRJDJlCoNTKIGF4CbwiRxAulEgyCc/GFx1sJq0ZtRRRIWCvkV9Opy
J4aLtEpuDtSw+ZxQkzxoUI2/ozIf0X0e3wkkcxWKqNQXKdnDVz1faWJPAAj+GGOCzMoUNZux/vtI
2IWce+8ZDhFv/fMRyI4RZ9gVWLinFFTd7kjtvrhkcjhUHXzahMLLAeT6QaTzbEFqlaF1jiSGj8X1
Op6nDZgztXrie2B7TOJRfVcogicKFKT90pQymZY+Y65VAn9SAY8+dFT4Tr9wXkCgI3hq3OsNefyH
+gZgC3YowIlc1p5xo23XmkQgldDLCW0pOaHEMKvCIvz/y2GTQc3h1iLNaGRhThexbuYxY4Uwko3i
cBE2+wjfjLbk6XR36td/epuqngVNQJqJgSXmZStygkBgMru8Sn08Ym8e0tr/5tHRzEYPp7k8t7/D
fmHVVHN86qKuG2LWDhe7ksQwfzt61mVCT8bc/ZOyd3hmcim/40RQ4Ls3EttbJ8p0KOysU2UIdrFQ
pUE8njL24+Ph6rVa7R3qKLAmPhxHfXFLkVV8xMHg/43/qx34B9+ThF6vAQ6Y1eE9WjmXwicTqcOx
6KrAU4SaHMr1lJtIx6p3NcUW3NdvTNu40HpHPh2ae2ZkHvfAMyuaF/Aimd80kYJBQcxKNkNrvvt1
6rdu88X7UtSX4w1iuq9dzExPXsoBPKV4ebyyAQdBCKQ7iOeIf2DRRI8J4p/5YLZ+s12/ODBKbplI
ziasDL+rsHkSZbhPEAE30jYZZzmNKhv50QrMmSpaKQvtx984xj+LsRx2xVM16Uktg1qrh8HskRQQ
znAAesrPioXHiJm8JEiywe/E5L5BjgSjyI7UJs69idTKzSOPACngZcb7fCggyAsBmrfnV70ZrL8t
Xt/wy+eOgyiQaOpn2yeSa35f0g/KxXXdxrCfiSSLJUyH8jgnDF8g9zb3x8IYtyTGVag6Agy1Gd7H
OcV7mb7/SdMvZjZaWYNNRIrZRPvwy5wpqH4E7mMTcCjdXt6z7XDgJN1m2yAf8FbBhWyVqVzmYuIC
JO3GhCoYKrjcOHjcN797C0QayPYpn86YBsPds34gxzLc7p4uMM8u3hKEj4USH/QAshQ8R2/rzAg0
bglMwfDbDTQc8EKfFUFfmgo+i2atIGP6SUwofZ7QChPvT3pRRmmUrg7FQtoF6De+E7u0NRP9p3m/
zGr06vBG1GfHDeUMYjizHMTG2dTlfYIusIYBhoX8i9dIb05U1jUNWQ26XM7JKUlaigbHUXZma9py
4+KWM9l+O0+tBNfBQxdiyRob7zk2WL6JBUJqP/xvOIZxRNJbHKxsR8o7pCWf+O8NKpfMOEY02sn/
wiZha8zkhaWILk8gH1XH/0/yaTLOXc0sCSNGFPY3Qjk2oVToiQdZIc8s8O9XJmnOxX9UtxEUzAPW
8PPfTuCbDbELC0u4cbv3dx2GN2NOGdVRkNumiiuyBCl7vZwMa7kjmx/arDYbL6tTh3w7WsEnxu0o
2w+8mxX9txg5RnwOt1oI7tRiSlD3NU767/9KUdXJhDvDABGp2lKm2k2yUCdI8s1BhI0cVOqMFNDy
PICUjiTyzerq7wbls3ZFfpPoZH865bC4vSXW5eIVUf5RuP54Nxr/0deuJTRAOGJKjvNaokzg8KhT
THQEHSMW6KfAtXPMJizmOhA5yxOaeK1sxvusMzsJFFH5+te3YUN53zhp+JhDSBB3I0z6A9R1HiOc
bBCXtUFNR+Wmbx45OdjERefgbN+nkqSv0ARmm4N/UErixLKvZGZHH2HUgzvWBZttIrS4ZvABxkZF
XRGub4F8tKLnP64pZ/M6rdUlex+gMIIp5zJZ7CxicdA5UGojqm19bwRXhhnsKPKWtWN4TXFYBo1+
fGz3Kzg8YUygbJPTA/L8oFP9XeUyPyu0dPHXjn+34/kvQ/OJIAwOaeKVREe3Xvq/U1YORD0V36l/
oAkPemwO/tmiicGdro3goavsO8rWX3N9Q3jOMtBLeRaF9gNnumEzqzoom/l5DMK1Lmps8JyybWhO
gFULMAod/WMUf6lG/CvjAP8LJd+/k04QnZt2r4WwyroivKAu46LLG0Dv77kCVx3JFHvxfMVL2n2H
Os/Q/2268Dd72A62b/9ELAdl8m5H1n5RyfGw+mbbCmC3Fstu0MnzYxN33Eo2VWOdQcPPq3LDoPQT
xm4LlOwjTZ18m3KfDRVhTVXzpj3lSxNqkvJ3FXOB7/UUSb3vjC7i327ClZNzy6ciE2qR9RZzVYz4
HeDKe2q9u+x++GK50hJ4sCAJOjlee4AlXqKysuRbWtsrBcLMQwtkn3APLb8Yof9Xm1AjDFSrINS9
kXqooailcXeKXoMFuPUcZf3VDG6Ybz+OpSB9CZX9XuiDE9mD7qS9YnL4JagXyz07inv2YsjQnsTr
+OYjPKIQP0IOtsXClBWyDLZnLpd/T5trhyrB63h8B1NQB+Szx1lNkB8mRvXFCOnXfrbDg+wyAery
g/38HUJv6tYyM2049wvSbld3m26pTbaZNi1EO92MiqYQWfqo+9UIs7QMz45i7r5YarSQtR3k74oi
iG7S4tIhN3C4gpw3m2zGWh6TYW4iOn9cUFzxloTTVolFd6kPDnmG0HCTj15ho+P18wfvO4SZwXB+
I5MWSETDYcYiUL9eZbJXNoAyMFD4l4DCZHRKlQPyRvS35jAG9zp9WTiRa8/Uwr8Z43mmE4lyBZ60
x3pJouS2Wk2cfacFFYrprcz3nwXd6OFZT5PEijAkZgY/ZZY4lot6EtxgXs3js0SIUnI6InfNryY9
ccxarEn7k0Kyi5VdRrqgdrz0UnoADds7EMey3H2Jiv60ztC0nJOye56xTVCXg+y7wJ6ZNO/TFM6Y
uaFoC6yiMpXNYFAFTGPudt1nWGjbTQlWKHPW/06uH3+MSLKM1eD6+s//yU0W19bQPz73x51RAPJl
3pXm1NMRyHmk4tlrvGuvGFnR7tIQADZ6kLn52APwFamGsyBRXnoT+ka62KL3PDz0bA6F3MjhWu7G
ZYJEMBzcsjbn/dyhF/GUtPS/iH6911HbbHKg/lFD7xor3m1w1azUJHLBM2wHvD7EMO1VU5SUL6Wc
tgl0rWxYXW0WirQttMKwiDZwRv7A57d4OlP7NhGspAqbHDQFjThTI1zw4TJ8YuE2oSA4pTo6Gq0o
MURxQFfsKzuYFbJbvYlvRauZXO5r5VoUFW5zoAz8PiBbdJdp67GyXBEd2877Hd5A7e9RreeTZSkF
fi4tUAwtQi6gwaXwckIWWu9sX6I6QJfLiPesABBjtnh5a9WJktAYBRt+gDP5URr8p0Ji52D2alXf
ZIRmeURIA92OX8HCPeadZKnqKH4/YUZ+DFSD1DSaz/8V5WGwCytJN2qRAYtc/5izAEwRWzG2wnWr
24DxVgpfQxkzUEemnhdKNpb175Y6cbRB6kKz7g+CwRQ50EtLwyMy8bIGK2cUWLcJL7Kgt0JN43VJ
qBFLZ+nqvgaTqVKea/XmylNBSry+B1NxIQFsddE95KiSg6uD9WW/nC6cEaRKK9psjqlG2NBw16lB
5kpVUIvgLdcSVlUuK24VUrJ+5LErWD82ZwKfe68kHPKx5pHuoFaWRcwu9+SW8w00NmjObhqMFc/L
+1OMPpYLUq5LxV3MX5B+7xHT2669qtfsBuDB3CBg2bjQf5/D0yAXOk7+o3iTq7u4ZiYnAxecjfO3
zHE8TT3BwZmE4UWBJ1AqFTooUcNkv2Z1iZP4EdJYsoPGssJ8605mKDFUJAoXRf6ZDnCLThUmdPg9
oQ3oS1/4/iR4vKdcF7IMr+iTSQNyxJd4LdpDViierxPX0fX2lNU9nGqpXteyhUpvkOd5Ez1xsB4/
uV2YnvZd4Q5dHBszcu3O3PBhS2/GkaTpaJhPbM60ANhqas1bXaP8+v1XkptHcW/kfTHHHOIOigN9
eAZ8S6bZZfj2wzv3L21C1Bd6vteP14bPDpRbt8wVAWIUwKJ4m8rIDywKzm7fJFlxebRw1CVkrARX
5k8V+SjePbE9orMHi+kWwCK7QifmZGdWkfpaDVA+r0tO5+ccQLVNG+z+M3716nx3+1OuIJxS6/GC
y4tY4R1xOPxOoW0O2xb8oPIA1ub+IYP3MEbW0av1PtcdjYvXyD+cR0zgtxPbiEez0zcJchP7qRjP
Nxq5+lGyOKUHo+QeuJ3+Z1X8hnb4tsn8sVPtNBSjduRYy7w0hzUz3M8OYMlgY4QOnss+noAZFqG3
dM9+q6Aw58oiWTJkePFEE0cAAcjqReLs6/1p1xxZCqZL5J61C9SdIZPHxVqPVkTz3scNgZJ2gvXo
B42WtWlF/GXRNLwF6bFCytpbrbbMpHwNFvhmI3WUb0S+nlCiZfz7vSNm0/LY3Gat74LxY3EdBMri
jgog1czaa7Nu6jhPWPKdoCX+bDuiaHZb2kRW0CQ/M80izzPqqkmQHCGtP3X6MjjyZxNS630Lexu6
GnfN30MVh/mSaoupKm0Pjhn2Qnh+PAyUAg5W1ALBoFRPlyrqUb7QVXXtwQ3849PFsUiSHlpppJ86
DC/xDCKWuJRCbpug9hhZh8MWc5cqRCXu76OopEHwmRM0LG9Bun/HG98UujFmMKV0RxW+yIerywwC
qRmYOwSsJvurapBWHBU55Imw5+PI5ZXw1AmtVDqd37jhexMedkree9BhObm38Noi83J01xsye/Hg
IMEGVUAvaWMTi0TTZLXOeMiP0NF21rnJems0E+QwOOoHA0kDtONgprIfleYuFjFYd08VxgOL/jrm
W5rl7bHE2+BZq065PpNZldZV2IkMC40SM+Z9yYktMz5orwRW/XSPBkunr2lgneOcLBqZ8gXzZIvJ
ROOEe+rxS7h+IgrOMD36SFmaE4upWwN4tsmqXB76y3f2sbWjvPWGXkNFBtuZK83rPSuAZaC8Vi7f
vRxu7AXrD5lyA8RJdIlX80YSzSKzuG97psHU4cF7Va0Q+T9OHjLYlrwYoTPP1hDyAb0Yz9n3KD4m
gN+y0C64Fl5xE9j0lhJy63906zqJ0AEBic5rgnZa/uUXXPeSBwqHNQjUmuighShKUPIs590AWM1o
De4Vfb5eb7NX7oh3ggyS8M0a5iFqEoOOQBiBj05aYaNLwMKqNpD9rZW0J7GhLbk4G21Xtp2bqWWf
SakKayIsMsEp9Ryr76WnKG1MOPoVyhDFd8I2+VKkUUvT1xBEdLh05zjlk2a1aPvqwd4wsjJWhh+2
7KAU6SNScFuNnSm8+8Wi3ZCIbaC5x8uZ7GNW+AB+95dsN0lKaWAnuSWbKQMH2bKYcF6LJAIHkvxW
hHrVZHmNG6hoY8hZMvVBH2+zuJAq2nfvm4j6/pdus35Y0+1SmlStIBfUZ9/cT2jmH5I/jt1/tyVN
erM5e6lUyBbKoZ25ez/sFOWBb5bayf0QtOldW+WaUNL3AtttERqKwaq4QbGl1tgl/TG45OfccoQF
jESSFsuSlQEBz1/M4oJG8d6Azn4wQzIJCf3yojiQXLe8BQe8lOCTuQbxUTDwo1lqQjBnjx4GZcRV
Du/fJKJY25AN926FJ7pN8DJ7+6ZuAgwht77N4M/bO8T/70QPuPJ2h5/scQTe6Op/h4xhYCSjfJeY
S5WDF4dg+58CPOKowM9g5NaD/1zjTfY4c/rQEGyr0IaHNyUia6hpBq/nHB+pR+k0z4A2f5taNAuo
pxdztqFMdh58oPlX964L8mQmgi5TDSz3uirI4CViG4GaCpo9Vq0KKAt0Xye5rBJe9K/yAtfzwo9/
DAwh5awXzF/Jt7rooGJut1UAyd/L7vIak5AzTJ2ShZlzL/rMKLvU/v00Se6zsIgn1IFlgQDuhBV3
LCWws4f0YeHGS30CL4QgAM0mXDdk7vRmsTSXZMm0M4PGgkbocWlAsPSbRD3Sa1GrxVPPv82FoftW
ZH/kbyWwSxrTWYQtsHNQMEXwlWjBD/AbMye2Efov0mJDjncljTK86/TQl/gzEXh3k0MGm+pi5+jt
FqBmjPNKtuH6lqC5btld7h+VUKFO5liJbTmpUY4De4yBZ383MZ0hvaH6DmnMpBltRqNEM3DLtjw7
5dFs9QDOxF23zu7wxK5f+1ly+7JOmlY1UrD71XhPaql3RPOa1syMqb/686+Lk9fBSrdnqGcs38VO
HaDHZpcLAnr2Mdd1sgWz9iDFjrQ8h0kMsJySDo+6bKwq/Wy1E0oXaeOKF6TbqBtzQEU6IniN8TlM
ZD8CfnzkJsTWkGQkLfIripmdjZqoexp4pA4m/aE4SXkBwlsKLknFFFuj87fLov/T5oY6MOD2Wued
KHh+xJs+tG86r79mYD5qFzZktGB24owY2/ERxoq3gf7qeLkebOCT6yRfni6+ZUT6GNUGqkmGDnHA
96Jwpoiy3ffSfLaZeHRzJeQNiwPwDlnVS9aDFXJzyZPQ9alTwzjs13ihBfpJgXikWjuexWV+g2LM
JfI3CqqkFtDrdRcPFft73HMZU3+lDJWK/O+gC5RrFi8VkPq+2fHlBAW/fz0tnf5nVryYQr4ZV9J2
LtHVtyjb1jRSXlDWcCCk9BtEThhHMQIpkpvlE56NL7bNSuun268ttqE1KMI0zmINZYaqIX7ZXOi7
HjLBYAd/prGr/vQiAz+Uc/ndwKQIBBg1//A1yfbDOeT8e8Op/7Pkzn1ABR5DiZDvltbsDzbsGre2
yHpYYrLDOYMgVd71VCvmxCGPBCJYMwXGzZsDR3yMcmP+eExJQALgkn7IDFp1fHqyYCzzFKea5CRa
2Z5fzkIFstRB1T5kD4iIfi82hXTqDb9Xkmd0THu/qmE9xbHKC8b4N50sEY4KFZdXARynF60M7hZD
OjyuvpV8zx5mEqGhkoR9PhzwLpSgiC4QE/zpjcQxww06HYoTDgpb+QbdQCZruoSvkNrg9bgREH9x
lu+1RvzXko0Bs7hkUes49TU9uOTivu5ehqml8lyo5ijLDllz9D4+wlptC9jXMCjkcdf/zWnlh4gX
IYCQTKlZ86wwi1wwMvrP0r1+DtlENY2lHo2TZbeRcwfBYfxUiU2nMvPXLqvPf/jWgOnovtrPcN5U
koZ4FJgMKgViDkWgWjr7zbWFvExg4vNZQAa73dgxfKo4o6KH4b7pL+FnefumYxRwvO4Ck1jQRBo5
X33Rq38XE0vEOKPR0G1p28HbqxdaPb90vhonF0Cu9Ov0M5Ce4miFyDCrtKFJCgw+qnTa+chtxv9T
qUna2d3qi4qoP4Mfl77oQJs2sdIKntuWdvjp2nF9xJ7nAEKVczS1xKqhMp740mi6ER/eEvJHUpM5
LbASZw67+tE9dffVvRqIaqpquSstY7DXH5v0QQuGo1OmysVtLLazTAWUKem6naKEFMAV6edke5Yv
5AHi8/fdF5lZdcTues1YCvYZJiMGluEva/YPEfgOTMOOGxgiGV+nFJ7BvP5aM3defY0Aw59W8Q==
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
