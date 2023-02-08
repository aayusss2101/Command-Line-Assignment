#!/bin/bash

# Taking input from user
echo -n "Enter Number: "
read n

# Checking input
if [ -z $n ]; then
  echo "No Input Provided"
  exit
fi

# Function to check if prime or not
prime(){
  
  # Checking if number provided less than 2
  if [ $1 -lt 2 ]; then
    echo "$1 is not prime"
    return
  fi

  # Square root of the number
  sq=$(echo "sqrt($1)" | bc)

  # Counter variable to store the number of factors
  cnt=0

  # Looping to check factors
  for(( i = 2 ; i <= $sq ; i++ )); do
    if [ $(($1 % $i)) -eq 0 ]; then
      cnt=$(($cnt+1))
    fi
  done

  # Checking if number of proper factors is more than equal to 1
  if [ $cnt -ge 1 ]; then
    echo "$1 is not prime"
  else
    echo "$1 is prime"
  fi
}

# Calling prime function
prime $n
