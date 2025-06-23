module top_module (
    input clk,
    input d, 
    input ar,   // asynchronous reset
    output reg q);
    always@(posedge clk or posedge ar)
        if(ar)
            q <= 1'h0;
    else
        q <=d;
endmodule

