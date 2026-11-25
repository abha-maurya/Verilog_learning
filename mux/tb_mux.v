`timescale 1ns/1ps

module tb_mux;
    reg[3:0] a , b ,c , d;
    reg[1:0] sel ;
    wire[3:0] y;


    mux dut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .sel(sel),
        .y(y)
    );

    initial begin;

      $dumpfile("wave.vcd");
      $dumpvars(0,tb_mux);


      
      a= 4'b0001;
      b= 4'b0010;
      c= 4'b0100;
      d= 4'b1000;

      $display("value of a = %b , b = %b , c= %b , d = %b", a , b, c , d);

      

      sel = 2'b00;
      #10

      $display("y = %b", y);

      

      sel = 2'b01;
      #10
      $display("y = %b", y);

      

      sel = 2'b10;
      #10
      $display("y = %b", y);

      
      
      sel = 2'b11;
      #10
      $display("y = %b", y);

      $finish;
    end
endmodule



      

