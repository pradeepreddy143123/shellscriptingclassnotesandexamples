<<comment
3. Write script to print given number in reverse order, for eg. If no is 123 it must print as 321.
comment

#!/bin/sh

echo "enter a nummber"
read n
while [ $n -ne 0 ]
do
	echo -n "$(expr $n % 10)"
	n=$(expr $n / 10)
done
echo ""
