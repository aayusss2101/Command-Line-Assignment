#!/bin/bash

# Defining array
arr=(2 3 4 1 6 7)

# Printing array
echo "Array: ${arr[@]}"

# Printing length
echo "Length: ${#arr[@]}"

# Function to find maximum and minimum number
getMaxAndMin(){
  
  # Array argument
  arr=("$@")
  # Variable to store maximum element
  maxElem=${arr[0]}
  # Variable to store minimum element
  minElem=${arr[0]}
  # Looping throught the array
  for i in ${arr[@]}; do
    # Checking if greater
    if [ $i -gt $maxElem ]; then
      maxElem=$i
    fi
    # Checking if smaller
    if [ $i -lt $minElem ]; then
      minElem=$i
    fi
  done
  
  # Printing maximum element
  echo "Maximum Element is $maxElem"
  # Printing minimum element
  echo "Minimum Element is $minElem"
}

# Calling function
getMaxAndMin ${arr[@]}
