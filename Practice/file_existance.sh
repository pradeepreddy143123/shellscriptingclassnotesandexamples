#!/bin/bash

#determine whether given file exist or not, file name is supplied as command line argument
#Also check for sufficient number of command line arguments

if [ $# -ne 1 ]
then 
	echo enter the file name
	echo "Usage:$0 <file_name>"
else
	if [ -f $1 ]
	then 
		echo $1 exists
	else
		echo $1 does not exist
	fi 
fi

