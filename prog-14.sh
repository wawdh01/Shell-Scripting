#!/bin/bash
echo "Enter Number:"
read n
if [ $n -lt 0 ]
then
    echo "Factorial can not be found"
else
    fact=1
    for (( i=1; i <=$n; i++ ))
    do
        fact=$((fact * i))
    done
    echo $fact
fi