#!/bin/bash

# Script to add two nos, which are supplied as command line argument, and if this two nos are not given show error and its usage

echo "Adding numbers script starts here"
echo "--------------------------------"

if [ $# -ne 2 ]
then
echo " Error, Arguments not passed.Please enter two numbers to be added--- Format: ./script [arg1] [arg2]"
exit
else	
result=`expr $1 + $2`
echo "Addition result of number $1 and $2 is $result"
fi

