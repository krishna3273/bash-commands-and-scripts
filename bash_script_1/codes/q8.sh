#!/bin/bash
for var in "$@"
do 
if [ -f $var ]
then
	a=`ls -l $var`
	echo $a
fi
done

