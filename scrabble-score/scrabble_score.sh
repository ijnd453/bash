#!/usr/bin/env bash
total=0
input="$1"
for ((i=0; i<${#input}; i++)); do
	charac="${input:$i:1}"
	upper="${charac^^}"
	temp=0
	case $upper in
		"A" | "E" | "I" | "O" | "U" | "L" | "N" | "R" | "S" | "T" )
			temp=1
			;;

		"D" | "G" )
			temp=2
			;;

		"B" | "C" | "M" | "P" )
			temp=3
			;;

		"F" | "H" | "V" | "W" | "Y" )
			temp=4
			;;

		"K" )
			temp=5
			;;

		"J" | "X" )
			temp=8
			;;

		"Q" | "Z" )
			temp=10
			;;

		*)
			temp=0
			;;
	esac
	total=$((total+temp))
done
echo "$total"