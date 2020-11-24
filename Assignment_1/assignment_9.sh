#!/bin/sh

##########################################################################################
# Write a shell script that receives any number of file names as arguments checks if     #
# every argument supplied is a file or a directory and reports accordingly. Whenever the #
# argument is a file, the number of lines on it is also reported.                        #
##########################################################################################

for x in $*
do
	if [ -f $x ]
	then
		#wc -l < $x
		(echo "$x is a file. Number of lines : "; wc -l < $x) |tr '\n' ' '
		echo
	elif [ -d $x ]
	then
		echo "$x is a Directory."
	else
		echo "Error: Enter valid File or Dirctory name"
	fi
done
