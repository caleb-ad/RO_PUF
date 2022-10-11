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
    
   logic [7:0] response;
   logic done;
    
   RO_PUF my_ro_puf (
   .CLK         (CLK),
   //add input for BTNC to RO_PUF
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

//   MealySevSeg UNIV_SSEG (
//   .clk      (CLK),
//   .cnt1     ({6'b0, SWITCHES[7:0]}),
//   .cnt2     (7'b0),
//   .dp_en    (1'b0),
//   .dp_sel   (2'b0),
//   .mod_sel  (2'b00),
//   .sign     (1'b0),
//   .valid    (DONE),
//   .ssegs    (CATHODES),
//   .disp_en  (ANODES)
//   );
    
endmodule