#!/bin/bash

data="datacovid.csv"
IFS=$'\n'
i=0
j=0

for var in $(cat $data)
do
#	echo "$var"
	IFS=$','
	tt=( $var )
	if [ "${tt[7]}" == "TH" ] ; then
		i=$(($i + ${tt[4]}))
		j=$(($j + ${tt[5]}))
	fi
done
echo "Thailand 's total cases : $i"
echo "Thailand 's total death : $j"

popinth=69428524.0

echo -n "Percentage of cases per poppulation : 0"
echo $(bc <<< "scale=6 ; $i*100/$popinth");

echo -n "Percentage of death per total cases : "
echo $(bc <<< "scale=4 ; $j*100/$i");

exit 0
