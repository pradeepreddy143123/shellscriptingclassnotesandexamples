#!/bin/bash

if [ $# -eq 2 ]
then
echo "sum:$(($1+$2))"
else
echo "Error Arg"
echo "Please enter like this"
echo "file name.sh arg1 arg2(only 2 arg)"
fi
