#!/bin/bash
l=$1
u=$2
for j in `df -h |grep /dev/sda |tr -s " " | cut -d " " -f 5|cut -d "%" -f 1`
do
	if [ $j -gt $l ] && [ $j -lt $u ]
	then
		echo "WARNING,`df -h | grep /dev/sda |grep $j% | cut -d " " -f 1`,$j%"
	fi
	if [ $j -ge $u ] 
	then
		echo "CRITICAL,`df -h | grep /dev/sda|grep $j% |cut -d " " -f 1`,$j%"
	fi
	if [ $j -le $l ]
	then
		echo "OK,`df -h | grep /dev/sda|grep $j% |cut -d " " -f 1`,$j%"
	fi
done

