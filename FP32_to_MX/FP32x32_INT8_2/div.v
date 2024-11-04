module div(V_i, X);//S, X, NaN);

input  [31:1] V_i;
//output [32:1] X_ext;
//output S;
output [8:1] X;
reg [8:1] X;
//output NaN;
wire NaN;


reg   [8:1] X_reg; 
reg [8:1] X_tmp;

/////reg S_tmp;
//reg [23:1] M_tmp;

always @(*) begin
   case(V_i[31:24])
      8'b00000000: X_reg = 8'b00000001;
      8'b00000001: X_reg = 8'b00000001;
      8'b00000010: X_reg = 8'b00000010;
      8'b00000011: X_reg = 8'b00000011;
      8'b00000100: X_reg = 8'b00000100;
      8'b00000101: X_reg = 8'b00000101;
      8'b00000110: X_reg = 8'b00000110;
      8'b00000111: X_reg = 8'b00000111;
      8'b00001000: X_reg = 8'b00001000;
      8'b00001001: X_reg = 8'b00001001;
      8'b00001010: X_reg = 8'b00001010;
      8'b00001011: X_reg = 8'b00001011;
      8'b00001100: X_reg = 8'b00001100;
      8'b00001101: X_reg = 8'b00001101;
      8'b00001110: X_reg = 8'b00001110;
      8'b00001111: X_reg = 8'b00001111;
      8'b00010000: X_reg = 8'b00010000;
      8'b00010001: X_reg = 8'b00010001;
      8'b00010010: X_reg = 8'b00010010;
      8'b00010011: X_reg = 8'b00010011;
      8'b00010100: X_reg = 8'b00010100;
      8'b00010101: X_reg = 8'b00010101;
      8'b00010110: X_reg = 8'b00010110;
      8'b00010111: X_reg = 8'b00010111;
      8'b00011000: X_reg = 8'b00011000;
      8'b00011001: X_reg = 8'b00011001;
      8'b00011010: X_reg = 8'b00011010;
      8'b00011011: X_reg = 8'b00011011;
      8'b00011100: X_reg = 8'b00011100;
      8'b00011101: X_reg = 8'b00011101;
      8'b00011110: X_reg = 8'b00011110;
      8'b00011111: X_reg = 8'b00011111;
      8'b00100000: X_reg = 8'b00100000;
      8'b00100001: X_reg = 8'b00100001;
      8'b00100010: X_reg = 8'b00100010;
      8'b00100011: X_reg = 8'b00100011;
      8'b00100100: X_reg = 8'b00100100;
      8'b00100101: X_reg = 8'b00100101;
      8'b00100110: X_reg = 8'b00100110;
      8'b00100111: X_reg = 8'b00100111;
      8'b00101000: X_reg = 8'b00101000;
      8'b00101001: X_reg = 8'b00101001;
      8'b00101010: X_reg = 8'b00101010;
      8'b00101011: X_reg = 8'b00101011;
      8'b00101100: X_reg = 8'b00101100;
      8'b00101101: X_reg = 8'b00101101;
      8'b00101110: X_reg = 8'b00101110;
      8'b00101111: X_reg = 8'b00101111;
      8'b00110000: X_reg = 8'b00110000;
      8'b00110001: X_reg = 8'b00110001;
      8'b00110010: X_reg = 8'b00110010;
      8'b00110011: X_reg = 8'b00110011;
      8'b00110100: X_reg = 8'b00110100;
      8'b00110101: X_reg = 8'b00110101;
      8'b00110110: X_reg = 8'b00110110;
      8'b00110111: X_reg = 8'b00110111;
      8'b00111000: X_reg = 8'b00111000;
      8'b00111001: X_reg = 8'b00111001;
      8'b00111010: X_reg = 8'b00111010;
      8'b00111011: X_reg = 8'b00111011;
      8'b00111100: X_reg = 8'b00111100;
      8'b00111101: X_reg = 8'b00111101;
      8'b00111110: X_reg = 8'b00111110;
      8'b00111111: X_reg = 8'b00111111;
      8'b01000000: X_reg = 8'b01000000;
      8'b01000001: X_reg = 8'b01000001;
      8'b01000010: X_reg = 8'b01000010;
      8'b01000011: X_reg = 8'b01000011;
      8'b01000100: X_reg = 8'b01000100;
      8'b01000101: X_reg = 8'b01000101;
      8'b01000110: X_reg = 8'b01000110;
      8'b01000111: X_reg = 8'b01000111;
      8'b01001000: X_reg = 8'b01001000;
      8'b01001001: X_reg = 8'b01001001;
      8'b01001010: X_reg = 8'b01001010;
      8'b01001011: X_reg = 8'b01001011;
      8'b01001100: X_reg = 8'b01001100;
      8'b01001101: X_reg = 8'b01001101;
      8'b01001110: X_reg = 8'b01001110;
      8'b01001111: X_reg = 8'b01001111;
      8'b01010000: X_reg = 8'b01010000;
      8'b01010001: X_reg = 8'b01010001;
      8'b01010010: X_reg = 8'b01010010;
      8'b01010011: X_reg = 8'b01010011;
      8'b01010100: X_reg = 8'b01010100;
      8'b01010101: X_reg = 8'b01010101;
      8'b01010110: X_reg = 8'b01010110;
      8'b01010111: X_reg = 8'b01010111;
      8'b01011000: X_reg = 8'b01011000;
      8'b01011001: X_reg = 8'b01011001;
      8'b01011010: X_reg = 8'b01011010;
      8'b01011011: X_reg = 8'b01011011;
      8'b01011100: X_reg = 8'b01011100;
      8'b01011101: X_reg = 8'b01011101;
      8'b01011110: X_reg = 8'b01011110;
      8'b01011111: X_reg = 8'b01011111;
      8'b01100000: X_reg = 8'b01100000;
      8'b01100001: X_reg = 8'b01100001;
      8'b01100010: X_reg = 8'b01100010;
      8'b01100011: X_reg = 8'b01100011;
      8'b01100100: X_reg = 8'b01100100;
      8'b01100101: X_reg = 8'b01100101;
      8'b01100110: X_reg = 8'b01100110;
      8'b01100111: X_reg = 8'b01100111;
      8'b01101000: X_reg = 8'b01101000;
      8'b01101001: X_reg = 8'b01101001;
      8'b01101010: X_reg = 8'b01101010;
      8'b01101011: X_reg = 8'b01101011;
      8'b01101100: X_reg = 8'b01101100;
      8'b01101101: X_reg = 8'b01101101;
      8'b01101110: X_reg = 8'b01101110;
      8'b01101111: X_reg = 8'b01101111;
      8'b01110000: X_reg = 8'b01110000;
      8'b01110001: X_reg = 8'b01110001;
      8'b01110010: X_reg = 8'b01110010;
      8'b01110011: X_reg = 8'b01110011;
      8'b01110100: X_reg = 8'b01110100;
      8'b01110101: X_reg = 8'b01110101;
      8'b01110110: X_reg = 8'b01110110;
      8'b01110111: X_reg = 8'b01110111;
      8'b01111000: X_reg = 8'b01111000;
      8'b01111001: X_reg = 8'b01111001;
      8'b01111010: X_reg = 8'b01111010;
      8'b01111011: X_reg = 8'b01111011;
      8'b01111100: X_reg = 8'b01111100;
      8'b01111101: X_reg = 8'b01111101;
      8'b01111110: X_reg = 8'b01111110;
      8'b01111111: X_reg = 8'b01111111;
      8'b10000000: X_reg = 8'b10000000;
      8'b10000001: X_reg = 8'b10000001;
      8'b10000010: X_reg = 8'b10000010;
      8'b10000011: X_reg = 8'b10000011;
      8'b10000100: X_reg = 8'b10000100;
      8'b10000101: X_reg = 8'b10000101;
      8'b10000110: X_reg = 8'b10000110;
      8'b10000111: X_reg = 8'b10000111;
      8'b10001000: X_reg = 8'b10001000;
      8'b10001001: X_reg = 8'b10001001;
      8'b10001010: X_reg = 8'b10001010;
      8'b10001011: X_reg = 8'b10001011;
      8'b10001100: X_reg = 8'b10001100;
      8'b10001101: X_reg = 8'b10001101;
      8'b10001110: X_reg = 8'b10001110;
      8'b10001111: X_reg = 8'b10001111;
      8'b10010000: X_reg = 8'b10010000;
      8'b10010001: X_reg = 8'b10010001;
      8'b10010010: X_reg = 8'b10010010;
      8'b10010011: X_reg = 8'b10010011;
      8'b10010100: X_reg = 8'b10010100;
      8'b10010101: X_reg = 8'b10010101;
      8'b10010110: X_reg = 8'b10010110;
      8'b10010111: X_reg = 8'b10010111;
      8'b10011000: X_reg = 8'b10011000;
      8'b10011001: X_reg = 8'b10011001;
      8'b10011010: X_reg = 8'b10011010;
      8'b10011011: X_reg = 8'b10011011;
      8'b10011100: X_reg = 8'b10011100;
      8'b10011101: X_reg = 8'b10011101;
      8'b10011110: X_reg = 8'b10011110;
      8'b10011111: X_reg = 8'b10011111;
      8'b10100000: X_reg = 8'b10100000;
      8'b10100001: X_reg = 8'b10100001;
      8'b10100010: X_reg = 8'b10100010;
      8'b10100011: X_reg = 8'b10100011;
      8'b10100100: X_reg = 8'b10100100;
      8'b10100101: X_reg = 8'b10100101;
      8'b10100110: X_reg = 8'b10100110;
      8'b10100111: X_reg = 8'b10100111;
      8'b10101000: X_reg = 8'b10101000;
      8'b10101001: X_reg = 8'b10101001;
      8'b10101010: X_reg = 8'b10101010;
      8'b10101011: X_reg = 8'b10101011;
      8'b10101100: X_reg = 8'b10101100;
      8'b10101101: X_reg = 8'b10101101;
      8'b10101110: X_reg = 8'b10101110;
      8'b10101111: X_reg = 8'b10101111;
      8'b10110000: X_reg = 8'b10110000;
      8'b10110001: X_reg = 8'b10110001;
      8'b10110010: X_reg = 8'b10110010;
      8'b10110011: X_reg = 8'b10110011;
      8'b10110100: X_reg = 8'b10110100;
      8'b10110101: X_reg = 8'b10110101;
      8'b10110110: X_reg = 8'b10110110;
      8'b10110111: X_reg = 8'b10110111;
      8'b10111000: X_reg = 8'b10111000;
      8'b10111001: X_reg = 8'b10111001;
      8'b10111010: X_reg = 8'b10111010;
      8'b10111011: X_reg = 8'b10111011;
      8'b10111100: X_reg = 8'b10111100;
      8'b10111101: X_reg = 8'b10111101;
      8'b10111110: X_reg = 8'b10111110;
      8'b10111111: X_reg = 8'b10111111;
      8'b11000000: X_reg = 8'b11000000;
      8'b11000001: X_reg = 8'b11000001;
      8'b11000010: X_reg = 8'b11000010;
      8'b11000011: X_reg = 8'b11000011;
      8'b11000100: X_reg = 8'b11000100;
      8'b11000101: X_reg = 8'b11000101;
      8'b11000110: X_reg = 8'b11000110;
      8'b11000111: X_reg = 8'b11000111;
      8'b11001000: X_reg = 8'b11001000;
      8'b11001001: X_reg = 8'b11001001;
      8'b11001010: X_reg = 8'b11001010;
      8'b11001011: X_reg = 8'b11001011;
      8'b11001100: X_reg = 8'b11001100;
      8'b11001101: X_reg = 8'b11001101;
      8'b11001110: X_reg = 8'b11001110;
      8'b11001111: X_reg = 8'b11001111;
      8'b11010000: X_reg = 8'b11010000;
      8'b11010001: X_reg = 8'b11010001;
      8'b11010010: X_reg = 8'b11010010;
      8'b11010011: X_reg = 8'b11010011;
      8'b11010100: X_reg = 8'b11010100;
      8'b11010101: X_reg = 8'b11010101;
      8'b11010110: X_reg = 8'b11010110;
      8'b11010111: X_reg = 8'b11010111;
      8'b11011000: X_reg = 8'b11011000;
      8'b11011001: X_reg = 8'b11011001;
      8'b11011010: X_reg = 8'b11011010;
      8'b11011011: X_reg = 8'b11011011;
      8'b11011100: X_reg = 8'b11011100;
      8'b11011101: X_reg = 8'b11011101;
      8'b11011110: X_reg = 8'b11011110;
      8'b11011111: X_reg = 8'b11011111;
      8'b11100000: X_reg = 8'b11100000;
      8'b11100001: X_reg = 8'b11100001;
      8'b11100010: X_reg = 8'b11100010;
      8'b11100011: X_reg = 8'b11100011;
      8'b11100100: X_reg = 8'b11100100;
      8'b11100101: X_reg = 8'b11100101;
      8'b11100110: X_reg = 8'b11100110;
      8'b11100111: X_reg = 8'b11100111;
      8'b11101000: X_reg = 8'b11101000;
      8'b11101001: X_reg = 8'b11101001;
      8'b11101010: X_reg = 8'b11101010;
      8'b11101011: X_reg = 8'b11101011;
      8'b11101100: X_reg = 8'b11101100;
      8'b11101101: X_reg = 8'b11101101;
      8'b11101110: X_reg = 8'b11101110;
      8'b11101111: X_reg = 8'b11101111;
      8'b11110000: X_reg = 8'b11110000;
      8'b11110001: X_reg = 8'b11110001;
      8'b11110010: X_reg = 8'b11110010;
      8'b11110011: X_reg = 8'b11110011;
      8'b11110100: X_reg = 8'b11110100;
      8'b11110101: X_reg = 8'b11110101;
      8'b11110110: X_reg = 8'b11110110;
      8'b11110111: X_reg = 8'b11110111;
      8'b11111000: X_reg = 8'b11111000;
      8'b11111001: X_reg = 8'b11111001;
      8'b11111010: X_reg = 8'b11111010;
      8'b11111011: X_reg = 8'b11111011;
      8'b11111100: X_reg = 8'b11111100;
      8'b11111101: X_reg = 8'b11111101;
      8'b11111110: X_reg = 8'b11111110;
      8'b11111111: X_reg = 8'b11111111;
   endcase
