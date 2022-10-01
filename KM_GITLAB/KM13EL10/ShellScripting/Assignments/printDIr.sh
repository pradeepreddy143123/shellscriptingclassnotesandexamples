#!/bin/sh

#DIRS=$(ls | grep '^d')
#echo $DIRS

DIRS=$( ls -l )

for DIR in $DIRS
do
	if [ -d $DIR ]
	then
		echo $DIR
	fi 
done
