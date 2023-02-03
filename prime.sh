#!/bin/bash

echo -n "Enter Number: "
read n

if [ -z $n ]; then
  echo "No Input Provided"
  exit
fi

prime(){
  if [ $1 -lt 2 ]; then
    echo "$1 is not prime"
    return
  fi
  sq=$(echo "sqrt($1)" | bc)
  cnt=0
  for(( i = 2 ; i <= $sq ; i++ )); do
    if [ $(($1 % $i)) -eq 0 ]; then
      cnt=$(($cnt+1))
    fi
  done
  if [ $cnt -ge 1 ]; then
    echo "$1 is not prime"
  else
    echo "$1 is prime"
  fi
}

prime $n
