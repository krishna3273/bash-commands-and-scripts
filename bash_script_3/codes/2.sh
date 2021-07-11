#!/bin/bash
grep -w "apathy" $1 | awk '$3=="apathy"'|sed  's/[^.* ]*/empathy/3' 
