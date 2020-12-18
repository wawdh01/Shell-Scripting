#!/bin/bash
#------------------------------------------------------------------------------------------------------------------------------------------------#
#Find the largest of three numbers
#------------------------------------------------------------------------------------------------------------------------------------------------#
echo -e "Enter Three Numbers:"
read a						#Read Number 1
read b						#Read Number 2
read c						#Read Number 3
if [ $a -gt $b -a $a -gt $c ]			#Checking a > b and a > c
then
	echo "$a is greater"
elif [ $b -gt $a -a $b -gt $c ]			#Checking b > a and b > c
then
	echo "$b is greater"
elif [ $c -gt $a -a $c -gt $b ]			#Checking c > a and c > b
then	
	echo "$c is greater"
fi
