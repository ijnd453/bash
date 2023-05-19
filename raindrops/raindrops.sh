#!/usr/bin/env bash
output=""
[[ $(( $1 % 3 )) == 0 ]] && output+="Pling"
[[ $(( $1 % 5 )) == 0 ]] && output+="Plang"
[[ $(( $1 % 7 )) == 0 ]] && output+="Plong"
[[ $output == "" ]] && output="${1}"
echo "${output}"