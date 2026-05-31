#!/bin/bash

USERID=$(id -u)

 if [ $USERID -ne 0 ]; then
 echo " please run the script with super user access "
 exit 1
 fi

 echo " Installing nginx "

dnf install nginxx -y

if [ $? -ne 0 ]; then
echo " nginx installation is failure "
exit 1
fi 
echo " nginx is installed successfully "
