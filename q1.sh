#!/bin/bash

file_path=$1

count=`wc -l < $file_path `
if [  `expr $count \% 2` == 1 ]
then
	count=$(( $count/2 + 1 ))
else
	count=$(( $count/2 ))
fi
ans=$(head -$count $file_path | tail +$count)
echo $ans
