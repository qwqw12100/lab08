#!/bin/sh

for((i=0;i<=5;i++)); 
do
	gpio -g write 0 1
	gpio -g write 1 1
	gpio -g write 2 1
	gpio -g write 3 1
	sleep 1
	gpio -g write 0 0
	gpio -g write 1 0 
	gpio -g write 2 0 
	gpio -g write 3 0
	sleep 1
	
done
