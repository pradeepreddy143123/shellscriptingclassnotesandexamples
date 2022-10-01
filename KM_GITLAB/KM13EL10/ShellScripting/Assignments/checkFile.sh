#!/bin/sh

if [ $# -lt 1 ]
then
	echo "Required Arguments did not match"
	echo "Please input File name or Path in the argument"
	exit 1
fi
	
if [ $# -ge 1 ]
then
	echo "Required Arguments for checking if the file exists matched"
fi
 
FILE=$1

if [ -e $FILE ];then
	echo "FIle Exists"
else
	echo "FIle do not Exist"
fi

exit 0
