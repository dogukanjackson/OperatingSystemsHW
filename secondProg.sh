#!/bin/bash

echo "Enter a sequence of numbers followed by \"end\""
read num
max=${num}
#I set the max num to first input, then if a larger number is entered, max number updates itself.
while [ $num != "end" ]
do
	[ $max -lt $num ] && max=${num}
	read num
done
echo "Maximum: ${max}"
