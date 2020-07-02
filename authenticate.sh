#!/bin/bash
#verify username; if user does not exist, error

read -p "Enter username " username
if grep $username /etc/passwd
then
echo "User exists"
else
echo "User does not exist"
fi
