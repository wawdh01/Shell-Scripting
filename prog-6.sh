#!/bin/bash
#-----------------------------------------------------------------------------------------------------------------------------------------------#
#Simpe calculator for basic arithmetic operations. ( take input Operand-I, Operator, Operand-II from user)
#-----------------------------------------------------------------------------------------------------------------------------------------------#
echo "Operations +, -, *, /, ^ can be performed"
echo -e "Enter Operand 1:"	
read a									#Operand-I
echo -e "Enter Operator:"
read op									#Operator
echo -e "Enter Operand 2:"
read b									#Operand-II
if [ "$op" = "+" ]							#Checking operator == +
then 
	c=`echo $a + $b | bc`
	echo "Addition = $c"
elif [ "$op" = "-" ]							#Checking operator == -
then
	c=`echo $a - $b | bc`
	echo "Subtraction = $c"
elif [ "$op" = "*" ]							#Checking operator == *
then
	echo "scale=2; $a*$b" | bc
elif [ "$op" = '/' ]							#Checking operator == /
then
	if [ $b -eq 0 ]
	then
		echo "2nd Operator is Zero"
	else
		echo "scale=2; $a/$b" | bc
	fi
elif [ "$op" = '^' ]							#Checking operator == ^
then
	power=$(echo "$a^$b" | bc)	
	echo "Power = $power"
else
	echo "Operator Cannot Found"					#If operator not found
fi

