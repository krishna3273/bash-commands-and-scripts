#!/bin/bash
grep -E "{35,}"  $1 | grep -w "in" |  sed 's/in/infact/g'
