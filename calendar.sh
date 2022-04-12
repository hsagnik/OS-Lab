#!/bin/bash

x=("Su" "Mo" "Tu" "We" "Th" "Fr" "Sa");
calender_1(){
    n1=$1
    n2=$2
    n3=$3
    if [[ $n1 -le 6 && $n1 -gt 0 && $n2 -le 7 && $n2 -gt 0 && $n3 -gt 0 && $n3 -le 9999 ]]
    then
	
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
    else
	usage
    fi    
}
usage(){
    echo "ERROR: INVALID INPUT"
    echo "First parameter ranges from 1 to 5: Second parameter ranges from 1 to 7: Third parameter ranges upto 9999"
}


calender_1 $1 $2 $3

