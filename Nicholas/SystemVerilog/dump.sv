

// Very important concept.
// $dumpfile task produces a .vcd file
// GTKWave open .vcd extension.
// Can observe all changing variables.
// Similar to gnu debug feature
// Author: Nicholas Meyer

module dump;

    reg clock;
    
    initial begin

        clock = 0;
        $dumpfile("waveforms.vcd");
        $dumpvars(0, dump);
        #100 $finish;
    end

    always #1 clock = !clock;

endmodule
