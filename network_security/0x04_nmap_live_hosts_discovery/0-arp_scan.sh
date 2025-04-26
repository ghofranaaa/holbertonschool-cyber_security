#!/bin/bash

if [ "$EUID" -ne 0 ]; then
	echo "Please run as root"
	exit 1
fi

if [ -z "$1" ]; then
	echo "Usage: $0 <subnet>"
	exit 1
fi

SUBNET=$1
nmap -sn "$SUBNET"