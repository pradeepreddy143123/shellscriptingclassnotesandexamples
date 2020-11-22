#!/bin/sh

#Write script to print given number in reverse order, for eg. If no is 123 it must print as 321

echo "read a number"
read num
rev=0
rm=0
while [ $num -gt 0 ];do
	rm=`expr $num % 10`
	rev=`expr $rev \* 10 + $rm`
	num=`expr $num / 10`
done
	echo "$rev"
