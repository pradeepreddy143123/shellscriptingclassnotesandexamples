#!/bin/bash

# Script to  to determine whether given file exist or not, file name is supplied as command line argument, Also check for sufficient number of command line arguments.

echo "File read number of lines script starts here"
echo "--------------------------------"


if [ $# -lt 3 ]
then
  echo "Usage: ./file_read_number_of_lines.sh <text_file> <start_line_num> <end_line_num>"
  exit 1
fi

if [ $# -gt 3 ]
then
  echo "Usage: ./file_read_number_of_lines.sh <text_file> <start_line_num> <end_line_num>"
  echo "Warning !!!: Ignoring extra arguments !!!"
fi

file_name=$1         # Read the file name
start_line_num=$2    # Read the starting line number
end_line_num=$3      # Read the ending line number

# Check if the text file exists
if [ ! -f $file_name ]
then
  echo "File $file_name does not exist"
  exit 2
fi


# Check if the starting line number is supplied as an integer
if ! [[ $start_line_num =~ ^[0-9]+$ ]]
then
  echo "Starting line number should be an integer"
  exit 3
fi


# Check if the ending line number is supplied as an integer
if ! [[ $end_line_num =~ ^[0-9]+$ ]]
then
  echo "Ending line number should be an integer"
  exit 3
fi

exec 3<&0            # Redirect standard input temporarily to file descriptor 3
exec 0<$file_name    # Redirect the standard input from the text file

i=0                  # Initiate a variable to keep track of current line read
# from input file
# Read next line, and keep looping while there are still more lines to read
while read line
do
  i=`expr $i + 1`      # Update the line number by incrementing it by 1
  # Check to see if the current line number is between the rangeS
  if ( [ $i -ge $start_line_num ] && [ $i -le $end_line_num ] )
    then
    echo $i " " $line    # Display the line number and the line text
  fi
done


exec 0<&3            # Restore back the original standard input
