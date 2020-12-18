#!/bin/bash
echo "Enter Number of Lines:"
read n
if [ $n -lt 0 ]
then    
    echo "Number of Lines cannot be less than Zero"
fi
i=0
for (( i=0; i <$n; i++))
do
    for (( j=1; j <= ((n - i)); j++))
    do
        echo -n " "
    done
    for (( j=((0 - i)); j <= i; j++))
    do  
        if [ $j -lt 0 ]
        then
            echo -n "$((j * -1))"
        else
            echo -n $j
        fi
    done
    echo
done