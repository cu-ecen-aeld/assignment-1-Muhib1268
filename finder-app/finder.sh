#!/bin/bash

# Example with conditional statements
if [[ -n "$1" ]]; then
    filesdir=$1
else
    echo 'No first argument provided.'
    exit 1
fi


if [[ "$#" -eq 2 ]]; then
    echo 'Two arguments were provided.'
    searchstr=$2
else
    exit 1
fi

# echo filesdir
# echo searchstr
# echo $1
# echo $2


if [ -d "$filesdir" ]; then
    X="$(grep -rn "$filesdir" -e "$searchstr" -l | wc -l)"
    Y="$(grep -rn "$filesdir" -e "$searchstr"  | wc -l)"
    echo 
    echo "The number of files are $X and the number of matching lines are $Y" 
else
    echo 'Directory does not exist.'
    exit 1
fi
