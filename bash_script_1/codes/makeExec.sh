#!/bin/bash
if [ $# -ne 1 ] 
then
echo please enter only one arguement
fi 
if [ -f $1 ]
then
	chmod u+x $1
else
	echo please enter a filename only as arguement
fi



