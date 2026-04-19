// Code your design here
module encoder(y0,y1,y2,y3,y4,y5,y6,y7,a,b,c);
  input y0,y1,y2,y3,y4,y5,y6,y7;
  output a,b,c;
    assign a=y7|y6|y5|y4;
    assign b=y7|y6|y3|y2;
    assign c=y7|y5|y3|y1;
endmodule
