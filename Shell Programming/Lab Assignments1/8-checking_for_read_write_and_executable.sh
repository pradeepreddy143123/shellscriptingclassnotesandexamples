<<question
8. Write a shell script that displays a list of all the files in the current directory to which the user has read, write and execute permissions.
question

#!/bin/sh


for VAR in *
do
if [ -r $VAR ] && [ -w $VAR ] && [ -x $VAR ] 
then
	echo "$VAR"
fi
done
