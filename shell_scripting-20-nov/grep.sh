#!/bin/sh

#Write a shell script that deletes all lines containing a specified word in one or more files supplied as arguments to it.

#if [ $# -lt 1 ];then
#	echo "check the argument once"
#	exit
#fi
echo "enter a word"
read word
echo "$(grep -iv "$word" $1 $2)"
echo "lines containing given word are deleted"

