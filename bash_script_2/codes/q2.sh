#!/bin/bash
HISTFILE=~/.bash_history
set -o history
history | tr -s ' ' | cut -d ' ' -f3 | sort | uniq -c | sort -nr

