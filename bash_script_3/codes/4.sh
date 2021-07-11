#!/bin/bash
cat $1 | awk  '{i=1;print "USER#"NR "=" $1;}'
