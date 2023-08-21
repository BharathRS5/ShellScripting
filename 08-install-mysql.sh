#!/bin/bash

#Our program goal is to install mysql through shell-script
#1. Check root user or not
#2. If not root user exit the program and iform user to run with sudo access
#3. If root user install mysql

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "ERROR:: Please run this script with root access"
    exit 1
#else
    #echo "INFO:: You are root user"
fi
yum install git -y
