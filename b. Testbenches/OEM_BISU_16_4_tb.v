/* This test bench is for the whole architecture i.e. Odd-Even Merge Sort Unit with Bidirectional Imsertion Sort Unit. The number of DataIn is 16 (N) and it is divided into subsequences of 4 (P) */
module OEM_BISU_16_4_test;
reg EN,INV,Vin,clk,rst1,rst2,rst3,rst4,rst5,rst6,rst7,rst8;
reg [5:0] DI1,DI2,DI3,DI4;
wire [5:0] DO1,DO2,DO3,DO4;
wire ENout,Vout;


OEM_BISU_16_4 bb1 (EN,DI1,DI2,DI3,DI4,INV,Vin,clk,rst1,rst2,rst3,rst4,rst5,rst6,rst7,rst8,ENout,Vout,DO1,DO2,DO3,DO4);
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
			  DI1 <= 6'b010011; // 19
			  DI2 <= 6'b101101; // 45
			  DI3 <= 6'b001100; // 12
			  DI4 <= 6'b110010; // 50
			  rst1 <= 0; rst2 <= 1; 
		@(posedge clk);
		     DI1 <= 6'b100110; // 38
			  DI2 <= 6'b011101; // 29
			  DI3 <= 6'b001010; // 10
			  DI4 <= 6'b110111; // 55
			  rst2 <= 0; rst3 <= 1;
		@(posedge clk);
		     DI1 <= 6'b011001; // 25
			  DI2 <= 6'b101000; // 40
			  DI3 <= 6'b000111; // 7
			  DI4 <= 6'b110100; // 52
			  rst3 <= 0; rst4 <= 1; 
		@(posedge clk);			  
			  DI1 <= 6'b001101; // 13
			  DI2 <= 6'b010110; // 22
			  DI3 <= 6'b100001; // 33
			  DI4 <= 6'b111011; // 59
		     rst4 <= 0; rst5 <= 1; 
		 @(posedge clk);
		     DI1 <= 6'b000000; // 0
			  DI2 <= 6'b000000; // 0
			  DI3 <= 6'b000000; // 0
			  DI4 <= 6'b000000; // 0
			  rst5 <= 0; rst6 <= 1; 
		 @(posedge clk);
		     DI1 <= 6'b000000; // 0
			  DI2 <= 6'b000000; // 0
			  DI3 <= 6'b000000; // 0
			  DI4 <= 6'b000000; // 0
			  rst6 <= 0; rst7 <=1;
		 @(posedge clk);
		     DI1 <= 6'b111111; // 63
		     DI2 <= 6'b111111; // 63
			  DI3 <= 6'b111111; // 63
			  DI4 <= 6'b111111; // 63
		     rst7 <= 0; rst8 <= 1;
		 @(posedge clk);
		     DI1 <= 6'b111111; // 63
		     DI2 <= 6'b111111; // 63
			  DI3 <= 6'b111111; // 63
			  DI4 <= 6'b111111; // 63
		     rst8 <= 0; Vin = 1;
		 @(posedge clk);
			  		 
		#500	  
		$stop;
	end
endmodule
