//Vector concatenation operation
module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//

    assign w = {a[4:0],b[4:2]};
    assign x= {b[1:0],c[4:0],d[4]};
    assign y={d[3:0],e[4:1]};
    assign z={e[0],f[4:0],2'b11};

endmodule

//repiacation operation
module top_module (
    input [7:0] in,
    output [31:0] out );//

    assign out = { {24{in[7]}},in };

endmodule

//More repilcation
module top_module (
    input a, b, c, d, e,
    output [24:0] out );//

    // The output is XNOR of two vectors created by 
    // concatenating and replicating the five inputs.
    assign out = ~{5{a,b,c,d,e}} ^ {{5{a}},{5{b}},{5{c}},{5{d}},{5{e}} };

endmodule
//XNOR操作
