#!/bin/sh

if [ $# -eq 2 ]
then
	echo "addition of two numbers is :$(expr $1 + $2)"
else
	echo "Invalid arguments"
fi
