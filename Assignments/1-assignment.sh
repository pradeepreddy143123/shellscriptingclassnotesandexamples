#!/bin/sh
#1. Write shell script that will add two nos, which are supplied as command line argument, and if this two nos are not given show error and its usage

#Check the number of arguments

if [ $# -ne 2 ];

then

echo “ Arguments Missing.”

exit

fi

Sum=`expr $1 + $2`

echo “Addition of $1 and $2 is $Sum”

exit 0
