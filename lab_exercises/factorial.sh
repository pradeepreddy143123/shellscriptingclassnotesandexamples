#!/bin/bash

#Factorial of given integer

echo Enter a number:
read num

number=$num

fact=1

while [ $number -gt 1 ]
do
	fact=$((fact * number))
	number=$[ $number - 1 ]
done

echo factorial of $num is $fact
