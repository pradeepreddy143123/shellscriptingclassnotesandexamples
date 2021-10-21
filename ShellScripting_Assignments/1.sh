# Write shell script that will add two nos, which are supplied as command line argument, and if this two nos are not given show error and its usage

#!/bin/sh

a=$1
b=$2

if [ $# -eq 2 ]
then
val=`expr $a + $b`
echo "a + b : $val"
elif [ $# -lt 2 ] || [ $# -gt 2 ];
then
        echo " limit is two numbers"
else
        echo "Enter two numbers to add"
fi

exit 0