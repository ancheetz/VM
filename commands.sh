#!/bin/bash

#conduct various commands using bash script

echo "The current uptime for my VM is: " $(uptime)
echo "My user ID is: " $(id)
echo "Whoami? :" $(whoami)
echo "The current working directory is :" $(pwd)
echo $(uname -a)

#copy file one folder up
echo cp commands.sh ../

