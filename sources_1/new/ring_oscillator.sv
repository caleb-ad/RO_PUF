`timescale 1ns / 1ps

//`define KEEP~(__SIG) ((* keep))

`define RO_SLICE_NETS(PREV, CURR) \
    `ifndef OUT_DECLARED``CURR \
        (* dont_touch = "true" *) logic [1:0] OUT``CURR; \
    `endif \
    (* dount_touch = "true" *) logic [1:0] OUTA``PREV; \
    (* dont_touch = "true" *) logic [1:0] BX``CURR;

`define RO_SLICE_ASSIGNS(PREV, CURR, SEL, BX_SEL)\
    assign OUTA``PREV = OUT``PREV; \
    assign OUTA``PREV = OUT``PREV; \
    // O = I5&~I3 | ~I5&~I4 => 0x53 => 0x00ff00ff0000ffff \
    // I5: SEL \
    // I4: ~OUT \
    // I3: ~OUT (latched) \
    LUT6_L #( \
       .INIT(64'h00ff00ff0000ffff)  // Specify LUT Contents \
    ) LUT6``CURR ( \
       .LO(BX``CURR[0]),   // LUT general output \
       .I0(0), // LUT input \
       .I1(0), // LUT input \
       .I2(0), // LUT input \
       .I3(OUT``PREV[0]), // LUT input \
       .I4(OUT``PREV[1]), // LUT input \
       .I5(SEL)  // LUT input \
    ); \
    LUT6_L #( \
       .INIT(64'h00ff00ff0000ffff)  // Specify LUT Contents \
    ) LUT6A``CURR ( \
       .LO(BX``CURR[1]),   // LUT general output \
       .I0(0), // LUT input \
       .I1(0), // LUT input \
       .I2(0), // LUT input \
       .I3(OUTA``PREV[0]), // LUT input \
       .I4(OUTA``PREV[1]), // LUT input \
       .I5(SEL)  // LUT input \
    ); \
    MUXF7 MUXF7_inst ( \
       .O(OUT``CURR[0]),    // Output of MUX to general routing \
       .I0(BX``CURR[1]),  // Input (tie to LUT6 O6 pin) \
       .I1(BX``CURR[0]),  // Input (tie to LUT6 O6 pin) \
       .S(BX_SEL)     // Input select to MUX \
    ); \
    always_latch if (EN) OUT``CURR[1] <= OUT``CURR[0];

`define RO_SLICE(PREV, CURR, SEL, BX_SEL) \
    `RO_SLICE_NETS(PREV, CURR); \
    `RO_SLICE_ASSIGNS(PREV, CURR, SEL, BX_SEL);
    
`define RO_ENABLE_SLICE(PREV, CURR, SEL, BX_SEL, EN) \
    (* keep = "true" *) logic [1:0] OUT``PREV; \
    `define OUT_DECLARED``PREV \
    `RO_SLICE_NETS(PREV, CURR); \
    `RO_SLICE_ASSIGNS(PREV, CURR, SEL, BX_SEL);
    

(* dont_touch = "true" *) module ring_oscillator(
    input EN,
    input [5:0] CHALLENGE,
    output logic OUT
    );
    
    `RO_ENABLE_SLICE(2, 0, CHALLENGE[3], CHALLENGE[0], EN);
    `RO_SLICE(0, 1, CHALLENGE[4], CHALLENGE[1]);
    `RO_SLICE(1, 2, CHALLENGE[5], CHALLENGE[2]);
//     To use the full capctity of a Configurable Logic Block, more slices should be used
//    `RO_SLICE(2, 3, CHALLENGE[6], CHALLENGE[3]);
//    `RO_SLICE(3, 4, CHALLENGE[7], CHALLENGE[4]);

    assign OUT = OUT2[0];
    
endmodule
