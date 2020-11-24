#!/bin/sh

##############################################################
# Write a shell script to find factorial of a given integer. #
##############################################################
i=$1
while [ "$i" -ne 0 ]; do
	echo "$i"
	i=$(( i-1 )) 
done
