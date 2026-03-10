#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
    echo -e "${R}ERROR: Please run with root access${N}"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo -e "${R}ERROR: $2 installation failed${N}"
    else
        echo -e "${G}SUCCESS: $2 installation completed${N}"
    fi
}

dnf list installed mysql &>/dev/null

if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "MYSQL"
else
    echo -e "${Y}MYSQL installation skipped (already installed)${N}"
fi