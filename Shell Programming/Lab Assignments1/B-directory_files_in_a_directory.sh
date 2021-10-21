#!/bin/sh

for VAR in $@
do
if [ -d $VAR ]
then
	echo "files in $VAR are:"
	cd $VAR
	for i in *
	do
		if [ -f $i ]
		then
			echo "file is: $i"
		fi
	done
else
	echo "No such $VAR directory found"
fi
done
