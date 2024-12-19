module main (
	input             RESET_N,

	input             MCLK,
	input             ACLK,

	input       [7:0] ROM_TYPE,
	input      [23:0] ROM_MASK,
	input      [23:0] RAM_MASK,
	
	output            SYSCLKR_CE,
	output            SYSCLKF_CE,

	output reg [23:0] ROM_ADDR,
	output reg [15:0] ROM_D,
	input      [15:0] ROM_Q,
	output reg        ROM_CE_N,
	output reg        ROM_OE_N,
	output reg        ROM_WE_N,
	output reg        ROM_WORD,

	output reg [19:0] BSRAM_ADDR,
	output reg  [7:0] BSRAM_D,
	input       [7:0] BSRAM_Q,
	output reg        BSRAM_CE_N,
	output reg        BSRAM_OE_N,
	output reg        BSRAM_WE_N,

	output     [16:0] WRAM_ADDR,
	output      [7:0] WRAM_D,
	input       [7:0] WRAM_Q,
	output            WRAM_CE_N,
	output            WRAM_OE_N,
	output            WRAM_WE_N,

	output     [15:0] VRAM1_ADDR,
	input       [7:0] VRAM1_DI,
	output      [7:0] VRAM1_DO,
	output            VRAM1_WE_N,
	output     [15:0] VRAM2_ADDR,
	input       [7:0] VRAM2_DI,
	output      [7:0] VRAM2_DO,
	output            VRAM2_WE_N,
	output            VRAM_OE_N,

	output     [15:0] ARAM_ADDR,
	output      [7:0] ARAM_D,
	input       [7:0] ARAM_Q,
	output            ARAM_CE_N,
	output            ARAM_OE_N,
	output            ARAM_WE_N,
/* expansion chips, not supported for now */
//	output            GSU_ACTIVE,
//	input             GSU_TURBO,
//	input             GSU_FASTROM,
//	input             SUFAMI_SWAP,

	input             BLEND,
	/* not supported for now PAL set to 0*/
//	input             PAL,
	output            HIGH_RES,
	output            FIELD,
	output            INTERLACE,
	output            DOTCLK,
	output      [7:0] R,
	output      [7:0] G,
	output      [7:0] B,
	output            HBLANKn,
	output            VBLANKn,
	output            HSYNC,
	output            VSYNC,

	input       [1:0] JOY1_DI,
	input       [1:0] JOY2_DI,
	output            JOY_STRB,
	output            JOY1_CLK,
	output            JOY2_CLK,
	output            JOY1_P6,
	output            JOY2_P6,
	input             JOY2_P6_in,

	input      [64:0] EXT_RTC,
/* expansion chips, not supported for now */

//	input             GG_EN,
//	input     [128:0] GG_CODE,
//	input             GG_RESET,
//	output            GG_AVAILABLE,

	input             SPC_MODE,

	input      [16:0] IO_ADDR,
	input      [15:0] IO_DAT,
	input             IO_WR,

	input       [4:0] DBG_BG_EN,
	input             DBG_CPU_EN,


/*  not supported for now */

	input             TURBO,
	output            TURBO_ALLOW,
/* expansion chips, not supported for now */

//	output     [15:0] MSU_TRACK_NUM,
//	output            MSU_TRACK_REQUEST,
//	input             MSU_TRACK_MOUNTING,
//	input             MSU_TRACK_MISSING,
//	output      [7:0] MSU_VOLUME,
//	input             MSU_AUDIO_STOP,
//	output            MSU_AUDIO_REPEAT,
//	output            MSU_AUDIO_PLAYING,
//	output     [31:0] MSU_DATA_ADDR,
//	input       [7:0] MSU_DATA,
//	input             MSU_DATA_ACK,
//	output            MSU_DATA_SEEK,
//	output            MSU_DATA_REQ,
//	input             MSU_ENABLE,

	output     [15:0] AUDIO_L,
	output     [15:0] AUDIO_R
);

localparam PAL = 0;
/* expansion chips, not supported for now */

parameter USE_DLH = 1'b0;
parameter USE_CX4 = 1'b0;
parameter USE_SDD1 = 1'b0;
parameter USE_GSU = 1'b0;
parameter USE_SA1 = 1'b0;
parameter USE_DSPn = 1'b0;
parameter USE_SPC7110 = 1'b0;
parameter USE_BSX = 1'b0;
parameter USE_SUFAMI = 1'b0;
parameter USE_MSU = 1'b0;

wire [23:0] CA;
wire        CPURD_N;
wire        CPUWR_N;
reg   [7:0] DI;
wire  [7:0] DO;
wire        RAMSEL_N;
wire        ROMSEL_N;
reg         IRQ_N;
wire  [7:0] PA;
wire        PARD_N;
wire        PAWR_N;


