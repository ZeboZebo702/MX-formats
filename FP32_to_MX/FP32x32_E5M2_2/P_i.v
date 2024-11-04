module P_i(input [12:1] V_i,
	    input [8:1] X, 
            output [8:1] P_i);
	
//wire signed [8:1] P_i_temp_1;	
//wire signed [5:1] P_i_temp_2;	

reg   [8:1] E_tmp_1; 
reg   [3:1] M_tmp_1;  

always @(*) begin
   case(X)
      8'b11111111: begin E_tmp_1 = 8'b00011111; M_tmp_1 = 3'b110; end
      8'b11111110: begin E_tmp_1 = 8'b00011111; M_tmp_1 = 3'b000; end
      default: begin E_tmp_1 = X + 4'b1111 - V_i[11:4]; M_tmp_1 = V_i[3:1]; end
   endcase
end

//reg   [7:1] MX_tmp;
reg   [5:1] E_tmp_2;
reg   [3:1] M_tmp_2;

always @(*) begin
   casez(E_tmp_1)
      8'b1???????: begin E_tmp_2 = 5'b00000; M_tmp_2 = 3'b000; end
      8'b?1??????: begin E_tmp_2 = 5'b00000; M_tmp_2 = 3'b000; end
      8'b??1?????: begin E_tmp_2 = 5'b00000; M_tmp_2 = 3'b000; end 
      8'b???11111: begin E_tmp_2 = 5'b00000; M_tmp_2 = 3'b000; end    
      default: begin E_tmp_2 = 5'b11110 - E_tmp_1; M_tmp_2 = M_tmp_1; end
   endcase
end   

wire  [8:1] P_tmp; 
reg  [5:1] E_tmp; 
reg  [2:1] M_tmp; 

assign P_tmp = {E_tmp_2, M_tmp_2};
      
always @(*) begin
   casez(P_tmp)
      8'b11110111: begin E_tmp = 5'b11110; M_tmp = 2'b11; end
      8'b?????111: begin E_tmp = E_tmp_2 + 1'b1; M_tmp = 2'b00; end
      8'b?????110: begin E_tmp = E_tmp_2; M_tmp = 2'b11; end 
      8'b?????101: begin E_tmp = E_tmp_2; M_tmp = 2'b11; end 
      8'b?????010: begin E_tmp = E_tmp_2; M_tmp = 2'b01; end 
      8'b?????001: begin E_tmp = E_tmp_2; M_tmp = 2'b01; end 
      8'b?????011: begin E_tmp = E_tmp_2; M_tmp = 2'b10; end
      default: begin E_tmp = E_tmp_2; M_tmp = M_tmp_2[3:2]; end      
   endcase
end   

assign P_i = {V_i[12], E_tmp, M_tmp};
      
endmodule