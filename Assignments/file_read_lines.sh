#!/bin/bash

# Script to  to determine whether given file exist or not, file name is supplied as command line argument, Also check for sufficient number of command line arguments.

echo "File existing check script starts here"
echo "--------------------------------"

if [ $# -ne 1 ];then
  echo " Error, file name has to be passed as argument --- Format: ./script <filename>]"
  exit
elif [ -e  $1 ];then
  echo "The file $1 is existing and is regular file"
else
  echo "The file $1 does not exist, try with another file ne"
  exit 
fi

filename=$1
while read line
do
  #reading each line
  echo $line
done < $filename
exit

