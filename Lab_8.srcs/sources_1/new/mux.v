`timescale 1ns / 1ps

module mux(
    input [1:0] sel, 
    input[3:0] CEO, //00
    input[3:0] you, //01
    input[3:0] Fred, //10
    input[3:0] Jill, //11
    input enable,
    
    output [3:0] result
    );

    wire [3:0] result;
   assign result  = enable ?(sel[1] ? (sel[0] ? Jill : Fred) : (sel[0] ? you : CEO)) : 0;
    
endmodule
