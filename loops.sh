#!/bin/sh

I=1
while [  $I -le 100 ]; do
	echo $I
	I=$(( I + 1))
done

# le <=
# lt <
# ge >= 
# gt >


for C in one two three four five six; do 
	if [ "$C" = "four" ]; then
		echo "the number is 4!!!!"
	else 
		echo $C
	fi
done
