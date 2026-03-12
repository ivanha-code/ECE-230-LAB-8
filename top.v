module top(
    input  [15:0] sw,
    output [15:0] led,
    input btnL, btnU,
    input btnD, btnR,
    input btnC
    
);

   
    wire [3:0] Cout;
    wire [3:0] gated_data;
    simple_4_mux my_mux (
        .CEO(sw[3:0]), 
        .You(sw[7:4]), 
        .Fred(sw[11:8]), 
        .Jill(sw[15:12]),
        .Sel({btnU,btnL}),
        .Y(Cout),
        .enable(btnC)
    );
    
 //assign gated_data = (btnC ? Cout : 4'b0);
 
    demux my_demux (
        .enable(btnC),
        .In(Cout),
        .Sel({btnR,btnD}),
        .Library(led[3:0]),   
        .FireDept(led[7:4]),   
        .School(led[11:8]),   
        .RibShack(led[15:12])  
    );


endmodule