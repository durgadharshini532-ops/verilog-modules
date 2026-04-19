module tb;
  reg clk,rst,serial_in;
  wire serial_out;
  siso all(clk,rst,serial_in,serial_out);
    initial clk=0;
    always#1clk=~clk;
  initial begin
    rst=1;serial_in=0;
    #1 rst=0;
    #1 serial_in=1'b0;
    #1 serial_in=1'b1;
    #1 serial_in=1'b0;
    #1 serial_in=1'b1;
    #3$finish;
  end
initial begin
  $monitor("clk=%b,rst=%b,serial_in=%b,serial_out=%b",clk,rst,serial_in,serial_out);
  $dumpfile("wave.vcd");
  $dumpvars();
end
endmodule
    
    
