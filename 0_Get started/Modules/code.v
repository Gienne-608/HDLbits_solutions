//three modules
module top_module ( input clk, input d, output q );
    
	wire a, b;
    
     my_dff d1 (clk, d, a);
    my_dff d2 (clk, a, b);
     my_dff d3 (clk, b, q);
           
endmodule

//module and vector
module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    
    wire [7:0]a,b,c;
    
    my_dff8 d1(clk,d,a);
    my_dff8 d2(clk,a,b);
    my_dff8 d3(clk,b,c);
    
    always @(*)
        case(sel)
           2'h0: q=d;
           2'h1 :q=a;  
           2'h2 :q=b;
           2'h3 :q=c; 
        endcase

endmodule

//
