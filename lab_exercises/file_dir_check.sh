#!/bin/bash

#Receives any number of file names as arguments checks if every argument supplied is a file or a directory and reports accordingly.
#Whenever the argument is a file, the number of lines on it is also reported

for input in $@
do
	if [ -d $input ]
	then
		echo $input is a directory
	elif [ -f $input ]
	then
		echo $input is a file
		wc -l $input
	fi
done
