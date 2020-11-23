#!/bin/sh

#Write Script to find out biggest number from given three nos. Nos are supplied as command line arguments. Print error if sufficient arguments are not supplied.

#echo "1st no $1"
#echo "2nd no $2"
#echo "3rd no $3"
 
if [ $# -eq 3 ]
then
	if [ $1 -gt $2 ] && [ $1 -gt $3 ];then
		echo "$1 is bigger"
	elif [ $2 -gt $1 ] && [ $2 -gt $3 ];then
		echo "$2 is greater"
	else
		echo "$3 is bigger"
	fi
else
	echo "$0 : Required <arg1> <arg2> <arg3>"
fi
