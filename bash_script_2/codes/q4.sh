#!/bin/bash
read input
crontab $input
if [ $? -eq 0 ]
then
echo "Yes"
else 
echo "No"
fi
