program queue2;


type
	nodeptr = ^node;
	node = record
		data : integer;
		next : nodeptr;	
	end;

	queueptr = ^queue;
	queue = record
		head : nodeptr;
		tail : nodeptr;
	end;


var
	q : queueptr;
	n : nodeptr;
	prev : nodeptr;

	itr : nodeptr;

	val : integer;
	

// quueue interface 

procedure Init(var q : queueptr; var n: nodeptr);
begin
	new(q);
	new(n);
end;

function IsEmpty(var q : queueptr) : boolean;
begin
	IsEmpty := q^.tail = nil;
end;

procedure Put(var q : queueptr; var n: nodeptr; val : integer);
begin
	prev := q^.tail; 
	new(n^.next); // new node (but someone should point at prev)
	q^.tail := n^.next;
	q^.tail^.data := val;
	q^.tail^.next := prev;
	n := n^.next;

	// set up head
	if prev = nil then
		q^.head := q^.tail

end;

procedure Pop(var q : queueptr; var n: nodeptr; var val : integer);
begin
	if not IsEmpty(q) then
	begin
		val := q^.head^.data;

		q^.head := q^.head^.next;
		q^.head^.next := nil
	end
end;



begin
	Init(q, n);
	
	Pop(q, n, val);
	writeln('this is poped val: ', val);

	Put(q, n, 1);
	Put(q, n, 34);
	Put(q, n, 23);
	
	

	Pop(q, n, val);


	writeln('this is poped val: ', val);
	writeln('q tail data is: ', q^.tail^.data);
	writeln('q head data is: ', q^.head^.data)
end.	
