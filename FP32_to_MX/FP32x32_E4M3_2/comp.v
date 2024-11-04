module comp(input [32:1] a, 
            input [32:1] b, 
            output [32:1] r);
  
reg [8:1] a_tmp,b_tmp;
reg [32:1] r_tmp; 
  
always @(a,b) begin
    if (a[31:24] == 8'b11111111 && b[31:24] == 8'b11111111)
      r_tmp <=  32'b00000000000000000000000000000000;
    else if (a[31:24] == 8'b11111111 && b[31:24] != 8'b11111111)
      r_tmp <=  b;
    else if (a[31:24] != 8'b11111111 && b[31:24] == 8'b11111111)
      r_tmp <=  a;
    else if (a[31:24] > b[31:24])
      r_tmp <=  a;
    else r_tmp <=  b;
 end 
  
assign r = r_tmp;
 
endmodule