#!/bin/bash

for value in {0..3}
do
	gpio mode $value out	
done

for i in {0..4}; 
do
	for val in {0..3}
	do
		gpio write $val 1
	done

	sleep 1

        for val in {0..3}
        do
                gpio write $val 0
done
	
done
