#!/bin/sh

for VAR in $@
do
	if [ -d $VAR ]
	then
		echo "$VAR is a directory"
	fi
	if [ -f $VAR ]
	then
		echo "$VAR is a file"
		echo -n "Number of lines in $VAR file is: "
		cat $VAR | wc -l
	fi
done
