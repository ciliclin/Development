#!/bin/bash


echo "==Only print the substituted text=="
echo "#sed 's/Alex/cilic/' student_data.txt"
sed 's/Alex/cilic/' student_data.txt
echo

echo "==Only substitute first ocurrence of pattern each line=="
echo "#sed 's/49/00/' student_data.txt"
sed 's/49/00/' student_data.txt
echo

echo "==Substitute every ocurrence of pattern each line=="
echo "#sed 's/49/00/g' student_data.txt"
sed 's/49/00/g' student_data.txt
echo

echo "==Substitute 2nd ocurrence of pattern each line=="
echo "#sed 's/49/00/g2' student_data.txt"
sed 's/49/00/g2' student_data.txt
echo

echo "==Remove the line where the pattern is found=="
echo "#sed '/cilic/d' student_data.txt"
sed '/cilic/d' student_data.txt
echo

echo "==Remove blank line=="
echo "#sed '/^$/d' student_data.txt"
sed '/^$/d' student_data.txt
echo

echo "==Replace alphabet with STRING=="
echo "#sed 's/\b[a-zA-Z]\{1,\}\b/STRING/g' student_data.txt"
sed 's/\b[a-zA-Z]\{1,10\}\b/STRING/g' student_data.txt
echo

echo "==Replace all 2-digit number with \"NUM\"=="
echo "#sed 's/\b[0-9]\{2\}\b/NUM/g' student_data.txt"
sed 's/\b[0-9]\{2\}\b/NUM/g' student_data.txt
echo

echo "==To save the changes along with the substitutions to the same file=="
echo "#sed -i 's/Alex/cilic/' student_data.txt"
sed -i 's/Alex/cilic/' student_data.txt
echo

echo "#echo this is an example | sed 's/\w\+/[&]/g'"
echo this is an example | sed 's/\w\+/[&]/g'
echo

echo "#echo this is digit 7 in a number | sed 's/digit \([0-9]\)/\1/'"
echo this is digit 7 in a number | sed 's/digit \([0-9]\)/\1/'
echo

echo "#echo seven EIGHT | sed 's/\([a-z]\+\) \([A-Z]\+\)/\2 \1/'"
echo seven EIGHT | sed 's/\([a-z]\+\) \([A-Z]\+\)/\2 \1/'
echo

echo "==sed 'expression; expression'=="
echo "#echo abc | sed 's/a/A/;s/c/C/'"
echo abc | sed 's/a/A/;s/c/C/'
echo

echo "==Removing a sentence in a file containing a word=="
echo "#sed 's/[^.]*integer[^.]*\.//g' awk_test"
sed 's/[^.]*integer[^.]*\.//g' awk_test
