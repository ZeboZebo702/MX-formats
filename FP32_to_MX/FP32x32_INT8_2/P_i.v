module P_i(input [16:1] V_i,
	    input [8:1] X, 
            output [8:1] P_i);
	
//wire signed [8:1] P_i_temp_1;	
//wire signed [5:1] P_i_temp_2;	

reg   [8:1] E_tmp_1; 
reg   [7:1] M_tmp_1;  

always @(*) begin
   case(X)
      8'b11111111: begin E_tmp_1 = 8'b11111111; M_tmp_1 = 7'b1111111; end
//      8'b11111110: begin E_tmp_1 = 8'b00011111; M_tmp_1 = 3'b000; end
      default: begin E_tmp_1 = X + 1'b1 - V_i[15:8]; M_tmp_1 = V_i[7:1]; end
   endcase
end

//reg   [7:1] MX_tmp;
reg   [1:1] E_tmp_2;
reg   [7:1] M_tmp_2;

always @(*) begin
   casez(E_tmp_1)
      8'b1???????: begin E_tmp_2 = 1'b0; M_tmp_2 = 7'b0000000; end
      8'b?1??????: begin E_tmp_2 = 1'b0; M_tmp_2 = 7'b0000000; end
      8'b??1?????: begin E_tmp_2 = 1'b0; M_tmp_2 = 7'b0000000; end 
      8'b???1????: begin E_tmp_2 = 1'b0; M_tmp_2 = 7'b0000000; end 
      8'b????1???: begin E_tmp_2 = 1'b0; M_tmp_2 = 7'b0000000; end 
      8'b?????1??: begin E_tmp_2 = 1'b0; M_tmp_2 = 7'b0000000; end 
      8'b??????1?: begin E_tmp_2 = 1'b0; M_tmp_2 = 7'b0000000; end 
      default: begin E_tmp_2 = 1'b1 - E_tmp_1; M_tmp_2 = M_tmp_1; end
   endcase
end   

wire  [8:1] P_tmp; 
reg   E_tmp; 
reg  [6:1] M_tmp; 

assign P_tmp = {E_tmp_2, M_tmp_2};
      
always @(*) begin
   casez(P_tmp)
      8'b?1111111: begin E_tmp = 1'b1; M_tmp = 6'b111111; end
      8'b?1111110: begin E_tmp = E_tmp_2; M_tmp = 6'b111111; end
      8'b?1111101, 8'b?1111011, 8'b?1110111, 8'b?1101111, 8'b?1011111, 8'b?0111111: begin E_tmp = E_tmp_2; M_tmp = 6'b111111; end 
      8'b???????1: begin E_tmp = E_tmp_2; M_tmp = M_tmp_2 + 1'b1; end 
      default: begin E_tmp = E_tmp_2; M_tmp = M_tmp_2[7:2]; end      
   endcase
end   

assign P_i = {V_i[16], E_tmp, M_tmp};
      
endmodule