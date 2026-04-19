// Code your design here
`include "not.v"
`include "and.v"
`include "or.v"
module mux(a,b,s2,s3,s4,s5,c);
  input a,b,s1,s2,s3,s4,s5;
  output c;
  wire p1,p2,p3,p4,p5,p6;
  notgate a1(.a(a),.out(p1));
  notgate a2(.a(b),.out(p2));
  andgate a3(.a(p1),.b(p2),.s1(s2),.out1(p3));
  andgate a4(.a(p1),.b(b),.s1(s3),.out1(p4));
  andgate a5(.a(a),.b(p2),.s1(s4),.out1(p5));
  andgate a6(.a(a),.b(b),.s1(s5),.out1(p6));
  orgate a7(.a(p3),.b(p4),.c(p5),.d(p6),.out2(c));
endmodule
  
  
  
