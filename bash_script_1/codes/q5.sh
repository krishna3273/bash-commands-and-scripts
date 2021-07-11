#!/bin/bash
cat to_replace.txt | xargs -n1 | xargs -n1 -I{} mv replace/{}.txt replace/{}{}.txt

