#!/bin/bash
prod=1
a=$1
for i in $@
do
prod=$((prod * i))
done
prod=$((prod / a))
ans=1
for((i=0;i<prod;i++))
do
ans=$((ans*a))
done
echo $ans
