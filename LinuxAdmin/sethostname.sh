#!/usr/bin/bash
if [ $# -ne 1 ]
then
	echo "Error: need arg#1 hostname"
	exit 1
fi
HOSTNAME=$1

# change /etc/hostname
echo ${HOSTNAME} > /etc/hostname

# change /etc/hosts
sed -i -E "2,2s/^(\S+\s+).*$/\1${HOSTNAME}/" /etc/hosts

exit 0
