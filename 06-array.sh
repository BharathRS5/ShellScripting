#!/bin/bash

#this is called as array, it holdes multiple values for a single variable.
PERSONS=("Ramesh" "Suresh" "Sachin")

#Inside array we always refer values with index and it starts from 0.
echo "First person is: ${PERSONS[0]}

echo "All persons mentioned above are ${PERSONS[@]}" #@ ---> means all
