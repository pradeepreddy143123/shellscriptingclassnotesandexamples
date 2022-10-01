#!/bin/sh

FILES=$( ls -l )

for FILE in $FILES
do
	if [ -r $FILE ] && [ -w $FILE ] && [ -x $FILE ]
	then
		echo "$FILE"
	fi
done

