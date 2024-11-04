module FP32_M5E2 (V_1,V_2,V_3,V_4,V_5,V_6,V_7,V_8,V_9,V_10,
                  V_11,V_12,V_13,V_14,V_15,V_16,V_17,V_18,V_19,V_20,
                  V_21,V_22,V_23,V_24,V_25,V_26,V_27,V_28,V_29,V_30,V_31,V_32,
                   X,
                  P_1,P_2,P_3,P_4,P_5,P_6,P_7,P_8,P_9,P_10,
                  P_11,P_12,P_13,P_14,P_15,P_16,P_17,P_18,P_19,P_20,
                  P_21,P_22,P_23,P_24,P_25,P_26,P_27,P_28,P_29,P_30,P_31,P_32);

input  [32:1] V_1,V_2,V_3,V_4,V_5,V_6,V_7,V_8,V_9,V_10,
                  V_11,V_12,V_13,V_14,V_15,V_16,V_17,V_18,V_19,V_20,
                  V_21,V_22,V_23,V_24,V_25,V_26,V_27,V_28,V_29,V_30,V_31,V_32;

output [8:1] X;
output [4:1] P_1,P_2,P_3,P_4,P_5,P_6,P_7,P_8,P_9,P_10,
             P_11,P_12,P_13,P_14,P_15,P_16,P_17,P_18,P_19,P_20,
             P_21,P_22,P_23,P_24,P_25,P_26,P_27,P_28,P_29,P_30,P_31,P_32;

wire [8:1] r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32;
wire [32:1] g1,g2,g3,g4,g5,g6,g7,g8,g9,g10,g11,g12,g13,g14,g15,g16;//,g3,g4;
wire [32:1] r_1,r_2,r_3,r_4,r_5,r_6,r_7,r_8,r_9,r_10,r_11,r_12,r_13,r_14;//,g3,g4;
wire [32:1] gratest;
//wire NaN_bit;

comp  label1 (.a(V_1),.b(V_2),.r(g1));
comp  label2 (.a(V_3),.b(V_4),.r(g2));
comp  label3 (.a(V_5),.b(V_6),.r(g3));
comp  label4 (.a(V_7),.b(V_8),.r(g4));
comp  label5 (.a(V_9),.b(V_10),.r(g5));
comp  label6 (.a(V_11),.b(V_12),.r(g6));
comp  label7 (.a(V_13),.b(V_14),.r(g7));
comp  label8 (.a(V_15),.b(V_16),.r(g8));
comp  label9 (.a(V_17),.b(V_18),.r(g9));
comp  label10 (.a(V_19),.b(V_20),.r(g10));
comp  label11 (.a(V_21),.b(V_22),.r(g11));
comp  label12 (.a(V_23),.b(V_24),.r(g12));
comp  label13 (.a(V_25),.b(V_26),.r(g13));
comp  label14 (.a(V_27),.b(V_28),.r(g14));
comp  label15 (.a(V_29),.b(V_30),.r(g15));
comp  label16 (.a(V_31),.b(V_32),.r(g16));

comp  label17 (.a(g1),.b(g2),.r(r_1));
comp  label18 (.a(g3),.b(g4),.r(r_2));
comp  label19 (.a(g5),.b(g6),.r(r_3));
comp  label20 (.a(g7),.b(g8),.r(r_4));
comp  label21 (.a(g9),.b(g10),.r(r_5));
comp  label22 (.a(g11),.b(g12),.r(r_6));
comp  label23 (.a(g13),.b(g14),.r(r_7));
comp  label24 (.a(g15),.b(g16),.r(r_8));

comp  label25 (.a(r_1),.b(r_2),.r(r_9));
comp  label26 (.a(r_3),.b(r_4),.r(r_10));
comp  label27 (.a(r_5),.b(r_6),.r(r_11));
comp  label28 (.a(r_7),.b(r_8),.r(r_12));

comp  label29 (.a(r_9),.b(r_10),.r(r_13));
comp  label30 (.a(r_11),.b(r_12),.r(r_14));
comp  label31 (.a(r_13),.b(r_14),.r(gratest));

