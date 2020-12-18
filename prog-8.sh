#!/bin/bash
echo "Enter Marks:"
read n
int=${n%.*}
if [ $int -gt 100 ]
then
    int=`expr $int + 1`
fi
case $int in 
    8[0-9]|9[0-9]|100) echo "DIVISION-I";;
    6[0-9]|7[0-9]) echo "DIVISION-II";;
    4[0-9]|5[0-9]) echo "DIVISION-III";;
    [1-9]|1[1-9]|2[1-9]|3[1-9])  echo "Fail";;
    *) echo "Invalid Marks....";;
esac
