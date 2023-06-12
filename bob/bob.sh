#!/usr/bin/env bash
set -o noglob
q=0
unspaced_input=$(tr -d [:space:] <<< "$1")
if [[ -z "$unspaced_input" ]]; then
	echo "Fine. Be that way!"
else
	#echo "${unspaced_input:(-1)}"
	if [[ "${unspaced_input:(-1)}" == "?" ]]; then
		q=1
	fi
	only_alpha=$(tr -cd [:alpha:] <<< "$unspaced_input")
	#echo "Q: $q"
	#echo "Only_alpha: $only_alpha"
	no_lower=$(tr -d [:lower:] <<< "$only_alpha")
	if [[ -z "$no_lower" ]]; then
		[[ $q -eq 0 ]] && echo "Whatever." || echo "Sure."
	else
		[[ $q -eq 0 ]] && echo "Whoa, chill out!" || echo "Calm down, I know what I'm doing!"
	fi

fi
