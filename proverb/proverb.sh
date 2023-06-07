#!/usr/bin/env bash
set -o noglob
proverb=""
argPlusOne=0
if [[ $# -gt 1 ]]; then
	for (( arg = 1 ; arg < $# ; arg++))
	do
		argPlusOne=$((arg+1))
		proverb+="For want of a ${!arg} the ${!argPlusOne} was lost.\n"
	done
fi
if [[ $# -gt 0 ]]; then
	proverb+="And all for the want of a $1.\n"
fi
echo -e "$proverb"