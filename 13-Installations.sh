# #!/bin/bash

# USERID = $(id -u)

# if [ USERID -ne 0];  then
#     echo "$USERID::please enter root acces to eneter"
#     exit 1
# fi


# dnf install mysql -y

# if [ $? -ne 0]: then
#     echo "ERROR:: mysql installation is failure"
# else
#     echo "MYSQL installtion is complete"
# fi

#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privelege"
    exit 1 # failure is other than 0
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "ERROR:: Installing MySQL is failure"
    exit 1
else
    echo "Installing MySQL is SUCCESS"
fi