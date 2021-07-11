#!/bin/bash
read myName
read bir
y=`cut -d '-' -f1 <<< $bir`
m=`cut -d '-' -f2 <<< $bir`
d=`cut -d '-' -f3 <<< $bir`
bir=`date +%Y-%m-%d`
py=`cut -d '-' -f1 <<< $bir`
pm=`cut -d '-' -f2 <<< $bir`
pd=`cut -d '-' -f3 <<< $bir`


if [ $pm -eq $m -a $pd -eq $d ]
then 
	age=$((py-y))

	echo HAPPY BIRTHDAY $myName .You are $age years old today
fi

