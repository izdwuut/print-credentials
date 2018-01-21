#!/bin/bash
config='config.cfg'
nol=$(cat credentials.txt | wc -l)
source $config
function updateConfig {
	sed -i "s/\($1 *= *\).*/\1$2/" $config
}
updateConfig 'prevCounter' $counter
((spacing++))
if [ $(($counter + $spacing + $nol)) -ge $maxNol ]
then
	counter=0
	echo 'Remember to flip sides!'
else
	counter=$(($counter + $spacing))
fi
for (( i=0; i<$counter; i++ ))
do
	echo '' >> $result
done
counter=$(($counter + $nol))
updateConfig 'counter' $counter
cat $credentials >> $result
