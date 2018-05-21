#!/bin/bash
#IFS(Internal Field Seperator) env test

#Inverse IP address
IP=192.168.1.77
IFS="."
count=0
for index in $IP
do
	let count+=1
	ip[$count]=$index
done
INTIP=${ip[4]}.${ip[3]}.${ip[2]}.${ip[1]}
IFS=" "
echo $INTIP


count=0
until [ $count -eq 9 ];
do
	let count++;
	echo $count
done

var1=10
var2=5
[ $var1 -gt $var2 ] && echo "var1 > var2";

var1=5
var2=10
[ $var1 -gt $var2 ] || echo "var1 < var2";


