#!/bin/bash
read input1 
read input2
a=$#
cat $input1 $input2 |
if [ $a == 1 ]
then
sort -k$1 -n 
elif [ $a == 2 ]
then
sort -k$1 -k$2 -n
elif [ $a == 3 ]
then
sort -k$1 -k$2 -k$3 -n
elif [ $a == 4 ]
then
sort -k$1 -k$2 -k$3 -k$4 -n 
elif [ $a == 5 ]
then
sort -k$1 -k$2 -k$3 -k$4 -k$5 -n
elif [ $a == 6 ]
then
sort -k$1 -k$2 -k$3 -k$4 -k$5 -k$6 -n 
elif [ $a == 7 ]
then
sort -k$1 -k$2 -k$3 -k$4 -k$5 -k$6 -k$7 -n 
elif [ $a == 8 ]
then
sort -k$1 -k$2 -k$3 -k$4 -k$5 -k$6 -k$7 -k$8 -n 
elif [ $a == 9 ]
then
sort -k$1 -k$2 -k$3 -k$4 -k$5 -k$6 -k$7 -k$8 -k$9 -n 
fi

