#!/usr/bin/env bash

output=""
[ $(($1 % 3)) -eq 0 ] && output="${output}Pling"
#[ $(($1 % 5)) -eq 0 ] && output="${output}Plang"
#[ $(($1 % 7)) -eq 0 ] && output="${output}Plong"
if [ output == "" ]; then
	output="$1"
fi
echo "$output"