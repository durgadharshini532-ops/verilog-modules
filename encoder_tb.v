// Code your testbench here
// or browse Examples
module tb;
  reg y0,y1,y2,y3,y4,y5,y6,y7;
  wire a,b,c;
  encoder all(y0,y1,y2,y3,y4,y5,y6,y7,a,b,c);
  initial begin
  y0=1'b0;y1=1'b0;y2=1'b0;y3=1'b0;y4=1'b0;y5=1'b0;y6=1'b0;y7=1'b0;
#4y0=1'b0;y1=1'b0;y2=1'b0;y3=1'b0;y4=1'b0;y5=1'b0;y6=1'b1;y7=1'b0;
#4y0=1'b0;y1=1'b0;y2=1'b0;y3=1'b0;y4=1'b0;y5=1'b1;y6=1'b0;y7=1'b0;
#4y0=1'b0;y1=1'b0;y2=1'b0;y3=1'b0;y4=1'b1;y5=1'b0;y6=1'b0;y7=1'b0;
#4y0=1'b0;y1=1'b0;y2=1'b0;y3=1'b1;y4=1'b0;y5=1'b0;y6=1'b0;y7=1'b0;
#4y0=1'b0;y1=1'b0;y2=1'b1;y3=1'b0;y4=1'b0;y5=1'b0;y6=1'b0;y7=1'b0;
#4y0=1'b0;y1=1'b1;y2=1'b0;y3=1'b0;y4=1'b0;y5=1'b0;y6=1'b0;y7=1'b0;
  end
  initial begin 
    $monitor("y0=%b, y1=%b, y2=%b, y3=%b, y4=%b, y5=%b, y6=%b, y7=%b, a=%b, b=%b, c=%b",y0,y1,y2,y3,y4,y5,y6,y7,a,b,c);
  end
endmodule
