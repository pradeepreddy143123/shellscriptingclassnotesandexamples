#!/bin/sh

#Write a shell script that accepts a file name, starting and ending line numbers as arguments and displays all the lines between the given line numbers.

echo "read 1 file"
read file
if [ $# -eq 2 ];then

	echo "$(head -n $1 number | tail -n $2)"

else
	
	echo "usage:$0 <head> <tail>"
fi	
