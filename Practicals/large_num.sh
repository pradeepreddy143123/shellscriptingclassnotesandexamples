#!/bin/bash

#Biggest number from given three nos. Nos are supplied as command line arguments. Print error if sufficient arguments are not supplied.

echo Script Name\$0:$0
echo First  Number\$1:$1
echo Second Number\$2:$2
echo Third  Number\$3:$3

if [ $# -lt 3 ] || [ $# -gt 3 ]
then
	echo Please input the proper syntax
	echo "Usage:$0 <First_Parameter> <Second_parameter> <Third_Parameter>"
else
	result=$[ $1>$2?$[ $1>$3?$1:$3 ]:$[ $2>$3?$2:$3 ] ]
	echo The greatest number is $result

fi
