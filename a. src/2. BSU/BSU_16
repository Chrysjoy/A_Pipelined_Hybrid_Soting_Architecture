module BSU16(in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16,out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13,out14,out15,out16);
input [5:0] in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16;
output [5:0] out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13,out14,out15,out16;

wire [5:0] a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16;
wire [5:0] b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16;
wire [5:0] c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16;
wire [5:0] d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16;
wire [5:0] e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16;
wire [5:0] f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14,f15,f16;
wire [5:0] g1,g2,g3,g4,g5,g6,g7,g8,g9,g10,g11,g12,g13,g14,g15,g16;
wire [5:0] h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13,h14,h15,h16;
wire [5:0] i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16;

////////////////////////////////////////////stage 1///////////////////////////////////////////////
CULH C1 (in1,in2,a1,a2);
CUHL C2 (in3,in4,a3,a4);
CULH C3 (in5,in6,a5,a6);
CUHL C4 (in7,in8,a7,a8);
CULH C5 (in9,in10,a9,a10);
CUHL C6 (in11,in12,a11,a12);
CULH C7 (in13,in14,a13,a14);
CUHL C8 (in15,in16,a15,a16);
////////////////////////////////////////////stage 2///////////////////////////////////////////////
CULH C9 (a1,a3,b1,b3);
CULH C10 (a2,a4,b2,b4);
CUHL C11 (a5,a7,b5,b7);
CUHL C12 (a6,a8,b6,b8);
CULH C13 (a9,a11,b9,b11);
CULH C14 (a10,a12,b10,b12);
CUHL C15 (a13,a15,b13,b15);
CUHL C16 (a14,a16,b14,b16);
////////////////////////////////////////////stage 3///////////////////////////////////////////////
CULH C17 (b1,b2,c1,c2);
CULH C18 (b3,b4,c3,c4);
CUHL C19 (b5,b6,c5,c6);
CUHL C20 (b7,b8,c7,c8);
CULH C21 (b9,b10,c9,c10);
CULH C22 (b11,b12,c11,c12);
CUHL C23 (b13,b14,c13,c14);
CUHL C24 (b15,b16,c15,c16);
////////////////////////////////////////////stage 4///////////////////////////////////////////////
CULH C25 (c1,c5,d1,d5);
CULH C26 (c2,c6,d2,d6);
CULH C27 (c3,c7,d3,d7);
CULH C28 (c4,c8,d4,d8);
CUHL C29 (c9,c13,d9,d13);
CUHL C30 (c10,c14,d10,d14);
CUHL C31 (c11,c15,d11,d15);
CUHL C32 (c12,c16,d12,d16);
////////////////////////////////////////////stage 5///////////////////////////////////////////////
CULH C33 (d1,d3,e1,e3);
CULH C34 (d2,d4,e2,e4);
CULH C35 (d5,d7,e5,e7);
CULH C36 (d6,d8,e6,e8);
CUHL C37 (d9,d11,e9,e11);
CUHL C38 (d10,d12,e10,e12);
CUHL C39 (d13,d15,e13,e15);
CUHL C40 (d14,d16,e14,e16);
////////////////////////////////////////////stage 6///////////////////////////////////////////////
CULH C41 (e1,e2,f1,f2);
CULH C42 (e3,e4,f3,f4);
CULH C43 (e5,e6,f5,f6);
CULH C44 (e7,e8,f7,f8);
CUHL C45 (e9,e10,f9,f10);
CUHL C46 (e11,e12,f11,f12);
CUHL C47 (e13,e14,f13,f14);
CUHL C48 (e15,e16,f15,f16);
////////////////////////////////////////////stage 7///////////////////////////////////////////////
CULH C49 (f1,f9,g1,g9);
CULH C50 (f2,f10,g2,g10);
CULH C51 (f3,f11,g3,g11);
CULH C52 (f4,f12,g4,g12);
CULH C53 (f5,f13,g5,g13);
CULH C54 (f6,f14,g6,g14);
CULH C55 (f7,f15,g7,g15);
CULH C56 (f8,f16,g8,g16);
////////////////////////////////////////////stage 8///////////////////////////////////////////////
CULH C57 (g1,g5,h1,h5);
CULH C58 (g2,g6,h2,h6);
CULH C59 (g3,g7,h3,h7);
CULH C60 (g4,g8,h4,h8);
CULH C61 (g9,g13,h9,h13);
CULH C62 (g10,g14,h10,h14);
CULH C63 (g11,g15,h11,h15);
CULH C64 (g12,g16,h12,h16);

////////////////////////////////////////////stage 9///////////////////////////////////////////////
CULH C65 (h1,h3,i1,i3);
CULH C66 (h2,h4,i2,i4);
CULH C67 (h5,h7,i5,i7);
CULH C68 (h6,h8,i6,i8);
CULH C69 (h9,h11,i9,i11);
CULH C70 (h10,h12,i10,i12);
CULH C71 (h13,h15,i13,i15);
CULH C72 (h14,h16,i14,i16);
////////////////////////////////////////////stage 9///////////////////////////////////////////////
CULH C73 (i1,i2,out1,out2);
CULH C74 (i3,i4,out3,out4);
CULH C75 (i5,i6,out5,out6);
CULH C76 (i7,i8,out7,out8);
CULH C77 (i9,i10,out9,out10);
CULH C78 (i11,i12,out11,out12);
CULH C79 (i13,i14,out13,out14);
CULH C80 (i15,i16,out15,out16);
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

