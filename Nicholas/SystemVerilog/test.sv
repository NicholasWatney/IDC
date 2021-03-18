

module test;

    wire [63:0] data = 0;
    reg clock = 0;

    always #1 clock = !clock;

    run r(clock, data);
    
endmodule

module run(
    input clock,
    output [63:0] data
);
    wire clock;
    
endmodule

