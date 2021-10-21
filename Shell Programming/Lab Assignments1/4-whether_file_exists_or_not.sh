#!/bin/sh

if [ $# -eq 1 ]
then 
	if [ -e $1 ]
	then
		echo "file exists"
	else
		echo "file does not exist"
	fi
else
	echo "error,Invalid number of arguments"
fi

