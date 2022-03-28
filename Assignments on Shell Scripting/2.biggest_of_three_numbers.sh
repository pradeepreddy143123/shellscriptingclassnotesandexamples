#!/bin/sh

#2.Write Script to find out biggest number from given three nos. Nos are supplied as command line arguments. Print error if sufficient arguments are not supplied.


if [ $# = 3 ];

	then

	if [ $1 -gt $2 ]; then
		if [ $1 -gt $3 ]; then 
		echo "$1 = Bigger"
		else
		echo "$3"

	  	fi

	else 
		if [ $2 -gt $3 ]; then
		echo "$2 = Bigger"

		else 
		echo "$3 = Bigger"

	     	fi

    	fi


else 
	echo "Error"

fi


