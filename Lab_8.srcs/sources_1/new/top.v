`timescale 1ns / 1ps

module top(
    input [15:0] sw,
    input btnC,btnD,btnR, btnU,btnL,

    output [15:0] led
);

 wire [3:0] result;
 
 wire [1:0]mux_concat;
 assign mux_concat[0] = btnL;
 assign mux_concat[1] = btnU;
 
  mux mux_inst(
 .CEO(sw[3:0]),
 .you(sw[7:4]),
 .Fred(sw[11:8]),
 .Jill(sw[15:12]),
 .sel(mux_concat), // takes concat as 0-3 value
 .result(result),
 .enable(btnC) 
 );
// todo: fix concat, wires

 wire [1:0]demux_concat;
 assign demux_concat[0] = btnD;
 assign demux_concat[1] = btnR;

demux demux_inst(
 .user(result),
 .enable(btnC),
 .de_sel(demux_concat),
 .lib(led[3:0]),
 .fire_dep(led[7:4]),
 .school(led[11:8]),
 .rib(led[15:12])
 );
endmodule