// ECE 425 MP2: Verilog RTL for Am2901 controller
// Rev 2/17/08

module controller(
	i,					// opcode (add your decoded signals)
	a,b,select_a_hi,select_b_hi,		// decoding of register addresses
	f,c,p,g_lo,p_lo,ovr,z,			// generation of ALU outputs
	y_tri,y,oe,			// tristate control of y bus
	f0_in,f3_in,		// tristate control of RAM shifter
	q0_in,q3_in,q0_out,q3_out,			// tristate control of Q shifter
	ALU_Function, ALU_Dest, ALU_Operand,
	reg_wr      //add additiona signals for your design here
);

 // define I/O for synthesized control
input [8:0] i;
input [3:0] a, b;
output [15:0] select_a_hi, select_b_hi;
input [3:0] f, c, p;
output g_lo, p_lo, ovr, z;
inout [3:0] y_tri;
input [3:0] y;
input oe;
inout f0_in, f3_in, q0_in, q3_in;
input q0_out, q3_out;
output reg_wr;    //define additional I/Os for your design



 // named internal wires carry reusable subexpressions
wire shift_left, shift_right;

 // "assign" statements give us algebraic expressions
assign select_a_hi = 16'h0001 << a;
assign select_b_hi = 16'h0001 << b;
assign shift_left = i[8] & i[7];
assign shift_right = i[8] & ~ i[7];

 // simpler functionality is better implemented directly in logic gates
buf calcg(	g_lo,	~c[3] ); // glitchy with lookahead carry propagation, but shouldn't matter for us :v)
nand calcp(	p_lo,	p[3], p[2], p[1], p[0] );
xor calcovr(	ovr,	c[3], c[2] );
nor calczero(	z,	f[3], f[2], f[1], f[0] );

bufif1 drvy3(	y_tri[3],y[3], oe );
bufif1 drvy2(	y_tri[2],y[2], oe );
bufif1 drvy1(	y_tri[1],y[1], oe );
bufif1 drvy0(	y_tri[0],y[0], oe );
bufif1 drvraml( f3_in,	f[3], shift_left );
bufif1 drvramr( f0_in,	f[0], shift_right );
bufif1 drvqshl( q3_in,	q3_out, shift_left );
bufif1 drvqshr( q0_in,	q0_out, shift_right );


 // add your control signals here...
output [4:0] ALU_Function;
output [3:0] ALU_Operand;
output [5:0] ALU_Dest;
//assign reg_wr = ;
assign ALU_Function[4] = (i[5:3] == 3'b010);
assign ALU_Function[3] = ( (i[5:3] == 3'b001) || (i[5:3] == 3'b101) );
assign ALU_Function[2] = (i[5:3] == 3'b111);
assign ALU_Function[0] = ~(i[5]);
assign ALU_Function[1] = ( (i[5:3] == 3'd0) || (i[5:3] == 3'd1) || (i[5:3] == 3'd2) ||
			(i[5:3] == 3'd4) || (i[5:3] == 3'd5) );
assign ALU_Dest[5] = ((~i[8]) & i[7] & (~i[6]));
assign ALU_Dest[4] = ((i[8:6] == 3'b100 ) || (i[8:6] == 3'b101) );
assign ALU_Dest[3] = ((i[8:6] == 3'b110 ) || (i[8:6] == 3'b111) );
assign ALU_Dest[2] = ((i[8:6] == 3'b000 ) || (i[8:6] == 3'b100) || (i[8:6] == 3'b110) );
assign ALU_Dest[1] = (i[8:6] == 3'b100);
assign ALU_Dest[0] = (i[8:6] == 3'b110);
assign ALU_Operand[3] = ((i[2:0] == 3'b101) || (i[2:0] == 3'b110) || (i[2:0] == 3'b111));
assign ALU_Operand[2] = ((i[2:0] == 3'b010) || (i[2:0] == 3'b011) || (i[2:0] == 3'b100));
assign ALU_Operand[1] = ((i[2:0] == 3'b000) || (i[2:0] == 3'b010) || (i[2:0] == 3'b110) || (i[2:0] == 3'b111));
assign ALU_Operand[0] = ((i[2:0] == 3'b100) || (i[2:0] == 3'b101) || (i[2:0] == 3'b111));

assign reg_wr = ((i[8:6] == 3'b000 ) || (i[8:6] == 3'b001) );
//end

endmodule

