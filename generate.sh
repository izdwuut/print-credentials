#!/bin/bash
nol=$(cat credentials | wc -l)
counter=$(cat counter)
rm -f result.pwd
if [ $(($counter + 2 + $nol)) -ge 59 ] #wordpad 11pt Courier New holds 59 lines
then
	counter=0
	echo 'Remember to flip sides!'
fi

if [ $counter -gt 0 ]
then
	counter=$(($counter + 2))
fi

for (( i=0; i<$counter; i++ ))
do
	echo '' >> result.pwd
done

counter=$(($counter + $nol))

echo $counter > counter
cat credentials >> result.pwd