`timescale 1ns/1ps

module tb_or_gate;
    reg a;
    reg b;
    wire y;

    or_gate dut(
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin

        $dumpfile("wave.vcd");
        $dumpvars(0 , tb_or_gate);

        $display("everything is started");
        $monitor( "%0d  %b %b %b" , $time , a, b, y);

        a=0 ; 
        b= 0 ;

        #10;

        a=1 ;
        b=0 ;

        #10;

        a=0 ; 
        b=1 ;

        #10;

        a=1 ; 
        b=1 ;

        #10;

        $finish;
    end

endmodule

