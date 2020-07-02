#!/bin/bash
##Displays System information about the VM 

echo "My Hostname is: "$HOSTNAME
echo "My IP address is: " $(hostname -I)
echo "The current level of memory free in my VM is: " $(free | awk ' 
FNR == 2 {print $3/$2*100 "% free " ($4/$2*100) "% used"}')
echo "The VM is running " $(nproc) " cores"
echo $(date)
