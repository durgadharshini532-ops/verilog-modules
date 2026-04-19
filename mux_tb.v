module tb;
  reg a,b,s2,s3,s4,s5;
  wire c;
  mux all(a,b,s2,s3,s4,s5,c);
  initial  begin
    s2=1'b0;
     s3=1'b1;
    s4=1'b0;
     s5=1'b1;
  end
  initial begin
    
   #6 a=1'b0;b=1'b0;
   #7 a=1'b1;b=1'b0;
  #6  a=1'b0;b=1'b1;
   #8 a=1'b1;b=1'b1;
  end
  initial begin
    $monitor("a=%b b=%b s2=%b s3=%b s4=%b s5=%b c=%b",a,b,s2,s3,s4,s5,c);
  end
endmodule
