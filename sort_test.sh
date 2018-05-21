#!/bin/bash

echo "#cat text1"
cat text1
echo

echo "#sort text1"
sort text1
echo

echo "#sort -r text1"
sort -r text1
echo

echo "#sort -k 2 text1"
sort -k 2 text1
echo 

echo "#sort text1 text2 -o sort.txt"
echo "#cat sort.txt"
sort text1 text2 -o sort.txt
cat sort.txt



rm -f sort.txt



