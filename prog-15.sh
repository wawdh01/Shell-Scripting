#!/bin/bash
echo "Enter first file name "
read file1
echo "Enter second file name "
read file2
if [ -f $file1 -a -f $file2 ]
then
    if [ -r $file1 -o -f $file2 ]
    then    
        chmod +r $file1
        chmod +r $file2
    fi
    check="`diff $file1 $file2`"
    if [ "$check" = "" ]
    then    
        echo "The contents of files are same"
    else    
        echo "The contents of file are not same"
    fi
else
    echo "File/Files doesn't exist..."
fi