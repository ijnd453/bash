#!/usr/bin/env bash
arg=$1
gra=""
len=${#arg}
for((i=len-1; i>=0; i--)) do
	gra=$gra${arg:i:1}
done
echo "$gra"