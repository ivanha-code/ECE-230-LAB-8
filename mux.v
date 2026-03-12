module simple_4_mux (
    input [3:0] CEO, You, Fred, Jill,
    input [1:0]Sel,
    input enable, 
    output [3:0] Y
);
    assign Y = (Sel == 2'b00 && enable == 1) ? CEO :
               (Sel == 2'b01 && enable == 1) ? You :
               (Sel == 2'b10 && enable == 1) ? Fred :
               (Sel == 2'b11 && enable == 1) ? Jill :0 ;
                


endmodule 

