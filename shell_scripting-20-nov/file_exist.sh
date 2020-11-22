#!/bin/sh

#write script to determine whether given file exist or not, file name is supplied as command line argument, Also check for sufficient number of command line arguments.


if [ -e $1 ] && [ $# -eq 1 ];then

	echo "file exist"

elif [ $# -ne 1 ];then

	echo "$0: usage <file_name>"

else 
	echo "file does not exist"

fi









