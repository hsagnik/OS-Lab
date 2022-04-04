#!/bin/bash

mkdir tempo
cd tempo
n=0
names=({a..z})
while [ $n -lt 26 ]
do
        mkdir ${names[n]}
        ((n++))
done
echo "Created directories: "
ls
n=0
while [ $n -lt 26 ]
do
        mv ${names[n]} ${names[n]}_modified
        ((n++))
done
echo "Renamed directories are: "
ls
