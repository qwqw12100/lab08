#!/bin/sh
    
do	
	gpio  mode 0 out 
    gpio  mode 1 out 
    gpio  mode 2 out  
    gpio  mode 3 out 

	gpio write 0 0 
	gpio write 1 0 
	gpio write 2 0 
	gpio write 3 0 
done
