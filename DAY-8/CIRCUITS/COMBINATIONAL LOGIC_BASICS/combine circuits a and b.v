module top_module (input x, input y, output z);
wire a1_out,b1_out,a2_out,b2_out;
    A IA1(.x(x),.y(y),.z(a1_out));
    B IB1(.x(x),.y(y),.z(b1_out));
    A IA2(.x(x),.y(y),.z(a2_out));
    B IB2(.x(x),.y(y),.z(b2_out));
    assign z = (a1_out|b1_out)^(a2_out&b2_out);            
endmodule
module A(input x, input y, output z);
    assign z = (x^y)&x;
endmodule
module B(input x, input y, output z);
    assign z = ~(x^y);
endmodule
