#!/bin/bash
#------------------------------------------------------------------------------------------------------------------------------------------------#
#To check whether the given number is ODD or EVEN
#------------------------------------------------------------------------------------------------------------------------------------------------#
echo -e "Enter any number:"
read number						#Taking user input
if [[ `expr $number%2` -eq 0 ]]				#checking modulo with 2
then		
	echo "$number is a EVEN Number"			#Printing if the modulo of the number with 2 is  0
else
	echo "$number is a ODD Number"			#Printing if the modulo of the number with 2 is not 0
fi
