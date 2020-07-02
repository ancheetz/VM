#!/bin/bash

echo "Enter name of file: "
read file
if [ ! $file ]
then 
echo "This file does not exist"
exit1
else
cp $file $file.bak"$(date)" 
fi

