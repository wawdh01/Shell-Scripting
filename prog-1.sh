#!/bin/bash
#----------------------------------------------------------------------------------------------------------------------------------------------#
# To fing profit or los given the cost price and selling price
#----------------------------------------------------------------------------------------------------------------------------------------------#
echo -e "Enter Cost Price:"
read cost_price							#Input from user for Cost Price
echo -e "Enter Selling Price:"			
read selling_price						#Input from user for Selling Price
profit_loss=$(($selling_price-$cost_price)) 			#Calculate the difference between Cost Price and Selling Price
if [ $profit_loss -gt 0 ]					#Checking difference is greater than zero (Profit)
then
	echo "The Profit is of $profit_loss Rs."		#Printing profit
elif [ $profit_loss -lt 0 ]	
then				#Checking difference is less than zero (loss)
	echo "The Loss is of $(($profit_loss * (-1))) Rs."	#Printing loss
else
	echo "There is no loss or no prfit"			#Printing if there is no loss or no profit 
fi								#End of if statement 
