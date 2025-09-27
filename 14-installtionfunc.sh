#!/bin/bash

USERID = $(id -u)

if [ USERID -ne 0];  then
    echo "$USERID::please enter root acces to eneter"
    exit 1
fi

VALIDATE(){ # functions receive inputs through args just like shell script args

if [ $1 -ne 0]: then
    echo "ERROR:: $2 installation is failure"
else
    echo "$2 installtion is complete"
fi
}

dnf install mysql -y
VALIDATE $? "mysql"


dnf install mysql -y
VALIDATE $? "nginx"


dnf install mysql -y
VALIDATE $? "python3"
