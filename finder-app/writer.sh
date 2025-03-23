#!/bin/bash

# Example with conditional statements
if [[ -n "$1" ]]; then
    writefile=$1
else
    echo 'No first argument provided.'
    exit 1
fi


if [[ "$#" -eq 2 ]]; then
    echo 'Two arguments were provided.'
    writestr=$2
else
    exit 1
fi


# if [ -e "$writefile" ]; then
    directory=$(dirname "$writefile")
    mkdir -p $directory
    echo "$writestr"> "$writefile" 
# else
#    echo 'Unsuccessful file writing.'
#    exit 1
# fi
