#!/bin/bash
 if [ $1 == read ]
 then 
       cat employee.txt | grep  $3
 fi
if [ $1 == write ]
then
	 cat >> employee.txt <<< $2,$3,$4
fi
if [ $1 == delete ]
then
replace="d"
count=0
cat employee.txt|
while read line
do
value=`echo $line | cut -d "," -f1`
count=$((count+1))
	if [ $value -eq $2 ]
	then
sed -i "$count$a" ./employee.txt
break
fi 
done
fi
if [ $1 == update ]
then
replace="d"
count=0
cat employee.txt|
while read line
do
value=`echo $line | cut -d "," -f1`
count=$((count+1))
        if [ $value -eq $2 ]
        then
sed -i "$count$replace" ./employee.txt
break
fi
done
 cat >> employee.txt <<< $2,$3,$4
fi


