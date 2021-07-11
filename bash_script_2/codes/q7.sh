#!bin/bash
read str
size=${#str}
str=`echo $str | tr 'A-Z' 'a-z'`
yes=1
for((i=1;i<=size/2;i++))
do
j=$((size-i+1))
start=`echo $str | cut -c $i`
end=`echo $str | cut -c $j`
if [ $start != $end ]
then
echo No
yes=0
break
fi
done
if [ $yes -eq 1 ]
then
echo Yes
fi


