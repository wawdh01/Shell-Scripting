#!/bin/bash
#-----------------------------------------------------------------------------------------------------------------------------------------------#
#To take subject marks as input from user and display the result(Division-I, Division-II, DIvision-III, fail)
#-----------------------------------------------------------------------------------------------------------------------------------------------#
echo -e "Enter the Marks:"
read marks
if [ $marks -gt 79 -a $marks -lt 101 ]			#Marks >= 80 and Marks <= 100 (DIvision I)
then
	echo "Division - I"
elif [ $marks -gt 59 -a $marks -lt 80 ]			#Marks >= 60 and Marks <= 79 (DIvision II)
then
	echo "Division - II"
elif [ $marks -gt 39 -a $marks -lt 60 ]			#Marks >= 40 and Marks <= 59 (DIvision III)
then
	echo "DIvision - III"
elif [ $marks -gt -1 -a $marks -lt 40 ]			#Marks >= 0 and Marks <= 39 (Fail)
then
	echo "Fail"
else
	echo "You have entered Wrong Marks"		#If wrong marks are entered 
fi
