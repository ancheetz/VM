#!/bin/bash
echo "System log for $USER, on VM $HOSTNAME"
echo "Report was generated $(date)"
echo "___________________________________________"
echo "Memory Status: $(free  | awk 'FNR == 2 {print $3/$2*100 "% used "($4/$2*100 "% free")}')"
echo "Disk Status: $(df -h | awk 'FNR == 2 {print $5 " used "($4 " free")}')"


