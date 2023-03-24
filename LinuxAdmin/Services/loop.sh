#!/bin/bash

function fail_message() {
	echo "Error: $1" 2>&1
	exit 1
}

CONF_FILE=/etc/loop.conf
LOG_FILE=/var/log/loop.log

n=0

if [ -f "$CONF_FILE" ]
then
	n=$(head -1 "$CONF_FILE")
	[[ "$n" =~ ^[0-9]+$ ]] || fail_message "loop config file don't start with a number <$n>"
fi

echo "starting loop with $n"

while true
do
	((n++))
	echo "$(date +"%Y-%m-%d %H:%M:%S") - J'ai bouclé $n fois" >> "$LOG_FILE"
	sleep 2
done
