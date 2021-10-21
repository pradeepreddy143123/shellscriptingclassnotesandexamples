<<question
9. Write a shell script that receives any number of file names as arguments checks if every argument supplied is a file or a directory and reports accordingly. 
Whenever the argument is a file, the number of lines on it is also reported.
question

#!/bin/sh

for VAR in $@
do
	if [ -d $VAR ]
	then
		echo "$VAR is a directory"
	fi
	if [ -f $VAR ]
	then
		echo "$VAR is a file"
		echo -n "Number of lines in $VAR file is: "
		cat $VAR | wc -l
	fi
done
