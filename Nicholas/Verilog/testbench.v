module testbench;
    
    parameter N = 100;

    reg clock;
    wire [63:0] data;
    wire read_C;
    real memory [N-1:0];
    
    initial begin
        clock = 0;
        for (integer i=0;i<N;i++) begin
            memory[i] = 0;
        end
        #1000 $finish;
    end

    always #1 clock = !clock;
    read_file rf(clock, data, read_C);

    // DEBUGGING
    initial begin
        $monitor("data: %d", data);
    end
    //
endmodule

module read_file(
    input clock,
    output [63:0] data,
    output read_C);

    integer data_file;
    reg [63:0] data;
    reg read_C;

    initial begin
        read_C = 0;
        data_file = $fopen("box_inputs.txt", "r");
        if (data_file == 0) begin
            $write("Error opening file:  %d", data_file);
            $finish;
        end else if (data_file != 0) begin
            $write("Successfully opened file: %d", data_file);
        end
    end

    always @(posedge clock) begin
        $fscanf(data_file, "%d\n", data);
        if ($feof(data_file) == 0) begin
            $write("Read: %d\n", data);
        end else if ($feof(data_file) == 1) begin
            read_C = 1;
        end
    end



endmodule
