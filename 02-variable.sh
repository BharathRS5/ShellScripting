#!/bin/bash

#Shell-scripts runs the command inside $() and stores the output inside variable
DATE=$(date)
PWD=$(pwd)

echo "We are presently at $PWD and"
echo "this script is executed at timestamp: $DATE"
