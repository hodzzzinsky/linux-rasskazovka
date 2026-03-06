program byN;

function byN(n: integer) : integer;
var
	x, y, res: integer;
	i : integer = 0;

begin
	x := 0;
	y := 1;

	while i < n do
	begin
		res := x + y;
		x := y;
		y := res;
		i := i + 1;
	end;
	byN := res
end;

var
	input : integer;

begin
	read(input);
	input := byN(input);
	writeln(input)
end.
	
