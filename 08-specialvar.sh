#!/bin/bash

echo "All varibles passed through script:$@"
echo "All varibles passed through script:$*"
echo "shellscriptname :$0"
echo "print the current working dir:$pwd"
echo "who am i: $user"
echo "print the HOME director:$home"
echo"print the process id:$$'
sleep  20 &
echo "print pid of the last process in bg:$!"
