#!/bin/bash
arr[0]="\033[32m"
arr[1]="\033[34m"
arr[2]="\033[33m"
arr[3]="\033[31m"
arr[4]="\033[36m"
i=0
ping -c $1 google.com | while read pong ; do echo -e ${arr[$i]} "$(date): $pong ";
 i=$((i+1))
if [ $i -eq 5 ]
 then 
 i=0 
fi 
  done 

