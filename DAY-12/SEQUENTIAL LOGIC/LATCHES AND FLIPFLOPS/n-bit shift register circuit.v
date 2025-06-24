module top_module (
    input clk,
    input w, R, E, L,
    output reg Q
);
    always@(posedge clk)
        if(L)
            Q<=R;
    else if(E)
        Q<=w;
    else
        Q<=Q;

endmodule

