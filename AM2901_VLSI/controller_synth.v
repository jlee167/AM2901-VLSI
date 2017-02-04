/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP3-1
// Date      : Wed Dec 14 00:18:32 2016
/////////////////////////////////////////////////////////////


module controller ( i, a, b, select_a_hi, select_b_hi, f, c, p, g_lo, p_lo, 
        ovr, z, y_tri, y, oe, f0_in, f3_in, q0_in, q3_in, q0_out, q3_out, 
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
  input [3:0] y;
  output [4:0] ALU_Function;
  output [5:0] ALU_Dest;
  output [3:0] ALU_Operand;
  input oe, q0_out, q3_out;
  output g_lo, p_lo, ovr, z, reg_wr;
  inout f0_in,  f3_in,  q0_in,  q3_in;
  wire   ALU_Function_3, N18, n237, n238, n240, n241, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284;
  tri   [3:0] y_tri;
  tri   f0_in;
  tri   f3_in;
  tri   q0_in;
  tri   q3_in;
  assign ALU_Function[3] = ALU_Function_3;
  assign ALU_Function[2] = N18;

  invzp_1 drvy0 ( .ip(n246), .c(n247), .op(y_tri[0]) );
  invzp_1 drvy1 ( .ip(n245), .c(n247), .op(y_tri[1]) );
  invzp_1 drvy2 ( .ip(n244), .c(n247), .op(y_tri[2]) );
  invzp_1 drvy3 ( .ip(n243), .c(n247), .op(y_tri[3]) );
  invzp_1 drvqshr ( .ip(n248), .c(n238), .op(q0_in) );
  invzp_1 drvramr ( .ip(n241), .c(n238), .op(f0_in) );
  invzp_1 drvqshl ( .ip(n249), .c(n237), .op(q3_in) );
  invzp_1 drvraml ( .ip(n240), .c(n237), .op(f3_in) );
  inv_1 U264 ( .ip(i[8]), .op(n250) );
  inv_1 U265 ( .ip(i[7]), .op(n276) );
  inv_1 U266 ( .ip(i[5]), .op(ALU_Function[0]) );
  inv_1 U267 ( .ip(c[3]), .op(g_lo) );
  inv_1 U268 ( .ip(i[0]), .op(n280) );
  inv_1 U269 ( .ip(i[2]), .op(n282) );
  inv_1 U270 ( .ip(q3_out), .op(n249) );
  nor4_1 U271 ( .ip1(f[3]), .ip2(f[0]), .ip3(f[2]), .ip4(f[1]), .op(z) );
  nor2_1 U272 ( .ip1(i[7]), .ip2(n250), .op(ALU_Dest[4]) );
  inv_1 U273 ( .ip(ALU_Dest[4]), .op(n238) );
  nor2_1 U274 ( .ip1(n250), .ip2(n276), .op(ALU_Dest[3]) );
  inv_1 U275 ( .ip(ALU_Dest[3]), .op(n237) );
  inv_1 U276 ( .ip(y[2]), .op(n244) );
  inv_1 U277 ( .ip(f[3]), .op(n240) );
  inv_1 U278 ( .ip(y[1]), .op(n245) );
  inv_1 U279 ( .ip(y[0]), .op(n246) );
  inv_1 U280 ( .ip(f[0]), .op(n241) );
  inv_1 U281 ( .ip(q0_out), .op(n248) );
  inv_1 U282 ( .ip(y[3]), .op(n243) );
  inv_1 U283 ( .ip(oe), .op(n247) );
  nand4_1 U284 ( .ip1(p[2]), .ip2(p[3]), .ip3(p[0]), .ip4(p[1]), .op(p_lo) );
  nor4_1 U285 ( .ip1(b[3]), .ip2(b[2]), .ip3(b[0]), .ip4(b[1]), .op(
        select_b_hi[0]) );
  nor4_1 U286 ( .ip1(a[3]), .ip2(a[2]), .ip3(a[0]), .ip4(a[1]), .op(
        select_a_hi[0]) );
  mux2_1 U287 ( .ip1(c[3]), .ip2(g_lo), .s(c[2]), .op(ovr) );
  mux2_1 U288 ( .ip1(i[1]), .ip2(n280), .s(n282), .op(ALU_Operand[1]) );
  or2_2 U289 ( .ip1(b[1]), .ip2(b[0]), .op(n253) );
  nand2_1 U290 ( .ip1(b[2]), .ip2(b[3]), .op(n262) );
  nor2_1 U291 ( .ip1(n253), .ip2(n262), .op(select_b_hi[12]) );
  or2_2 U292 ( .ip1(a[1]), .ip2(a[0]), .op(n256) );
  nand2_1 U293 ( .ip1(a[2]), .ip2(a[3]), .op(n270) );
  nor2_1 U294 ( .ip1(n256), .ip2(n270), .op(select_a_hi[12]) );
  inv_2 U295 ( .ip(b[3]), .op(n251) );
  nand2_1 U296 ( .ip1(n251), .ip2(b[2]), .op(n264) );
  nor2_1 U297 ( .ip1(n253), .ip2(n264), .op(select_b_hi[4]) );
  inv_2 U298 ( .ip(b[2]), .op(n252) );
  nand2_1 U299 ( .ip1(n252), .ip2(b[3]), .op(n263) );
  nor2_1 U300 ( .ip1(n253), .ip2(n263), .op(select_b_hi[8]) );
  inv_2 U301 ( .ip(a[3]), .op(n254) );
  nand2_1 U302 ( .ip1(n254), .ip2(a[2]), .op(n272) );
  nor2_1 U303 ( .ip1(n256), .ip2(n272), .op(select_a_hi[4]) );
  inv_2 U304 ( .ip(a[2]), .op(n255) );
  nand2_1 U305 ( .ip1(n255), .ip2(a[3]), .op(n271) );
  nor2_1 U306 ( .ip1(n256), .ip2(n271), .op(select_a_hi[8]) );
  nand2_1 U307 ( .ip1(b[0]), .ip2(b[1]), .op(n257) );
  nor2_1 U308 ( .ip1(n257), .ip2(n262), .op(select_b_hi[15]) );
  nor2_1 U309 ( .ip1(n257), .ip2(n263), .op(select_b_hi[11]) );
  nor2_1 U310 ( .ip1(n257), .ip2(n264), .op(select_b_hi[7]) );
  or2_2 U311 ( .ip1(b[2]), .ip2(b[3]), .op(n266) );
  nor2_1 U312 ( .ip1(n266), .ip2(n257), .op(select_b_hi[3]) );
  nand2_1 U313 ( .ip1(a[0]), .ip2(a[1]), .op(n258) );
  nor2_1 U314 ( .ip1(n258), .ip2(n270), .op(select_a_hi[15]) );
  nor2_1 U315 ( .ip1(n258), .ip2(n271), .op(select_a_hi[11]) );
  nor2_1 U316 ( .ip1(n258), .ip2(n272), .op(select_a_hi[7]) );
  or2_2 U317 ( .ip1(a[2]), .ip2(a[3]), .op(n274) );
  nor2_1 U318 ( .ip1(n274), .ip2(n258), .op(select_a_hi[3]) );
  inv_2 U319 ( .ip(b[1]), .op(n259) );
  nand2_1 U320 ( .ip1(n259), .ip2(b[0]), .op(n260) );
  nor2_1 U321 ( .ip1(n262), .ip2(n260), .op(select_b_hi[13]) );
  nor2_1 U322 ( .ip1(n260), .ip2(n263), .op(select_b_hi[9]) );
  nor2_1 U323 ( .ip1(n260), .ip2(n264), .op(select_b_hi[5]) );
  nor2_1 U324 ( .ip1(n266), .ip2(n260), .op(select_b_hi[1]) );
  inv_2 U325 ( .ip(b[0]), .op(n261) );
  nand2_1 U326 ( .ip1(n261), .ip2(b[1]), .op(n265) );
  nor2_1 U327 ( .ip1(n262), .ip2(n265), .op(select_b_hi[14]) );
  nor2_1 U328 ( .ip1(n265), .ip2(n263), .op(select_b_hi[10]) );
  nor2_1 U329 ( .ip1(n265), .ip2(n264), .op(select_b_hi[6]) );
  nor2_1 U330 ( .ip1(n266), .ip2(n265), .op(select_b_hi[2]) );
  inv_2 U331 ( .ip(a[1]), .op(n267) );
  nand2_1 U332 ( .ip1(n267), .ip2(a[0]), .op(n268) );
  nor2_1 U333 ( .ip1(n270), .ip2(n268), .op(select_a_hi[13]) );
  nor2_1 U334 ( .ip1(n268), .ip2(n271), .op(select_a_hi[9]) );
  nor2_1 U335 ( .ip1(n268), .ip2(n272), .op(select_a_hi[5]) );
  nor2_1 U336 ( .ip1(n274), .ip2(n268), .op(select_a_hi[1]) );
  inv_2 U337 ( .ip(a[0]), .op(n269) );
  nand2_1 U338 ( .ip1(n269), .ip2(a[1]), .op(n273) );
  nor2_1 U339 ( .ip1(n270), .ip2(n273), .op(select_a_hi[14]) );
  nor2_1 U340 ( .ip1(n273), .ip2(n271), .op(select_a_hi[10]) );
  nor2_1 U341 ( .ip1(n273), .ip2(n272), .op(select_a_hi[6]) );
  nor2_1 U342 ( .ip1(n274), .ip2(n273), .op(select_a_hi[2]) );
  inv_1 U343 ( .ip(i[3]), .op(n275) );
  inv_1 U344 ( .ip(i[4]), .op(n284) );
  nor3_1 U345 ( .ip1(ALU_Function[0]), .ip2(n275), .ip3(n284), .op(N18) );
  nor2_1 U346 ( .ip1(i[4]), .ip2(n275), .op(ALU_Function_3) );
  nand2_1 U347 ( .ip1(ALU_Function[0]), .ip2(n275), .op(n283) );
  nand2_1 U348 ( .ip1(i[4]), .ip2(n283), .op(ALU_Function[1]) );
  nor3_1 U349 ( .ip1(i[6]), .ip2(i[8]), .ip3(n276), .op(ALU_Dest[5]) );
  nor2_1 U350 ( .ip1(i[8]), .ip2(n276), .op(n277) );
  nor2_1 U351 ( .ip1(i[6]), .ip2(n277), .op(ALU_Dest[2]) );
  nor2_1 U352 ( .ip1(i[0]), .ip2(i[1]), .op(n278) );
  nor2_1 U353 ( .ip1(n282), .ip2(n278), .op(ALU_Operand[3]) );
  nor2_1 U354 ( .ip1(i[2]), .ip2(i[1]), .op(n279) );
  nor2_1 U355 ( .ip1(ALU_Operand[3]), .ip2(n279), .op(ALU_Operand[2]) );
  and2_1 U356 ( .ip1(i[1]), .ip2(n280), .op(n281) );
  nor2_1 U357 ( .ip1(n282), .ip2(n281), .op(ALU_Operand[0]) );
  nor2_1 U358 ( .ip1(i[8]), .ip2(i[7]), .op(reg_wr) );
  nor2_1 U359 ( .ip1(n284), .ip2(n283), .op(ALU_Function[4]) );
  nor2_1 U360 ( .ip1(i[6]), .ip2(n237), .op(ALU_Dest[0]) );
  nor2_1 U361 ( .ip1(i[6]), .ip2(n238), .op(ALU_Dest[1]) );
endmodule

