#!/bin/bash
#everything in shell is consider as string

NUMBER1=100
NUMBER2=200
NAME=devops

SUM=$(($NUMBER1+$NUMBER2+$NAME)) #name is taken as default 0

echo "sum is:$SUM"

LEADERS=("dev" "stage" "prod")

echo "ALL the leaders: ${LEADERS[@]}"
echo "FIRST the leaders: ${LEADERS[0]}"
echo "LAST the leaders: ${LEADERS[2]}"