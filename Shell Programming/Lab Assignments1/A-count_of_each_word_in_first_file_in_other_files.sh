#!/bin/sh


if [ $# -ge 2 ]
then 
	VAR=$1
	for i in `cat $VAR`
	do
		echo "$i"
		for j in $@
		do
			if [ $j = $1 ]
			then
				continue
			else
				echo "File name:$j"
				echo -n "Matching words:"
				grep -c $i $j 2> /dev/null
			fi

		done
		#grep -c $i $@ 2> /dev/null
	done
else
	echo "No enough arguments"
fi