wire        REFRESH;

wire  [6:0] MAP_ACTIVE;

SNES SNES
(
	.mclk(MCLK),
	.dspclk(ACLK),

	.rst_n(RESET_N),
	.enable(1),

	.ca(CA),
	.cpurd_n(CPURD_N),
	.cpuwr_n(CPUWR_N),

	.pa(PA),
	.pard_n(PARD_N),
	.pawr_n(PAWR_N),
	.di(DI),
	.do(DO),

	.ramsel_n(RAMSEL_N),
	.romsel_n(ROMSEL_N),

	.sysclkf_ce(SYSCLKF_CE),
	.sysclkr_ce(SYSCLKR_CE),

	.refresh(REFRESH),

	.irq_n(IRQ_N),

	.wsram_addr(WRAM_ADDR),
	.wsram_d(WRAM_D),
	.wsram_q(WRAM_Q),
	.wsram_ce_n(WRAM_CE_N),
	.wsram_oe_n(WRAM_OE_N),
	.wsram_we_n(WRAM_WE_N),

	.vram_addra(VRAM1_ADDR),
	.vram_addrb(VRAM2_ADDR),
	.vram_dai(VRAM1_DI),
	.vram_dbi(VRAM2_DI),
	.vram_dao(VRAM1_DO),
	.vram_dbo(VRAM2_DO),
	.vram_rd_n(VRAM_OE_N),
	.vram_wra_n(VRAM1_WE_N),
	.vram_wrb_n(VRAM2_WE_N),

	.aram_addr(ARAM_ADDR),
	.aram_d(ARAM_D),
	.aram_q(ARAM_Q),
	.aram_ce_n(ARAM_CE_N),
	.aram_oe_n(ARAM_OE_N),
	.aram_we_n(ARAM_WE_N),

	.joy1_di(JOY1_DI),
	.joy2_di(JOY2_DI),
	.joy_strb(JOY_STRB),
	.joy1_clk(JOY1_CLK),
	.joy2_clk(JOY2_CLK),
	.joy1_p6(JOY1_P6),
	.joy2_p6(JOY2_P6),
	.joy2_p6_in(JOY2_P6_in),

	.blend(BLEND),
	.pal(PAL),
	.high_res(HIGH_RES),
	.field_out(FIELD),
	.interlace(INTERLACE),
	.dotclk(DOTCLK),

	.rgb_out({B,G,R}),
	.hde(HBLANKn),
	.vde(VBLANKn),
	.hsync(HSYNC),
	.vsync(VSYNC),

	
	.spc_mode(SPC_MODE),
	
	.io_addr(IO_ADDR),
	.io_dat(IO_DAT),
	.io_wr(IO_WR),
	
	.DBG_BG_EN(DBG_BG_EN),
	.DBG_CPU_EN(DBG_CPU_EN),
	

	.audio_l(AUDIO_L),
	.audio_r(AUDIO_R)
);


wire  [7:0] DLH_DO;
wire        DLH_IRQ_N;
wire [23:0] DLH_ROM_ADDR;
wire        DLH_ROM_CE_N;
wire        DLH_ROM_OE_N;
wire        DLH_ROM_WORD;
wire [19:0] DLH_BSRAM_ADDR;
wire  [7:0] DLH_BSRAM_D;
wire        DLH_BSRAM_CE_N;
wire        DLH_BSRAM_OE_N;
wire        DLH_BSRAM_WE_N;



assign MAP_ACTIVE[0] = 0;


assign MAP_ACTIVE[1] = 0;


assign MAP_ACTIVE[2] = 0;


assign GSU_ACTIVE = MAP_ACTIVE[2];

assign MAP_ACTIVE[3] = 0;


assign MAP_ACTIVE[4] = 0;


assign MAP_ACTIVE[5] = 0;


assign MAP_ACTIVE[6] = 0;


assign TURBO_ALLOW = ~(MAP_ACTIVE[3] | MAP_ACTIVE[1]);

always @(*) begin
	
		begin
			DI         = DLH_DO;
			IRQ_N      = DLH_IRQ_N;
			ROM_ADDR   = DLH_ROM_ADDR;
			ROM_D      = 7'h00;
			ROM_CE_N   = DLH_ROM_CE_N;
			ROM_OE_N   = DLH_ROM_OE_N;
			ROM_WE_N   = 1;
			BSRAM_ADDR = DLH_BSRAM_ADDR;
			BSRAM_D    = DLH_BSRAM_D;
			BSRAM_CE_N = DLH_BSRAM_CE_N;
			BSRAM_OE_N = DLH_BSRAM_OE_N;
			BSRAM_WE_N = DLH_BSRAM_WE_N;
			ROM_WORD   = DLH_ROM_WORD;
		end	
end

endmodule
