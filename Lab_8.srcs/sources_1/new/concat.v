`timescale 1ns / 1ps

module concat( // creates a usable input variable for the switch
    input btnU,
    input btnL
    );
    wire[1:0] concat;
    assign concat = {btnU,btnL}; //turns 2 bit into single value
 endmodule