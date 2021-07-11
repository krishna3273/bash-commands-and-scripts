#!/bin/bash
read input
a=`cut -d " " -f1 <<< $input`
b=`cut -d "," -f2 <<< $input`
c=`echo $input| tr " " "," | cut -d "," -f2`
d=$((b%4))
if [ $c -le 31 ]
then
case $a in
'january')i=01
;;
'march')i=03
;;
'may')i=05
;;
'july')i=07
;;
'august')i=08
;;
'october')i=10
;;
'december')i=12
;;
*)i=13
esac
else
i=13
fi
if [ $c -le 30 ]
then
case $a in
'april')i=04
;;
'june')i=06
;;
'september')i=09
;;
'november')i=11
;;
esac
fi
if [ $c -le 29 -a $a == "febuary" ]
then
if [ $d -ne 0 -a $c -le 28 -o $d -eq 0 -a $c -eq 29 ]
then 
i=02
fi
fi
if [ $i -ne 13 ]
then
echo $c-$i-$b
else
echo "not existing"
fi
