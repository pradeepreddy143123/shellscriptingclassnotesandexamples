y=`wc -l < temp1`
echo $y

echo $*
shift
for i in $*
do
	echo $i
done
