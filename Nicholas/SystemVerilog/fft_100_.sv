

module testbench;
    
    parameter N = 100;

    reg clock;
    wire [63:0] data;
    wire read_C;
    
    initial begin
        clock = 0;
        $dumpfile("testbench.vcd");
        $dumpvars(0, testbench);
        #300 $finish;
    end

    always #1 begin
        clock = !clock;
    // DEBUGGING
        $write("data: %d, read_C: %d\n", data, read_C);
    // 
    
    end

    read_file rf(clock, data, read_C);

endmodule

module read_file(
    input clock,
    output [63:0] data,
    output read_C);

    wire clock;
    integer data_file;
    integer status;
    reg [63:0] data;
    reg read_C;

    initial begin
        read_C = 0;
        data_file = $fopen("box_inputs.txt", "r");
        if (data_file == 0) begin
            $write("Error opening file:  %d\n", data_file);
            $finish;
        end else if (data_file != 0) begin
            $write("Successfully opened file: %d\n", data_file);
        end
    end

    always @(posedge clock) begin
        status = $fscanf(data_file, "%d\n", data);
        if ($feof(data_file) == 0) begin
        end else if ($feof(data_file) == 1) begin
            read_C = 1;
        end
    end



endmodule

module memory(
    input clock,
    input r1_w0,
    output data
    );

    wire clock;
    wire r1_w0;
    real data;

    parameter N = 100;
    real memory[N-1:0];

    initial begin 
        for (integer i=0;i<N;i++) begin
            memory[i] = 0;
        end
    end

    always @(posedge clock) begin
    end

endmodule

