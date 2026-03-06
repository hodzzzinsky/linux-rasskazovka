program year_check;

var
	year: integer;
begin
	writeln('Enter your age');
	read(year);
	while (year < 1900) or (year > 2025) do
	begin
		writeln('Invalid year of birth: ', year);
		writeln('Please try again');
		read(year)
	end;
	writeln('Year is accepted')
end.
