#!/bin/bash

#print given number in reverse order, for eg. If no is 123 it must print as 321

echo Please enter a number:
read num
reverse=0

while [ $num != 0 ]; do
	rem=$[ $num%10 ]
	reverse=$[ $reverse*10 + $rem ]
	num=$[ $num/10 ]
done

echo reversed number is $reverse
