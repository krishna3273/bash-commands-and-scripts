#!/bin/bash
i=1
read filename
tr -s '\n' < $filename|
while read line 
do
	printf "$i) $line\n"
	i=$((i+1))
done
