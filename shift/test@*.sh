#!/bin/bash

for n in "$*"
do
	echo "using \$*" $n
done

for n in "$@"
do
	echo "using \$@" $n
done
