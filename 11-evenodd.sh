#!/bin/bash
echo "please enter the number"
read NUMBER


if [ $(($NUMBER % 2)) -eq 0 ]; then
    echo "Given $NUMBER is EVEN NUMBER"
else
    echo "given $NUMBER is ODD NUMBER"
fi
