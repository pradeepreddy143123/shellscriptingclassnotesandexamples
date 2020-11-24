#!/bin/bash

##############################################################################################
# How to write script, that will print, Message ""Hello World"",                             # 
# in Bold and Blink effect, and in different Colors like red, brown etc using echo command." #
##############################################################################################


RED='\033[31;5m'
GREEN='\033[32;5m'
BROWN='\033[33;5m'
BLUE='\033[34;5m'
colors[0]=$RED
colors[1]=$GREEN
colors[2]=$BROWN
colors[3]=$BLUE

#echo -e "$RED Hello World\033[0m"

for i in ${colors[@]}
do
	echo -e "$colors[$i] Hello World\033[0m"
done
