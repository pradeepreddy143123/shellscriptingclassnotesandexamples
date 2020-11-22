#!/bin/sh
# 2. Write Script to find out biggest number from given three nos. Nos are supplied as command line arguments. Print error if sufficient arguments are not supplied.
#Check the number of arguments

if [ $# -ne 3 ];

then
echo “ There should be 3 number supplied as parameter.”
exit
fi

echo "Evaluating largest of the following numbers: $1 $2 $3"
if [[ $1 == $2 && $3 == $1 ]];then 
	echo "All number are same."
else 
	if [[ $1 > $2 && $1 > $3 ]];then
		echo "$1 is the largest number"
	elif [[ $2 > $3 && $2 > $1 ]];then
                echo "$2 is the largest number"
	else
		echo "$3 is the largest number"
	fi
fi
