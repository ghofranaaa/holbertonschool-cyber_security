#!/bin/bash
./john/run/john --wordlist=./rockyou.txt --format=raw-sha256 "$1"