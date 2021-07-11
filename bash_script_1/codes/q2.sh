#!/bin/bash
c=0
for n in `ls -1dsh */`
do 
if [ $((c%2)) -eq 0 ] 
then
size=$n
else
echo "$n  $size"
fi
c=$((c+1))
done
i=0
for n in `ls`
do
if [ -d $n ]
then
count=0
for x in `find $n`
do
if [ -f $x ]
then
count=$((count+1))
fi
done
arr[i]=$count
b[i]=$n
i=$((i+1)) 
fi
done
c=1
while [ $c -ne 0 ]
do
c=0
for (( j=0; j<i-1; j++ ))
do
if [ ${arr[$j]} -lt ${arr[$((j+1))]} ]
then
t=${arr[$j]}
arr[$j]=${arr[$((j+1))]}
arr[$((j+1))]=$t
t=${b[$j]}
b[$j]=${b[$((j+1))]}
b[$((j+1))]=$t
c=1
fi
done 
done
for (( j=0;j<$i;j++ ))
do
echo ${b[j]}  ${arr[j]}
done

