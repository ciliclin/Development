#!/bin/bash

echo "#echo | awk '{ var1="v1"; var2="v2"; var3="v3"; \\
print var1 "-" var2 "-" var3 ; }'"
echo | awk '{ var1="v1"; var2="v2"; var3="v3"; \
print var1 "-" var2 "-" var3 ; }'
echo

echo "#echo -e "line1 f2 f3\\nline2 f4 f5\\nline3 f6 f7" | \\
awk '{
print "Line no:"NR",No of fields:"NF, "\$0="\$0, "\$1="\$1,"\$2="\$2,"\$3="\$3
}'"

echo -e "line1 f2 f3\nline2 f4 f5\nline3 f6 f7" | \
awk '{
print "Line no:"NR",No of fields:"NF, "$0="$0, "$1="$1,"$2="$2,"$3="$3
}'
echo

echo "#awk '{ print \$3,\$2 }' awk_test"
awk '{ print $3,$2 }' awk_test
echo

echo "#awk 'END{ print NR }' awk_test"
awk 'END{ print NR }' awk_test
echo

echo "#seq 5 | awk 'BEGIN{ sum=0; print \"Summation:\" }
{ print \$1"+"; sum+=\$1 } END { print \"==\"; print sum }'"
seq 5 | awk 'BEGIN{ sum=0; print "Summation:" }
{ print $1"+"; sum+=$1 } END { print "=="; print sum }'
echo

VAR=10000
echo "#echo | awk -v VARIABLE=\$VAR '{ print \"External variable is\", VARIABLE }'"
echo | awk -v VARIABLE=$VAR '{ print "External variable is", VARIABLE }'
echo

echo "#awk 'NR < 3' awk_test"
awk 'NR < 3' awk_test
echo

echo "#awk 'NR==1,NR==4' awk_test"
awk 'NR==1,NR==4' awk_test
echo

echo "#awk '/123/' awk_test"
awk '/123/' awk_test
echo

echo "#awk '!/123/' awk_test"
awk '!/123/' awk_test
echo

#Setting delimiter for fields
echo "#awk 'BEGIN { FS=\":\" } { print \$NF }' /etc/passwd"
awk 'BEGIN { FS=":" } { print $NF }' /etc/passwd
echo

echo "#seq 5 | awk 'BEGIN { getline; print \"Read ahead first line\", \$0 } { print \$0 }'"
seq 5 | awk 'BEGIN { getline; print "Read ahead first line", $0 } { print $0 }'
echo

echo "#echo | awk '{ \"grep root /etc/passwd\" | getline cmdout ; print cmdout }'"
echo | awk '{ "grep root /etc/passwd" | getline cmdout ; print cmdout }'
echo

echo "#awk '/Treat/,/w.l/' awk_test"
awk '/Treat/,/w.l/' awk_test 
echo

echo "Print a line in the reverse order"
echo "#seq 9 | \\"
echo "awk '{ lifo[NR]=\$0 }"
echo "END{ for(lno=NR;lno>-1;lno--){ print lifo[lno]; }}'"

seq 9 | \
awk '{ lifo[NR]=$0 }
END{ for(lno=NR;lno>-1;lno--){ print lifo[lno]; }
}'

echo
