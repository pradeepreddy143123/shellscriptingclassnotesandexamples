#!/bin/sh

ARGS=$@

for ARG in $ARGS
do
	if [ -f $ARG ]
	then
		echo "FILE"
		echo "Total NUmber of lines in File $ARG is $( wc -l $ARG )"
	elif [ -d $ARG ]
	then
		echo "DIR"
	else
		echo "Wrong Input"
	fi
done
exit 0
