/* A Bidirectional Insertion Sorting Unit (BISU) has a Bidirectional Insertion Sort Logic (BISL) and an Output Control Module (OCM). The BISL has Sequence Rearrangement Logics (SRLs). 
   The BISU architecture for a N data has N SRLs. The below code is for 16 data so it has 16 SRLs. */

module BISU_16 (i,ENin,Vin,INVin,rst,clk,ENout,DI1,DI2,DI3,DI4,DI5,DI6,DI7,DI8,DI9,DI10,DI11,DI12,DI13,DI14,DI15,DI16,DO1,DO2,DO3,DO4,DO5,DO6,DO7,DO8,DO9,DO10,DO11,DO12,DO13,DO14,DO15,DO16);
    input [5:0] DI1,DI2,DI3,DI4,DI5,DI6,DI7,DI8,DI9,DI10,DI11,DI12,DI13,DI14,DI15,DI16;
    input ENin, Vin, INVin, rst, clk;
	 input [5:0]i;
    output[5:0] DO1,DO2,DO3,DO4,DO5,DO6,DO7,DO8,DO9,DO10,DO11,DO12,DO13,DO14,DO15,DO16;
    output ENout;
    
	 reg [5:0] Rd1, Rd2;
    wire INIT; 
    reg [5:0] RImin, RImax;
	 wire [5:0] ROmin, ROmax;
    reg [5:0] mux_out1, mux_out2;

    always @(rst or ENin or mux_out1 or mux_out2) begin
    if (rst) begin
        Rd1 <= 3'b111;
        Rd2 <= 3'b000;
    end else if (ENin) begin
        Rd1 <= mux_out1;
        Rd2 <= mux_out2;
    end
end
     assign INIT = (!rst) ? (RImin > RImax) : INIT;
    
    always @(posedge clk) begin
		if (INVin) begin
        RImin <= Rd2;
        RImax <= Rd1;
		end else begin
        RImin <= Rd1;
        RImax <= Rd2;
		end
	 end

    BISL_16 B1 (RImin,DI1,DI2,DI3,DI4,DI5,DI6,DI7,DI8,DI9,DI10,DI11,DI12,DI13,DI14,DI15,DI16,RImax,ENin,INIT,clk,ROmin,ROmax,DO1,DO2,DO3,DO4,DO5,DO6,DO7,DO8,DO9,DO10,DO11,DO12,DO13,DO14,DO15,DO16);

   always @(*) begin
		if (INVin) begin
        mux_out1 <= ROmax;
        mux_out2 <= ROmin;
		end else begin
        mux_out1 <= ROmin;
        mux_out2 <= ROmax;
		end
	end
   OCM OCM1 (i,ENin,Vin,INIT,clk,ENout);
endmodule

module OCM (i,ENin,Vin,INIT,clk,ENout);
    input [5:0] i;
    input ENin, Vin, INIT, clk;
    output reg ENout;
    parameter integer P = 16;
    
	 reg ROS; 
    wire S1, S2, mux_out;
    wire init_value = (i % P == 0) ? 1'b1 : 1'b0;

    assign S1 = ROS & ENin & Vin;
    assign S2 = ROS & Vin;
    assign mux_out = (S1) ? 0 : ROS;

    always @(posedge clk) begin
        if (INIT)
            ROS <= init_value;
        else
            ROS <= mux_out;
    end
    always @(posedge clk) begin
        ENout <= (S2) ? 0 : ENin;
    end
endmodule

