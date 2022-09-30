`timescale 1ns / 1ps

`define NUM_RO 4

module RO_PUF(
    input [7:0] CHALLENGE,
    input CLK,
    output logic [7:0] RESPONSE,
    output logic DONE
    );
    
    logic enable;
    logic update;
    logic reset;
    logic count_clk;
    logic [15:0] time_count;
    logic [15:0] ro_count;
    logic [15:0] compare_result [0:3];
    logic [1:0] current_ro;
    logic [`NUM_RO-1:0] ro_out;
    

    generate
        for (genvar i=1; i<`NUM_RO; i = i + 1) assign RESPONSE[i] = compare_result[i] > compare_result[i - 1];
        for (genvar i=0; i<`NUM_RO; i = i + 1) ring_oscillator  RO(.EN((current_ro == i) && enable), .CHALLENGE(CHALLENGE[5:0]), .OUT(ro_out[i]));
    endgenerate
    
    assign DONE = ~enable;
    assign count_clk = ro_out[current_ro];
    
    always_ff @(posedge count_clk, posedge update, posedge reset) begin
        if(update || reset) ro_count <= 0;
        else if(enable) ro_count <= ro_count + 1;
    end
    
    logic update_pos, update_neg;
    assign update = update_pos | update_neg;
    always_ff @(posedge ^CHALLENGE, posedge enable) begin
        update_pos <= 1;
        if(enable) update_pos <= 0;
    end
    
    always_ff @(posedge ~^CHALLENGE, posedge enable) begin
        update_neg <= 1;
        if(enable) update_neg <= 0;
    end
        
    always_ff @(posedge CLK, posedge update) begin
        reset <= 0;
        compare_result[current_ro] <= ro_count;
        
        if(update) begin
            enable <= 1;
            time_count <= 0;
            current_ro <= CHALLENGE[7:6];
        end
        else if(CLK) begin
            if(enable && (time_count == 'hffff)) begin
                current_ro <= current_ro + 1;
                if (current_ro == CHALLENGE[7:6]) begin
                    enable <= 0;
                end
                reset <= 1;
            end
            if(enable) time_count <= time_count + 1;
        end
    end
    
endmodule
