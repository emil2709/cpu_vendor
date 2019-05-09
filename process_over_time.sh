#!/bin/bash

for i in {1..1440}
do
	date +%T >> process.txt
	(time -p ./3min_process.out) |& awk 'FNR == 2{print $2}' >> process.txt &
	sleep 60
done

