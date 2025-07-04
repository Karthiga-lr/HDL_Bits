module top_module (
    input clk,
    input reset,
    output reg [3:0] q);
    
    always@(posedge clk)
        if(reset || (q == 4'd10))
          q<=4'd1;
        else
          q<=q+4'd1;      
endmodule
