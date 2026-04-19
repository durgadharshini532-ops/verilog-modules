// Code your design here
module counter(clk,rst,out);
  input clk,rst;
  output[3:0]out;
  reg[3:0]out;
  always@(posedge clk or posedge rst)
    begin
      if(rst)
        out<=4'b0000;
      else
        //out<=out-4'b0001;
        out<=out+4'b0001;
    end
endmodule
