#!/bin/sh

TIMER=25

if [ $# -ge 1 ]; then
	# extra check if it is a number 
	TIMER=$1
else
	echo $# args
fi

echo timer $TIMER minutes

echo curr time is $(date +%s)

start=$(date +%s) 

seconds_left=$(( $TIMER * 60 ))
curr=0

cycle=1
while true; do
	//main

	while [ $curr -lt $seconds_left ]]; do

		diff=$(( $(date +%s) - start ))

		curr=$diff 

		left=$(( seconds_left - diff ))
		s_left=$(( left % 60 ))
		m_left=$(( left / 60 ))

		echo "\033[2J\033[H" 
		echo left: ${m_left}:${s_left}; 

		sleep 0.2
	done
	start=$(date +%s)
	cycle=$(( cycle + 1 ))
	//5min
done
