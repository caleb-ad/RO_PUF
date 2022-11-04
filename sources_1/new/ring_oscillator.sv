`timescale 1ns / 1ps

`define INVERTING_SLICE 64'h00f000f00000f0f0
`define NONINVERTING_SLICE 64'hf000f000f0f00000

`define RO_SLICE_NETS(PREV, CURR) \
    `ifndef OUT_DECLARED``CURR \
        (* dont_touch = "true", allow_combinatorial_loops = "true" *) logic [1:0] OUT``CURR; \
    `endif \
    (* dount_touch = "true", allow_combinatorial_loops = "true" *) logic [1:0] OUTA``PREV; \
    (* dount_touch = "true", allow_combinatorial_loops = "true" *) logic OUTB``CURR; \
    (* dont_touch = "true", allow_combinatorial_loops = "true" *) logic [1:0] BX``CURR;

`define RO_SLICE_ASSIGNS(PREV, CURR, SEL, BX_SEL, EN, LUT_CODE_A, LUT_CODE_B)\
    assign OUTA``PREV = OUT``PREV; \
    assign OUTA``PREV = OUT``PREV; \
    LUT6_2 #( \
       .INIT(64'h``LUT_CODE_A``LUT_CODE_B)  // Specify LUT Contents \
    ) LUT6``CURR ( \
       .O6(OUTB``CURR), // 1-bit LUT6 output \
       .O5(BX``CURR[0]), // 1-bit lower LUT5 output \
       .I0(SEL), // LUT input \
       .I1(BX_SEL), // LUT input BX_SEL\
       .I5(EN), // LUT input EN \
       `ifdef OUT_DECLARED``PREV \
       .I2(EN), // LUT input EN \
       `else \
       .I2(OUTB``PREV), // LUT input OUTB``PREV \
       `endif \
       .I3(OUT``PREV[0]), // LUT input \
       .I4(OUT``PREV[1]) // LUT input \
    ); \
    LUT6_L #( \
       .INIT(64'h``LUT_CODE_B``LUT_CODE_B)  // Specify LUT Contents \
    ) LUT6A``CURR ( \
       .LO(BX``CURR[1]),   // LUT general output \
       .I0(SEL), // LUT input \
       .I1(BX_SEL), // LUT input \
       .I2(EN), // LUT input \
       .I3(OUTA``PREV[0]), // LUT input \
       .I4(OUTA``PREV[1]), // LUT input \
       .I5(EN)  // LUT input \
    ); \
    MUXF7 MUXF7``CURR ( \
       .O(OUT``CURR[0]),    // Output of MUX to general routing \
       .I0(BX``CURR[1]),  // Input (tie to LUT6 O6 pin) \
       .I1(BX``CURR[0]),  // Input (tie to LUT6 O6 pin) \
       .S(BX_SEL)     // Input select to MUX \
    ); \
    always_latch if (EN) OUT``CURR[1] <= OUT``CURR[0];

`define RO_SLICE_FIRST(PREV, CURR, SEL, BX_SEL, EN, LUT_CODE_A, LUT_CODE_B) \
    (* dont_touch = "true", allow_combinatorial_loops = "true" *) logic [1:0] OUT``PREV; \
    `define OUT_DECLARED``PREV \
    `RO_SLICE(PREV, CURR, SEL, BX_SEL, EN, LUT_CODE_A, LUT_CODE_B)

`define RO_SLICE(PREV, CURR, SEL, BX_SEL, EN, LUT_CODE_A, LUT_CODE_B) \
    `RO_SLICE_NETS(PREV, CURR); \
    `RO_SLICE_ASSIGNS(PREV, CURR, SEL, BX_SEL, EN, LUT_CODE_A, LUT_CODE_B);

`define RO_SLICE_NOINVERT(PREV, CURR, SEL, BX_SEL, EN, LUT_CODE_A, LUT_CODE_B)\
    `RO_SLICE_NETS(PREV, CURR); \
    `RO_SLICE_ASSIGNS(PREV, CURR, SEL, BX_SEL, EN, LUT_CODE_A, LUT_CODE_B);
    
(* dont_touch = "true" *) module ring_oscillator(
    input EN,
    input [7:0] CHALLENGE,
    output logic OUT
    );
    
    `RO_SLICE_FIRST(3, 0, CHALLENGE[4], CHALLENGE[0], EN, 40404040, 00aa55ff);
    `RO_SLICE(0, 1, CHALLENGE[5], CHALLENGE[1], EN, 20202020, 00aa55ff);
    `RO_SLICE(1, 2, CHALLENGE[6], CHALLENGE[2], EN, 20202020, 00aa55ff);
    `RO_SLICE_NOINVERT(2, 3, CHALLENGE[7], CHALLENGE[3], EN, bf15aa00, bf15aa00);

        //oscillates
//    `RO_SLICE_FIRST(3, 0, CHALLENGE[4], CHALLENGE[0], EN, 00a050f0, 00a050f0);
//    `RO_SLICE(0, 1, CHALLENGE[5], CHALLENGE[1], EN, 00a050f0, 00a050f0);
//    `RO_SLICE(1, 2, CHALLENGE[6], CHALLENGE[2], EN, 00a050f0, 00a050f0);
//    `RO_SLICE_NOINVERT(2, 3, CHALLENGE[7], CHALLENGE[3], EN, f050a000, f050a000);

    assign OUT = OUT2[0];

endmodule