//comp  label31 (.a(V_1),.b(V_2),.r(gratest));

div  label32 (.V_i(gratest[31:1]),.X(X));//.NaN(NaN_bit),.X(X));

P_i  label33 (.V_i(V_1[32:22]),.X(X),.P_i(P_1));
P_i  label34 (.V_i(V_2[32:22]),.X(X),.P_i(P_2));
P_i  label35 (.V_i(V_3[32:22]),.X(X),.P_i(P_3));
P_i  label36 (.V_i(V_4[32:22]),.X(X),.P_i(P_4));
P_i  label37 (.V_i(V_5[32:22]),.X(X),.P_i(P_5));
P_i  label38 (.V_i(V_6[32:22]),.X(X),.P_i(P_6));
P_i  label39 (.V_i(V_7[32:22]),.X(X),.P_i(P_7));
P_i  label40 (.V_i(V_8[32:22]),.X(X),.P_i(P_8));
P_i  label41 (.V_i(V_9[32:22]),.X(X),.P_i(P_9));
P_i  label42 (.V_i(V_10[32:22]),.X(X),.P_i(P_10));
P_i  label43 (.V_i(V_11[32:22]),.X(X),.P_i(P_11));
P_i  label44 (.V_i(V_12[32:22]),.X(X),.P_i(P_12));
P_i  label45 (.V_i(V_13[32:22]),.X(X),.P_i(P_13));
P_i  label46 (.V_i(V_14[32:22]),.X(X),.P_i(P_14));
P_i  label47 (.V_i(V_15[32:22]),.X(X),.P_i(P_15));
P_i  label48 (.V_i(V_16[32:22]),.X(X),.P_i(P_16));
P_i  label49 (.V_i(V_17[32:22]),.X(X),.P_i(P_17));
P_i  label50 (.V_i(V_18[32:22]),.X(X),.P_i(P_18));
P_i  label51 (.V_i(V_19[32:22]),.X(X),.P_i(P_19));
P_i  label52 (.V_i(V_20[32:22]),.X(X),.P_i(P_20));
P_i  label53 (.V_i(V_21[32:22]),.X(X),.P_i(P_21));
P_i  label54 (.V_i(V_22[32:22]),.X(X),.P_i(P_22));
P_i  label55 (.V_i(V_23[32:22]),.X(X),.P_i(P_23));
P_i  label56 (.V_i(V_24[32:22]),.X(X),.P_i(P_24));
P_i  label57 (.V_i(V_25[32:22]),.X(X),.P_i(P_25));
P_i  label58 (.V_i(V_26[32:22]),.X(X),.P_i(P_26));
P_i  label59 (.V_i(V_27[32:22]),.X(X),.P_i(P_27));
P_i  label60 (.V_i(V_28[32:22]),.X(X),.P_i(P_28));
P_i  label61 (.V_i(V_29[32:22]),.X(X),.P_i(P_29));
P_i  label62 (.V_i(V_30[32:22]),.X(X),.P_i(P_30));
P_i  label63 (.V_i(V_31[32:22]),.X(X),.P_i(P_31));
P_i  label64 (.V_i(V_32[32:22]),.X(X),.P_i(P_32));


