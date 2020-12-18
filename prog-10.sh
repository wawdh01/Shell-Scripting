#!/bin/bash
echo "Enter Directory Name:"
read dir_name
if [ -d $dir_name ]
then
    echo "Directroy already Exist"
else
    echo "Making new Directory called - $dir_name"
    mkdir $dir_name
fi