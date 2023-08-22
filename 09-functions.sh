#!/bin/bash

#Our program goal is to install mysql through shell-script
USERID=$(id -u)
#This function should validate the previous command and inform user it is success or failure.
VALIDATE(){
#$1--->It will receive the argument1(input)     $2--> It will receive argument two.
    if [ $1 -ne 0 ]
    then
        echo "Installation of ...... is failure"
        exit 1
    else
        echo "Installation of .... is success"
    fi
}

if [ $USERID -ne 0 ]
then 
    echo "ERROR:: Please run this script with root access"
    exit 1
#else
    #echo "INFO:: You are root user"
fi

#It is our responsibility again to check installation is success or not.
yum install mysql -y

VALIDATE $?

yum -y install postfix 

VALIDATE $?