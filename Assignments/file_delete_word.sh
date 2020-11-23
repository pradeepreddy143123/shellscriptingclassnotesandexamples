#!/bin/bash

# Script to  to delete words from all given files 
echo "To delete words from all given files, script starts here"
echo "--------------------------------"

if [ $# -lt 1 ]
then
  echo "Usage: ./file_delete_words.sh <file1> <file2> .."
  exit 1
fi

echo “Enter a word to be searched and deleted”
read word
for file in $*
do
#grep –iv “$word” $file | tee 1 > /dev/null
#grep -v "$word" $file > $file
sed -i "/\b\($word\)\b/d" $file
#The \b sets word boundaries and the d operation deletes the line matching the expression between the forward slashes. cat and rat are both being matched by the (one|other) syntax we apparently need to escape #with backslashes
# sed -i "/\b\(cat\|rat\)\b/d" filename  
done
echo “ lines containing given word are deleted”

