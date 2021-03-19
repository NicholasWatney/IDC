

// Demonstration how to read and write to memory;
// Author: Nicholas Meyer

module memory;

    real memo [10:0];
    integer i;
    integer index;

    initial begin
        index = 0;
        for (i=0;i<10;i++) begin
            memo[i] = i;
        end
        #20 $finish;

    end

    always #1 begin
        $write("value: %f\n", memo[index] + memo[index-1]);
        index = index + 1;
        if (memo[index] == 0) begin
            $finish;
        end
    end

endmodule
