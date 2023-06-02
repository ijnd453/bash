#!/usr/bin/env bash
dna1=$1
dna2=$2
differences=0
if [[ "$#" -ne "2" ]]; then
	echo "Usage: hamming.sh <string1> <string2>"
	exit 1
fi
if [[ "${#dna1}" -ne "${#dna2}" ]]; then
	echo "Error: The strands must be of equal length"
	exit 1
fi
for (( i=0; i < ${#dna1}; i++ ))
do
	if [[ "${dna1:$i:1}" != "${dna2:$i:1}" ]]; then
		differences=$(( $differences + 1))
	fi
done
echo $differences