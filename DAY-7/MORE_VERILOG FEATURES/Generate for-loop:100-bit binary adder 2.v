module add1 (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | ((a ^ b) & cin);
endmodule

module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );

    add1 adder0 (
        .a(a[0]),
        .b(b[0]),
        .cin(cin),
        .sum(sum[0]),
        .cout(cout[0]));

    genvar i;
    generate
        for (i = 1; i < 100; i = i + 1) begin : gen_adders
            add1 adder_inst (
                .a(a[i]),
                .b(b[i]),
                .cin(cout[i-1]),
                .sum(sum[i]),
                .cout(cout[i]));
        end
    endgenerate

endmodule
