#!/bin/sh

#write shell script that will add two nos, which are supplied as command line argument, and if this two nos are not given show error and its usage

#echo "shell 1st argument is \$1 : $1"
#echo "shell 2nd argument is \$2 : $2"
if [ $# -ne 2 ];then

	echo "usage :$0 <arg1> <arg2>"
	exit
fi

echo "addition of $1 and $2 is `expr $1 + $2`"

