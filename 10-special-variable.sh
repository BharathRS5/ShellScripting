#!/bin/bash

VAR1=$1
VAR2=$2

echo "Script Name: $0" # 0 to get script name

echo "Variable1: $VAR1"

echo "All Variables: $@" #Here @ helps to print all arguments. This is special variable by default set by linux/shell environment

echo "No.of Variables: $#" # -->Here # means no.of argumets passed
