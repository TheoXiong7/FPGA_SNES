//============================================================================
//  SNES for MiSTer
//  Copyright (C) 2017-2019 Srg320
//  Copyright (C) 2018-2019 Sorgelig
//
//  This program is free software; you can redistribute it and/or modify it
//  under the terms of the GNU General Public License as published by the Free
//  Software Foundation; either version 2 of the License, or (at your option)
//  any later version.
//
//  This program is distributed in the hope that it will be useful, but WITHOUT
//  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
//  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
//  more details.
//
//  You should have received a copy of the GNU General Public License along
//  with this program; if not, write to the Free Software Foundation, Inc.,
//  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
//============================================================================ 

module emu
(
	//Master input clock
	input         CLK_100M,
	input         RESET,
//	output  [7:0] VGA_R,
//	output  [7:0] VGA_G,
//	output  [7:0] VGA_B,
//	output        VGA_HS,
//	output        VGA_VS,
//	output        VGA_DE,    // = ~(VBlank | HBlank)
//	output        VGA_F1,
//	output [1:0]  VGA_SL,
//	output        VGA_DISABLE, // analog out is off
	output        LED_USER,  // 1 - ON, 0 - OFF.

	// b[1]: 0 - LED status is system status OR'd with b[0]
	//       1 - LED status is controled solely by b[0]
	// hint: supply 2'b00 to let the system control the LED.
	output  [1:0] LED_POWER,
	output  [1:0] LED_DISK,

	// I/O board button press simulation (active high)
	// b[1]: user button
	// b[0]: osd button
	output  [1:0] BUTTONS,

//	input         CLK_AUDIO, // 24.576 MHz
//	output [15:0] AUDIO_L,
//	output [15:0] AUDIO_R,
//	output        AUDIO_S,   // 1 - signed audio samples, 0 - unsigned
//	output  [1:0] AUDIO_MIX, // 0 - no mix, 1 - 25%, 2 - 50%, 3 - 100% (mono)



//	//High latency DDR3 RAM interface
//	//Use for non-critical time purposes
//	output        DDRAM_CLK,
//	input         DDRAM_BUSY,
//	output  [7:0] DDRAM_BURSTCNT,
//	output [28:0] DDRAM_ADDR,
//	input  [63:0] DDRAM_DOUT,
//	input         DDRAM_DOUT_READY,
//	output        DDRAM_RD,
//	output [63:0] DDRAM_DIN,
//	output  [7:0] DDRAM_BE,
//	output        DDRAM_WE,

//	//SDRAM interface with lower latency
//	output        SDRAM_CLK,
//	output        SDRAM_CKE,
//	output [12:0] SDRAM_A,
//	output  [1:0] SDRAM_BA,
//	inout  [15:0] SDRAM_DQ,
//	output        SDRAM_DQML,
//	output        SDRAM_DQMH,
//	output        SDRAM_nCS,
//	output        SDRAM_nCAS,
//	output        SDRAM_nRAS,
//	output        SDRAM_nWE,


//	input         SDRAM2_EN,
//	output        SDRAM2_CLK,
//	output [12:0] SDRAM2_A,
//	output  [1:0] SDRAM2_BA,
//	inout  [15:0] SDRAM2_DQ,
//	output        SDRAM2_nCS,
//	output        SDRAM2_nCAS,
//	output        SDRAM2_nRAS,
//	output        SDRAM2_nWE,

//	input         UART_CTS,
//	output        UART_RTS,
//	input         UART_RXD,
//	output        UART_TXD,
//	output        UART_DTR,
//	input         UART_DSR,

	// Open-drain User port.
	// 0 - D+/RX
	// 1 - D-/TX
	// 2..6 - USR2..USR6
	// Set USER_OUT to 1 to read from USER_IN.
//	input   [6:0] USER_IN,
//	output  [6:0] USER_OUT,

//	input         OSD_STATUS

    //HDMI
    output logic hdmi_tmds_clk_n,
    output logic hdmi_tmds_clk_p,
    output logic [2:0]hdmi_tmds_data_n,
    output logic [2:0]hdmi_tmds_data_p,
    // ddr3
    input  logic sys_clk_n, //differential system clock input
    input  logic sys_clk_p, //note that this is different than previous designs
    output logic [12:0] ddr3_addr,
    output logic [2:0] ddr3_ba,
    output logic ddr3_cas_n,
    output logic ddr3_ck_n, //differential DDR3 clock, typically between 300-333MHz
    output logic ddr3_ck_p,
    output logic ddr3_cke,
    output logic [1:0] ddr3_dm,
    inout wire [15:0] ddr3_dq, //bidirectional signals need to be of type wire
    inout wire [1:0] ddr3_dqs_n,
    inout wire [1:0] ddr3_dqs_p,
    output logic ddr3_odt,   
    output logic ddr3_ras_n,
    output logic ddr3_reset_n,
    output logic ddr3_we_n,
//    input logic clk_ref_i,
//    input logic sys_rst,
    
    //SDCard
    output logic        sd_sclk,
    output logic        sd_mosi,
    output logic        sd_cs,
    input logic         sd_miso,
    
    //HEX displays
    output logic [7:0]  hex_segA,
    output logic [7:0]  hex_segB,
    output logic [3:0]  hex_gridA,
    output logic [3:0]  hex_gridB
);

    // hex driver
    hex_driver HexA (
        .clk(Clk),
        .reset(~RESET),
        .in({ROM_D[15:12], ROM_D[11:8], ROM_D[7:4], ROM_D[3:0]}),
        .hex_seg(hex_segA),
        .hex_grid(hex_gridA)
    );
    
    hex_driver HexB (
        .clk(Clk),
        .reset(~RESET),
        .in({ROM_Q[15:12], ROM_Q[11:8], ROM_Q[7:4], ROM_Q[3:0]}),
        .hex_seg(hex_segB),
        .hex_grid(hex_gridB)
    );
    
    
    
	logic   [6:0] USER_IN;
	assign USER_IN = 0;
	
	logic   [6:0] USER_OUT;

	logic OSD_STATUS;
	
	assign OSD_STATUS = 0;
assign ADC_BUS  = 'Z;

assign AUDIO_S   = 1;
assign AUDIO_MIX = status[20:19];

assign LED_USER  = cart_download | spc_download | (status[23] & bk_pending);
assign LED_DISK  = 0;
assign LED_POWER = 0;
assign BUTTONS   = osd_btn;
assign VGA_SCALER= 0;
assign VGA_DISABLE = 0;
assign HDMI_FREEZE = 0;

assign {SD_SCK, SD_MOSI, SD_CS} = 'Z;

wire [1:0] ar       = status[33:32];
wire       vcrop_en = status[39];
wire [3:0] vcopt    = status[38:35];


//// Declare the signals as wires
//wire DDRAM_CLK;
//wire DDRAM_BUSY;
//wire [7:0] DDRAM_BURSTCNT;
//wire [28:0] DDRAM_ADDR;
//wire [63:0] DDRAM_DOUT;
//wire DDRAM_DOUT_READY;
//wire DDRAM_RD;
//wire [63:0] DDRAM_DIN;
//wire [7:0] DDRAM_BE;
//wire DDRAM_WE;

