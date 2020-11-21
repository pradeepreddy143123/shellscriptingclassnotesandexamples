#!/bin/bash

#Accepts a file name, starting and ending line numbers as arguments and displays all the lines between the given line numbers

lines=$[ $3-$2 ]
#echo $2
#echo $1
#echo $lines
sed -n $2,$3\p $1
