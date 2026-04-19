
module tb;
  reg clk,rst;
  wire[3:0]out;
  counter all(clk,rst,out);
    initial clk=0;
    always#1clk=~clk;
  initial begin
    rst=1;
    #1 rst=0;
    #30$finish;
  end
initial begin
  $monitor("clk=%b,rst=%b,out=%b",clk,rst,out);
  $dumpfile("wave.vcd");
  $dumpvars();
end
endmodule
    
    
