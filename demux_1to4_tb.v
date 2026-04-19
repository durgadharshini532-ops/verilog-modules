module tb;
  reg d,s0,s1;
  wire y0,y1,y2,y3;
  demux all(d,s0,s1,y0,y1,y2,y3);
  initial begin 
      d=1'b1;s0=1'b0;s1=1'b0;
  #5  d=1'b1;s0=1'b0;s1=1'b1;
   #5 d=1'b1;s0=1'b1;s1=1'b0;
   #5 d=1'b1;s0=1'b1;s1=1'b1;
  end
  initial begin
    $monitor("d=%b s0=%b ;s1=b y0=%b y1=%b y2=%b y3=%b",d,s0,y0,y1,y2,y3);
  end
endmodule
  
