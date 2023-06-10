#!/usr/bin/env bash
set -o noglob
result_acronym=""
if [[ $# -ne "1" ]]; then
	echo "Usage: ./acronym.sh 'Input String'"
	exit
fi
IFS=" -"
for i in $1
do
	temp_i=$(echo "$i" | tr -dc '[:alpha:]')
	temp_i="${temp_i:0:1}"
	result_acronym+="${temp_i^^}"
done
echo $result_acronym | tr -dc "[:alnum:]\n\r"