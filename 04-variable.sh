#!/bin/bash

#Writing a program to get addition of two number
Number1=$1
Number2=$2

#I need to run a command inside shell to add these 2 numbers
SUM=$((Number1+Number2))
echo "The sum of two numbers is $SUM"