module BISL_16(RImin,DI1,DI2,DI3,DI4,DI5,DI6,DI7,DI8,DI9,DI10,DI11,DI12,DI13,DI14,DI15,DI16,RImax,EN,INIT,clk,ROmin,ROmax,DO1,DO2,DO3,DO4,DO5,DO6,DO7,DO8,DO9,DO10,DO11,DO12,DO13,DO14,DO15,DO16);
input [5:0] RImin,RImax;
input EN,INIT,clk;
input [5:0] DI1,DI2,DI3,DI4,DI5,DI6,DI7,DI8,DI9,DI10,DI11,DI12,DI13,DI14,DI15,DI16;
output reg[5:0] DO1,DO2,DO3,DO4,DO5,DO6,DO7,DO8,DO9,DO10,DO11,DO12,DO13,DO14,DO15,DO16;
output [5:0] ROmin,ROmax;
wire cmp1,cmp2;
wire [5:0] mux1_out, mux2_out, mux4_out, mux5_out;
wire [5:0] DO1_wire,DO2_wire,DO3_wire,DO4_wire,DO5_wire,DO6_wire,DO7_wire,DO8_wire,DO9_wire,DO10_wire,DO11_wire,DO12_wire,DO13_wire,DO14_wire,DO15_wire,DO16_wire;

assign cmp1 = RImin > DI1;
mux2_1 m1 (RImin,DI1,cmp1,mux1_out);
mux2_1 m2 (mux1_out,DI1,INIT,mux2_out);
mux2_1 m3 (RImin,mux2_out,EN,ROmin);

SRL_1 S1 (EN,INIT,DI1,DI2,RImin,RImax,DI2,DO1_wire);  //(EN,INIT,Dk,Dkp1,RMIN,RMAX,Drec,DO) 
SRL S2 (EN,INIT,DI1,DI2,DI3,RImin,RImax,DI3,DO2_wire); //(EN,INIT,Dkm1,Dk,Dkp1,RMIN,RMAX,Drec,DO)
SRL S3 (EN,INIT,DI2,DI3,DI4,RImin,RImax,DI4,DO3_wire);
SRL S4 (EN,INIT,DI3,DI4,DI5,RImin,RImax,DI5,DO4_wire);
SRL S5 (EN,INIT,DI4,DI5,DI6,RImin,RImax,DI6,DO5_wire);
SRL S6 (EN,INIT,DI5,DI6,DI7,RImin,RImax,DI7,DO6_wire);
SRL S7 (EN,INIT,DI6,DI7,DI8,RImin,RImax,DI8,DO7_wire);
SRL S8 (EN,INIT,DI7,DI8,DI9,RImin,RImax,RImin,DO8_wire); 
SRL S9 (EN,INIT,DI8,DI9,DI10,RImin,RImax,RImax,DO9_wire);
SRL S10 (EN,INIT,DI9,DI10,DI11,RImin,RImax,DI9,DO10_wire);
SRL S11 (EN,INIT,DI10,DI11,DI12,RImin,RImax,DI10,DO11_wire);
SRL S12 (EN,INIT,DI11,DI12,DI13,RImin,RImax,DI11,DO12_wire);
SRL S13 (EN,INIT,DI12,DI13,DI14,RImin,RImax,DI12,DO13_wire);
SRL S14 (EN,INIT,DI13,DI14,DI15,RImin,RImax,DI13,DO14_wire);
SRL S15 (EN,INIT,DI14,DI15,DI16,RImin,RImax,DI14,DO15_wire);
SRL_P S16 (EN,INIT,DI15,DI16,RImin,RImax,DI15,DO16_wire);  //(EN,INIT,Dkm1,Dk,RMIN,RMAX,Drec,DO)

assign cmp2 = RImax < DI16;
mux2_1 m4 (RImax,DI16,cmp2,mux4_out);
mux2_1 m5 (mux4_out,DI16,INIT,mux5_out);
mux2_1 m6 (RImax,mux5_out,EN,ROmax);

always @(posedge clk)
begin
	DO1 = DO1_wire;
	DO2 = DO2_wire;
	DO3 = DO3_wire;
  DO4 = DO4_wire;
	DO5 = DO5_wire;
	DO6 = DO6_wire;
  DO7 = DO7_wire;
  DO8 = DO8_wire;
	DO9 = DO9_wire;
	DO10 = DO10_wire;
	DO11 = DO11_wire;
  DO12 = DO12_wire;
	DO13 = DO13_wire;
	DO14 = DO14_wire;
  DO15 = DO15_wire;
  DO16 = DO16_wire;
