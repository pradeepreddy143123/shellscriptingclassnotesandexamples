<<comment
2. Write Script to find out biggest number from given three nos. Nos are supplied as command line arguments. Print error if sufficient arguments are not supplied.
comment


#!/bin/sh

if [ $# -eq 3 ]
then
	if [ $1 -ge $2 ]
	then
		if [ $1 -ge $3 ]
		then 
			echo "Biggest number is : $1"
		else
			echo "Biggest number is : $3"
		fi
	else
		if [ $2 -ge $3 ]
		then
			echo "Biggest number is : $2"
		else
			echo "Biggest number is : $3"
		fi
	fi
else
	echo "error,Invalid arguments"
fi
