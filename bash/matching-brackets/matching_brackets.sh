#!/usr/bin/env bash

str=$1
var=true
count=${#str}
curly=0
square=0
round=0
for(( i=0; i<count; i++)); do
	chr="${str:$i:1}"
	case $chr in

		{)
			let "curly++"
		;;

		[)
			let "square++"
		;;

		\()
			let "round++"
		;;

		})
			if [[ $curly -gt "0" ]]; then
				let "curly--"
			else
				var=false
				break
			fi
		;;

		])
			if [[ $square -gt "0" ]]; then
				let "square--"
			else
				var=false
				break
			fi
		;;

		\))
			if [[ $round -gt "0" ]]; then
				let "round--"
			else
				var=false
				break
			fi
		;;

		*)
			continue
		;;
	esac
done
if [[ ( "$curly" -gt "0" ) || ( "$square" -gt "0" ) || ( "$round" -gt "0" ) ]]; then
	var=false
fi
echo $var