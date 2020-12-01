#!/usr/bin/env bash
result="you"
if (($#>0)); then
	result="$1"
fi
echo "One for $result, one for me."