
reg [16:0] i;

always begin
	#50 i = i + 1;
end

always @ (i) begin
	a[7:0] = i[15:8];
	b[7:0] = i[7:0];
	cin = i[16];
end

initial begin
	i = 0;
	#(50*1024*128) $finish;
end
