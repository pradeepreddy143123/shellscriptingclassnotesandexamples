<<comment
1. Write shell script that will add two nos, which are supplied as command line argument, and if this two nos are not given show error and its usage.
comment

#!/bin/sh

if [ $# -eq 2 ]
then
	echo "addition of two numbers is :$(expr $1 + $2)"
else
	echo "Invalid arguments"
fi
