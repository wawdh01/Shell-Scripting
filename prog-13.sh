#!/bin/bash
echo "Enter String:"
read str
strrev="`echo "$str"|rev`"
if [ "$str" = "$strrev" ]
then
    echo "The String is Palindrome"
else
    echo "The String is NOT Palindrome"
fi