#!/bin/bash
echo "Enter File Name:"
read file_name
if [ -f $file_name ]
then
    if [ -r $file_name ]
    then    
        chmod +r $file_name
    fi
    echo "-----------------------------------------------------------------------------------------------------"
    while read f1
    do
        echo $f1
    done < $file_name
    echo "-----------------------------------------------------------------------------------------------------"
else
    echo "File Doesn't Exist..."
fi