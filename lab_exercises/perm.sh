#!/bin/bash
#Displays a list of all the files in the current directory to which the user has read, write and execute permissions.

echo "The list of File Names in the curent directory."
echo "that have Read,Write and Execute permisions. "
for file in ./*
do
if [ -f $file ]
then
if [ -r $file -a -w $file -a -x $file ]
then
ls -l $file
fi
fi
done

