#!/bin/bash
array=(1 3 5 7 9)
echo "array=(1 3 5 7 9)"
echo "#echo \${array[0]}"
echo ${array[0]}
echo "#echo \${array[@]}"
echo ${array[@]}
echo "#echo \${array[*]}"
echo ${array[*]}

echo "For loop display"
for index in $(seq 0 4)
do 
	echo "array[$index]="${array[$index]}
done

echo "Count array numbers"
echo "#echo \${#array[*]}"
echo ${#array[*]}

echo "Define associated array"
echo "#declare -A a_array"
declare -A a_array
echo "#a_array=([apple]="\$100" [orange]="\$200 NTD")"
a_array=([apple]="\$100" [orange]="\$200 NTD")
echo "Apple cost ${a_array[apple]}"
echo "Orange cost ${a_array[orange]}"
echo "Obtain the list of indexes in the array"
echo "#echo \${!a_array[*]}"
echo ${!a_array[*]}
echo "#echo \${!a_array[@]}"
echo ${!a_array[@]}
echo "echo \${a_array[*]}"
echo ${a_array[*]}

