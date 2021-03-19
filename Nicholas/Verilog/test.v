

module test;
    
    reg clock;
    wire [63:0] transfer;

    initial begin
        clock = 0;
    end

    run r1(clock, transfer);

endmodule

module run(
    input clock,
    output [63:0] transfer
    );

    wire clock;
    real data = 1;

    always @(posedge clock) begin
        data = data / 2;
        transfer = $realtobits(data);

    end

endmodule
