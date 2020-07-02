#!/bin/bash

#prompt for number; >10 = you won/ <10 = you fail

read -p "Select a number! " num
if [ "$num" -gt 10 ] 
then
echo "HOORAY! You win!"
else
echo "Boo! You lost."
fi

