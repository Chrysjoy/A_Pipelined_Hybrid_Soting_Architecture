module OEM8 (in1,in2,in3,in4,in5,in6,in7,in8,out1,out2,out3,out4,out5,out6,out7,out8);
input [5:0] in1,in2,in3,in4,in5,in6,in7,in8;
output [5:0] out1,out2,out3,out4,out5,out6,out7,out8;

wire [5:0] a1,a2,a3,a4,a5,a6,a7,a8;
wire [5:0] b1,b2,b3,b4,b5,b6,b7,b8;
wire [5:0] c2,c3,c4,c5,c6,c7;
wire [5:0] d3,d4,d5,d6,e2,e3,e6,e7;

CULH C1 (in1,in2,a1,a2);
CULH C2 (in3,in4,a3,a4);
CULH C3 (in5,in6,a5,a6);
CULH C4 (in7,in8,a7,a8);

CULH C5 (a1,a3,b1,b3);
CULH C6 (a2,a4,b2,b4);
CULH C7 (a5,a7,b5,b7);
CULH C8 (a6,a8,b6,b8);

CULH C9 (b2,b3,e2,e3);
CULH C10 (b6,b7,e6,e7);

CULH C11 (b1,b5,out1,c5);
CULH C12 (e2,e6,c2,c6);
CULH C13 (e3,e7,c3,c7);
CULH C14 (b4,b8,c4,out8);

CULH C15 (c3,c5,d3,d5);
CULH C16 (c4,c6,d4,d6);

CULH C17 (c2,d3,out2,out3);
CULH C18 (d4,d5,out4,out5);
CULH C19 (d6,c7,out6,out7);
endmodule


module CULH (x,y,L,H);
input [5:0]x,y;
output [5:0]L,H;
reg sel;

always @(*) begin
    if (x > y) begin
        sel = 0;
    end else if (x == y) begin
        sel = 0;
    end else begin
        sel = 1;
    end
end

mux2_1 m1 (y,x,sel,L);
mux2_1 m2 (x,y,sel,H);
endmodule 

module mux2_1 (d0, d1, s, y);
output [5:0]y;
input [5:0]d0, d1;
input s;
assign y = (s)? d1:d0;
endmodule
