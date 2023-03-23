#!/bin/bash
n=0
while true
do
	((n++))
	echo "$(date +"%Y-%m-%d %H:%M:%S") - J'ai bouclé $n fois" >> /tmp/loop.log
	sleep 2
done
