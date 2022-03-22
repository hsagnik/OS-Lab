#!/bin/bash

mkdir tempo
cd tempo
declare -i n=0
names=({a..z})
while [[ ${names[n]} != "" ]]
do
	mkdir ${names[n]}
	n+=1
done
echo "Created directories: "
ls
n=0
while [[ ${names[n]} != "" ]]
do
	mv ${names[n]} ${names[n]}_modified
	n+=1
done
echo "Renamed directories are: "
ls
