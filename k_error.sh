#!/bin/bash
echo "Hello $USER, how are you today?"
echo "Today is $(date)."
echo "Your current system uptime is $(uptime)"
echo "The kernel errors which occured in the last 24 hours are as follows: "
echo $(journalctl -k --output=short --since "24 hours ago" | grep 'error')
