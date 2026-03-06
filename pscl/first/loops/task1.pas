program diagonal;
var
	x: integer = 10;
	i: integer;
	j: integer;
begin
	
	for i := 0 to x do
	begin
		for j := 0 to i do
			write(' ');
		writeln('*');
	end
end.

