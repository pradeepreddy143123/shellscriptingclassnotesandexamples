#!/bin/sh

RESULT=1
NUM=$1

if [ $NUM -eq 0 ] || [ $NUM -eq 1 ]
then
	echo Factorial of $NUM is 1
	exit 0
fi

while [ $NUM -gt 1 ]
do
	RESULT=$(( RESULT * NUM))
	NUM=$((NUM-1))
done
echo $RESULT
