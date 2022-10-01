#!/bin/sh

grep -v "Shouri" abc.txt > tmp.txt
mv tmp.txt abc.txt

exit 0
