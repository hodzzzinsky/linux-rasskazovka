program task2;

type
	nextptr = ^next;
	next = record 
		data : integer;
		next : nextptr;
	end;
var
	x: integer;
	this, cur, prev, last : nextptr;
begin
	prev := nil;
	last := nil;
	while not eof do
	begin
		readln(x);
		new(this);
		this^.data := x;
		if prev <> nil then
			prev^.next := this
		else
			last := this;
		prev := this;
		
	end;
	
	cur := last;
	while cur <> nil do
	begin
		writeln(cur^.data);
		cur := cur^.next
	end
end.
