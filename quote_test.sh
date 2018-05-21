#!/bin/bash

rm -f test.txt
echo "1">test.txt
echo "2">> test.txt
echo "3">> test.txt
echo "subshell test"
output=$(cat test.txt)
echo $output
output=`cat test.txt`
echo $output
output="$(cat test.txt)"
echo $output

cat test.txt
