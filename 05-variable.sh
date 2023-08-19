#!/bin/bash

echo "Please enter your username"
read USRERNAME #this the variable the value will be assigned by prompt to this variable
echo "Username entered is: $USERNAME"

echo "Please enter your password"
read -s PASSWORD #Here the value of password while entering on terminal should not be exposed. SO option [-s] helps us to hide the value while entering
echo "Password entered is: $PASSWORD"