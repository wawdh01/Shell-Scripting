#!/bin/bash
#----------------------------------------------------------------------------------------------------------------------------------------------#
#To find are and circumference of circle
#----------------------------------------------------------------------------------------------------------------------------------------------#
echo -e "Enter Radius of Circle:"			
read radius							#Reading radius from user 
if [ $radius -lt 0 ]
then
    echo "Radius Cannot be Negative"
else
    circumference=$(echo "6.28*$radius" | bc)			#Calculating the circumference of the circle
    echo "The Circumference of the Circle is $circumference"	#Printing circumference
    area=$(echo "3.14*$radius*$radius" | bc)			#Calculating the area of the circle
    echo "The Area of the circle is $area"				#Printing Area
fi
