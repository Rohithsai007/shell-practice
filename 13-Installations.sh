#!/bin/bash

USERID = $(id -u)

if [ USERID -ne 0];  then
    echo "$USERID::please enter root acces to eneter"
    exit 1
fi


dnf install mysql -y

if [ $? -ne 0]: then
    echo "ERROR:: mysql installation is failure"
else
    echo "MYSQL installtion is complete"
fi