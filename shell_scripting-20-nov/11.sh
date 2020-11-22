#!/bin/sh

#Write a shell script to list all of the directory files in a directory.

echo "enter directory"
read dir
if [ -d $dir ];then
	echo "list of files in the directory"
	ls -l $dir | grep ^-
else
	echo "enter proper directory name"
fi
