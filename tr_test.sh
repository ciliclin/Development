#!/bin/bash

echo "==Replace character=="
echo "#echo ge pnzr, ge fnj, ge pbadhrerq. | tr 'a-zA-Z' 'n-za-mN-ZA-M'"
echo ge pnzr, ge fnj, ge pbadhrerq. | tr 'a-zA-Z' 'n-za-mN-ZA-M'
echo

echo "==Delete characters, using -d option=="
echo "#echo \"Hello 123 world 456\" | tr -d '0-6'"
echo "Hello 123 world 456" | tr -d '0-9'
echo

echo "==Delete character except for some character specified, using -c option=="
echo "#echo hello 1 char 2 next 4 | tr -d -c '0-9 \n'"
echo hello 1 char 2 next 4 | tr -d -c '0-9 \n'

echo "==Squeeze character, continuous repeated character can be squeezed into a single character. Using -s=="
echo "echo \"Hello 123 wooorld 456\" | tr -d '0-9' | tr -s ' '"
echo "Hello 123 wooorld 456" | tr -d '0-9' | tr  -s ' '
