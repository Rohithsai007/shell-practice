#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "$USERID :: Please run with root access"
    exit 1
fi

VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo "ERROR :: $2 installation failed"
    else
        echo "SUCCESS :: $2 installation completed"
    fi
}

dnf install mysql -y
VALIDATE $? "mysql"

dnf install nginx -y
VALIDATE $? "nginx"

dnf install python3 -y
VALIDATE $? "python3"