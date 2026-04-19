// Code your design here
module siso(clk,rst,serial_in,serial_out);
  input clk,rst,serial_in;
  output serial_out;
  reg serial_out;
  reg[3:0]temp;
  always@(clk)
    begin
      if(rst)
        temp<=4'b0000;
      else
       // temp<={serial_in,temp[3:1]};//right shift
        temp<={temp[2:0],serial_in};//left shift
    end
  assign serial_out=temp[2:0];
endmodule
