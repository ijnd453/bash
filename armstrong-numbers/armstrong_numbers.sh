#!/usr/bin/env bash
sum=0
num_array=($(fold -w1 <<< "$1"))
digit_count="${#num_array[@]}"
for num in "${num_array[@]}"; do
	sum=$((sum+num**digit_count))
done
[[ $sum -eq $1 ]] && echo true || echo false