#!/bin/bash

#!/bin/bash

#Creating a variable and using the variable in place of value where ever value is repeating.
A=$1 #This will take first value from command line which we will give at time of [./file-name].
B=$2 #This will take second value from command line which we will give at time of [./file-name].

#Ex: ./filename Ram Sita     OR ./filename   Ramesh Suresh

echo "$A: Hi $B, Good morning"
echo "$B: Good morning $A"
echo "$A: How are you $B"
echo "$B: I am good. How are you $A"