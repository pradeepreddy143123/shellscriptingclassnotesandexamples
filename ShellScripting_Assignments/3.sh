# Write script to print given number in reverse order, for eg. If no is 123 it must print as 321

#!/bin/sh

echo "Enter a number "
read num
rvs=0

while [ $num != 0 ]
do
        temp=$((num%10))
        rvs=$((rvs*10+temp))
        num=$((num/10))
done
echo "$rvs"

exit 0