//// SDRAM interface with lower latency
//wire SDRAM_CLK;
//wire SDRAM_CKE;
//wire [12:0] SDRAM_A;
//wire [1:0] SDRAM_BA;
//wire [15:0] SDRAM_DQ;
//wire SDRAM_DQML;
//wire SDRAM_DQMH;
//wire SDRAM_nCS;
//wire SDRAM_nCAS;
//wire SDRAM_nRAS;
//wire SDRAM_nWE;

//// SDRAM2 interface
//wire SDRAM2_EN;
//wire SDRAM2_CLK;
//wire [12:0] SDRAM2_A;
//wire [1:0] SDRAM2_BA;
//wire [15:0] SDRAM2_DQ;
//wire SDRAM2_nCS;
//wire SDRAM2_nCAS;
//wire SDRAM2_nRAS;
//wire SDRAM2_nWE;

//// Set all wires to 0
//assign DDRAM_CLK = 0;
//assign DDRAM_BUSY = 0;
//assign DDRAM_BURSTCNT = 8'b00000000;
//assign DDRAM_ADDR = 29'b0000000000000000000000000000000;
//assign DDRAM_DOUT = 64'b0;
//assign DDRAM_DOUT_READY = 0;
//assign DDRAM_RD = 0;
//assign DDRAM_DIN = 64'b0;
//assign DDRAM_BE = 8'b00000000;
//assign DDRAM_WE = 0;

//assign SDRAM_CLK = 0;
//assign SDRAM_CKE = 0;
//assign SDRAM_A = 13'b0000000000000;
//assign SDRAM_BA = 2'b00;
//assign SDRAM_DQ = 16'b0; // Inout, driven to 0
//assign SDRAM_DQML = 0;
//assign SDRAM_DQMH = 0;
//assign SDRAM_nCS = 0;
//assign SDRAM_nCAS = 0;
//assign SDRAM_nRAS = 0;
//assign SDRAM_nWE = 0;

//assign SDRAM2_EN = 0;
//assign SDRAM2_CLK = 0;
//assign SDRAM2_A = 13'b0000000000000;
//assign SDRAM2_BA = 2'b00;
//assign SDRAM2_DQ = 16'b0; // Inout, driven to 0
//assign SDRAM2_nCS = 0;
//assign SDRAM2_nCAS = 0;
//assign SDRAM2_nRAS = 0;
//assign SDRAM2_nWE = 0;




///////////////////////  CLOCK/RESET  ///////////////////////////////////

wire clock_locked;
wire clk_mem;
wire clk_sys;

clk_wiz_0 clocker
(
    .clk_in1(CLK_100M),
    .reset(RESET),
    .SNES_MCLK(clk_sys),
    .VGA_clk(CLK_VIDEO),
    .VGAx5_clk(CLK_VIDEO5),
    .CLK_AUDIO(CLK_AUDIO),
    .locked(clock_locked)
);

wire reset = RESET | buttons[1] | status[0] | cart_download | spc_download | bk_loading | clearing_ram | 0;

////////////////////////////  HPS I/O  //////////////////////////////////

// Status Bit Map:
// 0         1         2         3          4         5         6
// 01234567890123456789012345678901 23456789012345678901234567890123
// 0123456789ABCDEFGHIJKLMNOPQRSTUV 0123456789ABCDEFGHIJKLMNOPQRSTUV
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX XXXXXXXXXXXXXXX

//`include "build_id.v"

`define BUILD_DATE "241209"
parameter CONF_STR = {
	"SNES;UART31250,MIDI;",
	"FS0,SFCSMCBINBS ;",
	"FS1,SPC;",
	"-;",
	"OEF,Video Region,Auto,NTSC,PAL;",
	"O13,ROM Header,Auto,No Header,LoROM,HiROM,ExHiROM;",
	"-;",
	"C,Cheats;",
	"H2OO,Cheats Enabled,Yes,No;",
	"-;",
	"D0RC,Load Backup RAM;",
	"D0RD,Save Backup RAM;",
	"D0ON,Autosave,Off,On;",
	"D0-;",

	"P1,Audio & Video;",
	"P1-;",
	"P1o01,Aspect Ratio,Original,Full Screen,[ARC1],[ARC2];",
	"P1O9B,Scandoubler Fx,None,HQ2x,CRT 25%,CRT 50%,CRT 75%;",
	"P1-;",
	"d5P1o7,Vertical Crop,Disabled,216p(5x);",
	"d5P1o36,Crop Offset,0,2,4,8,10,12,-12,-10,-8,-6,-4,-2;",
	"P1o89,Scale,Normal,V-Integer,Narrower HV-Integer,Wider HV-Integer;",
	"P1oA,Force 256px,Off,On;",
	"P1-;",
	"P1OG,Pseudo Transparency,Blend,Off;",
	"P1-;",
	"P1OJK,Stereo Mix,None,25%,50%,100%;", 

	"P2,Input Options;",
	"P2-;",
	"P2O7,Swap Joysticks,No,Yes;",
	"P2O8,SNAC,No,Yes;",
	"P2-;",
	"P2oB,Miracle Piano,No,Yes;",
	"P2OH,Multitap,Disabled,Port2;",
	"P2O56,Mouse,None,Port1,Port2;",
	"P2-;",
	"P2OPQ,Super Scope,Disabled,Joy1,Joy2,Mouse;",
	"D4P2OR,Super Scope Btn,Joy,Mouse;",
	"D4P2OST,Cross,Small,Big,None;",
	"D4P2o2,Gun Type,Super Scope,Justifier;",
	
	"P3,Hardware;",
	"P3-;",
	"D1P3OI,SuperFX Speed,Normal,Turbo;",
	"D1P3oE,SuperFX FastROM,Yes,No;",
	"D3P3O4,CPU Speed,Normal,Turbo;",
	"P3OV,Sufami Cart swaping,No,Yes;",
	"P3-;",
	"P3OLM,Initial WRAM,9966(SNES2),00FF(SNES1),55(SD2SNES),FF;",
	"P3oCD,Initial ARAM,9966(SNES2),00FF(SNES1),55(SD2SNES),FF;",

	"-;",
	"R0,Reset;",
	"J1,A(SS Fire),B(SS Cursor),X(SS TurboSw),Y(SS Pause),LT(SS Cursor),RT(SS Fire),Select,Start;",
	"V,v",`BUILD_DATE
};

wire  [1:0] buttons;
wire [63:0] status;
// wire [15:0] status_menumask = {en216p, !GUN_MODE, ~turbo_allow, ~gg_available, ~GSU_ACTIVE, ~bk_ena};
wire        forced_scandoubler;
reg  [31:0] sd_lba;
reg         sd_rd = 0;
reg         sd_wr = 0;
wire        sd_ack;
wire  [7:0] sd_buff_addr;
wire [15:0] sd_buff_dout;
wire [15:0] sd_buff_din;
wire        sd_buff_wr;
wire        img_mounted;
wire        img_readonly;
wire [63:0] img_size;
wire        ioctl_download;
wire [24:0] ioctl_addr;
wire [15:0] ioctl_dout;
wire        ioctl_wr;
wire  [7:0] ioctl_index;

