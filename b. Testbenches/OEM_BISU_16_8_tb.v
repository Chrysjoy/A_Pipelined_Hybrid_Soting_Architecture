/* This test bench is for the whole architecture i.e. Odd-Even Merge Sort Unit with Bidirectional Imsertion Sort Unit. The number of DataIn is 16 (N) and it is divided into subsequences of 8 (P) */
module OEM_BISU_16_8_test;
reg EN,INV,Vin,clk,rst1,rst2,rst3,rst4,rst5,rst6,rst7,rst8;
reg [5:0] DI1,DI2,DI3,DI4,DI5,DI6,DI7,DI8;
wire [5:0] DO1,DO2,DO3,DO4,DO5,DO6,DO7,DO8;
wire ENout,Vout;


OEM_BISU_16_8 bb1 (EN,DI1,DI2,DI3,DI4,DI5,DI6,DI7,DI8,INV,Vin,clk,rst1,rst2,rst3,rst4,rst5,rst6,rst7,rst8,ENout,Vout,DO1,DO2,DO3,DO4,DO5,DO6,DO7,DO8);
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
			  DI1 <= 6'b110110; // 54
			  DI2 <= 6'b010011; // 19
			  DI3 <= 6'b101001; // 41
			  DI4 <= 6'b011010; // 26
			  DI5 <= 6'b001111; // 15
			  DI6 <= 6'b100101; // 37
			  DI7 <= 6'b110010; // 50
			  DI8 <= 6'b000101; // 5
			  rst1 <= 0; rst2 <= 1; 
		@(posedge clk);
		     DI1 <= 6'b011101; // 29
			  DI2 <= 6'b110011; // 51
			  DI3 <= 6'b101010; // 42
			  DI4 <= 6'b001100; // 12
			  DI5 <= 6'b111000; // 56
			  DI6 <= 6'b100110; // 38
			  DI7 <= 6'b010101; // 21
			  DI8 <= 6'b000111; // 7
			  rst2 <= 0; rst3 <= 1;
		@(posedge clk);
		     DI1 <= 6'b000000; // 0
			  DI2 <= 6'b000000; // 0
			  DI3 <= 6'b000000; // 0
			  DI4 <= 6'b000000; // 0
			  DI5 <= 6'b000000; // 0
			  DI6 <= 6'b000000; // 0
			  DI7 <= 6'b000000; // 0
			  DI8 <= 6'b000000; // 0
			  rst3 <= 0; rst4 <= 1; 
		@(posedge clk);			  
			  DI1 <= 6'b111111; // 63
			  DI2 <= 6'b111111; // 63
			  DI3 <= 6'b111111; // 63
			  DI4 <= 6'b111111; // 63
			  DI5 <= 6'b111111; // 63
			  DI6 <= 6'b111111; // 63
			  DI7 <= 6'b111111; // 63
			  DI8 <= 6'b111111; // 63
		     rst4 <= 0; rst5 <= 1; 
		 @(posedge clk);		     
			  rst5 <= 0; rst6 <= 1; 
		 @(posedge clk);		     
			  rst6 <= 0; rst7 <=1;
		 @(posedge clk);		     
		     rst7 <= 0; rst8 <= 1;
		 @(posedge clk);		     
		     rst8 <= 0; Vin = 1;
		 @(posedge clk);
			  		 
		#400	  
		$stop;
	end
endmodule
