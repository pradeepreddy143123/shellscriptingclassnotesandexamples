#!/bin/sh

##################################################################################################
# Write script to print given number in reverse order, for eg. If no is 123 it must print as 321 #
##################################################################################################


original=$1
n=$1
rev=0
sd=0
while [ $n -gt 0 ]
do
	rev=$( expr $rev \* 10 + $(( $n % 10 )) )
	n=$(( $n / 10 ))
done

echo "$original after reversing $rev"
