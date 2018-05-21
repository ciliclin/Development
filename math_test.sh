#!/bin/bash
VAR="Hello"
echo $VAR
echo "$VAR"
echo '$VAR'
printf "This: %4s\n" $VAR

echo "1\t2\t3\t"
echo -e "1\t2\t3\t"
echo -e -n  "1\t2\t3\t"
echo
#cat /proc/$$/environ | tr ':' '\n'
echo -e "PATH=$PATH \t HOME=$HOME \n PWD=$PWD \n USER=$USER \nUID=$UID"

echo "Variable length: ${#VAR}"
echo $SHELL
echo $0

NO1=5
NO2=11
let NO1+=1
let RESULT=NO1+NO2
echo "result0: $RESULT"
RESULT=$[ NO1+NO2+RESULT ]
echo "result1: $RESULT"
RESULT=$[ $RESULT+NO1]
echo "result2: $RESULT"
RESULT=$((RESULT+100))
echo "result3: $RESULT"
RESULT=`expr $NO1 + 1`
echo "result4: $RESULT"
RESULT=$(expr $NO2 + 1)
echo "result5: $RESULT"
echo -n 'echo "4*0.56" | bc =>'
echo "4*0.56" | bc

FLOAT=`echo "4*0.56" | bc`
echo "float result: $FLOAT"
echo "1/3" | bc
echo "scale=2;1/3" | bc

no=256
echo -n "Decimal to bnary: $no =>"
echo "obase=2;$no" | bc

no=11111111
echo -n "Binary to decimal: $no =>"
echo "obase=10;ibase=2;$no" | bc

echo -n 'echo "sqrt(100)" | bc = '
echo "sqrt(100)" | bc
echo -n 'echo "10^2+2^10" | bc = '
echo "10^2+2^10" | bc

result=$(echo "8^2" | bc)
echo -n '$(echo "8^2" | bc) = '
echo $result

