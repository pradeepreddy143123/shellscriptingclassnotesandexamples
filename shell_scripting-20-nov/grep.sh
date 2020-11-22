#!/bin/sh

#Write a shell script that deletes all lines containing a specified word in one or more files supplied as arguments to it.

if [ $# -lt 1 ];then
	echo "usage : $0 <file_name> [<file_name>...]"
	exit
fi
echo "enter a word"
read word
for file in $*
do
    echo "$(grep -iv "$word" $file )"
echo "lines containing given word are deleted"

