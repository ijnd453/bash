#!/usr/bin/env bash
proverb=""
argPlusOne=0
if [[ $# > 1 ]]; then
	for (( arg = 1 ; arg < $# ; arg++))
	do
		argPlusOne=$(($arg + 1))
		proverb+="For want of a ${!arg} the ${!argPlusOne} was lost. \n"
	done
fi
if [[ $# > 0 ]]; then
	proverb+="And all for the want of a $1.\n"
fi
echo -e $proverb