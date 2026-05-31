#!/bin/bash

USERID=$(id -u)
 if [ $USERID -ne 0 ]; then
 echo " please run the script with super user access "
 fi
 echo " Installing nginx "
dnf install nginx -y