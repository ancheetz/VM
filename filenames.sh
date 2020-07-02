#!/bin/bash

#test to see if files are read/write/execute or dir

read -p "Enter filename: " filename
if [ ! -w $filename ];
then
echo "This file is not writeable"
exit 1
else "This file is writeable"
fi

