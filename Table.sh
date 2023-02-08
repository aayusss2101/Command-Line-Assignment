#!/bin/bash

# Input from user
echo -n "Enter Number: "
read n

# Checking input
if [ -z $n ]; then
  echo "No Input Provided"
  exit
fi

# Printing table
for i in {1..10}; do
  echo "$n x $i = $(($n * $i))"
done
