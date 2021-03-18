

// Real number causes conditional issues, especially when doing floating calculations
// Basic test to test conditionals
// Author: Nicholas Meyer

module realTest;

    real value;
    initial begin
        value = 0.0;
        #10 $finish;
    end

    always #1 begin
        if (value == 0) begin
            $display("0");
            $display("ZEROOOOO");
        end else if (value == "0") begin
            $display("\"0\"");
        end else if (value == 0.0) begin 
            $display("0.0");
        end
    end
endmodule
