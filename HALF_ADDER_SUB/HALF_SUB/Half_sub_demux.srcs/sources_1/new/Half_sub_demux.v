`timescale 1ns / 1ps
module Half_sub_demux(
input wire I,
input  wire S1,S0,
output reg difference,
output reg  borrow,
output reg [3:0] Y
);
integer i;
always @(*) begin
Y = 4'b0000;
difference = 1'b0;
borrow = 1'b0;
for(i=0;i<4;i=i+1) begin 
      if({S1,S0 } == i ) begin 
        Y[i] = I;
       end
     if(i == 1 || i == 2) begin
       difference = difference | Y[i];
      end
    if(i == 1) begin
       borrow = borrow | Y[i] ;
      end
   end
end
endmodule 



  

