#!/usr/bin/env bash
arg1=$1
arg2=$2
num=''
temp=''
for color in $arg1 $arg2
do
	case $color in

		black)
			temp='0'
			;;

		brown)
			temp='1'
			;;

		red)
			temp='2'
			;;

		orange)
			temp='3'
			;;

		yellow)
			temp='4'
			;;

		green)
			temp='5'
			;;

		blue)
			temp='6'
			;;

		violet)
			temp='7'
			;;

		grey)
			temp='8'
			;;

		white)
			temp='9'
			;;

		*)
			num='invalid color'
			;;
		esac
	echo "$temp"
done