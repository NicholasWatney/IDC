

// Simple incrementing counter.
// Author: Nicholas Meyer

module simple_counter_tb;

    reg clk = 0;
    reg reset = 0;
    wire [31:0] value;

    initial begin
        # 5 reset = 1;
        # 5 reset = 0;
        # 400 $finish;
    end

    always #5 clk = !clk;
    simple_counter c1(clk, reset, value);

    initial
        $monitor("Time: %t, Value: %d", $time, value);

endmodule

module simple_counter(
    input clk,
    input reset,
    output [31:0] value
    );

    wire clk;
    wire reset;
    reg [31:0] value;

    always @(posedge clk or posedge reset)
        if (reset)
            value <= 0;
        else
            value <= value + 1;

endmodule

