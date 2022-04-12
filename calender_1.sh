#!/bin/bash

x=("Su" "Mo" "Tu" "We" "Th" "Fr" "Sa");
n1=$1
n2=$2
n3=$3
g=("Sunday" "Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday")
g2=${g[$((n2-1))]};
((n1++))
n4=$((n1-1))
k=${x[$((n2-1))]}
echo "The ${n4}th ${g2} of ${n3} are: "

for i in $(seq 1 12);
do d=$(ncal ${i} ${n3} | grep ${k} | tr -s ' ' | cut -d ' ' -f ${n1} )
if [[ $d -ne " " ]]
then
   date --date="${n3}-${i}-${d}" +"%A %d/%m/%Y"
fi
done


