module top_module(
    input a,
    input b,
    input c,
    input d,
    output out); 
    assign out = ~c&~b|c&d&b|c&d&a|~a&~d;
endmodule
