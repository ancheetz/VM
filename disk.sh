#!/bin/bash
disk_usage()
{
echo "WARNING! Disk Space Utilization has exceeded 10%."
echo "This report was automatically generated on $(date)"
echo "System details as follows: "
echo "Disk Usage: $(df | awk 'FNR == 2 { print $3/$2*100 "% used " ($4/$2*100 "% free")}')"

if [ $(df | awk 'FNR == 2 {$3/$2*100 -ge 10}') ]; then
echo $(date)
fi
}
