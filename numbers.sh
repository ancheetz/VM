#!/bin/bash
#Loop with 2 numbers
#If -lt 10, print all values; if -gt 10, add them and print sum

read -p "Enter a number: " num1
read -p "Enter a second number: " num2
if [ $num1 -lt 10 -o $num2 -lt 10 ];
then
for num in {0..9}
do 
echo "$num"
exit1
do
let "sum=$num1+$num2"
done
echo "$sum"
