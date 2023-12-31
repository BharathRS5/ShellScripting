#!/bin/bash

#Our program goal is to install mysql through shell-script
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log
R="\e[31m"
G="\e[32m"
N="\e[0m"

#This function should validate the previous command and inform user it is success or failure.
VALIDATE(){
#$1--->It will receive the argument1(input)     $2--> It will receive second argument.
    if [ $1 -ne 0 ]
    then
        echo -e "Installation of $2 is $R FAILURE $N"
        exit 1
    else
        echo -e "Installation of $2 is $G SUCCESS $N"
    fi
}

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "ERROR:: Please run this script with root access"
    exit 1
#else
    #echo "INFO:: You are root user"
fi

#It is our responsibility again to check installation is success or not.
yum install mysql -y &>>$LOGFILE

VALIDATE $? "mysql"

yum -y install postfix &>>$LOGFILE 

VALIDATE $? "postfix" 