#!/bin/bash

# Addition of two numbers which are supplied as command line argument, and if this two nos are not given show error and its usage

#read var1
#read var2
#result=$[$var1 + $var2]
#echo result is $result

#var1=$[1 + 5] 
#echo $var1

#((e=5))
#echo $e

echo Script Name\$0:$0
echo FirstParameter\$1:$1
echo SecondParameter\$2:$2

if [ $# -lt 2 ] || [ $# -gt 2 ]
then
	echo Please input the proper syntax
	echo "Usage:$0 <First_Parameter> <Second_parameter>"
else
	echo Addition of two numbers is $[$1+$2]

fi
