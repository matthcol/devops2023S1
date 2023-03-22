#!/bin/bash
# Usage: config_interfaces_lo_nat_pn.sh IF_NAT_NAME IF_HOST_ONLY_NAME

if [ $# -ne 2 ]
then
	echo "Error: wrong number of arguments"
	echo "Usage: config_interfaces_lo_nat_pn.sh IF_NAT_NAME IF_HOST_ONLY_NAME"
	exit 1
fi

IF_NAT_NAME=$1
IF_HOST_ONLY_NAME=$2

sed -e "s/IF_NAT_NAME/$IF_NAT_NAME/g" \
	-e "s/IF_HOST_ONLY_NAME/$IF_HOST_ONLY_NAME/g" interfaces_lo_nat_pn.tmpl \
	> /etc/network/interfaces
