#!/bin/bash

echo "==Pattern should match case completely=="
echo "#echo -e \"The world is wonderful \t The world is also wonderful\" | grep the"
echo -e "The world is wonderful \t The world is also wonderful" | grep the --color

echo "==Ignore case=="
echo "#echo -e \"The world is wonderful \t The world is also wonderful\" | grep -i the"
echo -e "The world is wonderful \t The world is also wonderful" | grep -i the --color

echo "==Use full set of regular expression as input arguments=="
echo "#echo -e \"The world is wonderful \t The world is also wonderful\n1232145\" | grep \"[a-e]\" --color"
echo -e "The world is wonderful \t The world is also wonderful\n1232145" | grep "[a-e]" --color

echo "==Invert match result=="
echo "echo -e \"The world is wonderful \n The world is also wonderful\n 12345\" | grep -v The --color"
echo -e "The world is wonderful \n The world is also wonderful\n 12345" | grep -v The --color


echo "==Count the number of lines where a matching string appear=="
echo "#echo -e \"The world is wonderful \t The world is also wonderful\n1232145\" | grep -i -c the --color"
echo -e "The world is wonderful \t The world is also wonderful\n1232145" | grep -i -c "the" --color

echo "==Show matching pattern only=="
echo "#echo -e \"The world is wonderful \t The world is also wonderful\n1232145\" | grep -i -o \"the\" --color"
echo -e "The world is wonderful \t The world is also wonderful\n1232145" | grep -i -o "the" --color 

echo "==Count the number of match patterns=="
echo "#echo -e \"The world is wonderful \t The world is also wonderful\n1232145\" | grep -i -o \"the\" --color | wc -l"
echo -e "The world is wonderful \t The world is also wonderful\n1232145" | grep -i -o "the" --color | wc -l

echo "==Byte offset of matching pattern=="
echo "#echo gnu is not unix | grep -b -o \"not\""
echo gnu is not unix | grep -b -o "not"

echo "==Search over multiple files=="
echo "#grep -l linux sample1.txt sample2.txt"

echo "==grep by matching multiple patterns=="
echo "#echo this is a line of text | grep -e \"this\" -e \"line\" --color"
echo this is a line of text | grep -e "this" -e "line" --color

echo "==grep through certain files=="
echo "#grep -rsn  --include=*.sh \"bin\" ."
grep -rsn  --include=*.sh "bin" .