wire [11:0] joy0,joy1,joy2,joy3,joy4;
wire [24:0] ps2_mouse;
wire [10:0] ps2_key;

wire  [7:0] joy0_x,joy0_y,joy1_x,joy1_y;

wire [64:0] RTC;

wire [21:0] gamma_bus;

wire       GUN_BTN = status[27];
wire [1:0] GUN_MODE = status[26:25];
wire       GUN_TYPE = status[34];
wire       GSU_TURBO = status[18];
wire       GSU_FASTROM = ~status[46];
wire       SUFAMI_SWAP = status[31];
wire       BLEND = ~status[16];
wire [1:0] mouse_mode = status[6:5];
wire       joy_swap = status[7] | piano;
wire [2:0] LHRom_type = status[3:1];

wire code_index = &ioctl_index;
wire code_download = ioctl_download & code_index;
wire cart_download = ioctl_download & ioctl_index[5:0] == 0;
wire spc_download = ioctl_download & ioctl_index[5:0] == 6'h01;

reg new_vmode;
always @(posedge clk_sys) begin
	reg old_pal;
	int to;

	if(~reset) begin
		old_pal <= PAL;
		if(old_pal != PAL) to <= 2000000;
	end

	if(to) begin
		to <= to - 1;
		if(to == 1) new_vmode <= ~new_vmode;
	end
end

//////////////////////////  ROM DETECT  /////////////////////////////////

