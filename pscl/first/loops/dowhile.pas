program dowhile;

var
	i: integer;
begin
	i := 0
	do
	begin
		writeln('Hello World!',i);
		i := i + 1		
	end
	while i < 20
end.
