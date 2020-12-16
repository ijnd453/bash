echo "$@ $#"
echo "$[$# + 1]"
for((i=0; i <= $[$# - 1]; i++));
do
	j=$(($i+1))
	echo "${!i} ${!j}"
done