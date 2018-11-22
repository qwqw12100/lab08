#!/bin/sh

for value in {0..3}
do
        gpio mode $value out
done

while true
do
    gpio write 0 1 
	gpio write 1 0 
	gpio write 2 0 
	gpio write 3 0
	usleep 250000
	
	gpio write 0 0 
	gpio write 1 1 
	gpio write 2 0 
	gpio write 3 0
	usleep 250000
	
	gpio write 0 0 
	gpio write 1 0 
	gpio write 2 1 
	gpio write 3 0
	usleep 250000
	
	gpio write 0 0 
	gpio write 1 0 
	gpio write 2 0 
	gpio write 3 1
	usleep 250000
	
	gpio write 0 0 
	gpio write 1 0 
	gpio write 2 1 
	gpio write 3 0
	usleep 250000
	
	gpio write 0 0 
	gpio write 1 1 
	gpio write 2 0 
	gpio write 3 0
	usleep 250000	
done
