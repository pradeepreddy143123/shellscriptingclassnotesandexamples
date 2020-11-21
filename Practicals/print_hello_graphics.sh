#!/bin/bash

#print, Message ""Hello World"", in Bold and Blink effect, 
#and in different Colors like red, brown etc using echo command

echo $'\e[30;5;1;41m' "\"\"Hello World\"\","
echo $'\e[31;5;1;47m' "\"\"Hello World\"\","
echo $'\e[32;5;1;46m' "\"\"Hello World\"\","
echo $'\e[33;5;1;45m' "\"\"Hello World\"\","
echo $'\e[34;5;1;44m' "\"\"Hello World\"\","
echo $'\e[35;5;1;40m' "\"\"Hello World\"\","
echo $'\e[36;5;1;43m' "\"\"Hello World\"\","
echo $'\e[37;5;1;42m' "\"\"Hello World\"\","

#i=0
#while [ $i -le 7 ]; do	
#	echo $'\e[3i;5;1m' "\"\"Hello World\"\","
#	i=$[$i+1]
#done
