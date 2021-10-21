#!/bin/sh

echo "enter a nummber"
read n
while [ $n -ne 0 ]
do
	echo -n "$(expr $n % 10)"
	n=$(expr $n / 10)
done
echo ""
