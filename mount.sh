#!/bin/bash
#Script to print mount point and file system ontop of each mounted drive

for drive 
do 
echo "$df -aTh | awk '{ print $1,$2,$7 }'"
done;
