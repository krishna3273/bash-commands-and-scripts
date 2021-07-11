#!/bin/bash
input=$1
len=${#input}
echo $len
input=`ls /bin | grep "^[$input]\{$len\}$"`
if [ $? -eq 0 ]
then
a=1
else
a=0
fi
if [ $a -eq 0 ]
then
echo "not possible"
fi
if [ $a -eq 1 ]
then
man $input | grep -e "--"
fi
