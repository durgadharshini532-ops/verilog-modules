module tb;
  reg a,b,c;
  wire y0,y1,y2,y3,y4,y5,y6,y7;
  decode all(a,b,c,y0,y1,y2,y3,y4,y5,y6,y7);
   initial begin
      a=1'b0; b=1'b0; c=1'b0;
    #4a=1'b0; b=1'b0; c=1'b1;
    #4a=1'b0; b=1'b1; c=1'b0;
    #4a=1'b0;  b=1'b1; c=1'b1;
    #4a=1'b1; b=1'b0; c=1'b0;
    #4a=1'b1; b=1'b0; c=1'b1;
    #4a=1'b1; b=1'b1; c=1'b0;
    #4a=1'b1; b=1'b1; c=1'b1;
     #4;
   end
  initial begin  $monitor("a=%b, b=%b, c=%b, y0=%b, y1=%b, y2=%b, y3=%b, y4=%b, y5=%b, y6=%b, y7=%b",a,b,c,y0,y1,y2,y3,y4,y5,y6,y7);
    end
endmodule
    
    
    
  
