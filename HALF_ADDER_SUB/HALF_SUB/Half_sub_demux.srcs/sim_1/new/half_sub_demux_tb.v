`timescale 1ns / 1ps
module half_sub_demux_tb;
reg I;
reg S1,S0;
wire difference;
wire borrow;
wire [3:0] Y;
Half_sub_demux uut(
.I(I),
.S0(S0),
.S1(S1),
.difference(difference),
.borrow(borrow),
.Y(Y)
);
integer i;
initial begin
I = 1'b1;
for(i=0;i<4;i=i+1) begin
     {S1,S0} = i[1:0];
        #10;
    end
 $finish;
end
endmodule

