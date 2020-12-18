echo "Enter the location where you want to move the duplicate file\n"
read loc
files=(*)
len=0
count=${#files[@]}
for (( i=0 ; i < count ;i++ )); do 
    for (( j=i+1 ; j < count ; j++ )); do
        if diff -q "${files[i]}" "${files[j]}"  >/dev/null ; then
            echo "${files[i]} and ${files[j]} are the same"
            if [[ ! " ${toMove[@]} " =~ " ${files[j]} " ]]; then
                toMove[$len]="${files[j]}"
                len=$(( len+1 ))
            fi    
        fi
    done
done
count=${#toMove[@]}
echo -e "Moving duplicate files to $loc \\n"

mv ${toMove[@]} "$loc"
