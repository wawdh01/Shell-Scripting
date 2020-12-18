#!/bin/bash
echo "Printing Leap Years from 2000....."
year=1999
count=1
while [[ $count -lt 11 ]]
do
    year=$(( year + 1))
    rem=`expr $year % 4`
    if [ $rem -eq 0 ]
    then
        echo $year
        count=$(( count + 1 ))
    fi
done