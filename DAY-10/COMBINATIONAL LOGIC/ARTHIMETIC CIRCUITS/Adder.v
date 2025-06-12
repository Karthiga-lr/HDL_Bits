module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    wire [2:0]cout;

    fulladder F0(.a(x[0]),.b(y[0]),.cin(1'b0),.s(sum[0]),.cout(cout[0]));
    fulladder F1(.a(x[1]),.b(y[1]),.cin(cout[0]),.s(sum[1]),.cout(cout[1]));
    fulladder F2(.a(x[2]),.b(y[2]),.cin(cout[1]),.s(sum[2]),.cout(cout[2]));
    fulladder F3(.a(x[3]),.b(y[3]),.cin(cout[2]),.s(sum[3]),.cout(sum[4]));
endmodule
module fulladder (input a,b,cin,output s,cout);
    assign s = a^b^cin;
    assign cout = (a&b)|(b&cin)|(a&cin);  
endmodule
