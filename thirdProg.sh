#!/bin/bash

path=$1

if [ -z "$path" ]; then
	numOfFile0=$(find "$@" -type f | wc -l)
	for i in `find $pwd -size 0`
	do
            rm $i
        done
	numOfFile1=$(find "$@" -type f | wc -l)
	echo "$(($numOfFile0-$numOfFile1)) zero-length files are removed from the directory: ${PWD}"
#I found number of deleted files by substractingfinal number of files from initial number of files 

elif [ -d "$path" ]; then
	numOfFile0=$(find "$@" -type f | wc -l)
	for i in `find $path -size 0`
	do
            rm $i
        done
	numOfFile1=$(find "$@" -type f | wc -l)
	echo "$(($numOfFile0-$numOfFile1)) zero-length files are removed from the directory: ${PWD}${path}"
#I found number of deleted files by substractingfinal number of files from initial number of files

else
	exit 1

fi
