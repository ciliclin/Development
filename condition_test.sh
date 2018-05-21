#!/bin/bash

var1=10
var2=5
[ $var1 -gt $var2 ] && echo "var1 > var2";

var1=5
var2=10
[ $var1 -gt $var2 ] || echo "var1 < var2";

if [ $var1 -gt $var2 -a $var1 -eq 0 ]; 
then
	echo "TRUE"
else
	echo "FALSE"
fi

if [ $var1 -gt $var2 ] && [ $var1 -eq 0 ];
then
        echo "TRUE"
else
        echo "FALSE"
fi
