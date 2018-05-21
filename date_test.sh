#!/bin/bash

echo "#date"
date

echo "#date +%s"
date +%s

echo "#date +%A"
date +%A

echo "Provide a date as input to the command \"date\""
echo "#date --date \"Feb 5 2018\""
date --date "Feb 5 2018"

echo -n Count:
tput sc
count=0;
while true;
do
if [ $count -lt 10 ];
then
let count++;
sleep 1;
tput rc
tput ed #clear current cursor position to the end of terminal
#tput clear #clear all screen
echo -n $count;
else break;
#else exit 0;
fi
done

echo "Enable debug"
for i in {1..6};
do
set -x
echo $i
let i+=1
set +x
done
echo "Script executed"
