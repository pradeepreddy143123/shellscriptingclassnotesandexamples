<<question
6. Write a shell script that accepts a file name, starting and ending line numbers as arguments and displays all the lines between the given line numbers.
question

#!/bin/sh


s=$(expr $2 + 1)
e=$(expr $3 - $s)
tail +$s $1 | head -$e 


