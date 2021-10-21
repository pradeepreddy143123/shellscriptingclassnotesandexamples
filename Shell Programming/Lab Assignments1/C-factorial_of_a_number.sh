#!/bin/sh

echo -n "enter a number: "
read n
sum=1
while [ $n -gt 0 ]
do
	sum=$(expr $sum \* $n)
	n=$(expr $n - 1)
done
echo "Factorial of given number is:$sum"
