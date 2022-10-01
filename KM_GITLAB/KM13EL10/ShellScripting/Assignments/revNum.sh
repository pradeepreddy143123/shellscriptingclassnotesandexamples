#!/bin/sh

NUM=$1
REV=0
MOD=0

while [ $NUM -gt 0 ]
do
	MOD=$(( $NUM%10 ))
	REV=$(( $REV*10+$MOD ))
	NUM=$(( $NUM/10 ))
done

echo "Reverse NUmber is : $REV"
	 
