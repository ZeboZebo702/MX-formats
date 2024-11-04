module P_i(input [13:1] V_i,
	    input [8:1] X, 
            output [8:1] P_i);
	
//wire signed [8:1] P_i_temp_1;	
//wire signed [5:1] P_i_temp_2;	

reg   [8:1] E_tmp_1; 
reg   [4:1] M_tmp_1;  

always @(*) begin
   case(X)
      8'b11111111: begin E_tmp_1 = 8'b00001111; M_tmp_1 = 4'b1110; end
      8'b11111110: begin E_tmp_1 = 8'b00001111; M_tmp_1 = 4'b0000; end
      default: begin E_tmp_1 = X + 3'b111 - V_i[12:5]; M_tmp_1 = V_i[4:1]; end
   endcase
end

//reg   [7:1] MX_tmp;
reg   [4:1] E_tmp_2;
reg   [4:1] M_tmp_2;

always @(*) begin
   casez(E_tmp_1)
      8'b1???????: begin E_tmp_2 = 4'b0000; M_tmp_2 = 4'b0000; end
      8'b?1??????: begin E_tmp_2 = 4'b0000; M_tmp_2 = 4'b0000; end
      8'b??1?????: begin E_tmp_2 = 4'b0000; M_tmp_2 = 4'b0000; end 
      8'b???1????: begin E_tmp_2 = 4'b0000; M_tmp_2 = 4'b0000; end 
      8'b????1111: begin E_tmp_2 = 4'b0000; M_tmp_2 = 4'b0000; end    
      default: begin E_tmp_2 = 4'b1110 - E_tmp_1; M_tmp_2 = M_tmp_1; end
   endcase
end   

wire  [8:1] P_tmp; 
reg  [4:1] E_tmp; 
reg  [3:1] M_tmp; 

assign P_tmp = {E_tmp_2, M_tmp_2};
      
always @(*) begin
   casez(P_tmp)
      8'b11101111: begin E_tmp = 4'b1110; M_tmp = 3'b111; end
      8'b????1111: begin E_tmp = E_tmp_2 + 1'b1; M_tmp = 3'b000; end
      8'b????1110: begin E_tmp = E_tmp_2; M_tmp = 3'b111; end
      8'b????1101: begin E_tmp = E_tmp_2; M_tmp = 3'b111; end
      8'b????1100: begin E_tmp = E_tmp_2; M_tmp = 3'b110; end
      8'b????1011: begin E_tmp = E_tmp_2; M_tmp = 3'b110; end
      8'b????1001: begin E_tmp = E_tmp_2; M_tmp = 3'b101; end
      8'b????1010: begin E_tmp = E_tmp_2; M_tmp = 3'b101; end
      8'b????0111: begin E_tmp = E_tmp_2; M_tmp = 3'b100; end
      8'b????1000: begin E_tmp = E_tmp_2; M_tmp = 3'b100; end
      8'b????0101: begin E_tmp = E_tmp_2; M_tmp = 3'b110; end
      8'b????0110: begin E_tmp = E_tmp_2; M_tmp = 3'b110; end
      8'b????0011: begin E_tmp = E_tmp_2; M_tmp = 3'b010; end
      8'b????0100: begin E_tmp = E_tmp_2; M_tmp = 3'b010; end
      8'b????0001: begin E_tmp = E_tmp_2; M_tmp = 3'b001; end
      8'b????0010: begin E_tmp = E_tmp_2; M_tmp = 3'b001; end
      default: begin E_tmp = E_tmp_2; M_tmp = M_tmp_2[4:2]; end      
   endcase
end   

assign P_i = {V_i[13], E_tmp, M_tmp};
      
endmodule