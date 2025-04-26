#!/bin/bash

if [ -z "$1" ]; then
	echo "Usage: $0 <subnet>"
	exit 1
fi

sudo nmap -sn "$1"