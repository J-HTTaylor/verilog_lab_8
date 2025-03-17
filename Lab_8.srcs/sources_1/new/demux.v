`timescale 1ns / 1ps


module demux(
    input [3:0] user,
    input enable,
    input [1:0] de_sel,
    
    output reg[3:0] lib,
    output reg [3:0] fire_dep,
    output reg [3:0] school,
    output reg [3:0] rib
    );
    
    
    //demux turned on
    always @ (*)begin
    if(enable)begin
        case(de_sel)
        0 :begin lib = user;
                 fire_dep = 0;          
                 school = 0;            
                 rib = 0;               
        end
        1 : begin lib =0;
                 fire_dep = user;          
                 school = 0;            
                 rib = 0;               
        end
        2 :  begin lib =0;
                 fire_dep = 0;
                 school =user;                      
                 rib = 0;               
        end
        3 :  begin lib =0;
                 fire_dep = 0  ;       
                 school = 0;            
                 rib = user;            
        end
        default:  begin lib =0;
                 fire_dep = 0  ;       
                 school = 0;            
                 rib = 0;           
        end
        endcase
        end
        end

endmodule
