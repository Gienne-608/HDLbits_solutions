//always block
// synthesis verilog_input_version verilog_2001
module top_module(
    input a, 
    input b,
    output wire out_assign,
    output reg out_alwaysblock
);
    
    assign out_assign=a&b;
    always @(*) out_alwaysblock=a&b;

endmodule

//if statement
// synthesis verilog_input_version verilog_2001
module top_module(
    input a,
    input b,
    input sel_b1,
    input sel_b2,
    output wire out_assign,
    output reg out_always   ); 
    
    always @(*) begin
        if(sel_b1&sel_b2)
           out_always=b;
        else begin
             out_always=a;
        end
    end
    
    assign out_assign=(sel_b1&sel_b2)?b:a;
    

endmodule

//case
// synthesis verilog_input_version verilog_2001
module top_module ( 
    input [2:0] sel, 
    input [3:0] data0,
    input [3:0] data1,
    input [3:0] data2,
    input [3:0] data3,
    input [3:0] data4,
    input [3:0] data5,
    output reg [3:0] out   );//

    always@(*) begin  // This is a combinational circuit
        case(sel)
            3'b000: out<=data0;
            3'b001:out<=data1;
            3'b010:out<=data2;
            3'b011:out<=data3;
            3'b100:out<=data4;
            3'b101:out<=data5;
            3'b110:out<=4'b0000;
            3'b111:out<=4'b0000;
        endcase
    end

endmodule

//avoiding latched
// synthesis verilog_input_version verilog_2001
module top_module (
    input [15:0] scancode,
    output reg left,
    output reg down,
    output reg right,
    output reg up  ); 
    
    always@(*)begin
         up = 1'b0; down = 1'b0; left = 1'b0; right = 1'b0;
      case (scancode)
       16'he06b:left=1'b1;
       16'he072:down=1'b1;	
	   16'he074:right=1'b1;
	   16'he075:up=1'b1;
       default: ;
    endcase
    end

endmodule
//必须要把所有情况，default的输出值都确定好才行。
