#!/bin/bash

for i in $(seq 1 12)
do
	d=$(ncal ${i} 1947 | grep Fr | tr -s ' ' | cut -d ' ' -f 4)
	date --date="1947-${i}-${d}" +"%A %d/%m/%Y"
done

