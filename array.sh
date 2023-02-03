#!/bin/bash

arr=(2 3 4 1 6 7)
echo "Array: ${arr[@]}"

echo "Length: ${#arr[@]}"

getMaxAndMin(){
  arr=("$@")
  maxElem=-1000
  minElem=1000
  for i in ${arr[@]}; do
    if [ $i -gt $maxElem ]; then
      maxElem=$i
    fi
    if [ $i -lt $minElem ]; then
      minElem=$i
    fi
  done
  echo "Maximum Element is $maxElem"
  echo "Minimum Element is $minElem"
}

getMaxAndMin ${arr[@]}
