#!/bin/sh
#########################################################################################
# Write shell script that will add two nos, which are supplied as command line argument,#
# and if this two nos are not given show error and its usage                            #
#########################################################################################

if [ -z $1 ] || [ -z $2 ]
then
	echo "Error: Enter atleast 2 number"
else
	echo "Sum : $(expr $1 + $2 )"
fi
