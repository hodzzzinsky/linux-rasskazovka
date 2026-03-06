program msgN;

const
	message = 'Hello World!';
	count: integer = 11;

var 
	i: integer;

begin
	for i := 0 to count do
		writeln(message, ' ', i);
end.
