#!/usr/bin/env bash

num="$1"

if [[ -n "${num//[0-9]/}" ]]; then
	if [[ $num == "total" ]]; then
		echo "2^64-1" | bc
		exit 0
	else
		echo "Error: invalid input"
		exit 1
	fi
fi

if [[ $num -gt "64" || $num -lt "1" ]]; then
	echo "Error: invalid input"
	exit 1
else
	echo "2^($num-1)" | bc
	exit 0
fi