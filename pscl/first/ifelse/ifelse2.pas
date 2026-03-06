program ifelse2;

var
	x: integer;
begin
	read(x);
	if x < 0 then
	begin
		writeln('negative ');
		writeln(x)
	end
	else
	begin
		writeln('positive');
		writeln(x)
	end
end.
