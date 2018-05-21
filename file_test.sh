#!/bin/bash

TEXT1="It's my \tlife"
TEXT2="It is NOT my life"
OF="test.txt"

rm -f $OF
rm -f test_err.txt

echo -e "==File\ttest=="
echo -e "Hello word: $TEXT1" > $OF
echo "#echo \$TEXT2 >> $OF" | tee -a $OF
echo $TEXT2 >> $OF

echo "==Run correct command and redirect stdout to text==" | tee -a $OF
echo "#ls | tee -a $OF" | tee -a $OF
ls | tee -a $OF 
#echo "Return value \$?: $?" | tee -a $OF
echo

echo "==Run incorrect command and redirect stdout to text==" | tee -a $OF
echo "#ls ++ | tee -a $OF" | tee -a $OF
ls ++ | tee -a $OF
#echo "Return value \$?: $?" | tee -a $OF
echo

echo "==Run incorrect command. Redirect stderr to test_err.txt and stdout to test.txt==" | tee -a $OF
echo "#ls ++ 2>&1 | tee -a $OF test_err.txt" | tee -a $OF
ls ++ 2>&1 | tee -a $OF test_err.txt
#echo "Return value \$?: $?" | tee -a $OF
echo

echo "==Run incorrect command. Redirect stderr to test.txt===" | tee -a $OF
echo "#ls ++ 2>&1 | tee -a $OF" | tee -a $OF
ls ++ 2>&1 | tee -a $OF
echo

echo "==Print without stderr==" | tee -a $OF
echo "#ls ++ > /dev/null" | tee -a $OF
ls ++ 2> /dev/null
echo

echo "==Test tee to redirect one file and redirect as following stdin at the same time==" | tee -a $OF
echo "#ls | tee -a $OF | cat n" | tee -a $OF
ls | tee -a $OF | cat -n | tee -a $OF

echo "==Customize File descriptor 3==" | tee -a $OF
echo "#echo \"Oh my god\" > test_input.txt" | tee -a $OF
echo "Oh my god" > test_input.txt
echo "#exec 3<test_input.txt" | tee -a $OF
exec 3<test_input.txt
echo "#cat <&3" | tee -a $OF
cat <&3 | tee -a $OF
echo "#cat <&3" | tee -a $OF
cat <&3 | tee -a $OF

