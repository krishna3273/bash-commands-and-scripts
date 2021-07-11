#!/bin/bash
read str
str=`echo $str |tr " " "+"`
b=`echo -n $str | wc -m`
printf "`cut -c 1 <<< $str`"
for ((i=2;i<=b-1;i++))
do
p=`cut -c $i <<< $str`
if [ $p != "(" ] && [ $p != ")" ]
then
if [ $p == "+" ]
then
printf " "
else
printf "$p"
fi
fi
done
printf "`cut -c $b <<< $str`"
