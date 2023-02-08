#!/bin/bash

# Make  folder
mkdir Assignment
# Change into folder 
cd Assignment
# Writing content of Table.sh to File1.txt
cat ../Table.sh > File1.txt
# Appending message to File1.txt
echo "Welcome to Sigmoid" >> File1.txt
# Show files in the Desktop directory
ls ~/Desktop
