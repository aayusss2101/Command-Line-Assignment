#!/bin/bash

echo -n "Enter Number: "
read n

if [ -z $n ]; then
  echo "No Input Provided"
  exit
fi

for i in {1..10}; do
  echo "$n x $i = $(($n * $i))"
done
