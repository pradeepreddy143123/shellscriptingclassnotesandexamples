<<comment
4. Write script to determine whether given file exist or not, file name is supplied as command line argument, Also check for sufficient number of command line arguments.
comment

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

