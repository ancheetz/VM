#!/bin/bash
#Print hostname, IP, free memory/CPU cores, date of report

echo "Hostname: " $(hostname)
echo "IP Address: " $(hostname -I)
echo "Free Memory Available: " $(free | awk 'FNR==2 { print $3/$2*100 }')
echo "Total CPU cores available: " $(nproc)

