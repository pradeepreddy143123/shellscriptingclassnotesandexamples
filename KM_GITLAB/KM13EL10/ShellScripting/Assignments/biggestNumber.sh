#!/bin/sh

if [ $# -eq 3 ]
then

	NUM1=$1
	NUM2=$2
	NUM3=$3
	if [ $NUM1 -gt $NUM2 ]  && [ $NUM1 -gt $NUM3 ] 
	then 
		echo "BiggestNUmber $NUM1"
	elif [ $NUM2 -gt $NUM1 ] && [ $NUM2 -gt $NUM3 ] 
	then
		echo "Biggest Number $NUM2"
	elif [ $NUM3 -gt $NUM1 ] && [ $NUM3 -gt $NUM2 ] 
	then
		echo "BiggesttNUmber $NUM3"
	fi
else
	echo "Number of arguments are not sufficient"
fi
