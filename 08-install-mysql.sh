#!/bin/bash

#Our program goal is to install mysql through shell-script
#1. Check root user or not
#2. If not root user exit the program and inform user to run with sudo access
#3. If root user install mysql

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "ERROR:: Please run this script with root access"
    exit 1
#else
    #echo "INFO:: You are root user"
fi

#It is our responsibility again to check installation is success or not.
yum install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation of mysql is failure"
    exit 1
else
    echo "Installation of mysql is success"
fi

yum -y install postfix 
if [ $? -ne 0 ]
then
    echo "Installation of postfix is failure"
    exit 1
else
    echo "Installation of postfix is success"
fi