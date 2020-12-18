#!/bin/bash
#Writing hello World in a file 
echo "Enter File Name:"
read file_name
if [ -f $file_name ]
then
    echo "File Already Exist..."
    if [ -r $file_name ]
    then
        chmod +r $file_name
    fi
    echo "Hello World" >> $file_name
else
    echo "File Doesn't Exist"
    touch $file_name
    echo "Hello World" >> $file_name
fi