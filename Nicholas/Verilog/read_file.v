

// Verilog program to read in a file.
// author: Nicholas Meyer

module read_file;
    integer data_file;
    integer scan_file;
    logic signed [21:0] captured_data;
    reg [63:1] count = 0;
    reg clk = 0;

    initial begin
        $write("Starting simulation.\n");
        data_file = $fopen("box_inputs.txt", "r");
        if (data_file == 0) begin
            $write("Error in opening file.\n");
            $finish;
        end
        $write("Successfully opened file.\n");
        # 500 $finish;
    end

    always #1 clk = !clk;

    always @(posedge clk) begin
        count = count + 1;
        $write("Clock: %d ", count);
        scan_file = $fscanf(data_file, "%d\n", captured_data);
        if(!$feof(data_file)) begin
            $write("Value: %d\n", captured_data);
        end else begin
            $write("\n");
        end
    end

endmodule

