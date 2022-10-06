`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2022 09:57:49 AM
// Design Name: 
// Module Name: LAB_1
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


module LAB_1(
   input CLK,
   //input BTNC,
   input [15:0] SWITCHES,
   output logic [15:0] LEDS,
   output [6:0] CATHODES,
   output [3:0] ANODES
   );
    
   RO_PUF my_ro_puf (
   .CLK         (CLK),
   //add input for BTNC to RO_PUF
   .CHALLENGE   (SWITCHES[7:0]),
   .RESPONSE    (LEDS[7:0]),
   .DONE        (LEDS[14])
   );
   
   
   
   sseg_des dec (
   .COUNT        ({SWITCHES, LEDS}),
   .CLK          (CLK),
   .VALID        (DONE),
   .DISP_EN       (ANODES),
   .SEGMENTS     (CATHODES)
   );
    
endmodule