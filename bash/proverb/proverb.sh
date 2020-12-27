for((i=1; i <= $[$# - 1]; i++));
do
	j=$(($i+1))
	echo "For want of a ${!i} the ${!j} was lost."
done
if (( $# >= 1 )); then
	echo "And all for the want of a $1."
fi