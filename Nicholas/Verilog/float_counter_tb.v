

// Simple halving program.
// Obersing the limitations of the 
// IEEE 64-point real variable.
// Author: Nicholas Meyer

module float_counter_tb;

    reg clk;

    initial begin
        clk = 0;
        #50 $finish;
    end

    always #1 begin
        clk <= !clk;

    end
    float_counter fc1(clk);

endmodule

module float_counter(input clk);

    wire clk;
    real value;

    reg [63:0] tik_count;

    initial begin
        value = 1;
        tik_count = -1;
    end

    always @(posedge clk) begin
        tik_count = tik_count + 2;
        value = value / 2;
        if (value == 0.0) begin
            $finish;
        end else begin
            $write("%d: value: %f\n", tik_count, value);
        end
    end

endmodule
