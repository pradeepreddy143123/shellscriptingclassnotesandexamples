#!/bin/sh

echo Program to add two Numbers

if [ $# -eq 2 ]
then
	NUM1=$1
	NUM2=$2
	echo $(( $NUM1+$NUM2 ))
else
	echo Please add two numbers
fi

