#!/bin/bash

file=$1

while read -r line
do
for i in $(seq 1 $line); do
  printf "*"
done
echo " "
done< $file