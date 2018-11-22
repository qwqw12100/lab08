#!/bin/sh

for value in {0..3}
do
        gpio mode $value out
done

while true
do
 i = $RANDOM

if [ (i) & 1 ]
then
    gpio -g write 0 0 
	gpio -g write 1 0 
	gpio -g write 2 0 
	gpio -g write 3 0 

	gpio -g write 0 1
    gpio -g write 1 0 
	gpio -g write 2 0 
	gpio -g write 3 0 
usleep 250000
fi

if [ (i>>1) & 1 ]
then
    gpio -g write 0 0 
	gpio -g write 1 0 
	gpio -g write 2 0 
	gpio -g write 3 0 

	gpio -g write 0 0
    gpio -g write 1 1 
	gpio -g write 2 0 
	gpio -g write 3 0 
usleep 250000
fi

if [ (i>>2) & 1 ]
then
    gpio -g write 0 0 
	gpio -g write 1 0 
	gpio -g write 2 0 
	gpio -g write 3 0 

	gpio -g write 0 0
    gpio -g write 1 0 
	gpio -g write 2 1 
	gpio -g write 3 0 
usleep 250000
fi

if [ (i>>3) & 1 ]
then
    gpio -g write 0 0 
	gpio -g write 1 0 
	gpio -g write 2 0 
	gpio -g write 3 0 

	gpio -g write 0 0
    gpio -g write 1 0 
	gpio -g write 2 0 
	gpio -g write 3 1 
usleep 250000
fi

done
