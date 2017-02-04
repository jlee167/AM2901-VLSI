/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP3-1
// Date      : Sun Dec 11 19:18:08 2016
/////////////////////////////////////////////////////////////


module controller ( i, a, b, select_a_hi, select_b_hi, f, c, p, g_lo, p_lo, 
        ovr, z, y_tri, y_data, oe, ram0, ram3, q0, q3, q0_data, q3_data, 
        ALU_Function, ALU_Dest, ALU_Operand, reg_wr );
  input [8:0] i;
  input [3:0] a;
  input [3:0] b;
  output [15:0] select_a_hi;
  output [15:0] select_b_hi;
  input [3:0] f;
  input [3:0] c;
  input [3:0] p;
  inout [3:0] y_tri;
  input [3:0] y_data;
  output [4:0] ALU_Function;
  output [5:0] ALU_Dest;
  output [3:0] ALU_Operand;
  input oe, q0_data, q3_data;
  output g_lo, p_lo, ovr, z, reg_wr;
  inout ram0,  ram3,  q0,  q3;
  wire   ALU_Function_3, N18, n147, n148, n168, n169, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212;
  tri   [3:0] y_tri;
  tri   ram0;
  tri   ram3;
  tri   q0;
  tri   q3;
  assign ALU_Function[3] = ALU_Function_3;
  assign ALU_Function[2] = N18;

  invzp_1 drvy0 ( .ip(n174), .c(n175), .op(y_tri[0]) );
  invzp_1 drvy1 ( .ip(n173), .c(n175), .op(y_tri[1]) );
  invzp_1 drvy2 ( .ip(n172), .c(n175), .op(y_tri[2]) );
  invzp_1 drvy3 ( .ip(n171), .c(n175), .op(y_tri[3]) );
  invzp_1 drvqshr ( .ip(n176), .c(n148), .op(q0) );
  invzp_1 drvramr ( .ip(n169), .c(n148), .op(ram0) );
  invzp_1 drvqshl ( .ip(n177), .c(n147), .op(q3) );
  invzp_1 drvraml ( .ip(n168), .c(n147), .op(ram3) );
  inv_1 U177 ( .ip(i[8]), .op(n178) );
  inv_1 U178 ( .ip(i[7]), .op(n204) );
  inv_1 U179 ( .ip(i[5]), .op(ALU_Function[0]) );
  inv_1 U180 ( .ip(c[3]), .op(g_lo) );
  inv_1 U181 ( .ip(i[0]), .op(n208) );
  inv_1 U182 ( .ip(i[2]), .op(n210) );
  inv_1 U183 ( .ip(q3_data), .op(n177) );
  nor4_1 U184 ( .ip1(f[3]), .ip2(f[0]), .ip3(f[2]), .ip4(f[1]), .op(z) );
  nor2_1 U185 ( .ip1(i[7]), .ip2(n178), .op(ALU_Dest[4]) );
  inv_1 U186 ( .ip(ALU_Dest[4]), .op(n148) );
  nor2_1 U187 ( .ip1(n178), .ip2(n204), .op(ALU_Dest[3]) );
  inv_1 U188 ( .ip(ALU_Dest[3]), .op(n147) );
  inv_1 U189 ( .ip(y_data[2]), .op(n172) );
  inv_1 U190 ( .ip(f[3]), .op(n168) );
  inv_1 U191 ( .ip(y_data[1]), .op(n173) );
  inv_1 U192 ( .ip(y_data[0]), .op(n174) );
  inv_1 U193 ( .ip(f[0]), .op(n169) );
  inv_1 U194 ( .ip(q0_data), .op(n176) );
  inv_1 U195 ( .ip(y_data[3]), .op(n171) );
  inv_1 U196 ( .ip(oe), .op(n175) );
  nand4_1 U197 ( .ip1(p[3]), .ip2(p[2]), .ip3(p[1]), .ip4(p[0]), .op(p_lo) );
  nor4_1 U198 ( .ip1(b[1]), .ip2(b[3]), .ip3(b[2]), .ip4(b[0]), .op(
        select_b_hi[0]) );
  nor4_1 U199 ( .ip1(a[0]), .ip2(a[1]), .ip3(a[2]), .ip4(a[3]), .op(
        select_a_hi[0]) );
  or2_2 U200 ( .ip1(a[1]), .ip2(a[0]), .op(n184) );
  nand2_1 U201 ( .ip1(a[2]), .ip2(a[3]), .op(n198) );
  nor2_1 U202 ( .ip1(n184), .ip2(n198), .op(select_a_hi[12]) );
  or2_2 U203 ( .ip1(b[1]), .ip2(b[0]), .op(n181) );
  nand2_1 U204 ( .ip1(b[2]), .ip2(b[3]), .op(n190) );
  nor2_1 U205 ( .ip1(n181), .ip2(n190), .op(select_b_hi[12]) );
  inv_2 U206 ( .ip(b[3]), .op(n179) );
  nand2_1 U207 ( .ip1(n179), .ip2(b[2]), .op(n192) );
  nor2_1 U208 ( .ip1(n181), .ip2(n192), .op(select_b_hi[4]) );
  inv_2 U209 ( .ip(b[2]), .op(n180) );
  nand2_1 U210 ( .ip1(n180), .ip2(b[3]), .op(n191) );
  nor2_1 U211 ( .ip1(n181), .ip2(n191), .op(select_b_hi[8]) );
  inv_2 U212 ( .ip(a[3]), .op(n182) );
  nand2_1 U213 ( .ip1(n182), .ip2(a[2]), .op(n200) );
  nor2_1 U214 ( .ip1(n184), .ip2(n200), .op(select_a_hi[4]) );
  inv_2 U215 ( .ip(a[2]), .op(n183) );
  nand2_1 U216 ( .ip1(n183), .ip2(a[3]), .op(n199) );
  nor2_1 U217 ( .ip1(n184), .ip2(n199), .op(select_a_hi[8]) );
  nand2_1 U218 ( .ip1(b[0]), .ip2(b[1]), .op(n185) );
  nor2_1 U219 ( .ip1(n185), .ip2(n190), .op(select_b_hi[15]) );
  nor2_1 U220 ( .ip1(n185), .ip2(n191), .op(select_b_hi[11]) );
  nor2_1 U221 ( .ip1(n185), .ip2(n192), .op(select_b_hi[7]) );
  or2_2 U222 ( .ip1(b[2]), .ip2(b[3]), .op(n194) );
  nor2_1 U223 ( .ip1(n194), .ip2(n185), .op(select_b_hi[3]) );
  nand2_1 U224 ( .ip1(a[0]), .ip2(a[1]), .op(n186) );
  nor2_1 U225 ( .ip1(n186), .ip2(n198), .op(select_a_hi[15]) );
  nor2_1 U226 ( .ip1(n186), .ip2(n199), .op(select_a_hi[11]) );
  nor2_1 U227 ( .ip1(n186), .ip2(n200), .op(select_a_hi[7]) );
  or2_2 U228 ( .ip1(a[2]), .ip2(a[3]), .op(n202) );
  nor2_1 U229 ( .ip1(n202), .ip2(n186), .op(select_a_hi[3]) );
  inv_2 U230 ( .ip(b[1]), .op(n187) );
  nand2_1 U231 ( .ip1(n187), .ip2(b[0]), .op(n188) );
  nor2_1 U232 ( .ip1(n190), .ip2(n188), .op(select_b_hi[13]) );
  nor2_1 U233 ( .ip1(n188), .ip2(n191), .op(select_b_hi[9]) );
  nor2_1 U234 ( .ip1(n188), .ip2(n192), .op(select_b_hi[5]) );
  nor2_1 U235 ( .ip1(n194), .ip2(n188), .op(select_b_hi[1]) );
  inv_2 U236 ( .ip(b[0]), .op(n189) );
  nand2_1 U237 ( .ip1(n189), .ip2(b[1]), .op(n193) );
  nor2_1 U238 ( .ip1(n190), .ip2(n193), .op(select_b_hi[14]) );
  nor2_1 U239 ( .ip1(n193), .ip2(n191), .op(select_b_hi[10]) );
  nor2_1 U240 ( .ip1(n193), .ip2(n192), .op(select_b_hi[6]) );
  nor2_1 U241 ( .ip1(n194), .ip2(n193), .op(select_b_hi[2]) );
  inv_2 U242 ( .ip(a[1]), .op(n195) );
  nand2_1 U243 ( .ip1(n195), .ip2(a[0]), .op(n196) );
  nor2_1 U244 ( .ip1(n198), .ip2(n196), .op(select_a_hi[13]) );
  nor2_1 U245 ( .ip1(n196), .ip2(n199), .op(select_a_hi[9]) );
  nor2_1 U246 ( .ip1(n196), .ip2(n200), .op(select_a_hi[5]) );
  nor2_1 U247 ( .ip1(n202), .ip2(n196), .op(select_a_hi[1]) );
  inv_2 U248 ( .ip(a[0]), .op(n197) );
  nand2_1 U249 ( .ip1(n197), .ip2(a[1]), .op(n201) );
  nor2_1 U250 ( .ip1(n198), .ip2(n201), .op(select_a_hi[14]) );
  nor2_1 U251 ( .ip1(n201), .ip2(n199), .op(select_a_hi[10]) );
  nor2_1 U252 ( .ip1(n201), .ip2(n200), .op(select_a_hi[6]) );
  nor2_1 U253 ( .ip1(n202), .ip2(n201), .op(select_a_hi[2]) );
  mux2_1 U254 ( .ip1(c[3]), .ip2(g_lo), .s(c[2]), .op(ovr) );
  inv_1 U255 ( .ip(i[3]), .op(n203) );
  inv_1 U256 ( .ip(i[4]), .op(n212) );
  nor3_1 U257 ( .ip1(ALU_Function[0]), .ip2(n203), .ip3(n212), .op(N18) );
  nor2_1 U258 ( .ip1(i[4]), .ip2(n203), .op(ALU_Function_3) );
  nand2_1 U259 ( .ip1(ALU_Function[0]), .ip2(n203), .op(n211) );
  nand2_1 U260 ( .ip1(i[4]), .ip2(n211), .op(ALU_Function[1]) );
  nor3_1 U261 ( .ip1(i[6]), .ip2(i[8]), .ip3(n204), .op(ALU_Dest[5]) );
  nor2_1 U262 ( .ip1(i[8]), .ip2(n204), .op(n205) );
  nor2_1 U263 ( .ip1(i[6]), .ip2(n205), .op(ALU_Dest[2]) );
  nor2_1 U264 ( .ip1(i[0]), .ip2(i[1]), .op(n206) );
  nor2_1 U265 ( .ip1(n210), .ip2(n206), .op(ALU_Operand[3]) );
  nor2_1 U266 ( .ip1(i[2]), .ip2(i[1]), .op(n207) );
  nor2_1 U267 ( .ip1(ALU_Operand[3]), .ip2(n207), .op(ALU_Operand[2]) );
  mux2_1 U268 ( .ip1(i[1]), .ip2(n208), .s(n210), .op(ALU_Operand[1]) );
  and2_1 U269 ( .ip1(i[1]), .ip2(n208), .op(n209) );
  nor2_1 U270 ( .ip1(n210), .ip2(n209), .op(ALU_Operand[0]) );
  nor2_1 U271 ( .ip1(i[8]), .ip2(i[7]), .op(reg_wr) );
  nor2_1 U272 ( .ip1(n212), .ip2(n211), .op(ALU_Function[4]) );
  nor2_1 U273 ( .ip1(i[6]), .ip2(n147), .op(ALU_Dest[0]) );
  nor2_1 U274 ( .ip1(i[6]), .ip2(n148), .op(ALU_Dest[1]) );
endmodule

