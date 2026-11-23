`timescale 1ns/1ps

module print_value;

reg a ;
reg [3:0] nibble ;
reg [7:0] byte ;

    initial begin

        a = 1'b1;
        nibble = 4'b1010;
        byte = 8'b10101010;

        $display("binary a = %b", a);
        $display("binary nibble = %b", nibble);
        $display("binary byte = %b", byte);

        $display("decimal nibble = %0d", nibble);
        $display("decimal byte = %0d", byte);

        $display("hex byte = %h", byte);

        $display("upper 4 = %b " , byte[7:4]);
        $display("5th value = %b", byte[5]);

        $finish;

    end
endmodule




