program varprocedure;

procedure vars(x: integer; var cube, quad, four, five: integer);
begin
	cube := x * x * x;
	quad := x * x;
	four := cube * x;
	five := four * x
end;

var
	x: integer;
	p, q, r, t: integer;

begin
	read(x);
	vars(x, p, q, r, t);
	writeln(p);
	writeln(q);
	writeln(r);
	writeln(t)
end.

