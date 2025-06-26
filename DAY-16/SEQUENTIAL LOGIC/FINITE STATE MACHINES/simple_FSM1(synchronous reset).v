module top_module(clk, reset, in, out);
    input clk;
    input reset;    // Synchronous reset to state B
    input in;
    output out;
    reg out;

    parameter A = 0, B = 1;

    reg present_state, next_state;

    // State register with synchronous reset
    always @(posedge clk) begin
        if (reset)
            present_state <= B;
        else
            present_state <= next_state;
    end

    // Next-state logic and output logic
    always @(*) begin
        // Next state logic
        case (present_state)
            A: next_state = in ? A : B;
            B: next_state = in ? B : A;
            default: next_state = B;
        endcase

        // Output logic (Moore machine)
        case (present_state)
            A: out = 0;
            B: out = 1;
            default: out = 0;
        endcase
    end
endmodule
