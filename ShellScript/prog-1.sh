#!/bin/bash

new_file="vcard.vcf"							
echo -e "Enter the name of file: \c"				
read file_name								
if [ -f $file_name ]							
then
	IFS=","								
	while read f1 f2 f3 f4 f5					 
	do
		echo "BEGIN:VCARD" >> $new_file					
		echo "VERSION:3.0" >> $new_file					
		if [ ! -z "$f1" ]						
		then
			echo "N:$f1" >> $new_file				
		fi								
		if [ ! -z "$f2" ]						
		then
			echo "TEL;TYPE=WORK,VOICE:$f2" >> $new_file		
		fi								
		if [ ! -z "$f3" ]						
		then		
			echo "TEL;TYPE=HOME,VOICE:$f3" >> $new_file		
		fi								
		if [ ! -z "$f4" ]						
		then
			echo "EMAIL:$f4" >> $new_file				
		fi								
		if [ ! -z "$f5" ]						
		then
			echo "HOMETOWN:$f5" >> $new_file			
		fi								
		echo "END:VCARD" >> $new_file 					
	done < $file_name	
	echo "VCARD file is created"						
else
	echo "$file_name: Not Exist"					
fi
