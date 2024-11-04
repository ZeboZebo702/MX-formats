module P_i(input [11:1] V_i,
	    input [8:1] X, 
            output [4:1] P_i);
	
//wire signed [8:1] P_i_temp_1;	
//wire signed [5:1] P_i_temp_2;	

reg   [8:1] E_tmp_1; 
reg   [2:1] M_tmp_1;  

always @(*) begin
   case(X)
      8'b11111111: begin E_tmp_1 = 8'b00000001; M_tmp_1 = 2'b10; end
      8'b11111110: begin E_tmp_1 = 8'b00000001; M_tmp_1 = 2'b00; end
      default: begin E_tmp_1 = X + 3'b1 - V_i[10:3]; M_tmp_1 = V_i[2:1]; end
   endcase
end

//reg   [7:1] MX_tmp;
reg   [4:1] E_tmp_2;
reg   [4:1] M_tmp_2;

always @(*) begin
   casez(E_tmp_1)
      8'b1???????: begin E_tmp_2 = 2'b00; M_tmp_2 = 2'b00; end
      8'b?1??????: begin E_tmp_2 = 2'b00; M_tmp_2 = 2'b00; end
      8'b??1?????: begin E_tmp_2 = 2'b00; M_tmp_2 = 2'b00; end 
      8'b???1????: begin E_tmp_2 = 2'b00; M_tmp_2 = 2'b00; end
      8'b????1???: begin E_tmp_2 = 2'b00; M_tmp_2 = 2'b00; end
      8'b?????1??: begin E_tmp_2 = 2'b00; M_tmp_2 = 2'b00; end
      8'b??????11: begin E_tmp_2 = 2'b00; M_tmp_2 = 2'b00; end    
      default: begin E_tmp_2 = 2'b10 - E_tmp_1; M_tmp_2 = M_tmp_1; end
   endcase
end   

wire  [4:1] P_tmp; 
reg  [2:1] E_tmp; 
reg   M_tmp; 

assign P_tmp = {E_tmp_2, M_tmp_2};
      
always @(*) begin
   casez(P_tmp)
      4'b1011: begin E_tmp = 2'b10; M_tmp = 1'b1; end
      4'b??11: begin E_tmp = E_tmp_2 + 1'b1; M_tmp = 1'b0; end
      4'b??10: begin E_tmp = E_tmp_2; M_tmp = 1'b1; end
      4'b??01: begin E_tmp = E_tmp_2; M_tmp = 1'b1; end
      default: begin E_tmp = E_tmp_2; M_tmp = M_tmp_2[2]; end      
   endcase
end   

assign P_i = {V_i[11], E_tmp, M_tmp};
      
endmodule