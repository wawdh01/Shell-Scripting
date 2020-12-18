#!/bin/bash
#----------------------------------------------------------------------------------------------------------------------------------------------#
#To check whether the given number is prime or not
#----------------------------------------------------------------------------------------------------------------------------------------------#
echo -e "Enter a Number:"
read number
flag_check=0								#Checking for divisible or not
sign_check=0								#Checking for negative or positive
n=2
if [ $number -eq 1 -o $number -eq 0 ]					#Checking if number is 0 or 1
then
	echo "$number is not a prime or a composite number"		#Printing not prime or composite
	exit								#Exiting from program
fi
if [[ $number -lt 0 ]]							#Checking number is negative or not and according that sign_flag is set.
then
	sign_check=$((sign_check+1))
	number=`expr $(($number*(-1)))`
fi
while [[ `expr $n*$n` -lt $number ]]					#Running while loop to find the factors of the number
do
	if [[ `expr $(($number%$n))` -eq 0 ]]				#Checking prime or not using modulo function
	then
		flag_check=$((flag_check+1))
		break
	fi
	n=$((n+1))
done
if [[ $sign_check -eq 1 ]]
then
	number=`expr $(($number*(-1)))`
fi
if [[ `expr $flag_check-1` -eq 0 ]]					#Checking if there are factors are not 
then
	echo "$number is not a prime number." 
else
	echo "$number is a prime number."
fi
