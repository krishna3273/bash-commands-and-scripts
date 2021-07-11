#!/bin/bash
i=$1
c=`cat employee.txt | tr "," " " | sort -k3 -nr | head -$i | tail -1 | cut -d " " -f3`
cat employee.txt | grep "$c" |
while read line
do
a=`echo $line | cut -d "," -f3`
if [ $a -eq $c ]
then
echo $line
fi
done
