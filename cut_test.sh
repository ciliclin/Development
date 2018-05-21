#!/bin/bash

echo "==show the file content=="
cat student_data.txt
echo 

echo "#cut -f1 student_data.txt"
cut -f1 student_data.txt
echo

echo "#cut -f1,3 student_data.txt"
cut -f1,3 student_data.txt
echo

echo "#cut -s -f1 student_data.txt"
cut -s -f1 student_data.txt
echo

echo "#cut -s -f1 --complement student_data.txt"
cut -s -f1 --complement student_data.txt
echo

echo "cut -f1,3 -d\";\" -s student_data.txt"
cut -f1,3 -d";" -s student_data.txt
echo

echo "#cut -c2-8,11 student_data.txt"
cut -c2-8,11 student_data.txt
echo

echo "#cut -c2-8,11 student_data.txt --output-delimiter \"@@\""
cut -c2-8,11 student_data.txt --output-delimiter "@@"
echo

echo "#cut -c -2 student_data.txt"
cut -c -2 student_data.txt
echo
