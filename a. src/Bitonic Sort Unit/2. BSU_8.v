module BSU8 (in1,in2,in3,in4,in5,in6,in7,in8,out1,out2,out3,out4,out5,out6,out7,out8);
input [5:0] in1,in2,in3,in4,in5,in6,in7,in8;
output [5:0] out1,out2,out3,out4,out5,out6,out7,out8;

wire [5:0] a1,a2,a3,a4,a5,a6,a7,a8;
wire [5:0] b1,b2,b3,b4,b5,b6,b7,b8;
wire [5:0] c1,c2,c3,c4,c5,c6,c7,c8;
wire [5:0] d1,d2,d3,d4,d5,d6,d7,d8;
wire [5:0] e1,e2,e3,e4,e5,e6,e7,e8;

////////////////////////////////////////////stage 1///////////////////////////////////////////////
CULH C1 (in1,in2,a1,a2);
CUHL C2 (in3,in4,a3,a4);
CULH C3 (in5,in6,a5,a6);
CUHL C4 (in7,in8,a7,a8);
////////////////////////////////////////////stage 2///////////////////////////////////////////////
CULH C5 (a1,a3,b1,b3);
CULH C6 (a2,a4,b2,b4);

CUHL C7 (a5,a7,b5,b7);
CUHL C8 (a6,a8,b6,b8);
////////////////////////////////////////////stage 3///////////////////////////////////////////////
CULH C9 (b1,b2,c1,c2);
CULH C10 (b3,b4,c3,c4);
CUHL C11 (b5,b6,c5,c6);
CUHL C12 (b7,b8,c7,c8);
////////////////////////////////////////////stage 4///////////////////////////////////////////////
CULH C13 (c1,c5,d1,d5);
CULH C14 (c2,c6,d2,d6);
CULH C15 (c3,c7,d3,d7);
CULH C16 (c4,c8,d4,d8);
////////////////////////////////////////////stage 5///////////////////////////////////////////////
CULH C17 (d1,d3,e1,e3);
CULH C18 (d2,d4,e2,e4);
CULH C19 (d5,d7,e5,e7);
CULH C20 (d6,d8,e6,e8);
////////////////////////////////////////////stage 6///////////////////////////////////////////////
CULH C21 (e1,e2,out1,out2);
CULH C22 (e3,e4,out3,out4);
CULH C23 (e5,e6,out5,out6);
CULH C24 (e7,e8,out7,out8);
endmodule 
//////////////////////////////////////////Comparison Unit (low High)///////////////////////////////////////////////////////////
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
//////////////////////////////////////////Comparison Unit (High Low)///////////////////////////////////////////////////////////
module CUHL (x,y,H,L);
input [5:0]x,y;
output [5:0]H,L;
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

mux2_1 m1 (x,y,sel,H);
mux2_1 m2 (y,x,sel,L);
endmodule

module mux2_1 (d0, d1, s, y);
output [5:0]y;
input [5:0]d0, d1;
input s;
assign y = (s)? d1:d0;
endmodule
