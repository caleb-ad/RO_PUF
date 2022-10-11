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
   input BTNC,
   input [15:0] SWITCHES,
   output logic [15:0] LEDS,
   output [6:0] CATHODES,
   output [3:0] ANODES
   );
    
   logic [7:0] response;
   logic done;
    
   RO_PUF my_ro_puf (
   .CLK         (CLK),
   .RESET       (BTNC),
   .CHALLENGE   (SWITCHES[7:0]),
   .RESPONSE    (response),
   .DONE        (done)
   );
   
   assign LEDS[7:0] = response;
   assign LEDS[14] = done;
 
   sseg_des dec (
   .COUNT        ({SWITCHES[7:0], response}),
   .CLK          (CLK),
   .VALID        (done),
   .DISP_EN      (ANODES),
   .SEGMENTS     (CATHODES)
   );

endmodule