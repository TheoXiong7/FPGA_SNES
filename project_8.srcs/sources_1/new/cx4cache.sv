`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2024 12:55:39 PM
// Design Name: 
// Module Name: cx4cache
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module cx4cache(
    input logic clock,                    // Clock signal
        input logic [7:0] data,   // Data input

    input logic raddress[8:0],  // Address input
        input logic waddress[8:0],  // Address input
    input logic wren,                     // Write enable
    output logic [7:0] q  // Data output
    );
    
         // Internal signals
    wire [7:0] mem_q;

    // Block RAM primitive instantiation (RAMB36E1)
    RAMB36E1 #(
        .DOA_REG(0),                    // Output register
        .ADDR_WIDTH_A(9),      // Address width
        .DATA_WIDTH_A(9),      // Data width
        .RAM_MODE("SINGLE_PORT"),       // Single-port mode
        .INIT_FILE("")        // Memory initialization file
    ) bram_inst (
        .CLKARDCLK(clock),                 // Clock input
        .ADDRARDADDR(address),              // Address input
        .DIADI(data),                     // Data input
        .DOUTAD(mem_q),                  // Data output
        .WEA(wren)               // Write enable 
    );

    assign q = mem_q ;
    
    
    
endmodule
