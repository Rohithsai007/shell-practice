#!/bin/bash

USERID = $(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ USERID -ne 0];  then
    echo "$USERID::please enter root acces to eneter"
    exit 1
fi

VALIDATE(){ # functions receive inputs through args just like shell script args

if [ $1 -ne 0]: then
    echo "ERROR:: $2 installation is $R.....failure $N"
else
    echo "$2 installtion is $G...complete $N"
fi
}

dnf list install mysql
if [ $? -ne 0 ]; then
	dnf install mysql -y
	VALIDATE $? "MYSQL"
else
    echo -e "MYsql install ion is $Y skipped $N"
fi