/*  
always @(*) begin
   case(V[31:24])
      8'b00000000: begin X_reg = 8'b00000000; E_reg = 5'b11110; end
      8'b00000001: begin X_reg = 8'b00000000; E_reg = 5'b11110; end
      8'b00000010: begin X_reg = 8'b00000000; E_reg = 5'b11110; end
      8'b00000011: begin X_reg = 8'b00000000; E_reg = 5'b11110; end
      8'b00000100: begin X_reg = 8'b00000000; E_reg = 5'b11110; end
      8'b00000101: begin X_reg = 8'b00000000; E_reg = 5'b11110; end
      8'b00000110: begin X_reg = 8'b00000000; E_reg = 5'b11110; end
      8'b00000111: begin X_reg = 8'b00000000; E_reg = 5'b11110; end
      8'b00001000: begin X_reg = 8'b00000000; E_reg = 5'b11110; end
      8'b00001001: begin X_reg = 8'b00000000; E_reg = 5'b11110; end
      8'b00001010: begin X_reg = 8'b00000000; E_reg = 5'b11110; end
      8'b00001011: begin X_reg = 8'b00000000; E_reg = 5'b11110; end
      8'b00001100: begin X_reg = 8'b00000000; E_reg = 5'b11110; end
      8'b00001101: begin X_reg = 8'b00000000; E_reg = 5'b11110; end
      8'b00001110: begin X_reg = 8'b00000000; E_reg = 5'b11110; end
      8'b00001111: begin X_reg = 8'b00000000; E_reg = 5'b11110; end
      8'b00010000: begin X_reg = 8'b00000001; E_reg = 5'b11110; end
      8'b00010001: begin X_reg = 8'b00000010; E_reg = 5'b11110; end
      8'b00010010: begin X_reg = 8'b00000011; E_reg = 5'b11110; end
      8'b00010011: begin X_reg = 8'b00000100; E_reg = 5'b11110; end
      8'b00010100: begin X_reg = 8'b00000101; E_reg = 5'b11110; end
      8'b00010101: begin X_reg = 8'b00000110; E_reg = 5'b11110; end
      8'b00010110: begin X_reg = 8'b00000111; E_reg = 5'b11110; end
      8'b00010111: begin X_reg = 8'b00001000; E_reg = 5'b11110; end
      8'b00011000: begin X_reg = 8'b00001001; E_reg = 5'b11110; end
      8'b00011001: begin X_reg = 8'b00001010; E_reg = 5'b11110; end
      8'b00011010: begin X_reg = 8'b00001011; E_reg = 5'b11110; end
      8'b00011011: begin X_reg = 8'b00001100; E_reg = 5'b11110; end
      8'b00011100: begin X_reg = 8'b00001101; E_reg = 5'b11110; end
      8'b00011101: begin X_reg = 8'b00001110; E_reg = 5'b11110; end
      8'b00011110: begin X_reg = 8'b00001111; E_reg = 5'b11110; end
      8'b00011111: begin X_reg = 8'b00010000; E_reg = 5'b11110; end
      8'b00100000: begin X_reg = 8'b00010001; E_reg = 5'b11110; end
      8'b00100001: begin X_reg = 8'b00010010; E_reg = 5'b11110; end
      8'b00100010: begin X_reg = 8'b00010011; E_reg = 5'b11110; end
      8'b00100011: begin X_reg = 8'b00010100; E_reg = 5'b11110; end
      8'b00100100: begin X_reg = 8'b00010101; E_reg = 5'b11110; end
      8'b00100101: begin X_reg = 8'b00010110; E_reg = 5'b11110; end
      8'b00100110: begin X_reg = 8'b00010111; E_reg = 5'b11110; end
      8'b00100111: begin X_reg = 8'b00011000; E_reg = 5'b11110; end
      8'b00101000: begin X_reg = 8'b00011001; E_reg = 5'b11110; end
      8'b00101001: begin X_reg = 8'b00011010; E_reg = 5'b11110; end
      8'b00101010: begin X_reg = 8'b00011011; E_reg = 5'b11110; end
      8'b00101011: begin X_reg = 8'b00011100; E_reg = 5'b11110; end
      8'b00101100: begin X_reg = 8'b00011101; E_reg = 5'b11110; end
      8'b00101101: begin X_reg = 8'b00011110; E_reg = 5'b11110; end
      8'b00101110: begin X_reg = 8'b00011111; E_reg = 5'b11110; end
      8'b00101111: begin X_reg = 8'b00100000; E_reg = 5'b11110; end
      8'b00110000: begin X_reg = 8'b00100001; E_reg = 5'b11110; end
      8'b00110001: begin X_reg = 8'b00100010; E_reg = 5'b11110; end
      8'b00110010: begin X_reg = 8'b00100011; E_reg = 5'b11110; end
      8'b00110011: begin X_reg = 8'b00100100; E_reg = 5'b11110; end
      8'b00110100: begin X_reg = 8'b00100101; E_reg = 5'b11110; end
      8'b00110101: begin X_reg = 8'b00100110; E_reg = 5'b11110; end
      8'b00110110: begin X_reg = 8'b00100111; E_reg = 5'b11110; end
      8'b00110111: begin X_reg = 8'b00101000; E_reg = 5'b11110; end
      8'b00111000: begin X_reg = 8'b00101001; E_reg = 5'b11110; end
      8'b00111001: begin X_reg = 8'b00101010; E_reg = 5'b11110; end
      8'b00111010: begin X_reg = 8'b00101011; E_reg = 5'b11110; end
      8'b00111011: begin X_reg = 8'b00101100; E_reg = 5'b11110; end
      8'b00111100: begin X_reg = 8'b00101101; E_reg = 5'b11110; end
      8'b00111101: begin X_reg = 8'b00101110; E_reg = 5'b11110; end
      8'b00111110: begin X_reg = 8'b00101111; E_reg = 5'b11110; end
      8'b00111111: begin X_reg = 8'b00110000; E_reg = 5'b11110; end
      8'b01000000: begin X_reg = 8'b00110001; E_reg = 5'b11110; end
      8'b01000001: begin X_reg = 8'b00110010; E_reg = 5'b11110; end
      8'b01000010: begin X_reg = 8'b00110011; E_reg = 5'b11110; end
      8'b01000011: begin X_reg = 8'b00110100; E_reg = 5'b11110; end
      8'b01000100: begin X_reg = 8'b00110101; E_reg = 5'b11110; end
      8'b01000101: begin X_reg = 8'b00110110; E_reg = 5'b11110; end
      8'b01000110: begin X_reg = 8'b00110111; E_reg = 5'b11110; end
      8'b01000111: begin X_reg = 8'b00111000; E_reg = 5'b11110; end
      8'b01001000: begin X_reg = 8'b00111001; E_reg = 5'b11110; end
      8'b01001001: begin X_reg = 8'b00111010; E_reg = 5'b11110; end
      8'b01001010: begin X_reg = 8'b00111011; E_reg = 5'b11110; end
      8'b01001011: begin X_reg = 8'b00111100; E_reg = 5'b11110; end
      8'b01001100: begin X_reg = 8'b00111101; E_reg = 5'b11110; end
      8'b01001101: begin X_reg = 8'b00111110; E_reg = 5'b11110; end
      8'b01001110: begin X_reg = 8'b00111111; E_reg = 5'b11110; end
      8'b01001111: begin X_reg = 8'b01000000; E_reg = 5'b11110; end
      8'b01010000: begin X_reg = 8'b01000001; E_reg = 5'b11110; end
      8'b01010001: begin X_reg = 8'b01000010; E_reg = 5'b11110; end
      8'b01010010: begin X_reg = 8'b01000011; E_reg = 5'b11110; end
      8'b01010011: begin X_reg = 8'b01000100; E_reg = 5'b11110; end
      8'b01010100: begin X_reg = 8'b01000101; E_reg = 5'b11110; end
      8'b01010101: begin X_reg = 8'b01000110; E_reg = 5'b11110; end
      8'b01010110: begin X_reg = 8'b01000111; E_reg = 5'b11110; end
      8'b01010111: begin X_reg = 8'b01001000; E_reg = 5'b11110; end
      8'b01011000: begin X_reg = 8'b01001001; E_reg = 5'b11110; end
      8'b01011001: begin X_reg = 8'b01001010; E_reg = 5'b11110; end
      8'b01011010: begin X_reg = 8'b01001011; E_reg = 5'b11110; end
      8'b01011011: begin X_reg = 8'b01001100; E_reg = 5'b11110; end
      8'b01011100: begin X_reg = 8'b01001101; E_reg = 5'b11110; end
      8'b01011101: begin X_reg = 8'b01001110; E_reg = 5'b11110; end
      8'b01011110: begin X_reg = 8'b01001111; E_reg = 5'b11110; end
      8'b01011111: begin X_reg = 8'b01010000; E_reg = 5'b11110; end
      8'b01100000: begin X_reg = 8'b01010001; E_reg = 5'b11110; end
      8'b01100001: begin X_reg = 8'b01010010; E_reg = 5'b11110; end
      8'b01100010: begin X_reg = 8'b01010011; E_reg = 5'b11110; end
      8'b01100011: begin X_reg = 8'b01010100; E_reg = 5'b11110; end
      8'b01100100: begin X_reg = 8'b01010101; E_reg = 5'b11110; end
      8'b01100101: begin X_reg = 8'b01010110; E_reg = 5'b11110; end
      8'b01100110: begin X_reg = 8'b01010111; E_reg = 5'b11110; end
      8'b01100111: begin X_reg = 8'b01011000; E_reg = 5'b11110; end
      8'b01101000: begin X_reg = 8'b01011001; E_reg = 5'b11110; end
      8'b01101001: begin X_reg = 8'b01011010; E_reg = 5'b11110; end
      8'b01101010: begin X_reg = 8'b01011011; E_reg = 5'b11110; end
      8'b01101011: begin X_reg = 8'b01011100; E_reg = 5'b11110; end
      8'b01101100: begin X_reg = 8'b01011101; E_reg = 5'b11110; end
      8'b01101101: begin X_reg = 8'b01011110; E_reg = 5'b11110; end
      8'b01101110: begin X_reg = 8'b01011111; E_reg = 5'b11110; end
      8'b01101111: begin X_reg = 8'b01100000; E_reg = 5'b11110; end
      8'b01110000: begin X_reg = 8'b01100001; E_reg = 5'b11110; end
      8'b01110001: begin X_reg = 8'b01100010; E_reg = 5'b11110; end
      8'b01110010: begin X_reg = 8'b01100011; E_reg = 5'b11110; end
      8'b01110011: begin X_reg = 8'b01100100; E_reg = 5'b11110; end
      8'b01110100: begin X_reg = 8'b01100101; E_reg = 5'b11110; end
      8'b01110101: begin X_reg = 8'b01100110; E_reg = 5'b11110; end
      8'b01110110: begin X_reg = 8'b01100111; E_reg = 5'b11110; end
      8'b01110111: begin X_reg = 8'b01101000; E_reg = 5'b11110; end
      8'b01111000: begin X_reg = 8'b01101001; E_reg = 5'b11110; end
      8'b01111001: begin X_reg = 8'b01101010; E_reg = 5'b11110; end
      8'b01111010: begin X_reg = 8'b01101011; E_reg = 5'b11110; end
      8'b01111011: begin X_reg = 8'b01101100; E_reg = 5'b11110; end
      8'b01111100: begin X_reg = 8'b01101101; E_reg = 5'b11110; end
      8'b01111101: begin X_reg = 8'b01101110; E_reg = 5'b11110; end
      8'b01111110: begin X_reg = 8'b01101111; E_reg = 5'b11110; end
      8'b01111111: begin X_reg = 8'b01110000; E_reg = 5'b11110; end
      8'b10000000: begin X_reg = 8'b01110001; E_reg = 5'b11110; end
      8'b10000001: begin X_reg = 8'b01110010; E_reg = 5'b11110; end
      8'b10000010: begin X_reg = 8'b01110011; E_reg = 5'b11110; end
      8'b10000011: begin X_reg = 8'b01110100; E_reg = 5'b11110; end
      8'b10000100: begin X_reg = 8'b01110101; E_reg = 5'b11110; end
      8'b10000101: begin X_reg = 8'b01110110; E_reg = 5'b11110; end
      8'b10000110: begin X_reg = 8'b01110111; E_reg = 5'b11110; end
      8'b10000111: begin X_reg = 8'b01111000; E_reg = 5'b11110; end
      8'b10001000: begin X_reg = 8'b01111001; E_reg = 5'b11110; end
      8'b10001001: begin X_reg = 8'b01111010; E_reg = 5'b11110; end
      8'b10001010: begin X_reg = 8'b01111011; E_reg = 5'b11110; end
      8'b10001011: begin X_reg = 8'b01111100; E_reg = 5'b11110; end
      8'b10001100: begin X_reg = 8'b01111101; E_reg = 5'b11110; end
      8'b10001101: begin X_reg = 8'b01111110; E_reg = 5'b11110; end
      8'b10001110: begin X_reg = 8'b01111111; E_reg = 5'b11110; end
      8'b10001111: begin X_reg = 8'b10000000; E_reg = 5'b11110; end
      8'b10010000: begin X_reg = 8'b10000001; E_reg = 5'b11110; end
      8'b10010001: begin X_reg = 8'b10000010; E_reg = 5'b11110; end
      8'b10010010: begin X_reg = 8'b10000011; E_reg = 5'b11110; end
      8'b10010011: begin X_reg = 8'b10000100; E_reg = 5'b11110; end
      8'b10010100: begin X_reg = 8'b10000101; E_reg = 5'b11110; end
      8'b10010101: begin X_reg = 8'b10000110; E_reg = 5'b11110; end
      8'b10010110: begin X_reg = 8'b10000111; E_reg = 5'b11110; end
      8'b10010111: begin X_reg = 8'b10001000; E_reg = 5'b11110; end
      8'b10011000: begin X_reg = 8'b10001001; E_reg = 5'b11110; end
      8'b10011001: begin X_reg = 8'b10001010; E_reg = 5'b11110; end
      8'b10011010: begin X_reg = 8'b10001011; E_reg = 5'b11110; end
      8'b10011011: begin X_reg = 8'b10001100; E_reg = 5'b11110; end
      8'b10011100: begin X_reg = 8'b10001101; E_reg = 5'b11110; end
      8'b10011101: begin X_reg = 8'b10001110; E_reg = 5'b11110; end
      8'b10011110: begin X_reg = 8'b10001111; E_reg = 5'b11110; end
      8'b10011111: begin X_reg = 8'b10010000; E_reg = 5'b11110; end
      8'b10100000: begin X_reg = 8'b10010001; E_reg = 5'b11110; end
      8'b10100001: begin X_reg = 8'b10010010; E_reg = 5'b11110; end
      8'b10100010: begin X_reg = 8'b10010011; E_reg = 5'b11110; end
      8'b10100011: begin X_reg = 8'b10010100; E_reg = 5'b11110; end
      8'b10100100: begin X_reg = 8'b10010101; E_reg = 5'b11110; end
      8'b10100101: begin X_reg = 8'b10010110; E_reg = 5'b11110; end
      8'b10100110: begin X_reg = 8'b10010111; E_reg = 5'b11110; end
      8'b10100111: begin X_reg = 8'b10011000; E_reg = 5'b11110; end
      8'b10101000: begin X_reg = 8'b10011001; E_reg = 5'b11110; end
      8'b10101001: begin X_reg = 8'b10011010; E_reg = 5'b11110; end
      8'b10101010: begin X_reg = 8'b10011011; E_reg = 5'b11110; end
      8'b10101011: begin X_reg = 8'b10011100; E_reg = 5'b11110; end
      8'b10101100: begin X_reg = 8'b10011101; E_reg = 5'b11110; end
      8'b10101101: begin X_reg = 8'b10011110; E_reg = 5'b11110; end
      8'b10101110: begin X_reg = 8'b10011111; E_reg = 5'b11110; end
      8'b10101111: begin X_reg = 8'b10100000; E_reg = 5'b11110; end
      8'b10110000: begin X_reg = 8'b10100001; E_reg = 5'b11110; end
      8'b10110001: begin X_reg = 8'b10100010; E_reg = 5'b11110; end
      8'b10110010: begin X_reg = 8'b10100011; E_reg = 5'b11110; end
      8'b10110011: begin X_reg = 8'b10100100; E_reg = 5'b11110; end
      8'b10110100: begin X_reg = 8'b10100101; E_reg = 5'b11110; end
      8'b10110101: begin X_reg = 8'b10100110; E_reg = 5'b11110; end
      8'b10110110: begin X_reg = 8'b10100111; E_reg = 5'b11110; end
      8'b10110111: begin X_reg = 8'b10101000; E_reg = 5'b11110; end
      8'b10111000: begin X_reg = 8'b10101001; E_reg = 5'b11110; end
      8'b10111001: begin X_reg = 8'b10101010; E_reg = 5'b11110; end
      8'b10111010: begin X_reg = 8'b10101011; E_reg = 5'b11110; end
      8'b10111011: begin X_reg = 8'b10101100; E_reg = 5'b11110; end
      8'b10111100: begin X_reg = 8'b10101101; E_reg = 5'b11110; end
      8'b10111101: begin X_reg = 8'b10101110; E_reg = 5'b11110; end
      8'b10111110: begin X_reg = 8'b10101111; E_reg = 5'b11110; end
      8'b10111111: begin X_reg = 8'b10110000; E_reg = 5'b11110; end
      8'b11000000: begin X_reg = 8'b10110001; E_reg = 5'b11110; end
      8'b11000001: begin X_reg = 8'b10110010; E_reg = 5'b11110; end
      8'b11000010: begin X_reg = 8'b10110011; E_reg = 5'b11110; end
      8'b11000011: begin X_reg = 8'b10110100; E_reg = 5'b11110; end
      8'b11000100: begin X_reg = 8'b10110101; E_reg = 5'b11110; end
      8'b11000101: begin X_reg = 8'b10110110; E_reg = 5'b11110; end
      8'b11000110: begin X_reg = 8'b10110111; E_reg = 5'b11110; end
      8'b11000111: begin X_reg = 8'b10111000; E_reg = 5'b11110; end
      8'b11001000: begin X_reg = 8'b10111001; E_reg = 5'b11110; end
      8'b11001001: begin X_reg = 8'b10111010; E_reg = 5'b11110; end
      8'b11001010: begin X_reg = 8'b10111011; E_reg = 5'b11110; end
      8'b11001011: begin X_reg = 8'b10111100; E_reg = 5'b11110; end
      8'b11001100: begin X_reg = 8'b10111101; E_reg = 5'b11110; end
      8'b11001101: begin X_reg = 8'b10111110; E_reg = 5'b11110; end
      8'b11001110: begin X_reg = 8'b10111111; E_reg = 5'b11110; end
      8'b11001111: begin X_reg = 8'b11000000; E_reg = 5'b11110; end
      8'b11010000: begin X_reg = 8'b11000001; E_reg = 5'b11110; end
      8'b11010001: begin X_reg = 8'b11000010; E_reg = 5'b11110; end
      8'b11010010: begin X_reg = 8'b11000011; E_reg = 5'b11110; end
      8'b11010011: begin X_reg = 8'b11000100; E_reg = 5'b11110; end
      8'b11010100: begin X_reg = 8'b11000101; E_reg = 5'b11110; end
      8'b11010101: begin X_reg = 8'b11000110; E_reg = 5'b11110; end
      8'b11010110: begin X_reg = 8'b11000111; E_reg = 5'b11110; end
      8'b11010111: begin X_reg = 8'b11001000; E_reg = 5'b11110; end
      8'b11011000: begin X_reg = 8'b11001001; E_reg = 5'b11110; end
      8'b11011001: begin X_reg = 8'b11001010; E_reg = 5'b11110; end
      8'b11011010: begin X_reg = 8'b11001011; E_reg = 5'b11110; end
      8'b11011011: begin X_reg = 8'b11001100; E_reg = 5'b11110; end
      8'b11011100: begin X_reg = 8'b11001101; E_reg = 5'b11110; end
      8'b11011101: begin X_reg = 8'b11001110; E_reg = 5'b11110; end
      8'b11011110: begin X_reg = 8'b11001111; E_reg = 5'b11110; end
      8'b11011111: begin X_reg = 8'b11010000; E_reg = 5'b11110; end
      8'b11100000: begin X_reg = 8'b11010001; E_reg = 5'b11110; end
      8'b11100001: begin X_reg = 8'b11010010; E_reg = 5'b11110; end
      8'b11100010: begin X_reg = 8'b11010011; E_reg = 5'b11110; end
      8'b11100011: begin X_reg = 8'b11010100; E_reg = 5'b11110; end
      8'b11100100: begin X_reg = 8'b11010101; E_reg = 5'b11110; end
      8'b11100101: begin X_reg = 8'b11010110; E_reg = 5'b11110; end
      8'b11100110: begin X_reg = 8'b11010111; E_reg = 5'b11110; end
      8'b11100111: begin X_reg = 8'b11011000; E_reg = 5'b11110; end
      8'b11101000: begin X_reg = 8'b11011001; E_reg = 5'b11110; end
      8'b11101001: begin X_reg = 8'b11011010; E_reg = 5'b11110; end
      8'b11101010: begin X_reg = 8'b11011011; E_reg = 5'b11110; end
      8'b11101011: begin X_reg = 8'b11011100; E_reg = 5'b11110; end
      8'b11101100: begin X_reg = 8'b11011101; E_reg = 5'b11110; end
      8'b11101101: begin X_reg = 8'b11011110; E_reg = 5'b11110; end
      8'b11101110: begin X_reg = 8'b11011111; E_reg = 5'b11110; end
      8'b11101111: begin X_reg = 8'b11100000; E_reg = 5'b11110; end
      8'b11110000: begin X_reg = 8'b11100001; E_reg = 5'b11110; end
      8'b11110001: begin X_reg = 8'b11100010; E_reg = 5'b11110; end
      8'b11110010: begin X_reg = 8'b11100011; E_reg = 5'b11110; end
      8'b11110011: begin X_reg = 8'b11100100; E_reg = 5'b11110; end
      8'b11110100: begin X_reg = 8'b11100101; E_reg = 5'b11110; end
      8'b11110101: begin X_reg = 8'b11100110; E_reg = 5'b11110; end
      8'b11110110: begin X_reg = 8'b11100111; E_reg = 5'b11110; end
      8'b11110111: begin X_reg = 8'b11101000; E_reg = 5'b11110; end
      8'b11111000: begin X_reg = 8'b11101001; E_reg = 5'b11110; end
      8'b11111001: begin X_reg = 8'b11101010; E_reg = 5'b11110; end
      8'b11111010: begin X_reg = 8'b11101011; E_reg = 5'b11110; end
      8'b11111011: begin X_reg = 8'b11101100; E_reg = 5'b11110; end
      8'b11111100: begin X_reg = 8'b11101101; E_reg = 5'b11110; end
      8'b11111101: begin X_reg = 8'b11101110; E_reg = 5'b11110; end
      8'b11111110: begin X_reg = 8'b11101111; E_reg = 5'b11110; end
      8'b11111111: begin X_reg = 8'b11110000; E_reg = 5'b11110; end
   endcase
end

always @(*) begin
   casez(V[32:21])
      12'b0????????000: P_tmp = 2'b00;
      12'b0????????001: P_tmp = 2'b01;   
      12'b0????????010: P_tmp = 2'b01;
      12'b0????????011: P_tmp = 2'b10;   
      12'b0????????100: P_tmp = 2'b10;
      12'b0????????101: P_tmp = 2'b11;   
      12'b0????????110: P_tmp = 2'b11;
      12'b0????????111: P_tmp = 2'b11;   
      12'b1????????000: P_tmp = 2'b00;
      12'b1????????001: P_tmp = 2'b00;   
      12'b1????????010: P_tmp = 2'b01;
      12'b1????????011: P_tmp = 2'b00;   
      12'b1????????100: P_tmp = 2'b10;
      12'b1????????101: P_tmp = 2'b01;
      12'b1????????110: P_tmp = 2'b11;
      12'b1????????111: P_tmp = 2'b00;   
   endcase
end

*/
endmodule