#!/bin/sh 

if [ $# -lt 1 ]
then
	echo "Usage: $0 <directory>"
else
dir=$1
for file in $dir*
do
if [ -d $file ] 
then 
	ls -d $file
fi
done
fi
