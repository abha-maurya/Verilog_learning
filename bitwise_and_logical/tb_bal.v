`timescale 1ns/1ps

module bal ;
  reg[3:0] a;
  reg[3:0] b;


    initial begin

        a = 4'b0100;
        b = 4'b0010;

        $display("bitwise and = %b", a & b);
        $display("logical and = %b", a && b);

        $display("Bitwise OR = %b", a | b);
        $display("Logical OR = %b", a || b);

        $display("Bitwise NOT = %b", ~a);
        $display("Logical NOT = %b", !a);


        $finish;
    end
endmodule