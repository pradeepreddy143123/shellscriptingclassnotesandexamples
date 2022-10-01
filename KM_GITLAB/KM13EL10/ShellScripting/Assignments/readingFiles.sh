#!/bin/sh

FILE=$1
COUNT=1
while read -r LINE
do
	if [ $COUNT -ge $2 ] && [ $COUNT -le $3 ]
	then
		echo "Lineno: $COUNT - $LINE"
	fi

	COUNT=$(( COUNT + 1 ))

done < $FILE
