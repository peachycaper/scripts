#!/bin/bash

#This is my sample script for Exercise 4.5

#This is a modification for Exercise 4.6

echo "Would you like to display System Info(Press s) or display Network settings(Press n): "
read choice1

if [ $choice1 = "s" ]
then
echo "Choose 1 to display Disk usage/free, Choose 2 to view Memory usage: "
read choice2

if [ $choice2 -eq 1 ] 
then
duf
elif [ $choice2 -eq 2 ]
then
egrep --color 'Mem|Cache|Swap' /proc/meminfo
else
echo "You didn't choose correctly, can you even read?!"
fi

elif [ $choice1 = "n" ]
then 
ifconfig | grep inet > myip ; sed s/inet/YourIP/1 myip
fi


