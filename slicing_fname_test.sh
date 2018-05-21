#!/bin/bash

fname="test.book.jpg"

echo "Non-greedy operation"
echo Full file name is \"$fname\"
name=${fname%.*}
echo "File name is \"$name\""

extension=${fname#*.}
echo "File extension is \"$extension\""


echo "Greedy operation"
name=${fname%%.*}
echo "File name is \"$name\". Remove right to leftmost"

extension=${fname##*.}
echo "File extension is \"$extension\". Remove left to rightmost part before *."


for file in $(ls *.sh)
do
	echo ===$file===
done
