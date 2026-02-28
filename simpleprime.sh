#!/bin/bash

echo "enter any  number"

read NUMBER

if [ NUMBER -lt 1 ]; then
	echo "not prime number"
	exit
fi

for (( i=2; i<num; i++ ))
do
    if [ $((num % i)) -eq 0 ]; then
        echo "Not Prime"
        exit
    fi
done

echo "Prime"

