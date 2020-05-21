#!/bin/sh
hap=0
i=1
while [ $i -le 10 ]
do 
	hap=`expr $hap + $i`
	i=`expr $i + 1`
done
echo "1부터 10까지의 합: "$hap
exit 0


