#!/bin/bash

echo "Type one input with 3 charachters without return key"
read -n 3 var
echo
echo $var

echo "Type one input in the nonechoed mode"
read -s var
echo
echo $var

read -p "Input with message: " var
echo $var

read -t 3 -p "Input within 3 sec: " var
echo $var

read -p "\":\" is the delimiter character to end of the input line: " -d ":" var
echo
echo $var 
