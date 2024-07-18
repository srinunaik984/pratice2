#!/bin/bash
#A program  for numerical operations using FOR loop and CASE statements

read -p 'Enter the value for a: ' a
read -p 'Enter the value for b: ' b

if  [ -z $a -o -z $b ]; then
        echo "invalid input"
        exit 1;
fi

for op in ADD SUB MUL DIV
do
        case $op in
                ADD) echo "Addition=$(($a+$b))";;
                SUB) echo "Subtraction=$(($a-$b))";;
                MUL) echo "Multliplication=$(($a*$b))";;
                DIV) echo "Division=$(($a/$b))";;
        esac
done

echo "today date is `date`"
