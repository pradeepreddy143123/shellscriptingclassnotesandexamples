<<question
7. Write a shell script that deletes all lines containing a specified word in one or more files supplied as arguments to it.
question

#!/bin/sh

echo "enter the word"
read word
cat $@ | grep -v $word 