end	
endmodule
module SRL_1 (EN,INIT,Dk,Dkp1,RMIN,RMAX,Drec,DO);
	input EN,INIT;             
	input [5:0] Dk;    // DI[k]
	input [5:0] Dkp1;  // DI[k+1]
	input [5:0] RMIN;       
	input [5:0] RMAX;    
	input [5:0] Drec;        
	output [5:0] DO;       

	wire cmp1, cmp2, cmp3, cmp4; 
	wire [5:0] mux5_out, mux3_out, mux2_out;
	wire [1:0] sel3;              
		
	assign cmp2 = (Dk > RMIN);      
	assign cmp3 = (Dk < RMAX);      
	assign cmp4 = (Dkp1 < RMIN);    

	mux2_1 mux5 (RMIN,Dkp1,cmp4,mux5_out);
	assign sel3 = {cmp2, cmp3};  
	mux4_1 mux3 (Dk,mux5_out,RMAX,Dk,sel3,mux3_out);
	mux2_1 mux2 (mux3_out,Drec,INIT,mux2_out);
	mux2_1 mux1 (Dk,mux2_out,EN,DO);
endmodule

module SRL (EN,INIT,Dkm1,Dk,Dkp1,RMIN,RMAX,Drec,DO);
	input EN,INIT;             
	input [5:0] Dkm1;  // DI[k-1]
	input [5:0] Dk;    // DI[k]
	input [5:0] Dkp1;  // DI[k+1]
	input [5:0] RMIN;       
	input [5:0] RMAX;    
	input [5:0] Drec;        
	output [5:0] DO;       

	wire cmp1, cmp2, cmp3, cmp4; 
	wire [5:0] mux4_out, mux5_out, mux3_out, mux2_out;
	wire [1:0] sel3;              

	assign cmp1 = (Dkm1 > RMAX);     
	assign cmp2 = (Dk > RMIN);      
	assign cmp3 = (Dk < RMAX);      
	assign cmp4 = (Dkp1 < RMIN);    

	mux2_1 mux4 (RMAX,Dkm1,cmp1,mux4_out);
	mux2_1 mux5 (RMIN,Dkp1,cmp4,mux5_out);
	assign sel3 = {cmp2, cmp3};  
	mux4_1 mux3 (Dk,mux5_out,mux4_out,Dk,sel3,mux3_out);
	mux2_1 mux2 (mux3_out,Drec,INIT,mux2_out);
	mux2_1 mux1 (Dk,mux2_out,EN,DO);
endmodule

module SRL_P (EN,INIT,Dkm1,Dk,RMIN,RMAX,Drec,DO);
	input EN,INIT;             
	input [5:0] Dkm1;  // DI[k-1]
	input [5:0] Dk;    // DI[k]
	input [5:0] RMIN;       
	input [5:0] RMAX;    
	input [5:0] Drec;        
	output [5:0] DO;       

	wire cmp1, cmp2, cmp3, cmp4; 
	wire [5:0] mux4_out, mux3_out, mux2_out;
	wire [1:0] sel3;              

	assign cmp1 = (Dkm1 > RMAX);     
	assign cmp2 = (Dk > RMIN);      
	assign cmp3 = (Dk < RMAX);          

	mux2_1 mux4 (RMAX,Dkm1,cmp1,mux4_out);
	assign sel3 = {cmp2, cmp3};  
	mux4_1 mux3 (Dk,RMIN,mux4_out,Dk,sel3,mux3_out);
	mux2_1 mux2 (mux3_out,Drec,INIT,mux2_out);
	mux2_1 mux1 (Dk,mux2_out,EN,DO);
endmodule

// 2-to-1 multiplexer module
module mux2_1 (d0,d1,s,d);
	output [5:0]d;
	input [5:0]d0, d1;
	input s;
	assign d = (s)? d1:d0;
endmodule

// 4-to-1 multiplexer module
module mux4_1 (d0,d1,d2,d3,s,d);
	input [5:0] d0;
	input [5:0] d1;
	input [5:0] d2;
	input [5:0] d3;
	input [1:0] s;
	output [5:0] d;                                                                                             
	assign d = (s == 2'b00) ? d0 :(s == 2'b01) ? d1 :(s == 2'b10) ? d2 : d3;
endmodule
