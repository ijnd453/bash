#!/usr/bin/env bash
set -o noglob
q=0
unspaced_input=$(tr -d [:space:] <<< "$1")
only_letters_are_caps=0
found_lower=0
if [[ -z "$unspaced_input" ]]; then
	echo "Fine. Be that way!"
else
	#echo "${unspaced_input:(-1)}"
	if [[ "${unspaced_input:(-1)}" == "?" ]]; then
		q=1
	fi



	for word in $(echo "$1"); do
		len=${#word}
		len_minus_one=$((len-1))
		word_no_first="${word:1:len_minus_one}"
		only_alpha=$(tr -cd [:alpha:] <<< "$word_no_first")
		any_lower=$(tr -cd [:lower:] <<< "$only_alpha")
		if [[ ! -z "$any_lower" ]]; then
			found_lower=1
		fi
	done

	[[ $found_lower -eq 0 ]] && only_letters_are_caps=1 || only_letters_are_caps=0
	[[ -z $(tr -cd [:alpha:] <<< "$1") ]] && only_letters_are_caps=0

	#echo "Q: $q"
	#echo "Found_lower: $found_lower"
	#echo "only_letters_are_caps : $only_letters_are_caps"

	if [[ $only_letters_are_caps -eq 0 ]]; then
		[[ $q -eq 0 ]] && echo "Whatever." || echo "Sure."
	else
		[[ $q -eq 0 ]] && echo "Whoa, chill out!" || echo "Calm down, I know what I'm doing!"
	fi

fi
