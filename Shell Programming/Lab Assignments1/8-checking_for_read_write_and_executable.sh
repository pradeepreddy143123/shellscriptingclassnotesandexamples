#!/bin/sh


for VAR in *
do
if [ -r $VAR ] && [ -w $VAR ] && [ -x $VAR ] 
then
	echo "$VAR"
fi
done