end

assign NaN =  ~V_i[1] & ~V_i[2] & ~V_i[3] & ~V_i[4] & ~V_i[5] & ~V_i[6] & ~V_i[7] & ~V_i[8] & ~V_i[9] & ~V_i[10] &
              ~V_i[11] & ~V_i[12] & ~V_i[13] & ~V_i[14] & ~V_i[15] & ~V_i[16] & ~V_i[17] & ~V_i[18] & ~V_i[19] & ~V_i[20] &
              ~V_i[21] & ~V_i[22] & ~V_i[23];

//always @(X_reg, NaN) begin
//    if (X_reg == 8'b11110000 && NaN == 1'b0)  
//      X_tmp <= 8'b11111111; 
/////////      S_tmp <= V_i[32]; end
/////////      M_tmp <= 23'b11111111111111111111111;
//    else if (X_reg == 8'b11110000 && NaN == 1'b1)  
//     X_tmp <= 8'b11111110; 
////////      S_tmp <= V_i[32]; end
////////      M_tmp <= 23'b00000000000000000000000; 
//    else if (X_reg != 8'b11110000) 
//      X_tmp <= X_reg; 
////////      S_tmp <= V_i[32]; end
///////      M_tmp <= V_i[23:1];
// end 
      
///////assign S = S_tmp;


//**********************************************************//

wire [9:1] X_reg_tmp;

assign X_reg_tmp = {X_reg, NaN};

always @(*) begin
   case(X_reg_tmp)
//      9'b111111110: X <= 8'b11111111;
      9'b111111110: X <= 8'b11111111;		// NaN
      default: X<= X_reg;
   endcase
end

//*****************************//






//assign X = X_tmp;
      
endmodule