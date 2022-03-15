//Full adder
module top_module( 
    input a, b, cin,
    output cout, sum );
    
    assign cout = a & b | a & cin | b & cin;
    //assign cout = a & b | (a | b) & cin;
    //assign cout = a & b | (a ^ b) & cin;
    assign sum = a ^ b ^ cin;


endmodule

//3-bits adder
module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    
    integer i=0;
    always@(*)
        begin
            for(i=0;i<=2;i=i+1)
                if (i==0) begin
                    sum[i]=cin^a[i]^b[i];
                    cout[i]=a[i]&b[i]|cin&(a[i]^b[i]);
                end
                else begin
                    sum[i]=cout[i-1]^a[i]^b[i];
                    cout[i]=a[i]&b[i]|cout[i-1]&(a[i]^b[i]);
                end
        end
endmodule

//overflow
//溢出位的判断，如果两个正数相加，最后却得到负数，则证明溢出了。负数也同理。因为判断每一个数组的[7]就可以判断溢出与否
module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); //
 
    // assign s = ...
    // assign overflow = ...
	assign s = a + b;
    assign overflow = a[7] & b[7] & ~s[7] | ~a[7] & ~b[7] & s[7];

endmodule

//100bits
//注意看好输入输出都到底是几位，本例中输入是100+100+1bit，输出两个则为99+1bit
module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
    
    assign {cout,sum}=a+b+cin;

endmodule


