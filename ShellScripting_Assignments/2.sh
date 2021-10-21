# Write Script to find out biggest number from given three nos. Nos are supplied as command line arguments. Print error if sufficient arguments are not supplied.

#!/bin/sh

a=$1
b=$2
c=$3

if [ $# -eq 3 ]
then

if [ $a -gt $b ] && [ $a -gt $c ]
then
        echo "$a is bigger than all"
elif [ $b -gt $a ] && [ $b -gt $c ];
then
        echo "$b is the biggest"
elif [ $c -gt $b ] && [ $c -gt $a ];
then
        echo "$c is the bigger"
else
        echo "Insufficient arguments"

fi
else
        echo "Insufficient arguments"
fi
exit 0