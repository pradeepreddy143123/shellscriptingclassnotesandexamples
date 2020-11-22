#!/bin/bash

#Deletes all lines containing a specified word in one or more files supplied as arguments to it.

if [ $# -lt 1 ]
then
	echo "Enter the file arguments list"
else 
echo enter word to delete:
read word
echo $word

for n in $@
do
sed -i /$word/'d' $n
done

fi
