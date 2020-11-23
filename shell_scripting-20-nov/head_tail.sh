#!/bin/sh

#Write a shell script that accepts a file name, starting and ending line numbers as arguments and displays all the lines between the given line numbers.

echo "read 1 file"
read file

echo "enter the starting line number"
read s

echo "enter the ending line number"
read n


if [ $# -eq 2 ];then

	sed -n $s,$n\p $file | cat > newfile

cat newfile
