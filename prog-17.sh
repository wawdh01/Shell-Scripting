#!/bin/bash
echo "Enter File Name:"
read file_name
touch $file_name
echo "cat" >> $file_name
echo "dog" >> $file_name 
echo "bear" >> $file_name
echo "hello" >> $file_name
echo "elephant" >> $file_name
echo "hello" >> $file_name
echo "tiger" >> $file_name
echo "hello" >> $file_name
echo "hello" >> $file_name
echo "horse" >> $file_name

echo "Before Deleting....."
cat $file_name
echo "-----------------------------------------------------------------------------------------------------------"

grep -v "hello" $file_name > "test" && mv "test" $file_name

#echo "`sed '/hello/d' $file_name`" > $file_name

echo "After Deleting......"
cat $file_name