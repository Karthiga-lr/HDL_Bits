module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    
    fulladder F0(.a(a[0]),.b(b[0]),.cin(cin),.s(sum[0]),.cout(cout[0]));
    fulladder F1(.a(a[1]),.b(b[1]),.cin(cout[0]),.s(sum[1]),.cout(cout[1]));
    fulladder F2(.a(a[2]),.b(b[2]),.cin(cout[1]),.s(sum[2]),.cout(cout[2]));
endmodule
module fulladder(input a,b,cin, output s, cout);
    assign cout = (a&b)|(b&cin)|(a&cin);
    assign s = a^b^cin;
endmodule
