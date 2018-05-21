#!/bin/bash

function1()
{
	echo $0;
	echo $1;
	echo $2;
	echo $*;
	echo $@;
	return 0;
}

recursivef()
{
	echo "GoGo $1"
	if [ $1 -lt 10 ];
	then
		recursivef $[ $1+1 ]; 
	else
		echo "Success: $1"
	fi
}

function1 $1 11 22;

recursivef $1;
#echo $result


