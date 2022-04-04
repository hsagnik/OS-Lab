#!/bin/bash

mkdir tempo
cd tempo

for i in {a..z}
do
	mkdir $i
done
echo "Created directories: "
ls
for i in {a..z}
do
	mv $i ${i}_modified
done
echo "Renamed directories are: "
ls

