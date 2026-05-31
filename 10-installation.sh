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
else
echo " nginx is installed successfully "
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
echo " mysql installation is failure "
exit 1
else
echo " mysql is installed successfully "
fi

dnf install nodejs -y

if [ $? -ne 0 ]; then
echo " nodejs installation is failure "
exit 1
else
echo " nodejs is installed successfully "
fi