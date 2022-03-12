// simple wire
module top_module( input in, output out );

  assign out=in;
    
endmodule

// Four wire
module top_module( 
    input a,b,c,
    output w,x,y,z );

    assign w=a;
    assign x=b;
    assign y=b;
    assign z=c;

endmodule

//Inverter
module top_module( input in, output out );
    
    assign out=!in;

endmodule

//Andgate

assign out=a&b;

//Norgate

assign out=~(a|b);
//或非门，输入均为低，输出高，输入均为高，输出低。

//Xnorgate
assign out=~(a^b); 
//同或门，又叫做异或非门。相同输出高，不同输出低。