reg        PAL;
reg  [7:0] rom_type;
reg [23:0] rom_mask, ram_mask;
always @(posedge clk_sys) begin
	reg [3:0] rom_size;
	reg [3:0] ram_size;
	reg       rom_region = 0;

	if (cart_download) begin
		if(ioctl_wr) begin
			if (ioctl_addr == 0) begin
				rom_size <= 4'hC;
				ram_size <= 4'h0;
				if(!LHRom_type && ioctl_dout[7:0]) {ram_size,rom_size} <= ioctl_dout[7:0];

				case(LHRom_type)
					1: rom_type <= 0;
					2: rom_type <= 0;
					3: rom_type <= 1;
					4: rom_type <= 2;
					default: rom_type <= ioctl_dout[15:8];
				endcase
			end

			if (ioctl_addr == 2) begin
				rom_region <= ioctl_dout[8];
			end

			if(LHRom_type == 2) begin
				if(ioctl_addr == ('h7FD6+'h200)) rom_size <= ioctl_dout[11:8];
				if(ioctl_addr == ('h7FD8+'h200)) ram_size <= ioctl_dout[3:0];
			end
			else if(LHRom_type == 3) begin
				if(ioctl_addr == ('hFFD6+'h200)) rom_size <= ioctl_dout[11:8];
				if(ioctl_addr == ('hFFD8+'h200)) ram_size <= ioctl_dout[3:0];
			end
			else if(LHRom_type == 4) begin
				if(ioctl_addr == ('h40FFD6+'h200)) rom_size <= ioctl_dout[11:8];
				if(ioctl_addr == ('h40FFD8+'h200)) ram_size <= ioctl_dout[3:0];
			end

			rom_mask <= (24'd1024 << rom_size) - 1'd1;
			ram_mask <= ram_size ? (24'd1024 << ram_size) - 1'd1 : 24'd0;
		end
	end
	else begin
		PAL <= (!status[15:14]) ? rom_region : status[15];
	end
end

reg spc_mode = 0;
always @(posedge clk_sys) begin
	if(ioctl_wr) begin
		spc_mode <= spc_download;
	end
end

reg osd_btn = 0;
always @(posedge clk_sys) begin
	integer timeout = 0;
	reg     has_bootrom = 0;
	reg     last_rst = 0;

	if (RESET) last_rst <= 0;
	if (status[0]) last_rst <= 1;

	if (cart_download & ioctl_wr & status[0]) has_bootrom <= 1;

	if(last_rst & ~status[0]) begin
		osd_btn <= 0;
		if(timeout < 24000000) begin
			timeout <= timeout + 1;
			osd_btn <= ~has_bootrom;
		end
	end
end

////////////////////////////  SYSTEM  ///////////////////////////////////

wire GSU_ACTIVE;
wire turbo_allow;
wire SNES_SYSCLKR_CE,SNES_SYSCLKF_CE;

reg [15:0] main_audio_l;
reg [15:0] main_audio_r;
    // DDR3 //
//    localparam ADDR_WIDTH = 27;
//    localparam APP_DATA_WIDTH = 64;
//    localparam APP_MASK_WIDTH = 8;
    
//    //internal signals
//    logic [ADDR_WIDTH-1:0]                 app_wr_addr, app_rd_addr, app_addr; //shared signals between writing and reading sides
//    logic [2:0]                            app_wr_cmd, app_rd_cmd, app_cmd;    //ram_init_done used to arbitrate between in this
//    logic                                  app_wr_en, app_rd_en, app_en;       //example. All writes from SDCard happen first.
//    logic                                  app_rdy;
//    logic [APP_DATA_WIDTH-1:0]             app_rd_data;
//    logic                                  app_rd_data_end;
//    logic                                  app_rd_data_valid;
//    logic [APP_DATA_WIDTH-1:0]             app_wdf_data;
//    logic                                  app_wdf_end;
//    logic [APP_MASK_WIDTH-1:0]             app_wdf_mask;
//    logic                                  app_wdf_rdy;
//    logic                                  app_sr_active;
//    logic                                  app_ref_ack;
//    logic                                  app_zq_ack;
//    logic                                  app_wdf_wren;
    
//    logic                                  ui_clk, ui_sync_rst;

//    logic                                  init_calib_complete;
    
//    logic[31:0]                            read_data_display;
    
 
//    mig_7series_0 u_mig_7series_0
//    (
//       // External memory interface ports
//       .ddr3_addr                      (ddr3_addr),
//       .ddr3_ba                        (ddr3_ba),
//       .ddr3_cas_n                     (ddr3_cas_n),
//       .ddr3_ck_n                      (ddr3_ck_n),
//       .ddr3_ck_p                      (ddr3_ck_p),
//       .ddr3_cke                       (ddr3_cke),
//       .ddr3_ras_n                     (ddr3_ras_n),
//       .ddr3_we_n                      (ddr3_we_n),
//       .ddr3_dq                        (ddr3_dq),
//       .ddr3_dqs_n                     (ddr3_dqs_n),
//       .ddr3_dqs_p                     (ddr3_dqs_p),
//       .ddr3_reset_n                   (ddr3_reset_n),
//       .init_calib_complete            (init_calib_complete),
//       .ddr3_dm                        (ddr3_dm),
//       .ddr3_odt                       (ddr3_odt),

//        // Application interface ports
//       .app_addr                       (app_addr),
//       .app_cmd                        (app_cmd),
//       .app_en                         (app_en),
//       .app_wdf_data                   (app_wdf_data),
//       .app_wdf_end                    (app_wdf_end),
//       .app_wdf_wren                   (app_wdf_wren),
//       .app_rd_data                    (app_rd_data),
//       .app_rd_data_end                (app_rd_data_end),
//       .app_rd_data_valid              (app_rd_data_valid),
//       .app_rdy                        (app_rdy),
//       .app_wdf_rdy                    (app_wdf_rdy),
//       .app_sr_req                     (1'b0),
//       .app_ref_req                    (1'b0),
//       .app_zq_req                     (1'b0),
//       .app_sr_active                  (app_sr_active),
//       .app_ref_ack                    (app_ref_ack),
//       .app_zq_ack                     (app_zq_ack),
//       .ui_clk                         (ui_clk),
//       .ui_clk_sync_rst                (ui_sync_rst),
//       .app_wdf_mask                   (app_wdf_mask),

//        // System Clock Ports
//       .sys_clk_p                      (sys_clk_p),
//       .sys_clk_n                      (sys_clk_n),

//        // Reference Clock Ports
//       .clk_ref_i                      (clk_ref_i),
//       .device_temp                    (),
//       .sys_rst                        (sys_rst)
//   );
   
//    sdcard_init #(.MAX_RAM_ADDRESS(27'h2FFFFF),  //copy 3MBytes to SDRAM
//              .SDHC(1'b1))
//    sdcard_init_0(
//    .clk(ui_clk),
//    .reset(~init_calib_complete),     //starts after calibration has been completed
//    .ram_cmd(app_wr_cmd),
//    .ram_en(app_wr_en),
//    .ram_rdy(app_rdy),
//    .ram_address(app_wr_addr),
//    .ram_wdf_data(app_wdf_data),
//    .ram_wdf_wren(app_wdf_wren),     //RAM interface pins
//    .ram_wdf_rdy(app_wdf_rdy),       //acknowledge from RAM to move to next word
//    .ram_wdf_end(app_wdf_end),       //toggle every other word
//    .ram_init_error(ram_init_error), //error initializing
//    .ram_init_done(ram_init_done),   //done with reading all MAX_RAM_ADDRESS words
//    .cs_bo (sd_cs), 
//    .sclk_o (sd_sclk),
//    .mosi_o (sd_mosi),
//    .miso_i (sd_miso)
//    );
//    logic rdv;
////    	.ROM_ADDR(ROM_ADDR),
////	.ROM_D(ROM_D),
////	.ROM_Q(ROM_Q),
////	.ROM_OE_N(ROM_OE_N),
////	.ROM_WE_N(ROM_WE_N),
////	.ROM_WORD(ROM_WORD),
//    ram_reader ram_reader_0(
//       .clk(ui_clk),
//	   .reset(~ram_init_done),     //start reading when RAM init is finished
//       .ram_address (app_rd_addr),  //the following 4 signals control the command FIFO
//       .ram_cmd (app_rd_cmd),       
//       .ram_en (app_rd_en),             
//       .ram_rdy(app_rdy),
//       .ram_rd_valid(app_rd_data_valid),
//       .ram_rd_data_end (app_rd_data_end),
//       .ram_rd_data(app_rd_data),
//       .read_address ({3'b000, ROM_ADDR}),
//       .read_data_out (read_data_display),  //16-bit output word
//       .read_data_valid (rdv)
//    );
    
//    assign app_wdf_mask = 'h00; //for use when writing smaller than 64-bit words (not here)
//    assign app_addr = ram_init_done ? app_rd_addr:app_wr_addr; //MUX shared RAM control signals 
//    assign app_en   = ram_init_done ? app_rd_en:app_wr_en;     //between write logic and read
//    assign app_cmd  = ram_init_done ? app_rd_cmd:app_wr_cmd;   //logic
 
//    hex_driver hexB   (.clk(ui_clk), 
//                      .reset(ui_sync_rst),
//                      .in({read_data_display[15:12], read_data_display[11:8], read_data_display[7:4], read_data_display[3:0]}),
//                      .hex_seg(hex_segB),
//                      .hex_grid(hex_gridB));


    // In the top level module:

// Interface signals between SNES and DDR3
wire [26:0] ddr3_app_addr;
wire [2:0]  ddr3_app_cmd;
wire        ddr3_app_en;
wire [63:0] ddr3_app_wdf_data;
wire        ddr3_app_wdf_end;
wire        ddr3_app_wdf_wren;
wire [7:0]  ddr3_app_wdf_mask;
wire        ddr3_app_rdy;
wire [63:0] ddr3_app_rd_data;
wire        ddr3_app_rd_data_end;
wire        ddr3_app_rd_data_valid;
wire        ddr3_app_wdf_rdy;

// Instantiate the DDR3 to SNES interface
ddr3_snes_interface ddr3_snes_if (
    .snes_clk(clk_sys),
    .reset_n(RESET_N),
    
    // SNES ROM interface
    .rom_addr(ROM_ADDR),
    .rom_din(ROM_D),
    .rom_dout(ROM_Q),
    .rom_oe_n(ROM_OE_N),
    .rom_we_n(ROM_WE_N),
    .rom_word(ROM_WORD),
    
    // DDR3 UI clock domain
    .ui_clk(ui_clk),
    .ui_rst(ui_sync_rst),
    
    // DDR3 application interface
    .app_addr(ddr3_app_addr),
    .app_cmd(ddr3_app_cmd),
    .app_en(ddr3_app_en),
    .app_rdy(ddr3_app_rdy),
    .app_wdf_data(ddr3_app_wdf_data),
    .app_wdf_end(ddr3_app_wdf_end),
    .app_wdf_mask(ddr3_app_wdf_mask),
    .app_wdf_wren(ddr3_app_wdf_wren),
    .app_wdf_rdy(ddr3_app_wdf_rdy),
    .app_rd_data(ddr3_app_rd_data),
    .app_rd_data_end(ddr3_app_rd_data_end),
    .app_rd_data_valid(ddr3_app_rd_data_valid)
);

// MIG DDR3 Controller instance
mig_7series_0 u_mig_7series_0 (
    // DDR3 Physical Interface
    .ddr3_addr(ddr3_addr),
    .ddr3_ba(ddr3_ba),
    .ddr3_cas_n(ddr3_cas_n),
    .ddr3_ck_n(ddr3_ck_n),
    .ddr3_ck_p(ddr3_ck_p),
    .ddr3_cke(ddr3_cke),
    .ddr3_ras_n(ddr3_ras_n),
    .ddr3_we_n(ddr3_we_n),
    .ddr3_dq(ddr3_dq),
    .ddr3_dqs_n(ddr3_dqs_n),
    .ddr3_dqs_p(ddr3_dqs_p),
    .ddr3_reset_n(ddr3_reset_n),
    .ddr3_dm(ddr3_dm),
    .ddr3_odt(ddr3_odt),
    
    // Application Interface
    .app_addr(ddr3_app_addr),
    .app_cmd(ddr3_app_cmd),
    .app_en(ddr3_app_en),
    .app_wdf_data(ddr3_app_wdf_data),
    .app_wdf_end(ddr3_app_wdf_end),
    .app_wdf_wren(ddr3_app_wdf_wren),
    .app_rd_data(ddr3_app_rd_data),
    .app_rd_data_end(ddr3_app_rd_data_end),
    .app_rd_data_valid(ddr3_app_rd_data_valid),
    .app_rdy(ddr3_app_rdy),
    .app_wdf_rdy(ddr3_app_wdf_rdy),
    .app_sr_req(1'b0),
    .app_ref_req(1'b0),
    .app_zq_req(1'b0),
    .app_sr_active(app_sr_active),
    .app_ref_ack(app_ref_ack),
    .app_zq_ack(app_zq_ack),
    .ui_clk(ui_clk),
    .ui_clk_sync_rst(ui_sync_rst),
    .app_wdf_mask(ddr3_app_wdf_mask),
    
    // System Interface
    .sys_clk_p(sys_clk_p),
    .sys_clk_n(sys_clk_n),
    .clk_ref_i(CLK_100M),
    .sys_rst(RESET),
    .init_calib_complete(init_calib_complete)
);
    
main main
(
	.RESET_N(RESET_N),

	.MCLK(clk_sys), // 21.47727 / 21.28137
	.ACLK(clk_sys),

	
	.SYSCLKR_CE(SNES_SYSCLKR_CE),
	.SYSCLKF_CE(SNES_SYSCLKF_CE),

	.ROM_TYPE(rom_type),
	.ROM_MASK(rom_mask),
	.RAM_MASK(ram_mask),
//	.PAL(PAL),
	.BLEND(BLEND),

	.ROM_ADDR(ROM_ADDR),
	.ROM_D(ROM_D),
	.ROM_Q(ROM_Q),
	.ROM_OE_N(ROM_OE_N),
	.ROM_WE_N(ROM_WE_N),
	.ROM_WORD(ROM_WORD),

	.BSRAM_ADDR(BSRAM_ADDR),
	.BSRAM_D(BSRAM_D),			
	.BSRAM_Q(BSRAM_Q),			
	.BSRAM_CE_N(BSRAM_CE_N),
	.BSRAM_WE_N(BSRAM_WE_N),

	.WRAM_ADDR(WRAM_ADDR),
	.WRAM_D(WRAM_D),
	.WRAM_Q(WRAM_Q),
	.WRAM_CE_N(WRAM_CE_N),
	.WRAM_OE_N(WRAM_OE_N),
	.WRAM_WE_N(WRAM_WE_N),

	.VRAM1_ADDR(VRAM1_ADDR),
	.VRAM1_DI(VRAM1_Q),
	.VRAM1_DO(VRAM1_D),
	.VRAM1_WE_N(VRAM1_WE_N),

	.VRAM2_ADDR(VRAM2_ADDR),
	.VRAM2_DI(VRAM2_Q),
	.VRAM2_DO(VRAM2_D),
	.VRAM2_WE_N(VRAM2_WE_N),

	.ARAM_ADDR(ARAM_ADDR),
	.ARAM_D(ARAM_D),
	.ARAM_Q(ARAM_Q),
	.ARAM_CE_N(ARAM_CE_N),
	.ARAM_WE_N(ARAM_WE_N),

	.R(R_out),
	.G(G_out),
	.B(B_out),

	.FIELD(FIELD),
	.INTERLACE(INTERLACE),
	.HIGH_RES(HIGH_RES),
	.DOTCLK(DOTCLK_out),
	
	.HBLANKn(HBlank_out),
	.VBLANKn(VBlank_out),
	.HSYNC(HSYNC_out),
	.VSYNC(VSYNC_out),

	.JOY1_DI(JOY1_DI),
	.JOY2_DI(GUN_MODE ? LG_DO : JOY2_DI),
	.JOY_STRB(JOY_STRB),
	.JOY1_CLK(JOY1_CLK),
	.JOY2_CLK(JOY2_CLK),
	.JOY1_P6(JOY1_P6),
	.JOY2_P6(JOY2_P6),
	.JOY2_P6_in(JOY2_P6_DI),
	
	.EXT_RTC(RTC),


	.SPC_MODE(spc_mode),

	.IO_ADDR(ioctl_addr[16:0]),
	.IO_DAT(ioctl_dout),
	.IO_WR(spc_download & ioctl_wr),
	
	.TURBO(status[4] & turbo_allow),
	.TURBO_ALLOW(turbo_allow),
	


	.AUDIO_L(main_audio_l),
	.AUDIO_R(main_audio_r)
);




assign AUDIO_L = audio_l;
assign AUDIO_R = audio_r;

reg RESET_N = 0;
reg RFSH = 0;
always @(posedge clk_sys) begin
	reg [1:0] div;
	
	div <= div + 1'd1;
	RFSH <= !div;
	
	if (div == 2) RESET_N <= ~reset;
end


    // Parameters for 640x480 @ 60Hz with 25.175 MHz pixel clock
    localparam H_ACTIVE      = 640;    // Visible area
    localparam H_FRONT_PORCH = 16;     // Front porch
    localparam H_SYNC_WIDTH  = 96;     // Sync pulse
    localparam H_BACK_PORCH  = 48;     // Back porch
    localparam H_TOTAL       = H_ACTIVE + H_FRONT_PORCH + H_SYNC_WIDTH + H_BACK_PORCH;

    localparam V_ACTIVE      = 480;    // Visible area
    localparam V_FRONT_PORCH = 10;     // Front porch
    localparam V_SYNC_WIDTH  = 2;      // Sync pulse
    localparam V_BACK_PORCH  = 33;     // Back porch
    localparam V_TOTAL       = V_ACTIVE + V_FRONT_PORCH + V_SYNC_WIDTH + V_BACK_PORCH;

    // Counters for horizontal and vertical positions
    logic [9:0] h_count;
    logic [9:0] v_count;
    logic vde;
        logic        video_active;   // High during active video area

 logic [9:0]  x_pos;         // Current pixel X position
     logic [9:0]  y_pos;         // Current pixel Y position
        
        
     logic hsync, vsync;
    // Horizontal counter
    always_ff @(posedge CLK_VIDEO or posedge RESET) begin
        if (RESET) begin
            h_count <= '0;
        end else if (h_count == H_TOTAL - 1) begin
            h_count <= '0;
        end else begin
            h_count <= h_count + 1'b1;
        end
    end

    // Vertical counter
    always_ff @(posedge CLK_VIDEO or posedge RESET) begin
        if (RESET) begin
            v_count <= '0;
        end else if (h_count == H_TOTAL - 1) begin
            if (v_count == V_TOTAL - 1) begin
                v_count <= '0;
            end else begin
                v_count <= v_count + 1'b1;
            end
        end
    end

    // Generate sync signals
    always_ff @(posedge CLK_VIDEO or posedge RESET) begin
        if (RESET) begin
            hsync <= 1'b1;
            vsync <= 1'b1;
        end else begin
            // HSYNC is active low
            hsync <= ~((h_count >= (H_ACTIVE + H_FRONT_PORCH)) && 
                      (h_count < (H_ACTIVE + H_FRONT_PORCH + H_SYNC_WIDTH)));
            
            // VSYNC is active low
            vsync <= ~((v_count >= (V_ACTIVE + V_FRONT_PORCH)) && 
                      (v_count < (V_ACTIVE + V_FRONT_PORCH + V_SYNC_WIDTH)));
        end
    end

    // Generate pixel coordinates and video_active signal
    always_ff @(posedge CLK_VIDEO or posedge RESET) begin
        if (RESET) begin
            x_pos <= '0;
            y_pos <= '0;
            video_active <= 1'b0;
        end else begin
            // X position is only valid during active video
            x_pos <= (h_count < H_ACTIVE) ? h_count : '0;
            
            // Y position is only valid during active video
            y_pos <= (v_count < V_ACTIVE) ? v_count : '0;
            
            // video_active is high only during the visible area
            video_active <= (h_count < H_ACTIVE) && (v_count < V_ACTIVE);
        end
    end
    
    
      // Generate pixel coordinates and VDE signal
    always_ff @(posedge CLK_VIDEO or posedge RESET) begin
        if (RESET) begin
            x_pos <= '0;
            y_pos <= '0;
            vde <= 1'b0;
        end else begin
            // X position is only valid during active video
            x_pos <= (h_count < H_ACTIVE) ? h_count : '0;
            
            // Y position is only valid during active video
            y_pos <= (v_count < V_ACTIVE) ? v_count : '0;
            
            // VDE is high only during the visible area (active video)
            vde <= (h_count < H_ACTIVE) && (v_count < V_ACTIVE);
        end
    end

    //Real Digital VGA to HDMI converter
    hdmi_tx_0 vga_to_hdmi (
        .pix_clk(CLK_VIDEO),
        .pix_clkx5(CLK_VIDEO5),       
        .pix_clk_locked(clock_locked),
        //Reset is active LOW
        .rst(~RESET),
        //Color and Sync Signals
        .red(8'h0000), 
        .green(8'h0000),
        .blue(8'h0000),
        .hsync(hsync),
        .vsync(vsync),
        .vde(vde),
        
        //aux Data (unused)
        .aux0_din(4'b0),
        .aux1_din(4'b0),
        .aux2_din(4'b0),
        .ade(1'b0),
        
        //Differential outputs
        .TMDS_CLK_P(hdmi_tmds_clk_p),          
        .TMDS_CLK_N(hdmi_tmds_clk_n),          
        .TMDS_DATA_P(hdmi_tmds_data_p),         
        .TMDS_DATA_N(hdmi_tmds_data_n)          
    );
    
////////////////////////////  MEMORY  ///////////////////////////////////

reg [17:0] mem_fill_addr;
reg clearing_ram = 0;
reg mem_fill_wait;
always @(posedge clk_sys) begin
	if(~old_downloading & cart_download)
		clearing_ram <= 1'b1;

	if (&mem_fill_addr) clearing_ram <= 0;

	if (clearing_ram) begin
		mem_fill_wait <= ~mem_fill_wait;
		if (mem_fill_wait) 
			mem_fill_addr <= mem_fill_addr + 1'b1;
	end else begin
		mem_fill_addr <= 0;
		mem_fill_wait <= 0;
	end
end
wire mem_fill_we = clearing_ram & ~mem_fill_wait;

reg [7:0] wram_fill_data;
always @* begin
    case(status[22:21])
        0: wram_fill_data = (mem_fill_addr[8] ^ mem_fill_addr[2]) ? 8'h66 : 8'h99;
        1: wram_fill_data = (mem_fill_addr[9] ^ mem_fill_addr[0]) ? 8'hFF : 8'h00;
        2: wram_fill_data = 8'h55;
        3: wram_fill_data = 8'hFF;
    endcase
end

reg [7:0] aram_fill_data;
always @* begin
    case(status[45:44])
        0: aram_fill_data = (mem_fill_addr[8] ^ mem_fill_addr[2]) ? 8'h66 : 8'h99;
        1: aram_fill_data = (mem_fill_addr[9] ^ mem_fill_addr[0]) ? 8'hFF : 8'h00;
        2: aram_fill_data = 8'h55;
        3: aram_fill_data = 8'hFF;
    endcase
end

wire[23:0] ROM_ADDR;
wire       ROM_OE_N;
wire       ROM_WE_N;
wire       ROM_WORD;
wire[15:0] ROM_D;
wire[15:0] ROM_Q;

wire[16:0] WRAM_ADDR;
wire       WRAM_CE_N;
wire       WRAM_OE_N;
wire       WRAM_WE_N;
wire [7:0] WRAM_Q, WRAM_D;

wire[24:0] addr_download = ioctl_addr-10'd512;

reg READ_PULSE;
always @(posedge clk_sys)
	READ_PULSE <= SNES_SYSCLKR_CE;

wire [15:0] sdr_dout1;
sdram sdram
(
	.SDRAM_CLK(SDRAM_CLK),
	.SDRAM_A(SDRAM_A),
	.SDRAM_BA(SDRAM_BA),
	.SDRAM_DQ(SDRAM_DQ),
	.SDRAM_DQML(SDRAM_DQML),
	.SDRAM_DQMH(SDRAM_DQMH),
	.SDRAM_nCS(SDRAM_nCS),
	.SDRAM_nWE(SDRAM_nWE),
	.SDRAM_nRAS(SDRAM_nRAS),
	.SDRAM_nCAS(SDRAM_nCAS),
	.SDRAM_CKE(SDRAM_CKE),
		
	.init(0), //~clock_locked),
	.clk(clk_mem),
	
	.addr0(cart_download ? addr_download[23:0] : ROM_ADDR),
	.din0(cart_download ? ioctl_dout : ROM_D),
	.dout0(ROM_Q),
	.rd0(~cart_download & (RESET_N ? ~ROM_OE_N : RFSH)),
	.wr0(cart_download ? ioctl_wr : ~ROM_WE_N),
	.word0(cart_download | ROM_WORD),
	
	.addr1(clearing_ram ? {7'b0000000,mem_fill_addr} : {7'b0000000,WRAM_ADDR}),
	.din1(clearing_ram ? {8'h00,wram_fill_data} : {8'h00,WRAM_D}),
	.dout1(sdr_dout1),
	.rd1(clearing_ram ? 1'b0 : ~WRAM_CE_N & ~WRAM_OE_N & READ_PULSE),
	.wr1(clearing_ram ? mem_fill_we : ~WRAM_CE_N & ~WRAM_WE_N & SNES_SYSCLKF_CE),
	.word1(0)
);

assign WRAM_Q = sdr_dout1[7:0];

wire [15:0] VRAM1_ADDR;
wire        VRAM1_WE_N;
wire  [7:0] VRAM1_D, VRAM1_Q;

//vram vram1 (
//	.clka(clk_sys),
//    .ena(1),
//    .wea(~VRAM1_WE_N),
//    .addra(VRAM1_ADDR[14:0]),
//    .dina(VRAM1_D),
//    .douta(VRAM1_Q),
    
    
//    .clkb(clk_sys),
//    .enb(1),
//    .web(mem_fill_we),
//    .addrb(mem_fill_addr[14:0])
////    .dina(VRAM1_D),
////    .douta(VRAM1_Q),
////	.address_a(VRAM1_ADDR[14:0]),
////	.data_a(VRAM1_D),
////	.wren_a(~VRAM1_WE_N),
////	.q_a(VRAM1_Q),

////	// clear the RAM on loading
////	.address_b(mem_fill_addr[14:0]),
////	.wren_b(mem_fill_we)


//);
dpram #(15)	vram1
(
	.clock(clk_sys),
	.address_a(VRAM1_ADDR[14:0]),
	.data_a(VRAM1_D),
	.wren_a(~VRAM1_WE_N),
	.q_a(VRAM1_Q),

	// clear the RAM on loading
	.address_b(mem_fill_addr[14:0]),
	.wren_b(mem_fill_we)
);

wire [15:0] VRAM2_ADDR;
wire        VRAM2_WE_N;
wire  [7:0] VRAM2_D, VRAM2_Q;


//vram vram2 (
//	.clka(clk_sys),
//    .ena(1),
//    .wea(~VRAM2_WE_N),
//    .addra(VRAM2_ADDR[14:0]),
//    .dina(VRAM2_D),
//    .douta(VRAM2_Q),
    
    
//    .clkb(clk_sys),
//    .enb(1),
//    .web(mem_fill_we),
//    .addrb(mem_fill_addr[14:0])
////    .dina(VRAM1_D),
////    .douta(VRAM1_Q),
////	.address_a(VRAM1_ADDR[14:0]),
////	.data_a(VRAM1_D),
////	.wren_a(~VRAM1_WE_N),
////	.q_a(VRAM1_Q),

////	// clear the RAM on loading
////	.address_b(mem_fill_addr[14:0]),
////	.wren_b(mem_fill_we)


//);

dpram #(15) vram2
(
	.clock(clk_sys),
	.address_a(VRAM2_ADDR[14:0]),
	.data_a(VRAM2_D),
	.wren_a(~VRAM2_WE_N),
	.q_a(VRAM2_Q),

	// clear the RAM on loading
	.address_b(mem_fill_addr[14:0]),
	.wren_b(mem_fill_we)
);

wire [15:0] ARAM_ADDR;
wire        ARAM_CE_N;
wire        ARAM_WE_N;
wire  [7:0] ARAM_Q, ARAM_D;



dpram_dif #(16,8,15,16) aram
(
	.clock(clk_sys),
	.address_a(ARAM_ADDR),
	.data_a(ARAM_D),
	.wren_a(~ARAM_CE_N & ~ARAM_WE_N),
	.q_a(ARAM_Q),

	// clear the RAM on loading
	.address_b(spc_download ? addr_download[15:1] : mem_fill_addr[15:1]),
	.data_b(spc_download ? ioctl_dout : {2{aram_fill_data}}),
	.wren_b(spc_download ? ioctl_wr : mem_fill_we)
);

localparam  BSRAM_BITS = 18; // 256Kbyte
wire [19:0] BSRAM_ADDR;
wire        BSRAM_CE_N;
wire        BSRAM_WE_N;
wire  [7:0] BSRAM_Q, BSRAM_D;
dpram_dif #(BSRAM_BITS,8,BSRAM_BITS-1,16) bsram 
(
	.clock(clk_sys),

	//Thrash the BSRAM upon ROM loading
	.address_a(clearing_ram ? mem_fill_addr[BSRAM_BITS-1:0] : BSRAM_ADDR[BSRAM_BITS-1:0]),
	.data_a(clearing_ram ? 8'hFF : BSRAM_D),
	.wren_a(clearing_ram ? mem_fill_we : ~BSRAM_CE_N & ~BSRAM_WE_N),
	.q_a(BSRAM_Q),

	.address_b({sd_lba[BSRAM_BITS-10:0],sd_buff_addr}),
	.data_b(sd_buff_dout),
	.wren_b(sd_buff_wr & sd_ack),
	.q_b(sd_buff_din)
);

////////////////////////////  VIDEO  ////////////////////////////////////

wire [7:0] R_out,G_out,B_out;
wire HSYNC_out;
wire VSYNC_out;
wire HBlank_out;
wire VBlank_out;
wire DOTCLK_out;

always @(posedge clk_sys) begin
	DOTCLK <= DOTCLK_out;
	if(DOTCLK ^ DOTCLK_out) begin
		R <= R_out;
		G <= G_out;
		B <= B_out;
		HSYNC  <= HSYNC_out;
		VSYNC  <= VSYNC_out;
		HBlank <= ~HBlank_out;
		VBlank <= ~VBlank_out;
	end
end

reg  [7:0] R,G,B;
wire FIELD,INTERLACE;
reg  HSync, HSYNC;
reg  VSync, VSYNC;
reg  HBlank;
reg  VBlank;
wire HIGH_RES;
reg  DOTCLK;

reg interlace;
reg ce_pix;
always @(posedge CLK_VIDEO) begin
	reg [2:0] pcnt;
	reg old_vsync;
	reg tmp_hres, frame_hres;
	reg old_dotclk;
	
	if(~HBlank & ~VBlank) tmp_hres <= tmp_hres | HIGH_RES;

	old_vsync <= VSync;
	if(~old_vsync & VSync) begin
		frame_hres <= (tmp_hres | ~scandoubler) & ~status[42];
		tmp_hres <= 0;
		interlace <= INTERLACE;
	end

	pcnt <= pcnt + 1'd1;
	old_dotclk <= DOTCLK;
	if(~old_dotclk & DOTCLK & ~HBlank & ~VBlank) pcnt <= 1;

	ce_pix <= !pcnt[1:0] & (frame_hres | ~pcnt[2]);
	
	if(pcnt==3) {HSync, VSync} <= {HSYNC, VSYNC};
end

assign VGA_F1 = interlace & FIELD;
assign VGA_SL = {~interlace,~interlace}&sl[1:0];

wire [2:0] scale = status[11:9];
wire [2:0] sl = scale ? scale - 1'd1 : 3'd0;
wire       scandoubler = ~interlace && (scale || forced_scandoubler);

//video_mixer #(.LINE_LENGTH(520), .GAMMA(1)) video_mixer
//(
//	.*,
//	.hq2x(scale==1),
//	.freeze_sync(),
//	.VGA_DE(vga_de),
//	.R((LG_TARGET && GUN_MODE && (!status[29] | LG_T)) ? {8{LG_TARGET[0]}} : R),
//	.G((LG_TARGET && GUN_MODE && (!status[29] | LG_T)) ? {8{LG_TARGET[1]}} : G),
//	.B((LG_TARGET && GUN_MODE && (!status[29] | LG_T)) ? {8{LG_TARGET[2]}} : B)
//);

////////////////////////////  I/O PORTS  ////////////////////////////////


wire piano = status[43];

wire [1:0] JOY1_DO = JOY1_DO_t;

wire       JOY_STRB;

wire [1:0] JOY1_DO_t;
wire       JOY1_CLK;
wire       JOY1_P6;
ioport port1
(
	.CLK(clk_sys),

	.PORT_LATCH(JOY_STRB),
	.PORT_CLK(JOY1_CLK),
	.PORT_P6(JOY1_P6),
	.PORT_DO(JOY1_DO_t),

	.JOYSTICK1((joy_swap ^ raw_serial) ? joy1 : joy0)
);

wire [1:0] JOY2_DO;
wire       JOY2_CLK;
wire       JOY2_P6;
ioport port2
(
	.CLK(clk_sys),

	.MULTITAP(status[17]),

	.PORT_LATCH(JOY_STRB),
	.PORT_CLK(JOY2_CLK),
	.PORT_P6(JOY2_P6),
	.PORT_DO(JOY2_DO),

	.JOYSTICK1((joy_swap ^ raw_serial) ? joy0 : joy1),
	.JOYSTICK2(joy2),
	.JOYSTICK3(joy3),
	.JOYSTICK4(joy4)
);

wire       LG_P6_out;
wire [1:0] LG_DO;
wire [2:0] LG_TARGET;
wire       LG_T = ((GUN_MODE[0]&joy0[6]) | (GUN_MODE[1]&joy1[6])); // always from joysticks

// 1 [oooo|ooo) 7 - 1:+5V  2:Clk  3:Strobe   4:D0  5:D1  6: I/O  7:Gnd

// Indexes:
// IDXDIR   Function    USBPIN
// 0  OUT   Strobe      D+
// 1  OUT   Clk (P1)    D-
// 2  IN    D1          TX-
// 3  OUT   CLK (P2)    GND_d
// 4  BI    I/O         RX+
// 5  IN    P1D0        RX-
// 6  IN    P2D0        TX+

wire raw_serial = status[8];
reg snac_p2 = 0;

assign USER_OUT[2] = 1'b1;
assign USER_OUT[5] = 1'b1;
assign USER_OUT[6] = 1'b1;

wire  [1:0] datajoy0_DI = snac_p2 ? {1'b1, USER_IN[6]} : JOY1_DO;
wire  [1:0] datajoy1_DI = snac_p2 ? {USER_IN[2], USER_IN[6]} : JOY2_DO;

// JOYX_DO[0] is P4, JOYX_DO[1] is P5
wire [1:0] JOY1_DI;
wire [1:0] JOY2_DI;
wire JOY2_P6_DI;

always @(posedge clk_sys) begin
	if (raw_serial) begin
		if (~USER_IN[6])
			snac_p2 <= 1;
	end else begin
		snac_p2 <= 0;
	end
end




assign USER_OUT[0] = (raw_serial) ? JOY_STRB : 1'b1;  // If raw_serial, drive JOY_STRB, else 1
assign USER_OUT[1] = (raw_serial) ? (joy_swap ? ~JOY2_CLK : ~JOY1_CLK) : 1'b1;
assign USER_OUT[3] = (raw_serial) ? (joy_swap ? ~JOY1_CLK : ~JOY2_CLK) : 1'b1;
assign USER_OUT[4] = (raw_serial) ? (joy_swap ? JOY2_P6 : (snac_p2 ? JOY2_P6 : JOY1_P6)) : 1'b1;

// Conditional assignments for JOY1_DI, JOY2_DI, and JOY2_P6_DI
assign JOY1_DI = (raw_serial) ? (joy_swap ? datajoy0_DI : (snac_p2 ? {1'b1, USER_IN[5]} : {USER_IN[2], USER_IN[5]})) : JOY1_DO;
assign JOY2_DI = (raw_serial) ? (joy_swap ? {USER_IN[2], USER_IN[5]} : datajoy1_DI) : JOY2_DO;
assign JOY2_P6_DI = (raw_serial) ? (joy_swap ? USER_IN[4] : (snac_p2 ? USER_IN[4] : (LG_P6_out | !GUN_MODE))) : (LG_P6_out | !GUN_MODE);
/////////////////////////  STATE SAVE/LOAD  /////////////////////////////

wire bk_save_write = ~BSRAM_CE_N & ~BSRAM_WE_N;
reg bk_pending;

always @(posedge clk_sys) begin
	if (bk_ena && ~OSD_STATUS && bk_save_write)
		bk_pending <= 1'b1;
	else if (bk_state | ~bk_ena)
		bk_pending <= 1'b0;
end

reg bk_ena = 0;
reg old_downloading = 0;
always @(posedge clk_sys) begin
	old_downloading <= cart_download;
	if(~old_downloading & cart_download) bk_ena <= 0;

	//Save file always mounted in the end of downloading state.
	if(cart_download && img_mounted && !img_readonly) bk_ena <= |ram_mask;
end

wire bk_load    = status[12];
wire bk_save    = status[13] | (bk_pending & OSD_STATUS && status[23]);
reg  bk_loading = 0;
reg  bk_state   = 0;
wire [31:0] sd_lba_end = (rom_type & 8'hF8) == 8'h28 ? {ram_mask[23:9],1'b1} : ram_mask[23:9];
always @(posedge clk_sys) begin
	reg old_load = 0, old_save = 0, old_ack;

	old_load <= bk_load & bk_ena;
	old_save <= bk_save & bk_ena;
	old_ack  <= sd_ack;

	if(~old_ack & sd_ack) {sd_rd, sd_wr} <= 0;

	if(!bk_state) begin
		if((~old_load & bk_load) | (~old_save & bk_save)) begin
			bk_state <= 1;
			bk_loading <= bk_load;
			sd_lba <= 0;
			sd_rd <=  bk_load;
			sd_wr <= ~bk_load;
		end
		if(old_downloading & ~cart_download & |img_size & bk_ena) begin
			bk_state <= 1;
			bk_loading <= 1;
			sd_lba <= 0;
			sd_rd <= 1;
			sd_wr <= 0;
		end
	end else begin
		if(old_ack & ~sd_ack) begin
			if(sd_lba >= sd_lba_end) begin
				bk_loading <= 0;
				bk_state <= 0;
			end else begin
				sd_lba <= sd_lba + 1'd1;
				sd_rd  <=  bk_loading;
				sd_wr  <= ~bk_loading;
			end
		end
	end
end


///////////////////////////  MSU1  ///////////////////////////////////

reg [15:0] audio_l, audio_r;

always @(posedge clk_sys) begin


	audio_l <= main_audio_l;
	audio_r <= main_audio_r;
end



assign DDRAM_CLK = clk_mem;

endmodule
