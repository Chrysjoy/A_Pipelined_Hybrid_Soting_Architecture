/* This test bench is for the whole architecture i.e. Odd-Even Merge Sort Unit with Bidirectional Imsertion Sort Unit. The number of DataIn is 32 (N) and it is divided into subsequences of 16 (P) */

module OEM_BISU_32_16_test;
reg EN,INV,Vin,clk,rst1,rst2,rst3,rst4,rst5,rst6,rst7,rst8,rst9,rst10,rst11,rst12,rst13,rst14,rst15,rst16;
reg [5:0] DI1,DI2,DI3,DI4,DI5,DI6,DI7,DI8,DI9,DI10,DI11,DI12,DI13,DI14,DI15,DI16;
wire [5:0] DO1,DO2,DO3,DO4,DO5,DO6,DO7,DO8,DO9,DO10,DO11,DO12,DO13,DO14,DO15,DO16;
wire ENout,Vout;

OEM_BISU_32_16 bb1(EN,DI1,DI2,DI3,DI4,DI5,DI6,DI7,DI8,DI9,DI10,DI11,DI12,DI13,DI14,DI15,DI16,INV,Vin,clk,rst1,rst2,rst3,rst4,rst5,rst6,rst7,rst8,rst9,rst10,rst11,rst12,rst13,rst14,rst15,rst16,ENout,Vout,DO1,DO2,DO3,DO4,DO5,DO6,DO7,DO8,DO9,DO10,DO11,DO12,DO13,DO14,DO15,DO16);

always #50 clk = ~clk;

reg [31:0] clk_counter; 
initial clk_counter = 32'b0;
    always @(posedge clk) begin 
        clk_counter <= clk_counter + 1;
    end

initial 
	begin	
          clk <= 1; EN <= 1; Vin = 0; INV <= 0; 
		@(posedge clk);
			  rst1 <= 1;
		@(posedge clk); 
			  DI1  <= 6'b110010; // 50
			  DI2  <= 6'b101011; // 43
			  DI3  <= 6'b001110; // 14
			  DI4  <= 6'b100101; // 37
			  DI5  <= 6'b010101; // 21
			  DI6  <= 6'b011001; // 25
			  DI7  <= 6'b111100; // 60
			  DI8  <= 6'b000111; // 7
			  DI9  <= 6'b111000; // 56
			  DI10 <= 6'b011110; // 30
			  DI11 <= 6'b101100; // 44
			  DI12 <= 6'b110001; // 49
			  DI13 <= 6'b000011; // 3
			  DI14 <= 6'b100111; // 39
			  DI15 <= 6'b010010; // 18
			  DI16 <= 6'b111111; // 63
			  rst1 <= 0; rst2 <= 1; 
		@(posedge clk);
		     DI1  <= 6'b000111; // 7
			  DI2  <= 6'b001101; // 13
			  DI3  <= 6'b010011; // 19
			  DI4  <= 6'b011000; // 24
			  DI5  <= 6'b001010; // 10
			  DI6  <= 6'b010110; // 22
			  DI7  <= 6'b011101; // 29
			  DI8  <= 6'b000101; // 5
			  DI9  <= 6'b001100; // 12
			  DI10 <= 6'b010001; // 17
			  DI11 <= 6'b011011; // 27
			  DI12 <= 6'b000010; // 2
			  DI13 <= 6'b001111; // 15
			  DI14 <= 6'b010100; // 20
			  DI15 <= 6'b001001; // 9
			  DI16 <= 6'b010010; // 18
			  rst2 <= 0; rst3 <= 1;
		@(posedge clk);
		     DI1  <= 6'b000000; // 0
			  DI2  <= 6'b000000; // 0
			  DI3  <= 6'b000000; // 0
			  DI4  <= 6'b000000; // 0
			  DI5  <= 6'b000000; // 0
			  DI6  <= 6'b000000; // 0
			  DI7  <= 6'b000000; // 0
			  DI8  <= 6'b000000; // 0
			  DI9  <= 6'b000000; // 0
			  DI10 <= 6'b000000; // 0
			  DI11 <= 6'b000000; // 0
			  DI12 <= 6'b000000; // 0
			  DI13 <= 6'b000000; // 0
			  DI14 <= 6'b000000; // 0
			  DI15 <= 6'b000000; // 0
			  DI16 <= 6'b000000; // 0
			  rst3 <= 0; rst4 <= 1; 
		@(posedge clk);
           DI1  <= 6'b111111; // 63
			  DI2  <= 6'b111111; // 63
			  DI3  <= 6'b111111; // 63
			  DI4  <= 6'b111111; // 63
			  DI5  <= 6'b111111; // 63
			  DI6  <= 6'b111111; // 63
			  DI7  <= 6'b111111; // 63
			  DI8  <= 6'b111111; // 63
			  DI9  <= 6'b111111; // 63
			  DI10 <= 6'b111111; // 63
			  DI11 <= 6'b111111; // 63
			  DI12 <= 6'b111111; // 63
			  DI13 <= 6'b111111; // 63
			  DI14 <= 6'b111111; // 63
			  DI15 <= 6'b111111; // 63
			  DI16 <= 6'b111111; // 63		
		     rst4 <= 0; rst5 <= 1; 
		 @(posedge clk);		     
			  rst5 <= 0; rst6 <= 1; 
		 @(posedge clk);
			  rst6 <= 0; rst7 <=1;
		 @(posedge clk);		    
		     rst7 <= 0; rst8 <= 1;
		 @(posedge clk);
		     rst8 <= 0; rst9 <= 1; 		 
		 @(posedge clk);
			  rst9 <= 0; rst10 <= 1; 
		 @(posedge clk);
			  rst10 <= 0; rst11 <= 1; 
		 @(posedge clk);
		     rst11 <= 0; rst12 <= 1;
		 @(posedge clk);
		     rst12 <= 0; rst13 <= 1; 
		 @(posedge clk);
			  rst13 <= 0; rst14 <= 1;
		 @(posedge clk);
		     rst14 <= 0; rst15 <= 1; 
		 @(posedge clk);
		     rst15 <= 0; rst16 <= 1; 
		 @(posedge clk);
		     rst16 <= 0; 
		#500	  
		$stop;
	end
endmodule
