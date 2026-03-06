program fnc;

function Cube(x: integer) : integer;
begin
	Cube := x * x * x
end;


var
	x: integer;

begin
	read(x);
	x := Cube(x);
	writeln(x)
end.

