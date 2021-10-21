<<question
10.Write a shell script that accepts a list of file names as its arguments, counts and reports the occurrence of each word that is present in the first argument file on other argument files.
question

#!/bin/sh


if [ $# -ge 2 ]
then 
	for i in `cat $1`
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
	done
else
	echo "No enough arguments"
fi
