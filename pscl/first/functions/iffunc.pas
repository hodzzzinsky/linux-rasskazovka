program iffunc;

function IsLatinChar(c: char) : boolean;
begin
	if ((c >= 'A') and (c <= 'Z')) or 
	((c >= 'a') and (c <= 'z')) then
		IsLatinChar := true
	else 
		IsLatinChar := false
end;

var
	b: boolean;
	c: char;

begin
	read(c);
	b := IsLatinChar(c);
	writeln(b)
end.
