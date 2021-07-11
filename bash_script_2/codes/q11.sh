#!/bin/bash
read a
read b 
for((i=0;i<b;i++))
do
read arr[$i]
done
sum=${arr[0]} 
for((i=1;i<b;i++))
do
sum=`echo "$sum $a ${arr[i]}" | bc -l`
done
sum=`echo $sum | xargs printf "%.*f\n" 4`
echo $sum 

