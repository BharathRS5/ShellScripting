#!/bin/bash

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGSDIR=/home/centos/shellscript-logs
#our intention is to keep log files at /home/centos/shellscript-logs with file-name     script-name-date.log
LOGFILE=$LOGSDIR/$0-$DATE.log
USERID=$(id -u)
R="\e[31m"
N="\e[0m"
P="\e[35m"
G="\e[32m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$R Installation of $2 is failure $N"
        exit 1
    else
        echo -e "$G Installation of $2 is success $N"
    fi 
}

if [ $USERID -ne 0 ]
then 
    echo -e "$R ERROR:: Please run this script with root access $N"
    exit 1
fi

for i in $@
do 
    yum list installed $i &>>$LOGFILE
    if [ $? -ne 0 ]
    then 
        echo "$i is not installed, let's install it"
        yum install $i -y &>>$LOGFILE
        VALIDATE $? "$i"
    else
        echo -e "$P $i already installed $N"
    fi