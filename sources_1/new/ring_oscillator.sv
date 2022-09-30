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
    // O = I2&~I0 | ~I2&~I1 \
    // I2: SEL \
    // I1: ~OUT \
    // I2: ~OUT (latched) \
    LUT3 #( .INIT(8'h53) ) LUT3``CURR ( \
        .O(BX``CURR[0]), \
       .I0(OUT``PREV[0]), \
       .I1(OUT``PREV[1]), \
       .I2(SEL) \
    ); \
    LUT3 #( .INIT(8'h53) ) LUT3A``CURR ( \
       .O(BX``CURR[1]),   // LUT general output \
       .I0(OUTA``PREV[0]), // LUT input \
       .I1(OUTA``PREV[1]), // LUT input \
       .I2(SEL)  // LUT input \
    ); \
    always_comb begin\
        case(BX_SEL) \
            0: OUT``CURR[0] = BX``CURR[1]; \
            1: OUT``CURR[0] = BX``CURR[0]; \
            default: OUT``CURR[0] = BX``CURR[1]; \
        endcase \
    end \
//    assign OUT``CURR[0] = BX_SEL ? BX``CURR[1] : BX``CURR[0]; \
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
