program fib;

var
	x,y,res: integer;

begin
	x := 1;
	y := 1;

	while res < 100 do
	begin
		writeln(y);
		
		res := x + y;
		x := y;
		y := res;
	end
end.
