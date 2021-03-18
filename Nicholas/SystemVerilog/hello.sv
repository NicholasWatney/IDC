
// Verilog program printing
// the universial "Hello, world!" 
// to console
// author: Nicholas Meyer

module hello;

    initial
        begin
            $display("Hello, world!");
            $finish;
    end

endmodule
