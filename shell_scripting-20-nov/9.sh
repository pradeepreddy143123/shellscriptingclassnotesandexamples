#!/bin/sh

#Write a shell script that receives any number of file names as arguments checks if every argument supplied is a file or a directory and reports accordingly. Whenever the argument is a file, the number of lines on it is also reported.
	
for file in $*
do
	if [ -f $file ];then
		echo "$file is a file"
		echo "the no.of lines in the file are"
		wc -l $file
	elif [ -d $file ];then
		echo "$file is a directory"
	else
		echo "please enter valid file or directory name"
	fi
done
echo "usage $0:  <file_or_dir> [option] [option]"
