#!/usr/bin/env bash
declare -A char_dict
for alpha in {a..z}; do
	char_dict[$alpha]=0
done

#echo "${!char_dict[@]}"
#echo "${char_dict[@]}"

input_by_char=($(fold -w1 <<< "$1"))
for i in "${input_by_char[@]}"; do
	if [[ -z ${i//[a-zA-Z]} ]]; then
		lowercase_i="${i,,}"
		char_dict["$lowercase_i"]=1
	fi
done

#echo "${!char_dict[@]}"
#echo "${char_dict[@]}"

result="true"
for i in "${char_dict[@]}"; do
	if [[ "$i" -eq "0" ]]; then
		result="false"
	fi
done
echo "$result"