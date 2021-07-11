#!/bin/bash
wget $1 -o ./file1.html
wget $2 -o ./file2.html
cat file1.html file2.html | sed 's/[^a-z 0-9 A-Z]//g'| tr " " "\n" | sort | uniq -c | sort -nr 
 
