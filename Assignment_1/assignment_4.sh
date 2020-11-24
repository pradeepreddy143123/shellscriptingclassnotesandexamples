#!/bin/sh

#############################################################################################################
# Write script to determine whether given file exist or not, file name is supplied as command line argument,#
# Also check for sufficient number of command line arguments.                                               #
#############################################################################################################

args="$@"
n="$#"
#echo "$args"

for i in $args
do
	if [ -e $i ]
	then
		echo "$i found"
	else
		echo "$i not found"
	fi
done
