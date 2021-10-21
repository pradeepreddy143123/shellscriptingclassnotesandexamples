<<question
5. How to write script, that will print, Message ""Hello World"", in Bold and Blink effect, and in different Colors like red, brown etc using echo command."
question

#!/bin/sh

echo -n "\033[31m\033[1mHello \033[33m\033[5mWorld"
echo "\033[0m"
<<comment
echo "\033[33mHello World"
echo -n "\033[33mHello World"
echo "\033[0m"
echo "\033[01mHello World"
echo -n "\033[05mHello World"
echo "\033[0m"
comment
