#!/bin/bash

for value in {0..3}
do
	gpio mode $value out	
done

for i in {0..4}; 
do
	gpio  write 0 1
	gpio  write 1 1
	gpio  write 2 1
	gpio  write 3 1
	sleep 1
	gpio  write 0 0
	gpio  write 1 0 
	gpio  write 2 0 
	gpio  write 3 0
	sleep 1
	
done
