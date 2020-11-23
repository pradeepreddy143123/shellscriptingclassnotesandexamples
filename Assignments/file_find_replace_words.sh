#!/bin/bash

# Script to  to delete words from all given files 
echo "To find and replace words from all given files, script starts here"
echo "--------------------------------"

if [ $# -lt 1 ]
then
  echo "Usage: ./file_delete_words.sh <file1> <file2> .."
  exit 1
fi

echo “Enter a word to be searched and deleted”
read word
echo “Enter a word to be replaced”
read replace

for file in $*
do
# The s is the substitute command of sed for find and replace
# It tells sed to find all occurrences of ‘old-text’ and replace with ‘new-text’ in a file named input.txt
sed -i "s/$word/$replace/gi" $file 
done
echo “ lines containing given word are replaced ”

