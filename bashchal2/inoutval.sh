#!/bin/bash
#Adam Mejia
#CS018
#Bash Challenge 2.3
#Input/Output file validation

#Usage: Takes input as first argument and output as second argument.
INFILE=$1
OUTFILE=$2

if [ -r $INFILE ] && [ -w $OUTFILE ] && [ $INFILE ] && [ $OUTFILE ]; then
	echo "Ready to read and write!"
elif ! [ $1 ] || ! [ $2 ]; then
	echo "Somethings missing"
elif [ $3 ]; then
	echo "Too many arguments"
else
	echo "Check your permissions"
fi
exit


