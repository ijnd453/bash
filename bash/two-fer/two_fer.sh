#!/usr/bin/env bash
arg=$1
if [[ $arg == '' ]]; then
	echo "One for you, one for me."
else
	echo "One for $1, one for me."
fi
