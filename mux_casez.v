// Code your design here
module mux(i0,i1,i2,i3,s0,s1,y);
  input i0,i1,i2,i3,s0,s1;
  output y;
  reg y;
  always @(*)
  begin
    casez({s1,s0})
      //casex({s1,s0})
      //case({s1,s0})
      2'b00:y=i0;
      2'bz1:y=i1;
      2'bx0:y=i2;
      2'b11:y=i3;
      default:$display("invalid");
      endcase
  end
endmodule

  
