program task1;

type
	nextptr = ^next;
	next = record 
		data : integer;
		next : nextptr;
	end;
var
	x: integer;
	first, cur, prev : nextptr;
begin
	prev := nil;
	while not eof do
	begin
		readln(x);
		new(first);
		first^.data := x;
		first^.next := prev;	
		prev := first
	end;
	
	cur := prev;
	while cur <> nil do
	begin
		writeln(cur^.data);
		cur := cur^.next
	end
end.
