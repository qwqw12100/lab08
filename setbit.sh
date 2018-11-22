#!/bin/sh

for value in {0..3}
do
        gpio mode $value out
done

if ( ($1 & 1) )
then
  gpio write 0 1
else
  gpio write 0 0
fi

if (( $1>>1 & 1 ))
then
  gpio write 1 1
else
  gpio write 1 0
fi

if (( $1>>2 & 1 ))
then
  gpio write 2 1
else
  gpio write 2 0
fi

if (( $1>>3 & 1 ))
then
  gpio write 3 1
else
  gpio write 3 0
fi

