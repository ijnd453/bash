#!/usr/bin/env bash
arg=$1
if [[ -z "$arg" ]]; then
	echo "One for you, one for me."
else
	echo "One for $arg, one for me."
fi
