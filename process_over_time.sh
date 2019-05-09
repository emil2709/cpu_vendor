#!/bin/bash

for i in {1..1440}
do
	date +%T >> cpuvendor.txt
	echo "$1" >> cpuvendor.txt
	(time -p ./a.out) |& awk 'FNR == 2{print $2}' >> cpuvendor.txt &
	sleep 60
done

