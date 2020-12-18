#!/bin/bash
#This will find the top 10 files created in last 20 Days
echo -e "Enter Path Name:"
read file_path
echo "----------------------------------------------------------------------------------------------------"

find $file_path -mtime -20 -print0 | xargs -0 ls -lhS | head -n 10