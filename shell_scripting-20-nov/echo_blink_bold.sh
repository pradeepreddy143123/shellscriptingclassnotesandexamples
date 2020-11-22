#!/bin/sh

#How to write script, that will print, Message ""Hello World"", in Bold and Blink effect, and in different Colors like red, brown etc using echo command."

echo -e "\e[34m\e[1mHello \e[5mWorld \e[0m"	#Bold and blink in blue color
echo -e "\e[93m\e[1mHello World \e[0m"		#Bold in light green
echo -e "\033[5mHello World \e[0m"		#Blink
echo -e "\e[31mHello World\e[0m"		#Red
echo -e "\e[33mHello World\e[0m"		#Yellow
echo -e "\e[32mHello World\e[0m"		#Green
echo -e "\033[34mHello World\033[0m"		#Blue
echo -e "\e[35mHello World\e[0m"		#Magenta
echo -e "\e[36mHello World\e[0m"		#Cyan
