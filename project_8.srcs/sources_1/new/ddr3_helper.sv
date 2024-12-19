module ddr3_snes_interface (
    // SNES Clock Domain
    input  logic        snes_clk,         // SNES system clock
    input  logic        reset_n,          // Active low reset
    
    // SNES ROM Interface (snes_clk domain)
    input  logic [23:0] rom_addr,         // ROM address
    input  logic [15:0] rom_din,          // Data to ROM
    output logic [15:0] rom_dout,         // Data from ROM
    input  logic        rom_oe_n,         // ROM output enable (active low)
    input  logic        rom_we_n,         // ROM write enable (active low)
    input  logic        rom_word,         // ROM word mode
    
    // DDR3 UI Clock Domain
    input  logic        ui_clk,           // DDR3 user interface clock
    input  logic        ui_rst,           // DDR3 user interface reset
    
    // DDR3 Application Interface (ui_clk domain)
    output logic [26:0] app_addr,         // DDR3 address
    output logic [2:0]  app_cmd,          // DDR3 command
    output logic        app_en,           // DDR3 command enable
    input  logic        app_rdy,          // DDR3 ready for command
    output logic [63:0] app_wdf_data,     // DDR3 write data
    output logic        app_wdf_end,      // DDR3 write data end
    output logic [7:0]  app_wdf_mask,     // DDR3 write data mask
    output logic        app_wdf_wren,     // DDR3 write enable
    input  logic        app_wdf_rdy,      // DDR3 write ready
    input  logic [63:0] app_rd_data,      // DDR3 read data
    input  logic        app_rd_data_end,  // DDR3 read data end
    input  logic        app_rd_data_valid // DDR3 read data valid
);

    // DDR3 Commands
    localparam [2:0] CMD_READ  = 3'b001;
    localparam [2:0] CMD_WRITE = 3'b000;

    // State machine
    typedef enum logic [2:0] {
        IDLE,
        READ_REQ,
        READ_WAIT,
        WRITE_REQ,
        WRITE_WAIT
    } state_t;
    
    state_t state;

    // Cross clock domain signals for ROM address and control
    (* ASYNC_REG = "TRUE" *) logic [23:0] rom_addr_sync1, rom_addr_sync2;
    (* ASYNC_REG = "TRUE" *) logic rom_oe_sync1, rom_oe_sync2;
    (* ASYNC_REG = "TRUE" *) logic rom_we_sync1, rom_we_sync2;
    
    // Synchronize ROM signals to ui_clk domain
    always_ff @(posedge ui_clk) begin
        rom_addr_sync1 <= rom_addr;
        rom_addr_sync2 <= rom_addr_sync1;
        rom_oe_sync1 <= rom_oe_n;
        rom_oe_sync2 <= rom_oe_sync1;
        rom_we_sync1 <= rom_we_n;
        rom_we_sync2 <= rom_we_sync1;
    end

    // Convert ROM address to DDR3 address (word aligned)
    wire [26:0] ddr3_addr = {3'b000, rom_addr_sync2[23:1], 1'b0};
    
    // Read data buffer
    logic [15:0] read_data_buffer;
    logic        read_data_valid;
    
    // Main state machine in ui_clk domain
    always_ff @(posedge ui_clk) begin
        if (ui_rst) begin
            state <= IDLE;
            app_en <= 1'b0;
            app_wdf_wren <= 1'b0;
            read_data_valid <= 1'b0;
            app_wdf_end <= 1'b0;
            app_wdf_mask <= 8'h00;
        end
        else begin
            case (state)
                IDLE: begin
                    // Handle read request
                    if (!rom_oe_sync2 && app_rdy) begin
                        app_addr <= ddr3_addr;
                        app_cmd <= CMD_READ;
                        app_en <= 1'b1;
                        state <= READ_REQ;
                    end
                    // Handle write request
                    else if (!rom_we_sync2 && app_rdy && app_wdf_rdy) begin
                        app_addr <= ddr3_addr;
                        app_cmd <= CMD_WRITE;
                        app_en <= 1'b1;
                        app_wdf_data <= {48'h0, rom_din};
                        app_wdf_wren <= 1'b1;
                        app_wdf_end <= 1'b1;
                        state <= WRITE_REQ;
                    end
                    else begin
                        app_en <= 1'b0;
                        app_wdf_wren <= 1'b0;
                        app_wdf_end <= 1'b0;
                    end
                end

                READ_REQ: begin
                    app_en <= 1'b0;
                    if (app_rd_data_valid) begin
                        read_data_buffer <= app_rd_data[15:0];
                        read_data_valid <= 1'b1;
                        state <= READ_WAIT;
                    end
                end

                READ_WAIT: begin
                    if (rom_oe_sync2) begin
                        read_data_valid <= 1'b0;
                        state <= IDLE;
                    end
                end

                WRITE_REQ: begin
                    app_en <= 1'b0;
                    app_wdf_wren <= 1'b0;
                    app_wdf_end <= 1'b0;
                    if (app_wdf_rdy) begin
                        state <= WRITE_WAIT;
                    end
                end

                WRITE_WAIT: begin
                    if (rom_we_sync2) begin
                        state <= IDLE;
                    end
                end

                default: state <= IDLE;
            endcase
        end
    end

    // Output read data to SNES clock domain
    always_ff @(posedge snes_clk or negedge reset_n) begin
        if (!reset_n) begin
            rom_dout <= 16'h0000;
        end
        else if (read_data_valid) begin
            rom_dout <= read_data_buffer;
        end
    end

endmodule