#!/bin/sh

###################################################################################
# Write a shell script that accepts a list of file names as its arguments, counts #
# and reports the occurrence of each word that is present in the first argument   #
# file on other argument files.                                                   #
###################################################################################

#set $*

if [ $# -lt 1 ]; then
	echo "Error:Enter 2 argument"
	exit
fi

for i in `cat $1`; do
	echo "Word : $i"
	grep -c "$i" $*
done
