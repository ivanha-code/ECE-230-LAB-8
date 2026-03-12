module demux(
    input [3:0] In,
    input [1:0]Sel,
    input enable,
    output [3:0] Library,
    output [3:0] FireDept,
    output [3:0] School,
    output [3:0] RibShack
    
);

    assign Library = (Sel == 2'b00 && enable == 1 ? In : 4'b0); 
    assign FireDept = (Sel == 2'b01 && enable == 1? In : 4'b0); 
    assign School = (Sel == 2'b10 && enable == 1? In : 4'b0); 
    assign RibShack = (Sel == 2'b11 && enable == 1? In : 4'b0);
    
endmodule

