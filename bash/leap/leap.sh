#!usr/bin/env bash
year=$1
leap=false
if ! (($year%4)); then
	leap=true
	if [ $(( $year % 100 )) -eq 0 ]; then 
		leap=false
		if ! (($year % 400 )); then
			leap=true
		fi
	fi
fi
echo "$leap"
