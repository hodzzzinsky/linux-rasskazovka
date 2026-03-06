program t2;

var
	i,j,z,fin : integer;
begin
	
	fin := 4;
	for i := 0 to fin do
	begin
		for j := fin downto i do
			write(' ');	
		write('*');
		for z:= (fin - i) to (fin - 1) do
			write(' ');	
		for z:= (fin - i) to ((fin - 1) - 1) do
			write(' ');
		if (i <> 0) then
			writeln('*')
		else
			writeln();
	
	end;
	fin := 4;
	for i := 0 to fin do
	begin
		for j := 0 to i do
			write(' ');
		write('*');
		for z := i to (fin -1) do
			write(' ');
		for z := i to ((fin -1) -1 ) do
			write(' ');
		if ( i <> 4) then
			writeln('*')
		else
			writeln;

	end
end.
