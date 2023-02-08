#!/bin/bash

# Taking input from command line
n=$1

# Checking input
if [ -z $n ]; then
  echo "No Input Provided"
  exit
fi

# Printing table
i=1
while [ $i -lt 11 ]; do
  echo "$n x $i = $(($n * $i))"
  i=$(( $i + 1 ))
done
