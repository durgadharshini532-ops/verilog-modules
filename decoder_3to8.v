// Code your design here
module decode(a,b,c,y0,y1,y2,y3,y4,y5,y6,y7);
  input a,b,c;
  output y0,y1,y2,y3,y4,y5,y6,y7;
  assign y0=(~c)&(~b)&(~a);
  assign y1=(~c)&(~b)&a;
  assign y2=(~c)&(b)&(~a);
  assign y3=(~c)&(b)&(a);
  assign y4=(c)&(~b)&(~a);
  assign y5=(c)&(~b)&(a);
  assign y6=(c)&(b)&(~a);
  assign y7=(c)&(b)&(a);
endmodule
  
