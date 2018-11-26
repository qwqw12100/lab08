#!/bin/bash

for value in {0..3}
do
        gpio mode $value out
done

for ((i=0;i<2;))
do
  ./setbits.sh $RANDOM
done
