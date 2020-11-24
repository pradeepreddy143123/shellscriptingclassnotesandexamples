#!/bin/sh

############################################################################################################
# Write Script to find out biggest number from given three nos. Nos are supplied as command line arguments.#
# Print error if sufficient arguments are not supplied.                                                    #
############################################################################################################


if [ $1 -gt $2 ] && [ $1 -gt $3 ]
then
	echo "$1 is the Greatest"
elif [ $2 -gt $1 ] && [ $2 -gt $3 ]
then
	echo "$2 is the Greatest"
else
	echo "$3 is the Greatest"
fi
