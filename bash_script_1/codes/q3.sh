#!/bin/bash
read str
count=0
for file in `pwd | cut -d "/" -f6 | ls| grep ".txt"`
do
	a=`grep -w "$str" $file | wc -l`
	if [ $a -ne 0 ]
	then
	echo $a times in $file
	count=1
fi
done
if [ $count -eq 0 ]
then
	exit 1
fi
if [ $count -ne 0 ]
then
	exit 0
fi
