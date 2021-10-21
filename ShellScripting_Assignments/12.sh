# Write a shell script to find factorial of a given integer.

#!/bin/sh

echo "Enter a number"
read num

fact=1

while [ $num -gt 1 ]
do
  fact=$((fact * num))
  num=$((num - 1))
done

echo "Factorial of a given number is $fact"

exit 0