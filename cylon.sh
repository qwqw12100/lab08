#!/bin/bash

for value in {0..3}
do
        gpio mode $value out
done


for ((i=1;i<10;))
do

     for val in {0,1,2,3,2,1}
	do
		gpio write $val 1
		sleep 0.25

     for val in {0..3}
        do
                gpio write $val 0
     done

done
	
done
