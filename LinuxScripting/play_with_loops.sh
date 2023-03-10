#!/bin/bash

for n in 1 2 3 25
do
	echo "A number: $n"
done

echo

for city in Pau Paris Lille Bordeaux Toulouse Marseille
do
	echo "Travel to city: $city"
done

echo

for arg in $@
do
	echo "One argument: $arg"
done

echo

for conf_file in /etc/*.conf
do
	echo "Config file: $conf_file"
done
