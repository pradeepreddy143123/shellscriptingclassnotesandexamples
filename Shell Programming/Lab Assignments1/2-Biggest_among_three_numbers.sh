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
