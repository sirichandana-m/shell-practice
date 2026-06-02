#!/bin/bash

set -e # this will be checking for errors, if errors it will exit
trap 'echo "There is error in the $LINENO, command: $BASH_COMMAND" ' ERR

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
echo " please run the script using root access" | tee -a $LOGS_FILE
exit 1
fi

mkdir -p $LOGS_FOLDER


for package in $@     # sudo sh 13-loops.sh nginx mysql nodejs
do
 dnf list installed $package &>>$LOGS_FILE
 if [ $? -ne 0 ];then
    echo "$package not installed, installing now"
   dnf install $package -y &>>$LOGS_FILE
   #VALIDATE $? "$package installation"
else
    echo -e "$package already installed, $Y skipping $N "
fi
done